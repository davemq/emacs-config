(setq inhibit-startup-screen t)
;; package.el (ELPA)
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'load-path (expand-file-name "~/emacs/lisp"))

;; server
(server-start)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; gtags
(add-to-list 'load-path "/usr/share/gtags")
(require 'gtags)

;; random color theme
(load-theme (nth (random (length (custom-available-themes))) (custom-available-themes)))

;; ERC
(require 'erc)
;(load-library "erc-hl-nicks")
(setq erc-autojoin-channels-alist
      '(
	("freenode.net" "##aix" "#bitbucket" "#austin" "#emacs" "#erc" "#gnus" "#mercurial" "#org-mode" "#ppc64"
	 "#xmonad")
	("localhost" "#twitter")
	)
      )
(defun drm:erc ()
  (interactive)
  (condition-case nil (erc :server "ipv4-085.austin.ibm.com" :port 57000 :nick "davemqf" :password "freenode") ; Freenode
    (error nil))
  (condition-case nil (erc :server "ipv4-085.austin.ibm.com" :port 57000 :nick "davemqo" :password "oftc") ; OFTC
    (error nil))
  (condition-case nil (erc :server "ipv4-085.austin.ibm.com" :port 57000 :nick "davemqg" :password "geekshed") ; Geekshed
    (error nil))
  ;; (condition-case nil (erc :server "localhost" :nick "davemarq" :password "irc4me") ; BitlBee
  ;;   (error nil))
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
;(require 'org-velocity)
;(require 'org)
;(setq org-velocity-bucket (expand-file-name "bucket.org" org-directory))
;(global-set-key (kbd "C-c v") 'org-velocity)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

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
