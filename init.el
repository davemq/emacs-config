(setq inhibit-startup-screen t)
;; package.el (ELPA)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'load-path (expand-file-name "~/emacs/lisp"))
(add-to-list 'load-path "/usr/share/emacs/site-lisp/org")
;(add-to-list 'load-path "/gsa/ausgsa/projects/b/beam") ; for beam-parse.el

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; server
(server-start)

;; gtags
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
(ignore-errors (let* ((raw (shell-command-to-string "head -c 4 /dev/urandom"))
		      (decoded (bindat-unpack '((value u32)) (string-to-unibyte raw)))
		      (value (bindat-get-field decoded 'value)))
		 (load-theme (nth (% value (length (custom-available-themes)))
				  (custom-available-themes)))))



;; C styles
(c-add-style "aix" '("bsd" (indent-tabs-mode . nil)))
(c-add-style "aix4" '("aix" (c-basic-offset . 4)))

;; ERC
(load-library "erc")
(require 'erc-highlight-nicknames)
(setq erc-autojoin-channels-alist
      '(
	("freenode.net" "##aix" "#bitbucket" "#austin" "#emacs" "#erc" "#gnus" 
	 "#mercurial" "#org-mode" "#xmonad")
	("localhost" "#twitter")
	("irc.ibm.com" "#aix" "#linux" "#linuxc4eb" "#netdev-aix")
	("irc.geekshed.net" "#jupiterbroadcasting")
	)
      )
(defun drm:erc ()
  (interactive)
  ;; (condition-case nil (erc :server "ipv4-085.austin.ibm.com" :port 57000 
  ;;  			   :nick "davemq" :password "ibm") ; Bluenet
  ;;    (error nil))
  (condition-case nil (erc :server "austin.irc.ibm.com"
   			   :nick "davemq" :password "irc4me") ; Bluenet
    (error nil))
  ;; (condition-case nil (erc :server "ipv4-085.aus.stglabs.ibm.com" :port 57000 :nick "davemqf"
  ;; 			   :password "freenode") ; Freenode
  ;;   (error nil))
  (condition-case nil (erc :server "chat.freenode.net" :nick "davemq"
			   :password "irc4me") ; Freenode
    (error nil))
  ;; (condition-case nil (erc :server "ipv4-085.aus.stglabs.ibm.com" :port 57000 :nick "davemqg"
  ;; 			   :password "geekshed") ; GeekShed
  ;;   (error nil)) ; Geekshed
  (condition-case nil (erc :server "irc.geekshed.net" :nick "davemq"
			   :password "irc4me") ; GeekShed
    (error nil)) ; Geekshed
  (condition-case nil (erc :server "localhost" :nick "davemarq"
			   :password "irc4me") ; BitlBee
    (error nil))
  )

;; auto fill
(add-hook 'text-mode-hook
	  '(lambda () (auto-fill-mode 1)))

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
	    (require 'org-notify)
	    (org-notify-start)
	    )
	  )
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(defadvice org-clock-report (after insert-plot-line
				   activate)
  "Add #+PLOT: line appropriate for clock table."
  (insert 
   "#+PLOT: ind:1 deps:(4) type:2d with:histograms set:\"style fill solid\"
"))

;(require 'ox-taskjuggler)

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
