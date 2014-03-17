;; package.el (ELPA)
(add-to-list 'load-path (expand-file-name "~/emacs/lisp"))
(require 'package)
;; Any add to list for package-archives (to add marmalade or melpa) goes here
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
					;                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; server
(server-start)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(c-mode-common-hook (quote ((lambda nil (gtags-mode 1)))))
 '(calendar-latitude 30.5151)
 '(calendar-location-name "Round Rock, TX")
 '(calendar-longitude -97.7164666667)
 '(default-frame-alist (quote ((menu-bar-lines . 1) (tool-bar-lines . 1) (width . 122) (height . 40))))
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(erc-hide-list (quote ("JOIN" "PART" "QUIT")))
 '(erc-modules (quote (autojoin button completion irccontrols list match menu move-to-prompt netsplit networks noncommands readonly ring stamp track highlight-nicknames)))
 '(erc-networks-alist (quote ((4-irc "4-irc.com") (A5KNet "a5knet.com") (AbleNet "ablenet.org") (Accessirc "accessirc.net") (Acestar "acestar.org") (Action-IRC "action-irc.net") (AfterNET "afternet.org") (Alternativenet "altnet.org") (AmigaNet "amiganet.org") (AngelEyez "angeleyez.net") (Anothernet "another.net") (ArabChat "arabchat.org") (Ars "arstechnica.com") (AsiaTalk "asiatalk.org") (AstroLink "astrolink.org") (Asylumnet "asylumnet.org") (Austnet "austnet.org") (AwesomeChat "awesomechat.net") (Awesomechristians "awesomechristians.com") (Axenet "axenet.org") (Beyondirc "beyondirc.net") (BGIRC "bulgaria.org") (Blabbernet "blabber.net") (Blitzed "blitzed.org") (BlueNet "ibm.com") (BrasIRC "brasirc.net") (BRASnet "brasnet.org") (BubbleNet "bubblenet.org") (CCnet "christian-chat.net") (Chat-Net "chat-net.org") (Chat-Solutions "chat-solutions.org") (Chatcafe "chatcafe.net") (Chatchannel "chatchannel.org") (ChatCircuit "chatcircuit.com") (Chatlink "chatlink.org") (Chatnet "chatnet.org") (ChatNut "chatnut.net") (Chatpinoy "chatpinoy.com") (ChatPR "chatpr.org") (Chatroom "chatroom.org") (Chatster "chatster.org") (ChatX "chatx.net") (China263 "263.net") (Cineplex1 "cineplex1.com") (CNN "cnn.com") (CobraNet "cobra.net") (Coolchat "coolchat.net") (Criten "criten.net") (Cyberchat "cyberchat.org") (CyGanet "cyga.net") (DALnet "dal.net") (Dark-Tou-Net "d-t-net.de") (Darkfire "darkfire.net") (DarkMyst "darkmyst.org") (Darkserv "darkserv.net") (Darksystem "darksystem.com") (Darktree "darktree.net") (DayNet "daynet.org") (Deepspace "deepspace.org") (Different "different.net") (Digarix "digarix.net") (Digatech "digatech.net") (Digital-Base "digital-base.net") (Digitalirc "digitalirc.net") (Discussioni "discussioni.org") (DorukNet "doruk.net.tr") (DWChat "dwchat.net") (Dynastynet "dynastynet.net") (EFnet nil) (EgyptianIRC "egyptianirc.net") (Eircnet "eircnet.org") (Eleethal "eleethal.com") (EntertheGame "enterthegame.com") (EpiKnet "epiknet.org") (EsperNet "esper.net") (Esprit "esprit.net") (euIRC "euirc.net") (Evilzinc "evilzinc.net") (ExodusIRC "exodusirc.net") (FDFnet "fdfnet.net") (FEFnet "fef.net") (Financialchat "financialchat.com") (Forestnet "forestnet.org") (ForeverChat "foreverchat.net") (Fraggers "fraggers.co.uk") (FreedomChat "freedomchat.net") (FreedomIRC "freedomirc.net") (freenode "freenode.net") (FunNet "funnet.org") (GalaxyNet "galaxynet.org") (Gamesnet "gamesnet.net") (GammaForce "gammaforce.org") (GIKInet "giki.edu.pk") (GizNet "giznet.org") (Globalchat "globalchat.org") (GlobIRC "globirc.net") (Goldchat "goldchat.nl") (Goodchatting "goodchatting.com") (GravityLords "gravitylords.net") (GRnet "irc.gr") (GulfChat "gulfchat.net") (HabberNet "habber.net") (HanIRC "hanirc.org") (Hellenicnet "mirc.gr") (IceNet "icenet.org.za") (ICQnet "icq.com") (iip "anon.iip") (Infatech "infatech.net") (Infinity "infinity-irc.org") (Infomatrix "infomatrix.net") (Inside3D "inside3d.net") (InterlinkChat "interlinkchat.net") (IRC-Chile "irc.cl") (IRC-Hispano "irc-hispano.org") (IRCchat "ircchat.tk") (IRCGate "ircgate.net") (IRCGeeks "ircgeeks.org") (IRChat "irchat.net") (IrcLordz "irclordz.com") (IrcMalta "ircmalta.org") (IRCnet nil) (IRCSoulZ "ircsoulz.net") (IRCSul "wnet.com.br") (IrcTalk "irctalk.net") (Irctoo "irctoo.net") (IRCtown "irc.irctown.net") (IRCworld "ircworld.org") (ircXtreme "ircXtreme.net") (Israelnet "israel.net") (K0wNet "k0w.net") (KDFSnet "kdfs.net") (Kemik "kemik.net") (Kewl\.Org "kewl.org") (Kickchat "kickchat.com") (KidsWorld "kidsworld.org") (Knightnet "knightnet.net") (Konfido\.Net "konfido.net") (Kreynet "krey.net") (Krono "krono.net") (Krushnet "krushnet.org") (LagNet "lagnet.org.za") (Librenet "librenet.net") (LinkNet "link-net.org") (LinuxChix "cats.meow.at\\|linuxchix.org") (Liquidized "liquidized.net") (M-IRC "m-sys.org") (MagicStar "magicstar.net") (Mavra "mavra.net") (MediaDriven "mediadriven.com") (mIRC-X "mircx.com") (Morat "morat.net") (MusicCity "musiccity.com") (Mysteria "mysteria.net") (Mysterychat "mysterychat.net") (Mystical "mystical.net") (Narancs "narancs.com") (Net-France "net-france.com") (Nevernet "nevernet.net") (Newnet "newnet.net") (Nexusirc "nexusirc.org") (NightStar "nightstar.net") (NitrousNet "nitrousnet.net") (Novernet "novernet.com") (Nullrouted "nullrouted.org") (NullusNet "nullus.net") (OFTC "oftc.net") (OpChat "opchat.org") (Openprojects "openprojects.net") (Othernet "othernet.org") (OtherSide "othersideirc.net") (Outsiderz "outsiderz.com") (OzOrg "oz.org") (Peacefulhaven "peacefulhaven.net") (PhazedIRC "phazedirc.net") (Philchat "philchat.net") (phrozN "phrozn.net") (PiNet "praetorians.org") (Pinoycentral "abs-cbn.com") (Planetarion "planetarion.com") (POLNet "ircnet.pl") (Psionics "psionics.net") (PTirc "ptirc.com.pt") (PTlink "ptlink.net") (PTnet "ptnet.org") (QChat "qchat.net") (QuakeNet "quakenet.org") (Realirc "realirc.org") (RealmNET "realmnet.com") (Rebelchat "rebelchat.org") (Red-Latina "red-latina.org") (RedLatona "redlatona.net") (Relicnet "relic.net") (Rezosup "rezosup.org") (Risanet "risanet.com") (Rubiks "rubiks.net") (Rusnet "nil") (Sandnet "sandnet.net") (Scunc "scunc.net") (SerbianCafe "serbiancafe.ws") (SexNet "sexnet.org") (ShadowFire "shadowfire.org") (ShadowWorld "shadowworld.net") (SkyNet "bronowski.pl") (SlashNET "slashnet.org") (SolarStone "solarstone.net") (Sorcery "sorcery.net") (SourceIRC "sourceirc.net") (SpaceTronix "spacetronix.net") (Spirit-Harmony "spirit-harmony.com") (StarChat "starchat.net") (StarEquinox "starequinox.net") (Starlink "starlink.net") (starlink-irc "starlink-irc.org") (StarWars-IRC "starwars-irc.net") (Stormdancing "stormdancing.net") (Superchat "superchat.org") (Sysopnet "sysopnet.org") (Telstra "telstra.com") (TR-net "dominet.com.tr") (Tri-net "tri-net.org") (TriLink "ft4u.net") (TurkishChat "turkishchat.org") (UberNinja "uberninja.net") (UICN "uicn.net") (UltraIRC "ultrairc.net") (UnderChat "underchat.it") (Undernet "undernet.org") (UnderZ "underz.org") (UniChat "irc.uni-chat.net") (UnionLatina "unionlatina.org") (Univers "univers.org") (UnixR "unixr.net") (Vidgamechat "vidgamechat.com") (VirtuaNet "virtuanet.org") (Vitamina "vitamina.ca") (Voila "voila.fr") (Wahou "wf-net.org") (Warpednet "warped.net") (Weaklinks "weaklinks.net") (Webnet "webchat.org") (WinChat "winchat.net") (WinIRC "winirc.org") (WorldIRC "worldirc.org") (WyldRyde "wyldryde.net") (XentoniX "xentonix.net") (Xevion "xevion.net") (XNet "xnet.org") (XWorld "xworld.org") (ZAnetNet "zanet.net") (ZAnetOrg "zanet.org.za") (ZiRC "zirc.org") (ZUHnet "zuh.net") (Zurna "zurna.net"))))
 '(erc-nick-uniquifier "W")
 '(erc-pals (quote ("morsing" "hartb" "tbberry" "aTypical")))
 '(gnus-decay-scores t)
 '(gnus-select-method (quote (nnimap "imap.linux.ibm.com")))
 '(gnus-summary-exit-hook (quote (gnus-summary-bubble-group)))
 '(gnus-thread-sort-functions (quote (gnus-thread-sort-by-number gnus-thread-sort-by-total-score)))
 '(gnus-total-expirable-newsgroups ".*")
 '(gnus-use-adaptive-scoring (quote (line)))
 '(mail-host-address "linux.vnet.ibm.com")
 '(message-from-style (quote angles))
 '(message-send-mail-function (quote message-smtpmail-send-it))
 '(org-time-clocksum-format (quote (:hours "%d" :require-hours t :minutes ":%02d" :require-minutes t)))
 '(scroll-bar-mode (quote right))
 '(smtpmail-smtp-server "na.relay.ibm.com")
 '(tramp-default-method "scp")
 '(user-full-name "Dave Marquardt"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; BBDB
;; (require 'bbdb)
;; (bbdb-initialize 'gnus 'message)
;; (bbdb-insinuate-message)
;; (add-hook 'gnus-startup-hook 'bbdb-insinuate-gnus)
;; (setq bbdb/mail-auto-create-p t)
;; (setq bbdb/news-auto-create-p t)
;; (setq bbdb-use-pop-up t)

;; gtags
(add-to-list 'load-path "/usr/share/gtags")
(require 'gtags)

;; color themes
(require 'color-theme)
(load-library "color-theme-library")
;; solarized
(add-to-list 'load-path (expand-file-name "~/emacs/emacs-color-theme-solarized"))
(require 'color-theme-solarized)

;; random theme
(funcall (car (nth (random (length color-themes)) color-themes)))

;; ERC
(require 'erc)
(require 'erc-highlight-nicknames)
(setq erc-autojoin-channels-alist
      '(
	("freenode.net" "##aix" "#bitbucket" "#austin" "#emacs" "#erc" "#gnus" "#mercurial" "#org-mode" "#ppc64"
	 "#xmonad")
	("localhost" "#twitter")
	("oftc.net" "#kernelnewbies")
	("irc.ibm.com" "#4321" "#4321-fedora" "#4321-ubuntu" "#aix" "#cuda" "#fedora-ppc" "#linux" "#linuxc4eb" "#ppclinux" "#ppctoolchain" "#sapphire")
	)
      )
(defun drm:erc ()
  (interactive)
  (condition-case nil (erc :server "austin.irc.ibm.com" :nick "davemq" :password "irc4me") ; Bluenet
    (error nil))
  (condition-case nil (erc :server "chat.freenode.net" :nick "davemq" :password "irc4me") ; Freenode
    (error nil))
  (condition-case nil (erc :server "irc.oftc.net" :nick "davemq" :password "irc4me") ; OFTC
    (error nil))
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
