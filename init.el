;; Must be set before outline is loaded
(defvar outline-minor-mode-prefix "\M-#")

(setq inhibit-startup-screen t)
;; package.el (ELPA)
(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(add-to-list 'load-path (expand-file-name "~/emacs/lisp"))
(add-to-list 'load-path "/usr/share/emacs/site-lisp/org")
;(add-to-list 'load-path "/gsa/ausgsa/projects/b/beam") ; for beam-parse.el

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; server
(server-start)

;; ;; gtags
(add-to-list 'load-path "/usr/local/share/gtags")
(condition-case nil
    (require 'gtags)
  (error nil))

;; color themes
;; (add-to-list 'load-path "/usr/local/share/emacs/site-lisp/color-theme-el")
;; (require 'color-theme "color-theme")
;; (load-library "color-theme-library")
;; ;; solarized
;; (add-to-list 'load-path (expand-file-name "~/emacs/emacs-color-theme-solarized"))
;; ;(require 'color-theme-solarized)

;; ;; random theme
;; (funcall (car (nth (random (length color-themes)) color-themes)))

;; The default random seed method seems to pick the same things a lot. Seed random from 256 bits of /dev/urandom 
;; instead.
(require 'bindat)
(defun drm:theme ()
  (interactive)
  (require 'bindat)
  (ignore-errors (let* ((raw (shell-command-to-string "head -c 4 /dev/urandom"))
			(decoded (bindat-unpack '((value u32)) (string-to-unibyte raw)))
			(value (bindat-get-field decoded 'value)))
		   (load-theme (nth (% value (length (custom-available-themes)))
				    (custom-available-themes)))))
  )
;; (drm:theme)

;; C styles
(c-add-style "aix" '("bsd" (indent-tabs-mode . nil)))
(c-add-style "aix4" '("aix" (c-basic-offset . 4)))
(c-add-style "aix3" '("aix" (c-basic-offset . 3)))

;; ERC
(load-library "erc")
(require 'erc-highlight-nicknames)
(defun drm:erc ()
  (interactive)
  (condition-case nil (erc :server "localhost" :port 6697
   			   :nick "davemarq"
                           :password "davemarq:passw0rd") ; Bluenet
    (error nil))
  (condition-case nil (erc :server "localhost" :port 6699
                           :nick "davemarq"
			   :password "davemarq:passw0rd") ; Freenode
    (error nil))
  (condition-case nil (erc :server "localhost" :port 6698
                           :nick "davemarq"
			   :password "davemarq:passw0rd") ; GeekShed
    (error nil)) ; Geekshed
  (condition-case nil (erc :server "localhost" :port 6667
                           :nick "davemq"
			   :password "irc4me") ; BitlBee
    (error nil))
  )

(defcustom erc-foolish-content
  '("A fascinating blog by freenode staff member Matthew 'mst' Trout https://MattSTrout.com/"
    "Read what IRC investigative journalists have uncovered on the freenode pedophilia scandal https://encyclopediadramatica.rs/Freenodegate"
    "I thought you guys might be interested in this blog by freenode staff member Bryan 'kloeri' Ostergaard https://bryanostergaard.com/"
    "With our IRC ad service you can reach a global audience of entrepreneurs and fentanyl addicts with extraordinary engagement rates! https://williampitcock.com/"
    "Christel just posted this .denial. on the freenode blog https://freenode.net/news/spam-shake"
    "This blog is essentially an ad for the Handshake ICO scam with a one-line .denial. of involvement mixed in there. It's obviously very unethical of Christel to not mention her own involvement in the scam which the blog post promotes."
    "Consider Andrew Lee's involvement, Andrew Lee is Christel's boss at London Trust Media and he also controls the majority of freenode voting rights. Andrew Lee also heads the handshake ICO scam. Coincidence?"
    "Oh, and about those donations she speaks of: https://twitter.com/ISCdotORG/status/1025461692132519936"
    "Don't support freenode and their ICO scam, switch to a network that hasn't been co-opted by corporate interests. OFTC or efnet might be a good choice. Perhaps even https://matrix.org/"
    "kaniini has invited you to join #litepub"
    "­ ­ ­"
    )
  "Regular expressions to identify foolish content.
    Usually what happens is that you add the bots to
    `erc-ignore-list' and the bot commands to this list."
  :group 'erc
  :type '(repeat regexp))

(defun erc-foolish-content (msg)
  "Check whether MSG is foolish."
  (erc-list-match erc-foolish-content msg))

(add-hook 'erc-insert-pre-hook
          (lambda (s)
            (when (erc-foolish-content s)
              (setq erc-insert-this nil))))

;; auto fill
(add-hook 'text-mode-hook
	  (lambda () (auto-fill-mode 1)))

;; ;; EMMS
;; (require 'emms-player-simple)
;; (require 'emms-source-file)
;; (require 'emms-source-playlist)
;; (require 'emms-player-rhythmbox)
;; (setq emms-player-list '(emms-player-rhythmbox))

(put 'narrow-to-region 'disabled nil)

;; Org-mode
(add-hook 'org-mode-hook 
	  (lambda () 
	    (require 'orgbox)
	    ;; (require 'org-notify)
	    ;; (org-notify-start)
	    )
	  )
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;; work around removal or c-c c-x c-r at some point years after I've trained
;; my brain and fingers. sigh.
(require 'org)
(org-defkey org-mode-map (kbd "C-c C-x C-r") #'org-clock-report)

(defadvice org-clock-report (after insert-plot-line
				   activate)
  "Add #+PLOT: line appropriate for clock table."
  (insert 
   "#+PLOT: ind:1 deps:(4) type:2d with:histograms set:\"style fill solid\"
"))

;; org-mime setup
(require 'ox-org)
(require 'org-mime)
(setq org-mime-library 'mml)
(defun drm:message-mime ()
  (local-set-key (kbd "C-c M-o") 'org-mime-htmlize))

;; appointment from Org agenda
(org-agenda-to-appt)

;; ox-gfm
(require 'ox-gfm)

;; P4
(add-to-list 'auto-coding-alist '("\\.p4r" . no-conversion-multibyte))
(add-to-list 'auto-mode-alist '("\\.p4r" . archive-mode))

;; EUDC
(require 'eudc)
(eval-after-load
    "message"
  '(define-key message-mode-map [(control ?c) (tab)] 'eudc-expand-inline))
(eval-after-load
    "sendmail"
  '(define-key mail-mode-map [(control ?c) (tab)] 'eudc-expand-inline))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))

;; BBDB
;; (load-library "bbdb")
;; (eval-after-load "gnus" '(progn (require 'bbdb) 
;; 				(bbdb-initialize 'gnus 'message)))
;; (eval-after-load "message" '(progn (require 'bbdb) 
;; 				   (bbdb-initialize 'gnus 'message)))
;; (bbdb-insinuate-message)
;; (add-hook 'gnus-startup-hook 'bbdb-insinuate-gnus)
;; (setq bbdb/mail-auto-create-p t)
;; (setq bbdb/news-auto-create-p t)
;; (setq bbdb-use-pop-up t)

(put 'scroll-left 'disabled nil)

;; autoloads
(autoload 'taskjuggler-mode "taskjuggler-mode")
(add-to-list 'auto-mode-alist '("\\.tjp\\'" . taskjuggler-mode))
(add-to-list 'auto-mode-alist '("\\.tji\\'" . taskjuggler-mode))
(add-to-list 'auto-mode-alist '("\\.tjsp\\'" . taskjuggler-mode))

; Haskell
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

; Gnus
(setq
 gnus-registry-max-entries 500000
 gnus-registry-trace-extra '(sender subject))
(gnus-registry-initialize)
(setq gnus-refer-article-method
      '(current
	(nnregistry)
	(nnweb "gmane" (nnweb-type gmane))))

;; convert Atom to RSS
(require 'mm-url)
(defadvice mm-url-insert 
   (after DE-convert-atom-to-rss () )  
   "Converts atom to RSS by calling xsltproc."  
   (when 
      (re-search-forward
         "xmlns=\"http://www.w3.org/.*/Atom\"" 
          nil t)
      (goto-char (point-min))    
      (message "Converting Atom to RSS... ")    
      (call-process-region 
         (point-min) 
         (point-max) 
         "xsltproc" 
         t t nil 
         (expand-file-name 
            "~/.emacs.d/atom2rss.xsl") "-")    
      (goto-char (point-min))    
      (message 
         "Converting Atom to RSS... done")))
(ad-activate 'mm-url-insert)

;; CEDET stuff
;(global-ede-mode t)
;(require 'semantic/sb)
;(semantic-mode 1)
;(require 'semantic/symref/global)
;(setq semantic-symref-tool 'global)

(add-hook 'c-mode-common-hook
          (lambda ()
            (gtags-mode 1)
;            (setq semantic-symref-tool 'global)
            ))

(when (require 'edit-server nil t)
  (setq edit-server-new-frame nil)
  (edit-server-start))
;; (autoload 'edit-server-maybe-dehtmlize-buffer "edit-server-htmlize" "edit-server-htmlize" t)
;; (autoload 'edit-server-maybe-htmlize-buffer   "edit-server-htmlize" "edit-server-htmlize" t)
;; (add-hook 'edit-server-start-hook 'edit-server-maybe-dehtmlize-buffer)
;; (add-hook 'edit-server-done-hook  'edit-server-maybe-htmlize-buffer)

;; TRAMP
(load-library "tramp")
;(nconc (assoc "ssh" tramp-methods) '((tramp-login-env (("LC_TIME=C") ("LANG=C") ("LC_ALL=C")))))
(add-to-list 'tramp-remote-path "/opt/freeware/bin")
;; (add-to-list 'tramp-connection-properties
;;              (list (regexp-quote "br27p02.aus.stglabs.ibm.com") "remote-shell" "oem_setup_env"))

;; When GSA is being slow, this helps performance. Another way we might do this is to redefine what
;; "remote" means and set enable-remote-dir-locals to nil.
(setq enable-dir-local-variables nil)

;; treat GSA files as remote
;(require 'gsa-remote)
;(add-to-list 'file-name-handler-alist '("^/gsa/" . gsa-file-handler))

;; Magit bindings
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch)

;; Magithub
(use-package magithub
  :after magit
  :ensure t
  :config (magithub-feature-autoinject t))

;; Forge
(use-package forge
  :after magit)

;; elfeed.
;; (require 'elfeed)
;; ;; Don't pass "-HUser-Agent: Emacs Elfeed whatever" to curl, as it doesn't play
;; ;; well with IBM Connections feeds
;; (require 'cl-lib)
;; (defun drm:advise-curl (&rest r)
;;   (let
;;       ( (url    (nth 0 r))
;;         (cb     (nth 1 r))
;;         (header nil)
;;         (method (nth 3 r))
;;         (data   (nth 4 r))
;;         )
;;   (list url cb nil method data)))
;; (advice-add 'elfeed-curl-enqueue :filter-args #'drm:advise-curl)
(require 'elfeed)
(require 'elfeed-goodies)

(elfeed-goodies/setup)

;; elfeed-org: keep feeds and their tags in ~/.emacs.d/elfeed.org and import
;; them here
(require 'elfeed-org)
(elfeed-org)

(global-emojify-mode)

;; outshine / outorg
;(require 'outshine)
;(require 'outorg)
;(add-hook 'outline-minor-mode-hook 'outshine-hook-function)
;(add-hook 'message-mode-hook 'outline-minor-mode)

;; dumb-jump mode
(dumb-jump-mode)

;; Add CUDA source code files to auto-mode-alist
(add-to-list 'auto-mode-alist '("\\.cuh?\\'" . c++-mode))

;; Helm
(require 'helm-config)
;(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)

;; Enable helm-gtags-mode
;(add-hook 'c-mode-hook 'helm-gtags-mode)
;(add-hook 'c++-mode-hook 'helm-gtags-mode)
;(add-hook 'asm-mode-hook 'helm-gtags-mode)

;; Set key bindings
;; (eval-after-load "helm-gtags"
;;   '(progn
;;      (define-key helm-gtags-mode-map (kbd "M-t") 'helm-gtags-find-tag)
;;      (define-key helm-gtags-mode-map (kbd "M-r") 'helm-gtags-find-rtag)
;;      (define-key helm-gtags-mode-map (kbd "M-s") 'helm-gtags-find-symbol)
;;      (define-key helm-gtags-mode-map (kbd "M-g M-p") 'helm-gtags-parse-file)
;;      (define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
;;      (define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)
;;      (define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)))

;; org-caldav
;; (require 'org-caldav)
;; (setq org-caldav-url 'google)
;; (setq org-caldav-calendar-id "daverrtx@gmail.com")

;; LSP clangd
;; (use-package lsp-clangd
;;   :init
;;   (setq lsp-clangd-executable "/usr/bin/clangd-8")
;;   :hook
;;   ((c-mode . lsp-clangd-c-enable)
;;    (c++-mode . lsp-clangd-c++-enable)
;;    (objc-mode . lsp-clangd-objc-enable)))

;; Anaconda mode
;; (add-hook 'python-mode-hook 'anaconda-mode)
;; (add-hook 'python-mode-hook 'anaconda-eldoc-mode)

;(require 'lsp-clients)
;(require 'cquery)

(require 'lsp-mode)
(require 'lsp-pyre)
(add-hook 'python-mode-hook 'lsp)

;; Or if you use use-package
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
