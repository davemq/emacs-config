(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'ox-beamer)

(global-set-key "\C-ca" 'org-agenda)
(global-set-key (kbd "C-x g") 'magit-status)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-url-browser-function (quote browse-url-chrome))
 '(calendar-latitude 30.5151333333)
 '(calendar-location-name "Round Rock, TX")
 '(calendar-longitude -97.7164333333)
 '(custom-safe-themes
   (quote
    ("fede08d0f23fc0612a8354e0cf800c9ecae47ec8f32c5f29da841fe090dfc450" "2642a1b7f53b9bb34c7f1e032d2098c852811ec2881eec2dc8cc07be004e45a0" "1b27e3b3fce73b72725f3f7f040fd03081b576b1ce8bbdfcb0212920aec190ad" "721bb3cb432bb6be7c58be27d583814e9c56806c06b4077797074b009f322509" default)))
 '(org-agenda-files (quote ("~/pers/personal.org")))
 '(org-babel-load-languages (quote ((emacs-lisp . t) (latex . t))))
 '(org-enforce-todo-dependencies t)
 '(org-habit-show-habits-only-for-today nil)
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m)))
 '(package-selected-packages
   (quote
    (chocolate-theme cloud-theme laguna-theme naysayer-theme almost-mono-themes arc-dark-theme cyberpunk-2019-theme ewal-spacemacs-themes immaterial-theme monokai-pro-theme mood-one-theme parchment-theme ghub forge magithub base16-theme org-plus-contrib haskell-mode brutalist-theme commentary-theme constant-theme flucui-themes lab-themes night-owl-theme purp-theme smart-mode-line-atom-one-dark-theme zeno-theme magit markdown-mode edit-server edit-server-htmlize rand-theme one-themes ahungry-theme chyla-theme doneburn-theme habamax-theme heaven-and-hell klere-theme monotropic-theme nofrils-acme-theme nordless-theme northcode-theme nova-theme overcast-theme panda-theme poet-theme srcery-theme zweilight-theme zerodark-theme zenburn-theme zen-and-art-theme yoshi-theme xresources-theme white-theme white-sand-theme warm-night-theme waher-theme underwater-theme ujelly-theme ubuntu-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tramp-theme toxi-theme tommyh-theme termbright-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme svg-mode-line-themes suscolors-theme sunny-day-theme sunburn-theme sublime-themes subatomic256-theme subatomic-theme spike-theme spacemacs-theme spaceline-all-the-icons spacegray-theme sourcerer-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme snazzy-theme smyx-theme smart-mode-line-powerline-theme slime-theme silkworm-theme sexy-monochrome-theme seti-theme seoul256-theme rimero-theme reykjavik-theme reverse-theme rebecca-theme railscasts-theme railscasts-reloaded-theme quasi-monochrome-theme purple-haze-theme punpun-theme professional-theme prassee-theme planet-theme plan9-theme plain-theme phoenix-dark-pink-theme phoenix-dark-mono-theme peacock-theme pastelmac-theme paper-theme paganini-theme organic-green-theme org-beautify-theme omtose-phellack-theme oldlace-theme oceanic-theme occidental-theme obsidian-theme nyx-theme nubox nord-theme noctilux-theme nimbus-theme naquadah-theme mustard-theme mustang-theme monokai-theme monokai-alt-theme monochrome-theme molokai-theme moe-theme minimal-theme metalheart-theme mellow-theme melancholy-theme mbo70s-theme material-theme mandm-theme majapahit-theme madhat2r-theme lush-theme liso-theme light-soap-theme leuven-theme lenlen-theme lavender-theme labburn-theme kosmos-theme kooten-theme kaolin-themes jbeans-theme jazz-theme ir-black-theme iodine-theme inverse-acme-theme intellij-theme inkpot-theme idea-darkula-theme hydandata-light-theme heroku-theme hemisu-theme hemera-theme hc-zenburn-theme hamburg-theme gruvbox-theme gruber-darker-theme greymatters-theme green-screen-theme green-phosphor-theme green-is-the-new-black-theme grayscale-theme grandshell-theme gotham-theme goose-theme github-theme github-modern-theme gandalf-theme forest-blue-theme foggy-night-theme flatui-theme flatui-dark-theme flatland-theme flatland-black-theme firecode-theme farmhouse-theme faff-theme eziam-theme exotica-theme espresso-theme eink-theme eclipse-theme dracula-theme doom-themes django-theme distinguished-theme darktooth-theme darkokai-theme darkmine-theme darkburn-theme dark-mint-theme dark-krystal-theme darcula-theme danneskjold-theme dakrone-theme dakrone-light-theme cyberpunk-theme creamsody-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized colonoscopy-theme clues-theme circadian cherry-blossom-theme challenger-deep-theme caroline-theme calmer-forest-theme busybee-theme bubbleberry-theme boron-theme borland-blue-theme bliss-theme blackboard-theme birds-of-paradise-plus-theme basic-theme badwolf-theme badger-theme avk-emacs-themes autumn-light-theme atom-one-dark-theme atom-dark-theme arjen-grey-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes airline-themes afternoon-theme abyss-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; rand-theme
(require 'rand-theme)
(setq rand-theme-unwanted '())
(put 'narrow-to-region 'disabled nil)
