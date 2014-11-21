(setq inhibit-startup-screen t)
;; package.el (ELPA)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'load-path (expand-file-name "~/emacs/lisp"))

;; server
(server-start)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector (vector "#cccccc" "#f2777a" "#99cc99" "#ffcc66" "#6699cc" "#cc99cc" "#66cccc" "#2d2d2d"))
 '(background-color "#fdf6e3")
 '(background-mode light)
 '(c-mode-common-hook (quote ((lambda nil (gtags-mode 1)))))
 '(calendar-latitude 30.5151)
 '(calendar-location-name "Round Rock, TX")
 '(calendar-longitude -97.7164666667)
 '(canlock-password "1ae0ba02f75da1ba76cbd22c9fc3d528b1c4ded1")
 '(cursor-color "#657b83")
 '(custom-safe-themes (quote ("70cf411fbf9512a4da81aa1e87b064d3a3f0a47b19d7a4850578c8d64cac2353" "a507b9ca4a605d5256716da70961741b9ef9ec3246041a4eb776102e8df18418" "769bb56fb9fd7e73459dcdbbfbae1f13e734cdde3cf82f06a067439568cdaa95" "51bea7765ddaee2aac2983fac8099ec7d62dff47b708aa3595ad29899e9e9e44" "cb247cf944eea968aa613a5c40f4cb79f4c05503591cf33e5b4224394dd57e94" "77bd459212c0176bdf63c1904c4ba20fce015f730f0343776a1a14432de80990" "4eaad15465961fd26ef9eef3bee2f630a71d8a4b5b0a588dc851135302f69b16" "3a727bdc09a7a141e58925258b6e873c65ccf393b2240c51553098ca93957723" "0e121ff9bef6937edad8dfcff7d88ac9219b5b4f1570fd1702e546a80dba0832" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "96b023d1a6e796bab61b472f4379656bcac67b3af4e565d9fb1b6b7989356610" "46223bc978f9e7ab7f5b61d171da7ce98e69661158b75ed011603d3134fbad02" "1affe85e8ae2667fb571fc8331e1e12840746dae5c46112d5abb0c3a973f5f5a" "61b188036ad811b11387fc1ef944441826c19ab6dcee5c67c7664a0bbd67a5b5" "024b0033a950d6a40bbbf2b1604075e6c457d40de0b52debe3ae994f88c09a4a" "f41fd682a3cd1e16796068a2ca96e82cfd274e58b978156da0acce4d56f2b0d5" "96efbabfb6516f7375cdf85e7781fe7b7249b6e8114676d65337a1ffe78b78d9" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "f0ea6118d1414b24c2e4babdc8e252707727e7b4ff2e791129f240a2b3093e32" default)))
 '(default-frame-alist (quote ((menu-bar-lines . 1) (tool-bar-lines . 1) (width . 122) (height . 40))))
 '(display-time-24hr-format t)
 '(display-time-mode t)
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(erc-hide-list (quote ("JOIN" "PART" "QUIT")))
 '(erc-modules (quote (autojoin button completion irccontrols list match menu move-to-prompt netsplit networks noncommands readonly ring stamp track highlight-nicknames)))
 '(erc-networks-alist (quote ((4-irc "4-irc.com") (A5KNet "a5knet.com") (AbleNet "ablenet.org") (Accessirc "accessirc.net") (Acestar "acestar.org") (Action-IRC "action-irc.net") (AfterNET "afternet.org") (Alternativenet "altnet.org") (AmigaNet "amiganet.org") (AngelEyez "angeleyez.net") (Anothernet "another.net") (ArabChat "arabchat.org") (Ars "arstechnica.com") (AsiaTalk "asiatalk.org") (AstroLink "astrolink.org") (Asylumnet "asylumnet.org") (Austnet "austnet.org") (AwesomeChat "awesomechat.net") (Awesomechristians "awesomechristians.com") (Axenet "axenet.org") (Beyondirc "beyondirc.net") (BGIRC "bulgaria.org") (Blabbernet "blabber.net") (Blitzed "blitzed.org") (BlueNet "ibm.com") (BrasIRC "brasirc.net") (BRASnet "brasnet.org") (BubbleNet "bubblenet.org") (CCnet "christian-chat.net") (Chat-Net "chat-net.org") (Chat-Solutions "chat-solutions.org") (Chatcafe "chatcafe.net") (Chatchannel "chatchannel.org") (ChatCircuit "chatcircuit.com") (Chatlink "chatlink.org") (Chatnet "chatnet.org") (ChatNut "chatnut.net") (Chatpinoy "chatpinoy.com") (ChatPR "chatpr.org") (Chatroom "chatroom.org") (Chatster "chatster.org") (ChatX "chatx.net") (China263 "263.net") (Cineplex1 "cineplex1.com") (CNN "cnn.com") (CobraNet "cobra.net") (Coolchat "coolchat.net") (Criten "criten.net") (Cyberchat "cyberchat.org") (CyGanet "cyga.net") (DALnet "dal.net") (Dark-Tou-Net "d-t-net.de") (Darkfire "darkfire.net") (DarkMyst "darkmyst.org") (Darkserv "darkserv.net") (Darksystem "darksystem.com") (Darktree "darktree.net") (DayNet "daynet.org") (Deepspace "deepspace.org") (Different "different.net") (Digarix "digarix.net") (Digatech "digatech.net") (Digital-Base "digital-base.net") (Digitalirc "digitalirc.net") (Discussioni "discussioni.org") (DorukNet "doruk.net.tr") (DWChat "dwchat.net") (Dynastynet "dynastynet.net") (EFnet nil) (EgyptianIRC "egyptianirc.net") (Eircnet "eircnet.org") (Eleethal "eleethal.com") (EntertheGame "enterthegame.com") (EpiKnet "epiknet.org") (EsperNet "esper.net") (Esprit "esprit.net") (euIRC "euirc.net") (Evilzinc "evilzinc.net") (ExodusIRC "exodusirc.net") (FDFnet "fdfnet.net") (FEFnet "fef.net") (Financialchat "financialchat.com") (Forestnet "forestnet.org") (ForeverChat "foreverchat.net") (Fraggers "fraggers.co.uk") (FreedomChat "freedomchat.net") (FreedomIRC "freedomirc.net") (freenode "freenode.net") (FunNet "funnet.org") (GalaxyNet "galaxynet.org") (Gamesnet "gamesnet.net") (GammaForce "gammaforce.org") (GeekShed "geekshet.net") (GIKInet "giki.edu.pk") (GizNet "giznet.org") (Globalchat "globalchat.org") (GlobIRC "globirc.net") (Goldchat "goldchat.nl") (Goodchatting "goodchatting.com") (GravityLords "gravitylords.net") (GRnet "irc.gr") (GulfChat "gulfchat.net") (HabberNet "habber.net") (HanIRC "hanirc.org") (Hellenicnet "mirc.gr") (IceNet "icenet.org.za") (ICQnet "icq.com") (iip "anon.iip") (Infatech "infatech.net") (Infinity "infinity-irc.org") (Infomatrix "infomatrix.net") (Inside3D "inside3d.net") (InterlinkChat "interlinkchat.net") (IRC-Chile "irc.cl") (IRC-Hispano "irc-hispano.org") (IRCchat "ircchat.tk") (IRCGate "ircgate.net") (IRCGeeks "ircgeeks.org") (IRChat "irchat.net") (IrcLordz "irclordz.com") (IrcMalta "ircmalta.org") (IRCnet nil) (IRCSoulZ "ircsoulz.net") (IRCSul "wnet.com.br") (IrcTalk "irctalk.net") (Irctoo "irctoo.net") (IRCtown "irc.irctown.net") (IRCworld "ircworld.org") (ircXtreme "ircXtreme.net") (Israelnet "israel.net") (K0wNet "k0w.net") (KDFSnet "kdfs.net") (Kemik "kemik.net") (Kewl\.Org "kewl.org") (Kickchat "kickchat.com") (KidsWorld "kidsworld.org") (Knightnet "knightnet.net") (Konfido\.Net "konfido.net") (Kreynet "krey.net") (Krono "krono.net") (Krushnet "krushnet.org") (LagNet "lagnet.org.za") (Librenet "librenet.net") (LinkNet "link-net.org") (LinuxChix "cats.meow.at\\|linuxchix.org") (Liquidized "liquidized.net") (M-IRC "m-sys.org") (MagicStar "magicstar.net") (Mavra "mavra.net") (MediaDriven "mediadriven.com") (mIRC-X "mircx.com") (Morat "morat.net") (MusicCity "musiccity.com") (Mysteria "mysteria.net") (Mysterychat "mysterychat.net") (Mystical "mystical.net") (Narancs "narancs.com") (Net-France "net-france.com") (Nevernet "nevernet.net") (Newnet "newnet.net") (Nexusirc "nexusirc.org") (NightStar "nightstar.net") (NitrousNet "nitrousnet.net") (Novernet "novernet.com") (Nullrouted "nullrouted.org") (NullusNet "nullus.net") (OFTC "oftc.net") (OpChat "opchat.org") (Openprojects "openprojects.net") (Othernet "othernet.org") (OtherSide "othersideirc.net") (Outsiderz "outsiderz.com") (OzOrg "oz.org") (Peacefulhaven "peacefulhaven.net") (PhazedIRC "phazedirc.net") (Philchat "philchat.net") (phrozN "phrozn.net") (PiNet "praetorians.org") (Pinoycentral "abs-cbn.com") (Planetarion "planetarion.com") (POLNet "ircnet.pl") (Psionics "psionics.net") (PTirc "ptirc.com.pt") (PTlink "ptlink.net") (PTnet "ptnet.org") (QChat "qchat.net") (QuakeNet "quakenet.org") (Realirc "realirc.org") (RealmNET "realmnet.com") (Rebelchat "rebelchat.org") (Red-Latina "red-latina.org") (RedLatona "redlatona.net") (Relicnet "relic.net") (Rezosup "rezosup.org") (Risanet "risanet.com") (Rubiks "rubiks.net") (Rusnet "nil") (Sandnet "sandnet.net") (Scunc "scunc.net") (SerbianCafe "serbiancafe.ws") (SexNet "sexnet.org") (ShadowFire "shadowfire.org") (ShadowWorld "shadowworld.net") (SkyNet "bronowski.pl") (SlashNET "slashnet.org") (SolarStone "solarstone.net") (Sorcery "sorcery.net") (SourceIRC "sourceirc.net") (SpaceTronix "spacetronix.net") (Spirit-Harmony "spirit-harmony.com") (StarChat "starchat.net") (StarEquinox "starequinox.net") (Starlink "starlink.net") (starlink-irc "starlink-irc.org") (StarWars-IRC "starwars-irc.net") (Stormdancing "stormdancing.net") (Superchat "superchat.org") (Sysopnet "sysopnet.org") (Telstra "telstra.com") (TR-net "dominet.com.tr") (Tri-net "tri-net.org") (TriLink "ft4u.net") (TurkishChat "turkishchat.org") (UberNinja "uberninja.net") (UICN "uicn.net") (UltraIRC "ultrairc.net") (UnderChat "underchat.it") (Undernet "undernet.org") (UnderZ "underz.org") (UniChat "irc.uni-chat.net") (UnionLatina "unionlatina.org") (Univers "univers.org") (UnixR "unixr.net") (Vidgamechat "vidgamechat.com") (VirtuaNet "virtuanet.org") (Vitamina "vitamina.ca") (Voila "voila.fr") (Wahou "wf-net.org") (Warpednet "warped.net") (Weaklinks "weaklinks.net") (Webnet "webchat.org") (WinChat "winchat.net") (WinIRC "winirc.org") (WorldIRC "worldirc.org") (WyldRyde "wyldryde.net") (XentoniX "xentonix.net") (Xevion "xevion.net") (XNet "xnet.org") (XWorld "xworld.org") (ZAnetNet "zanet.net") (ZAnetOrg "zanet.org.za") (ZiRC "zirc.org") (ZUHnet "zuh.net") (Zurna "zurna.net"))))
 '(erc-nick-uniquifier "W")
 '(erc-pals (quote ("morsing" "hartb" "tbberry" "aTypical" "warrier")))
 '(fci-rule-color "#515151")
 '(foreground-color "#657b83")
 '(gnus-agent-queue-mail nil)
 '(gnus-decay-scores t)
 '(gnus-default-charset (quote iso-8859-1))
 '(gnus-demon-handlers (quote ((gnus-demon-add-rescan 30 t) (gnus-demon-add-scanmail 30 t))))
 '(gnus-group-mode-hook (quote (gnus-agent-mode gnus-topic-mode)))
 '(gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\"]\"[#'()]")
 '(gnus-message-archive-group "Sent")
 '(gnus-message-archive-method (quote (nnimap "imap.linux.ibm.com" (nnimap-stream ssl) (nnimap-authenticator login))))
 '(gnus-posting-styles (quote ((".*" (address "davemarq@linux.vnet.ibm.com") (eval (setq smtp-mail-server "na.relay.ibm.com" smtp-mail-service 25 gnus-message-archive-group "Sent"))) ("nnimap\\+gmail:.*" (address "dave.marquardt.tx@gmail.com") (eval (setq smtp-mail-server "smtp.gmail.com" smtp-mail-service 465 gnus-message-archive-group "nnimap+gmail:[Gmail]/Sent Mail"))) ("nnimap\\+daverrtx:.*" (address "daverrtx@gmail.com") (eval (setq smtp-mail-server "smtp.gmail.com" smtp-mail-server 465 gnus-message-archive-group "nnimap+daverrtx:[Gmail]/Sent Mail"))))))
 '(gnus-select-method (quote (nnimap "imap.linux.ibm.com" (nnimap-stream ssl) (nnimap-authenticator login))))
 '(gnus-sum-thread-tree-false-root "")
 '(gnus-sum-thread-tree-indent " ")
 '(gnus-sum-thread-tree-leaf-with-other "├► ")
 '(gnus-sum-thread-tree-root "")
 '(gnus-sum-thread-tree-single-leaf "╰► ")
 '(gnus-sum-thread-tree-vertical "│")
 '(gnus-summary-exit-hook (quote (gnus-summary-bubble-group)))
 '(gnus-summary-line-format "%U%R%z %(%&user-date;  %-15,15f  %B%s%)\\n")
 '(gnus-summary-thread-gathering-function (quote gnus-gather-threads-by-references))
 '(gnus-thread-sort-functions (quote (gnus-thread-sort-by-date gnus-thread-sort-by-score gnus-thread-sort-by-total-score)))
 '(gnus-total-expirable-newsgroups ".*")
 '(gnus-use-adaptive-scoring (quote (line)))
 '(gnus-user-date-format-alist (quote (((gnus-seconds-today) . "           %H:%M") ((gnus-seconds-month) . "     ---%d %H:%M") ((gnus-seconds-year) . "   --%m-%d %H:%M") (t . "%Y-%m-%d %H:%M"))))
 '(ldap-host-parameters-alist (quote (("bluepages.ibm.com" base "ou=bluepages,o=ibm.com" auth simple scope subtree))))
 '(mail-host-address "linux.vnet.ibm.com")
 '(message-from-style (quote angles))
 '(message-send-mail-function (quote message-smtpmail-send-it))
 '(org-agenda-files (quote ("~/org/ibm.org" "~/pers/personal.org")))
 '(org-babel-load-languages (quote ((emacs-lisp . t) (sh . t))))
 '(org-clock-clocktable-default-properties (quote (:maxlevel 2 :scope file :indent nil :formula %)))
 '(org-habit-show-habits-only-for-today nil)
 '(org-log-into-drawer t)
 '(org-modules (quote (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m)))
 '(org-time-clocksum-format (quote (:hours "%d" :require-hours t :minutes ":%02d" :require-minutes t)))
 '(org-todo-keywords (quote ((sequence "TODO(t!)" "WAIT(w!)" "|" "DONE(d!)" "CANCELED(c!)"))))
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.org/packages/"))))
 '(scroll-bar-mode (quote right))
 '(smtpmail-smtp-server "na.relay.ibm.com")
 '(tramp-default-method "scp")
 '(user-full-name "Dave Marquardt")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map (quote ((20 . "#f2777a") (40 . "#f99157") (60 . "#ffcc66") (80 . "#99cc99") (100 . "#66cccc") (120 . "#6699cc") (140 . "#cc99cc") (160 . "#f2777a") (180 . "#f99157") (200 . "#ffcc66") (220 . "#99cc99") (240 . "#66cccc") (260 . "#6699cc") (280 . "#cc99cc") (300 . "#f2777a") (320 . "#f99157") (340 . "#ffcc66") (360 . "#99cc99"))))
 '(vc-annotate-very-old-color nil))

;; gtags
(add-to-list 'load-path "/usr/share/gtags")
(require 'gtags)

;; color themes
;; (add-to-list 'load-path "/usr/local/share/emacs/site-lisp/color-theme-el")
;; (require 'color-theme "color-theme")
;; (load-library "color-theme-library")
;; ;; solarized
;; (add-to-list 'load-path (expand-file-name "~/emacs/emacs-color-theme-solarized"))
;; ;(require 'color-theme-solarized)

;; ;; random theme
;; (funcall (car (nth (random (length color-themes)) color-themes)))

(load-theme (nth (random (length (custom-available-themes)))
		 (custom-available-themes)))

;; ERC
(load-library "erc")
(require 'erc-highlight-nicknames)
(setq erc-autojoin-channels-alist
      '(
	("freenode.net" "##aix" "#bitbucket" "#austin" "#emacs" "#erc" "#gnus" "#mercurial" "#org-mode" "#ppc64"
	 "#xmonad")
	("localhost" "#twitter")
	("oftc.net" "#kernelnewbies")
	("irc.ibm.com" "#4321" "#4321-fedora" "#4321-ubuntu" "#aix" "#cuda" "#fedora-ppc" "#linux" "#linuxc4eb" "#ppclinux" "#ppctoolchain" "#sapphire")
	("irc.geekshed.net" "#jupiterbroadcasting")
	)
      )
(defun drm:erc ()
  (interactive)
  (condition-case nil (erc :server "ipv4-085.austin.ibm.com" :port 57000 :nick "davemq" :password "ibm") ; Bluenet
    (error nil))
  (condition-case nil (erc :server "ipv4-085.austin.ibm.com" :port 57000 :nick "davemqf" :password "freenode") ; Freenode
    (error nil))
  (condition-case nil (erc :server "ipv4-085.austin.ibm.com" :port 57000 :nick "davemqo" :password "oftc") ; OFTC
    (error nil))
  (condition-case nil (erc :server "ipv4-085.austin.ibm.com" :port 57000 :nick "davemqg" :password "geekshed")) ; Geekshed
  (condition-case nil (erc :server "localhost" :nick "davemarq" :password "irc4me") ; BitlBee
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
 '(default ((t (:family "courier" :foundry "adobe" :slant normal :weight normal :height 100 :width normal)))))

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

