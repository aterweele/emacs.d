(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 95 :width normal :foundry "CYRE" :family "Inconsolata"))))
 '(cursor ((t (:background "#E17B1D")))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Buffer-menu-name-width 32)
 '(Buffer-menu-size-width 7)
 '(TeX-engine 'xetex)
 '(TeX-save-query nil)
 '(TeX-view-program-selection
   '(((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "PDF Tools")
     (output-html "xdg-open")))
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(apropos-do-all t)
 '(auth-sources '("~/.authinfo.gpg"))
 '(auto-insert-mode t)
 '(auto-revert-interval 2)
 '(backup-directory-alist '((".*" . "~/.emacs.d/backup")))
 '(battery-mode-line-format "[%b%p%% %t]")
 '(bbdb-ignore-message-alist
   '(("From" . ".*@linkedin.com")
     ("From" . ".*@debbugs.gnu.org")
     ("From" . ".*@meetup.com")
     ("From" . ".*@gwene.org")))
 '(bbdb-mua-pop-up nil)
 '(bbdb-update-records-p 'create)
 '(blink-cursor-mode nil)
 '(browse-url-browser-function 'browse-url-firefox)
 '(c-default-style '((java-mode . "gnu") (awk-mode . "awk") (other . "gnu")))
 '(calendar-latitude 42)
 '(calendar-longitude -76)
 '(cider-prompt-for-symbol nil)
 '(cider-repl-display-help-banner nil)
 '(cider-repl-display-in-current-window t)
 '(cider-repl-prompt-function (lambda (ns) (format "(in-ns '%s) ;; π
" ns)))
 '(cider-save-file-on-load t)
 '(clojure-refactor-map-prefix "")
 '(comint-prompt-read-only t)
 '(compilation-scroll-output 'first-error)
 '(compile-command "make -k -j4")
 '(confirm-kill-emacs 'yes-or-no-p)
 '(counsel-projectile-mode t nil (counsel-projectile))
 '(current-language-environment "UTF-8")
 '(custom-safe-themes
   '("39fe48be738ea23b0295cdf17c99054bb439a7d830248d7e6493c2110bfed6f8" default))
 '(debbugs-gnu-default-packages '("guix-patches"))
 '(debug-on-error nil)
 '(default-input-method "latin-prefix")
 '(display-battery-mode t)
 '(doc-view-continuous t)
 '(ebdb-ignore-header-alist
   '((sender . "invitations@linkedin.com")
     (sender . "noreply@github.com")))
 '(ebdb-mua-auto-update-p 'update)
 '(eldoc-idle-delay 0.1)
 '(electric-pair-mode t)
 '(elfeed-feeds
   '("https://wingolog.org/feed/atom" "https://www.youtube.com/feeds/videos.xml?channel_id=UCAEtp9qQtNwZvnR3A3pWCtA" "http://endlessparentheses.com/atom.xml" "http://www.awkwardzombie.com/awkward.php" "http://pbfcomics.com/feed/" "https://what-if.xkcd.com/feed.atom" "http://emacsninja.com/feed.atom" "http://blog.z3bra.org/rss/feed.xml" "http://existentialcomics.com/rss.xml" "http://emacshorrors.com/feed.atom"))
 '(enable-recursive-minibuffers t)
 '(epa-pinentry-mode 'loopback)
 '(epg-pinentry-mode 'loopback)
 '(erc-autojoin-channels-alist
   '(("libera.chat" "#erc" "#lispcafe" "#emacs" "#clojure" "#guix" "#lobsters" "#gnus")
     ("freenode" "#emacs" "#guix" "#lobsters" "#clojure" "#gnus")))
 '(erc-autojoin-timing 'ident)
 '(erc-echo-timestamps t)
 '(erc-hide-timestamps t)
 '(erc-image-inline-rescale 256)
 '(erc-join-buffer 'bury)
 '(erc-lurker-hide-list '("JOIN" "PART" "QUIT"))
 '(erc-mode-hook
   '(erc-munge-invisibility-spec erc-move-to-prompt-setup erc-button-setup pcomplete-erc-setup erc-imenu-setup visual-line-mode))
 '(erc-modules
   '(completion spelling hl-nicks netsplit fill button match track readonly networks ring autojoin noncommands irccontrols move-to-prompt stamp menu list))
 '(erc-networks-alist
   '((liberachat "libera.chat")
     (4-irc "4-irc.com")
     (A5KNet "a5knet.com")
     (AbleNet "ablenet.org")
     (Accessirc "accessirc.net")
     (Acestar "acestar.org")
     (Action-IRC "action-irc.net")
     (AfterNET "afternet.org")
     (Alternativenet "altnet.org")
     (AmigaNet "amiganet.org")
     (AngelEyez "angeleyez.net")
     (Anothernet "another.net")
     (ArabChat "arabchat.org")
     (Ars "arstechnica.com")
     (AsiaTalk "asiatalk.org")
     (AstroLink "astrolink.org")
     (Asylumnet "asylumnet.org")
     (Austnet "austnet.org")
     (AwesomeChat "awesomechat.net")
     (Awesomechristians "awesomechristians.com")
     (Axenet "axenet.org")
     (Beyondirc "beyondirc.net")
     (BGIRC "bulgaria.org")
     (Blabbernet "blabber.net")
     (Blitzed "blitzed.org")
     (BrasIRC "brasirc.net")
     (BRASnet "brasnet.org")
     (BubbleNet "bubblenet.org")
     (CCnet "christian-chat.net")
     (Chat-Net "chat-net.org")
     (Chat-Solutions "chat-solutions.org")
     (Chatcafe "chatcafe.net")
     (Chatchannel "chatchannel.org")
     (ChatCircuit "chatcircuit.com")
     (Chatlink "chatlink.org")
     (Chatnet "chatnet.org")
     (ChatNut "chatnut.net")
     (Chatpinoy "chatpinoy.com")
     (ChatPR "chatpr.org")
     (Chatroom "chatroom.org")
     (Chatster "chatster.org")
     (ChatX "chatx.net")
     (China263 "263.net")
     (Cineplex1 "cineplex1.com")
     (CNN "cnn.com")
     (CobraNet "cobra.net")
     (Coolchat "coolchat.net")
     (Criten "criten.net")
     (Cyberchat "cyberchat.org")
     (CyGanet "cyga.net")
     (DALnet "dal.net")
     (Dark-Tou-Net "d-t-net.de")
     (Darkfire "darkfire.net")
     (DarkMyst "darkmyst.org")
     (Darkserv "darkserv.net")
     (Darksystem "darksystem.com")
     (Darktree "darktree.net")
     (DayNet "daynet.org")
     (Deepspace "deepspace.org")
     (Different "different.net")
     (Digarix "digarix.net")
     (Digatech "digatech.net")
     (Digital-Base "digital-base.net")
     (Digitalirc "digitalirc.net")
     (Discussioni "discussioni.org")
     (DorukNet "doruk.net.tr")
     (DWChat "dwchat.net")
     (Dynastynet "dynastynet.net")
     (EFnet nil)
     (EgyptianIRC "egyptianirc.net")
     (Eircnet "eircnet.org")
     (Eleethal "eleethal.com")
     (EntertheGame "enterthegame.com")
     (EpiKnet "epiknet.org")
     (EsperNet "esper.net")
     (Esprit "esprit.net")
     (euIRC "euirc.net")
     (Evilzinc "evilzinc.net")
     (ExodusIRC "exodusirc.net")
     (FDFnet "fdfnet.net")
     (FEFnet "fef.net")
     (Financialchat "financialchat.com")
     (Foonetic "foonetic.net")
     (Forestnet "forestnet.org")
     (ForeverChat "foreverchat.net")
     (Fraggers "fraggers.co.uk")
     (FreedomChat "freedomchat.net")
     (FreedomIRC "freedomirc.net")
     (freenode "freenode.net")
     (FunNet "funnet.org")
     (GalaxyNet "galaxynet.org")
     (Gamesnet "gamesnet.net")
     (GammaForce "gammaforce.org")
     (GIKInet "giki.edu.pk")
     (GizNet "giznet.org")
     (Globalchat "globalchat.org")
     (GlobIRC "globirc.net")
     (Goldchat "goldchat.nl")
     (Goodchatting "goodchatting.com")
     (GravityLords "gravitylords.net")
     (GRnet "irc.gr")
     (GulfChat "gulfchat.net")
     (HabberNet "habber.net")
     (HanIRC "hanirc.org")
     (Hellenicnet "mirc.gr")
     (IceNet "icenet.org.za")
     (ICQnet "icq.com")
     (iip "anon.iip")
     (Infatech "infatech.net")
     (Infinity "infinity-irc.org")
     (Infomatrix "infomatrix.net")
     (Inside3D "inside3d.net")
     (InterlinkChat "interlinkchat.net")
     (IRC-Chile "irc.cl")
     (IRC-Hispano "irc-hispano.org")
     (IRCchat "ircchat.tk")
     (IRCGate "ircgate.net")
     (IRCGeeks "ircgeeks.org")
     (IRChat "irchat.net")
     (IrcLordz "irclordz.com")
     (IrcMalta "ircmalta.org")
     (IRCnet nil)
     (IRCSoulZ "ircsoulz.net")
     (IRCSul "wnet.com.br")
     (IrcTalk "irctalk.net")
     (Irctoo "irctoo.net")
     (IRCtown "irc.irctown.net")
     (IRCworld "ircworld.org")
     (ircXtreme "ircXtreme.net")
     (Israelnet "israel.net")
     (K0wNet "k0w.net")
     (KDFSnet "kdfs.net")
     (Kemik "kemik.net")
     (Kewl\.Org "kewl.org")
     (Kickchat "kickchat.com")
     (KidsWorld "kidsworld.org")
     (Knightnet "knightnet.net")
     (Konfido\.Net "konfido.net")
     (Kreynet "krey.net")
     (Krono "krono.net")
     (Krushnet "krushnet.org")
     (LagNet "lagnet.org.za")
     (Librenet "librenet.net")
     (LinkNet "link-net.org")
     (LinuxChix "cats.meow.at\\|linuxchix.org")
     (Liquidized "liquidized.net")
     (M-IRC "m-sys.org")
     (MagicStar "magicstar.net")
     (Mavra "mavra.net")
     (MediaDriven "mediadriven.com")
     (mIRC-X "mircx.com")
     (Morat "morat.net")
     (MusicCity "musiccity.com")
     (Mysteria "mysteria.net")
     (Mysterychat "mysterychat.net")
     (Mystical "mystical.net")
     (Narancs "narancs.com")
     (Net-France "net-france.com")
     (Nevernet "nevernet.net")
     (Newnet "newnet.net")
     (Nexusirc "nexusirc.org")
     (NightStar "nightstar.net")
     (NitrousNet "nitrousnet.net")
     (Novernet "novernet.com")
     (Nullrouted "nullrouted.org")
     (NullusNet "nullus.net")
     (OFTC "oftc.net")
     (OpChat "opchat.org")
     (Openprojects "openprojects.net")
     (Othernet "othernet.org")
     (OtherSide "othersideirc.net")
     (Outsiderz "outsiderz.com")
     (OzOrg "oz.org")
     (Peacefulhaven "peacefulhaven.net")
     (PhazedIRC "phazedirc.net")
     (Philchat "philchat.net")
     (phrozN "phrozn.net")
     (PiNet "praetorians.org")
     (Pinoycentral "abs-cbn.com")
     (Planetarion "planetarion.com")
     (POLNet "ircnet.pl")
     (Psionics "psionics.net")
     (PTirc "ptirc.com.pt")
     (PTlink "ptlink.net")
     (PTnet "ptnet.org")
     (QChat "qchat.net")
     (QuakeNet "quakenet.org")
     (Realirc "realirc.org")
     (RealmNET "realmnet.com")
     (Rebelchat "rebelchat.org")
     (Red-Latina "red-latina.org")
     (RedLatona "redlatona.net")
     (Relicnet "relic.net")
     (Rezosup "rezosup.org")
     (Risanet "risanet.com")
     (Rubiks "rubiks.net")
     (Rusnet "nil")
     (Sandnet "sandnet.net")
     (Scunc "scunc.net")
     (SerbianCafe "serbiancafe.ws")
     (SexNet "sexnet.org")
     (ShadowFire "shadowfire.org")
     (ShadowWorld "shadowworld.net")
     (SkyNet "bronowski.pl")
     (SlashNET "slashnet.org")
     (SolarStone "solarstone.net")
     (Sorcery "sorcery.net")
     (SourceIRC "sourceirc.net")
     (SpaceTronix "spacetronix.net")
     (Spirit-Harmony "spirit-harmony.com")
     (StarChat "starchat.net")
     (StarEquinox "starequinox.net")
     (Starlink "starlink.net")
     (starlink-irc "starlink-irc.org")
     (StarWars-IRC "starwars-irc.net")
     (Stormdancing "stormdancing.net")
     (Superchat "superchat.org")
     (Sysopnet "sysopnet.org")
     (Telstra "telstra.com")
     (TR-net "dominet.com.tr")
     (Tri-net "tri-net.org")
     (TriLink "ft4u.net")
     (TurkishChat "turkishchat.org")
     (UberNinja "uberninja.net")
     (UICN "uicn.net")
     (UltraIRC "ultrairc.net")
     (UnderChat "underchat.it")
     (Undernet "undernet.org")
     (UnderZ "underz.org")
     (UniChat "irc.uni-chat.net")
     (UnionLatina "unionlatina.org")
     (Univers "univers.org")
     (UnixR "unixr.net")
     (Vidgamechat "vidgamechat.com")
     (VirtuaNet "virtuanet.org")
     (Vitamina "vitamina.ca")
     (Voila "voila.fr")
     (Wahou "wf-net.org")
     (Warpednet "warped.net")
     (Weaklinks "weaklinks.net")
     (Webnet "webchat.org")
     (WinChat "winchat.net")
     (WinIRC "winirc.org")
     (WorldIRC "worldirc.org")
     (WyldRyde "wyldryde.net")
     (XentoniX "xentonix.net")
     (Xevion "xevion.net")
     (XNet "xnet.org")
     (XWorld "xworld.org")
     (ZAnetNet "zanet.net")
     (ZAnetOrg "zanet.org.za")
     (ZiRC "zirc.org")
     (ZUHnet "zuh.net")
     (Zurna "zurna.net")))
 '(erc-nick "atw")
 '(erc-nickserv-alist
   '((liberachat "" "This\\s-nickname\\s-is\\s-registered.\\s-Please\\s-choose" "NickServ" "IDENTIFY" nil nil "You\\s-are\\s-now\\s-identified\\s-for\\s-")
     (Ars nil nil "Census" "IDENTIFY" nil nil nil)
     (Austnet "NickOP!service@austnet.org" "/msg\\s-NickOP@austnet.org\\s-identify\\s-<password>" "nickop@austnet.org" "identify" nil nil nil)
     (Azzurra "NickServ!service@azzurra.org" "/ns\\s-IDENTIFY\\s-password" "NickServ" "IDENTIFY" nil nil nil)
     (BitlBee nil nil "&bitlbee" "identify" nil nil nil)
     (BRASnet "NickServ!services@brasnet.org" "/NickServ\\s-IDENTIFY\\s-senha" "NickServ" "IDENTIFY" nil "" nil)
     (DALnet "NickServ!service@dal.net" "/msg\\s-NickServ@services.dal.net\\s-IDENTIFY\\s-<password>" "NickServ@services.dal.net" "IDENTIFY" nil nil nil)
     (freenode "NickServ!NickServ@services." "This\\s-nickname\\s-is\\s-registered.\\s-Please\\s-choose" "NickServ" "IDENTIFY" nil nil "You\\s-are\\s-now\\s-identified\\s-for\\s-")
     (GalaxyNet "NS!nickserv@galaxynet.org" "Please\\s-change\\s-nicks\\s-or\\s-authenticate." "NS@services.galaxynet.org" "AUTH" t nil nil)
     (GRnet "NickServ!service@irc.gr" "This\\s-nickname\\s-is\\s-registered\\s-and\\s-protected." "NickServ" "IDENTIFY" nil nil "Password\\s-accepted\\s--\\s-you\\s-are\\s-now\\s-recognized.")
     (iip "Trent@anon.iip" "type\\s-/squery\\s-Trent\\s-identify\\s-<password>" "Trent@anon.iip" "IDENTIFY" nil "SQUERY" nil)
     (OFTC "NickServ!services@services.oftc.net" nil "NickServ" "IDENTIFY" nil nil "You\\s-are\\s-successfully\\s-identified\\s-as\\s-")
     (Rizon "NickServ!service@rizon.net" "This\\s-nickname\\s-is\\s-registered\\s-and\\s-protected." "NickServ" "IDENTIFY" nil nil "Password\\s-accepted\\s--\\s-you\\s-are\\s-now\\s-recognized.")
     (QuakeNet nil nil "Q@CServe.quakenet.org" "auth" t nil nil)
     (SlashNET "NickServ!services@services.slashnet.org" "/msg\\s-NickServ\\s-IDENTIFY\\s-password" "NickServ@services.slashnet.org" "IDENTIFY" nil nil nil)))
 '(erc-notifications-mode t)
 '(erc-pals '("Apteryx" "marusisch" "technomancy"))
 '(erc-prompt-for-nickserv-password nil)
 '(erc-rename-buffers t)
 '(erc-server "liberachat")
 '(erc-server-alist
   '(("Libera Chat" liberachat "irc.libera.chat" 6697)
     ("4-irc: Random server" 4-irc "4-irc.com" 6667)
     ("A5KNet: Random server" A5KNet "irc.a5knet.com"
      ((6660 6669)))
     ("AbleNet: Random server" AbleNet "irc.ablenet.org" 6667)
     ("Accessirc: Random server" Accessirc "irc.accessirc.net" 6667)
     ("Acestar: Random server" Acestar "irc.acestar.org" 6667)
     ("Action-IRC: Random server" Action-IRC "irc.action-irc.net"
      ((6660 6669)))
     ("AfterNET: Random server" AfterNET "irc.afternet.org" 6667)
     ("Alternativenet: Random server" Alternativenet "irc.altnet.org" 6667)
     ("AmigaNet: Random server" AmigaNet "irc.amiganet.org" 6667)
     ("AngelEyez: Random server" AngelEyez "irc.angeleyez.net"
      ((6666 7000)))
     ("AnotherNet: Random server" Anothernet "irc.another.net"
      (6667 7000))
     ("ArabChat: Random server" ArabChat "irc.arabchat.org"
      ((6660 6667)))
     ("Ars-OpenIRC: Random server" Ars "irc.arstechnica.com" 6667)
     ("AsiaTalk: Random server" AsiaTalk "irc.asiatalk.org"
      ((6667 6669)
       7000))
     ("AstroLink: Random server" AstroLink "irc.astrolink.org"
      ((6660 6667)))
     ("Asylumnet: Random server" Asylumnet "irc.asylum-net.org"
      ((6661 6669)
       7000 7777))
     ("Austnet: Random AU server" Austnet "au.austnet.org" 6667)
     ("Austnet: Random NZ server" Austnet "nz.austnet.org" 6667)
     ("Austnet: Random SG server" Austnet "sg.austnet.org" 6667)
     ("Austnet: Random US server" Austnet "us.austnet.org" 6667)
     ("AwesomeChat: Random server" AwesomeChat "irc.awesomechat.net"
      ((6661 6669)))
     ("Awesomechristians: Random server" Awesomechristians "irc.awesomechristians.com" 7000)
     ("Axenet: Random server" Axenet "irc.axenet.org"
      ((6660 6667)))
     ("BeyondIRC: Random server" Beyondirc "irc.beyondirc.net"
      ((6660 6669)))
     ("BGIRC: Random server" BGIRC "irc.bulgaria.org"
      ((6666 6669)
       7000))
     ("Blabbernet: Random server" Blabbernet "irc.blabber.net"
      (6667 7000))
     ("Blitzed: Random server" Blitzed "irc.blitzed.org"
      (6667 7000))
     ("Brasirc: Random server" Brasirc "irc.brasirc.net"
      ((6666 6667)))
     ("Brasirc: BR, PA, Belem" Brasirc "irc.libnet.com.br"
      ((6666 6668)
       7777 8002))
     ("BRASnet: Random European server" BRASnet "eu.brasnet.org"
      ((6665 6669)))
     ("BRASnet: Random US server" BRASnet "us.brasnet.org"
      ((6665 6669)))
     ("BubbleNet: Random server" BubbleNet "irc.bubblenet.org"
      ((6667 6669)))
     ("CCnet: Random server" CCnet "irc.cchat.net"
      (6667 7000))
     ("CCnet: US, TX, Dallas" CCnet "irc2.cchat.net"
      (6667 7000))
     ("Chat-Net: Random server" Chat-Net "irc.chat-net.org" 6667)
     ("Chat-Solutions: Random server" Chat-Solutions "irc.chat-solutions.org" 6667)
     ("Chatcafe: Random server" Chatcafe "irc.chatcafe.net" 6667)
     ("Chatchannel: Random server" Chatchannel "irc.chatchannel.org"
      ((6666 6669)
       7000))
     ("ChatCircuit: Random server" ChatCircuit "irc.chatcircuit.com" 6668)
     ("Chatlink: Random server" Chatlink "irc.chatlink.org" 6667)
     ("Chatnet: Random AU server" Chatnet "au.chatnet.org" 6667)
     ("Chatnet: Random EU server" Chatnet "eu.chatnet.org" 6667)
     ("Chatnet: Random US server" Chatnet "us.chatnet.org" 6667)
     ("ChatNut: Random server" ChatNut "irc.chatnut.net"
      (6667 7000))
     ("Chatpinoy: Random server" Chatpinoy "irc.chatpinoy.com" 6667)
     ("ChatPR: Random server" ChatPR "irc.chatpr.org" 6667)
     ("Chatroom: Random server" Chatroom "irc.chatroom.org" 6667)
     ("Chatster: Random server" Chatster "irc.chatster.org" 6667)
     ("ChatX: Random server" ChatX "irc.chatx.net" 6667)
     ("China263: Random server" China263 "irc.263.net" 6667)
     ("Cineplex1: Random server" Cineplex1 "irc.cineplex1.com"
      ((6666 6668)))
     ("CNN: CNN News discussions" CNN "chat.cnn.com"
      ((6667 6669)
       7000))
     ("CobraNet: Random server" CobraNet "irc.cobra.net" 6667)
     ("Coolchat: Random server" Coolchat "irc.coolchat.net" 6667)
     ("Criten: Random server" Criten "irc.criten.net" 6667)
     ("Cyberchat: Random server" Cyberchat "irc.cyberchat.org"
      (6667 6668))
     ("CyGanet: Random server" CyGanet "irc.cyga.net" 6667)
     ("DALnet: AS, MY, Coins" DALnet "coins.dal.net"
      ((6663 6668)
       7000))
     ("DALnet: CA, ON, Sodre" DALnet "sodre.on.ca.dal.net"
      ((6661 6669)
       7000))
     ("DALnet: EU, DE, Nexgo" DALnet "nexgo.de.eu.dal.net"
      ((6664 6669)
       7000))
     ("DALnet: EU, NO, Powertech" DALnet "powertech.no.eu.dal.net"
      ((6666 6667)
       7000))
     ("DALnet: EU, SE, Borg" DALnet "borg.se.eu.dal.net"
      (6667 7000))
     ("DALnet: EU, SE, Ced" DALnet "ced.se.eu.dal.net"
      (6667 7000))
     ("DALnet: US, GA, Astro" DALnet "astro.ga.us.dal.net"
      ((6661 6669)
       7000))
     ("DALnet: US, GA, Dragons" DALnet "dragons.ga.us.dal.net"
      ((6661 6669)
       7000))
     ("DALnet: US, GA, Elysium" DALnet "elysium.ga.us.dal.net"
      ((6661 6669)
       7000))
     ("DALnet: US, MA, Twisted" DALnet "twisted.ma.us.dal.net"
      ((6660 6669)
       7001 7002))
     ("DALnet: US, MO, Global" DALnet "global.mo.us.dal.net"
      ((6661 6669)
       7000))
     ("DALnet: US, NJ, Liberty" DALnet "liberty.nj.us.dal.net"
      ((6662 6669)
       7000))
     ("DALnet: US, VA, Wombat" DALnet "wombat.va.us.dal.net"
      ((6661 6669)
       7000))
     ("DALnet: Random EU server" DALnet "irc.eu.dal.net" 6667)
     ("DALnet: Random US server" DALnet "irc.dal.net"
      ((6660 6667)))
     ("Dark-Tou-Net: Random server" Dark-Tou-Net "irc.d-t-net.de" 6667)
     ("Darkfire: Random server" Darkfire "irc.darkfire.net"
      (6667 7000 8000))
     ("DarkMyst: Random server" DarkMyst "irc.darkmyst.org" 6667)
     ("Darkserv: Random server" Darkserv "irc.darkserv.net" 6667)
     ("Darksystem: Random server" Darksystem "irc.darksystem.com" 6667)
     ("Darktree: Random server" Darktree "irc.darktree.net" 6667)
     ("DayNet: Random server" DayNet "irc.daynet.org" 6667)
     ("Deepspace: Disability network" Deepspace "irc.deepspace.org" 6667)
     ("Different: Random server" Different "irc.different.net" 6667)
     ("Digarix: Random server" Digarix "irc.digarix.net" 6667)
     ("Digatech: Random server" Digatech "irc.digatech.net" 6667)
     ("Digital-Base: Random server" Digital-Base "irc.digital-base.net"
      ((6660 7000)))
     ("Digitalirc: Random server" Digitalirc "irc.digitalirc.net" 6667)
     ("Discussioni: Random server" Discussioni "irc.discussioni.org"
      ((6666 6669)))
     ("DorukNet: TR, Istanbul" DorukNet "irc.doruk.net.tr"
      ((6660 6669)
       7000 8888))
     ("Dreamcast: Random server" Dreamcast "irc0.dreamcast.com" 6667)
     ("DWChat: Random server" DWChat "irc.dwchat.net" 6667)
     ("Dynastynet: Random server" Dynastynet "irc.dynastynet.net" 6667)
     ("EFnet: CA, AB, Edmonton (arcti)" EFnet "irc.arcti.ca" 6667)
     ("EFnet: CA, AB, Edmonton (mpls)" EFnet "irc.mpls.ca"
      ((6660 6669)))
     ("EFnet: CA, ON, Toronto" EFnet "irc2.magic.ca" 6667)
     ("EFnet: CA, QB, Montreal" EFnet "irc.qeast.net" 6667)
     ("EFnet: EU, DK, Aarhus" EFnet "irc.inet.tele.dk" 6667)
     ("EFnet: EU, FI, Helsinki" EFnet "efnet.cs.hut.fi" 6667)
     ("EFnet: EU, FR, Paris" EFnet "irc.isdnet.fr"
      ((6667 6669)))
     ("EFnet: EU, NL, Amsterdam" EFnet "efnet.vuurwerk.nl" 6667)
     ("EFnet: EU, NO, Homelien" EFnet "irc.homelien.no"
      (5190
       (6666 6667)
       (7000 7001)))
     ("EFnet: EU, NO, Oslo" EFnet "irc.daxnet.no"
      ((6666 7000)))
     ("EFnet: EU, PL, Warszawa" EFnet "irc.efnet.pl" 6667)
     ("EFnet: EU, RU, Moscow" EFnet "irc.rt.ru"
      ((6661 6669)))
     ("EFnet: EU, SE, Dalarna" EFnet "irc.du.se"
      ((6666 6669)))
     ("EFnet: EU, SE, Gothenberg" EFnet "irc.hemmet.chalmers.se"
      ((6666 7000)))
     ("EFnet: EU, SE, Sweden" EFnet "irc.light.se" 6667)
     ("EFnet: EU, UK, London (carrier)" EFnet "irc.carrier1.net.uk"
      ((6666 6669)))
     ("EFnet: EU, UK, London (demon)" EFnet "efnet.demon.co.uk"
      ((6665 6669)))
     ("EFnet: ME, IL, Inter" EFnet "irc.inter.net.il"
      ((6665 6669)))
     ("EFnet: US, AZ, Phoenix" EFnet "irc.easynews.com"
      (6660
       (6665 6667)
       7000))
     ("EFnet: US, CA, San Jose" EFnet "irc.concentric.net"
      ((6665 6668)))
     ("EFnet: US, CA, San Luis Obispo" EFnet "irc.prison.net"
      ((6666 6667)))
     ("EFnet: US, GA, Atlanta" EFnet "irc.mindspring.com"
      ((6660 6669)))
     ("EFnet: US, MI, Ann Arbor" EFnet "irc.umich.edu" 6667)
     ("EFnet: US, MN, Twin Cities" EFnet "irc.umn.edu"
      ((6665 6669)))
     ("EFnet: US, NY, Mineola" EFnet "irc.lightning.net"
      ((6665 7000)))
     ("EFnet: US, NY, New York (east)" EFnet "irc.east.gblx.net" 6667)
     ("EFnet: US, NY, New York (flamed)" EFnet "irc.flamed.net"
      ((6665 6669)))
     ("EFnet: US, TX, Houston" EFnet "ircd.lagged.org"
      ((6660 6669)))
     ("EFnet: US, VA, Ashburn" EFnet "irc.secsup.uu.net"
      ((6665 6669)
       8080))
     ("EFnet: Random AU server" EFnet "au.rr.efnet.net" 6667)
     ("EFnet: Random CA server" EFnet "ca.rr.efnet.net" 6667)
     ("EFnet: Random EU server" EFnet "eu.rr.efnet.net" 6667)
     ("EFnet: Random US server" EFnet "us.rr.efnet.net" 6667)
     ("EgyptianIRC: Random server" EgyptianIRC "irc.egyptianirc.net"
      ((6667 6669)))
     ("Eircnet: Random server" Eircnet "irc.eircnet.org"
      ((6660 6669)
       7000))
     ("Eleethal: Random server" Eleethal "irc.eleethal.com"
      ((6660 6669)
       7000))
     ("EntertheGame: Random server" EntertheGame "irc.enterthegame.com"
      ((6667 6669)))
     ("EpiKnet: Random server" EpiKnet "irc.epiknet.org"
      ((6660 6669)
       7000 7001))
     ("EsperNet: Random server" EsperNet "irc.esper.net"
      (5555
       (6667 6669)))
     ("Esprit: Random server" Esprit "irc.esprit.net" 6667)
     ("euIRC: Random server" euIRC "irc.euirc.net"
      ((6665 6669)))
     ("Evilzinc: Random server" Evilzinc "irc.evilzinc.net"
      ((6660 6669)
       7000 8000))
     ("ExodusIRC: Random server" ExodusIRC "irc.exodusirc.net"
      ((6660 6669)))
     ("FDFnet: Random server" FDFnet "irc.fdfnet.net"
      ((6666 6668)
       9999))
     ("FEFnet: Random server" FEFnet "irc.fef.net" 6667)
     ("Financialchat: Random server" Financialchat "irc.financialchat.com"
      ((6667 6669)
       7000))
     ("Foonetic: Random server" Foonetic "irc.foonetic.net"
      (6697 7001))
     ("Forestnet: Random server" Forestnet "irc.forestnet.org"
      (6667 7000))
     ("ForeverChat: Random server" ForeverChat "irc.foreverchat.net"
      ((6660 6669)
       7000))
     ("Fraggers: Random server" Fraggers "irc.fraggers.co.uk"
      ((6661 6669)
       (7000 7001)))
     ("FreedomChat: Random server" FreedomChat "chat.freedomchat.net" 6667)
     ("FreedomIRC: Random server" FreedomIRC "irc.freedomirc.net" 6667)
     ("Freenode: Random server" freenode "irc.freenode.net" 7000)
     ("Freenode: Random EU server" freenode "irc.eu.freenode.net" 7000)
     ("Freenode: Random US server" freenode "irc.us.freenode.net" 7000)
     ("FunNet: Random server" FunNet "irc.funnet.org" 6667)
     ("Galaxynet: Random server" GalaxyNet "irc.galaxynet.org"
      ((6662 6668)
       7000))
     ("Galaxynet: AU, NZ, Auckland" GalaxyNet "auckland.nz.galaxynet.org"
      ((6661 6669)))
     ("Galaxynet: EU, BE, Online" GalaxyNet "online.be.galaxynet.org"
      ((6661 6669)))
     ("Galaxynet: US, FL, Florida" GalaxyNet "gymnet.us.galaxynet.org"
      ((6661 6669)))
     ("Gamesnet: Random east US server" Gamesnet "east.gamesnet.net" 6667)
     ("Gamesnet: Random west US server" Gamesnet "west.gamesnet.net" 6667)
     ("GammaForce: Random server" GammaForce "irc.gammaforce.org"
      ((6660 6669)
       7000))
     ("GIKInet: Random server" GIKInet "irc.giki.edu.pk" 6667)
     ("GizNet: Random server" GizNet "irc.giznet.org"
      ((6666 6669)
       7000))
     ("Globalchat: Random server" Globalchat "irc.globalchat.org" 6667)
     ("GlobIRC: Random server" GlobIRC "irc.globirc.net"
      ((6666 6668)
       9999))
     ("Goldchat: Random server" Goldchat "irc.goldchat.nl"
      ((6660 6669)
       7000))
     ("Goodchatting: Random server" Goodchatting "irc.goodchatting.com"
      ((6661 6669)
       7000))
     ("GravityLords: Random server" GravityLords "irc.gravitylords.net" 6667)
     ("Grnet: Random EU server" GRnet "gr.irc.gr"
      (6667 7000))
     ("Grnet: Random server" GRnet "srv.irc.gr"
      (6667 7000))
     ("Grnet: Random US server" GRnet "us.irc.gr"
      (6667 7000))
     ("GulfChat: Random server" GulfChat "irc.gulfchat.net"
      ((6660 6669)))
     ("HabberNet: Random server" HabberNet "irc.habber.net" 6667)
     ("HanIRC: Random server" HanIRC "irc.hanirc.org" 6667)
     ("Hellenicnet: Random server" Hellenicnet "irc.mirc.gr"
      (6667 7000))
     ("IceNet: Random server" IceNet "irc.icenet.org.za" 6667)
     ("ICQnet: Random server" ICQnet "irc.icq.com" 6667)
     ("Infatech: Random server" Infatech "irc.infatech.net"
      ((6660 6669)))
     ("Infinity: Random server" Infinity "irc.infinity-irc.org" 6667)
     ("Infomatrix: Random server" Infomatrix "irc.infomatrix.net" 6667)
     ("Inside3D: Random server" Inside3D "irc.inside3d.net"
      ((6661 6669)))
     ("InterlinkChat: Random server" InterlinkChat "irc.interlinkchat.net"
      ((6660 6669)
       7000))
     ("IRC-Chile: Random server" IRC-Chile "irc.cl" 6667)
     ("IRC-Hispano: Random server" IRC-Hispano "irc.irc-hispano.org" 6667)
     ("IRCchat: Random server" IRCchat "irc.ircchat.tk" 6667)
     ("IRCGate: Random server" IRCGate "irc.ircgate.net"
      ((6667 6669)))
     ("IRCGeeks: Random server" IRCGeeks "irc.ircgeeks.org"
      ((6660 6669)))
     ("IRChat: Random server" IRChat "irc.irchat.net"
      ((6660 6669)))
     ("IrcLordz: Random server" IrcLordz "irc.irclordz.com" 6667)
     ("IrcMalta: Random server" IrcMalta "irc.ircmalta.org"
      ((6660 6667)))
     ("IRCnet: EU, FR, Random" IRCnet "irc.fr.ircnet.net" 6667)
     ("IRCnet: EU, IT, Random" IRCnet "irc.ircd.it"
      ((6665 6669)))
     ("IRCnet: AS, IL, Haifa" IRCnet "ircnet.netvision.net.il"
      ((6661 6668)))
     ("IRCnet: AS, JP, Tokyo" IRCnet "irc.tokyo.wide.ad.jp" 6667)
     ("IRCnet: AS, TW, Seed" IRCnet "irc.seed.net.tw" 6667)
     ("IRCnet: EU, AT, Linz" IRCnet "linz.irc.at"
      ((6666 6668)))
     ("IRCnet: EU, AT, Wien" IRCnet "vienna.irc.at"
      ((6666 6669)))
     ("IRCnet: EU, BE, Brussels" IRCnet "irc.belnet.be" 6667)
     ("IRCnet: EU, BE, Zaventem" IRCnet "ircnet.wanadoo.be"
      ((6661 6669)))
     ("IRCnet: EU, CZ, Prague" IRCnet "irc.felk.cvut.cz" 6667)
     ("IRCnet: EU, DE, Berlin" IRCnet "irc.fu-berlin.de"
      ((6665 6669)))
     ("IRCnet: EU, DE, Dusseldorf" IRCnet "irc.freenet.de"
      ((6665 6669)))
     ("IRCnet: EU, DE, Stuttgart" IRCnet "irc.belwue.de"
      ((6665 6669)))
     ("IRCnet: EU, DK, Copenhagen" IRCnet "irc.ircnet.dk" 6667)
     ("IRCnet: EU, EE, Tallinn" IRCnet "irc.estpak.ee"
      ((6666 6668)))
     ("IRCnet: EU, FI, Helsinki" IRCnet "irc.cs.hut.fi" 6667)
     ("IRCnet: EU, GR, Thessaloniki" IRCnet "irc.ee.auth.gr"
      ((6666 6669)))
     ("IRCnet: EU, HU, Budapest" IRCnet "irc.elte.hu" 6667)
     ("IRCnet: EU, IS, Reykjavik (ircnet)" IRCnet "irc.ircnet.is"
      ((6661 6669)))
     ("IRCnet: EU, IS, Reykjavik (simnet)" IRCnet "irc.simnet.is"
      ((6661 6669)))
     ("IRCnet: EU, IT, Rome" IRCnet "irc.tin.it"
      ((6665 6669)))
     ("IRCnet: EU, NL, Amsterdam (nlnet)" IRCnet "irc.nl.uu.net"
      ((6660 6669)))
     ("IRCnet: EU, NL, Amsterdam (xs4all)" IRCnet "irc.xs4all.nl"
      ((6660 6669)))
     ("IRCnet: EU, NL, Enschede" IRCnet "irc.snt.utwente.nl"
      ((6660 6669)))
     ("IRCnet: EU, NL, Nijmegen" IRCnet "irc.sci.kun.nl"
      ((6660 6669)))
     ("IRCnet: EU, NO, Oslo" IRCnet "irc.ifi.uio.no" 6667)
     ("IRCnet: EU, NO, Trondheim" IRCnet "irc.pvv.ntnu.no" 6667)
     ("IRCnet: EU, PL, Lublin" IRCnet "lublin.irc.pl"
      ((6666 6668)))
     ("IRCnet: EU, PL, Warsaw" IRCnet "warszawa.irc.pl"
      ((6666 6668)))
     ("IRCnet: EU, RU, Moscow" IRCnet "irc.msu.ru" 6667)
     ("IRCnet: EU, SE, Lulea" IRCnet "irc.ludd.luth.se"
      ((6661 6669)))
     ("IRCnet: EU, UK, London (Demon)" IRCnet "ircnet.demon.co.uk"
      ((6665 6669)))
     ("IRCnet: EU, UK, London (Easynet)" IRCnet "ircnet.easynet.co.uk"
      ((6666 6669)))
     ("IRCnet: US, NY, New York" IRCnet "irc.stealth.net"
      ((6660 6669)))
     ("IRCnet: Random AU server" IRCnet "au.ircnet.org" 6667)
     ("IRCnet: Random EU server" IRCnet "eu.ircnet.org"
      ((6665 6668)))
     ("IRCnet: Random US server" IRCnet "us.ircnet.org"
      ((6665 6668)))
     ("IRCSoulZ: Random server" IRCSoulZ "irc.ircsoulz.net" 6667)
     ("IRCSul: BR, PR, Maringa" IRCSul "irc.wnet.com.br" 6667)
     ("IrcTalk: Random server" IrcTalk "irc.irctalk.net"
      ((6660 6669)))
     ("Irctoo: Random server" Irctoo "irc.irctoo.net" 6667)
     ("IRCtown: Random server" IRCtown "irc.irctown.net"
      ((6666 6669)
       7000))
     ("IRCworld: Random server" IRCworld "irc.ircworld.org" 6667)
     ("ircXtreme: Random server" ircXtreme "irc.ircXtreme.net"
      ((6660 6669)))
     ("Israelnet: Random server" Israelnet "irc.israel.net" 6667)
     ("K0wNet: Random server" K0wNet "irc.k0w.net"
      ((6660 6669)))
     ("KDFSnet: Random server" KDFSnet "irc.kdfs.net"
      ((6667 6669)))
     ("Kemik: Random server" Kemik "irc.kemik.net" 6667)
     ("Kewl.Org: Random server" Kewl\.Org "irc.kewl.org"
      (6667 7000))
     ("Kickchat: Random server" Kickchat "irc.kickchat.com"
      ((6660 6669)
       7000))
     ("Kidsworld: Random server" KidsWorld "irc.kidsworld.org"
      ((6666 6669)))
     ("Knightnet: AF, ZA, Durban" Knightnet "orc.dbn.za.knightnet.net"
      (6667 5555))
     ("Knightnet: US, CA, Goldengate" Knightnet "goldengate.ca.us.knightnet.net"
      (6667 5555))
     ("Konfido.Net: Random server" Konfido\.Net "irc.konfido.net" 6667)
     ("KreyNet: Random server" Kreynet "irc.krey.net" 6667)
     ("Krono: Random server" Krono "irc.krono.net"
      ((6660 6669)
       7000))
     ("Krushnet: Random server" Krushnet "irc.krushnet.org" 6667)
     ("LagNet: Random server" LagNet "irc.lagnet.org.za" 6667)
     ("LagNet: AF, ZA, Cape Town" LagNet "reaper.lagnet.org.za" 6667)
     ("LagNet: AF, ZA, Johannesburg" LagNet "mystery.lagnet.org.za" 6667)
     ("Librenet: Random server" Librenet "irc.librenet.net" 6667)
     ("LinkNet: Random server" LinkNet "irc.link-net.org"
      ((6667 6669)))
     ("LinuxChix: Random server" LinuxChix "irc.linuxchix.org" 6667)
     ("Liquidized: Random server" Liquidized "irc.liquidized.net"
      (6667 7000))
     ("M-IRC: Random server" M-IRC "irc.m-sys.org"
      ((6667 6669)))
     ("MagicStar: Random server" MagicStar "irc.magicstar.net" 6667)
     ("Mavra: Random server" Mavra "irc.mavra.net" 6667)
     ("MediaDriven: Random server" MediaDriven "irc.mediadriven.com"
      ((6667 6669)))
     ("mIRC-X: Random server" mIRC-X "irc.mircx.com"
      (6667 7000))
     ("Morat: Random server" Morat "irc.morat.net" 6667)
     ("MusicCity: Random server" MusicCity "chat.musiccity.com" 6667)
     ("Mysteria: Random server" Mysteria "irc.mysteria.net"
      (6667 7000))
     ("Mysterychat: Random server" Mysterychat "irc.mysterychat.net"
      ((6667 6669)))
     ("Mystical: Random server" Mystical "irc.mystical.net"
      (6667 7000))
     ("Narancs: Random server" Narancs "irc.narancs.com"
      ((6667 6669)
       7000))
     ("Net-France: Random server" Net-France "irc.net-france.com" 6667)
     ("Nevernet: Random server" Nevernet "irc.nevernet.net" 6667)
     ("Newnet: Random server" Newnet "irc.newnet.net"
      ((6665 6667)))
     ("Nexusirc: Random server" Nexusirc "irc.nexusirc.org" 6667)
     ("Nightstar: Random server" NightStar "irc.nightstar.net"
      ((6665 6669)))
     ("NitrousNet: Random server" NitrousNet "irc.nitrousnet.net" 6667)
     ("Novernet: Random server" Novernet "irc.novernet.com"
      ((6665 6669)
       7000))
     ("Nullrouted: Random server" Nullrouted "irc.nullrouted.org"
      ((6666 6669)
       7000))
     ("NullusNet: Random server" NullusNet "irc.nullus.net" 6667)
     ("OFTC: Random server" OFTC "irc.oftc.net"
      ((6667 6670)
       7000))
     ("OpChat: Random server" OpChat "irc.opchat.org"
      ((6667 6669)))
     ("Othernet: Random server" Othernet "irc.othernet.org" 6667)
     ("Othernet: US, FL, Miami" Othernet "miami.fl.us.othernet.org" 6667)
     ("Othernet: US, MO, StLouis" Othernet "stlouis.mo.us.othernet.org" 6667)
     ("Otherside: Random server" OtherSide "irc.othersideirc.net" 6667)
     ("Outsiderz: Random server" Outsiderz "irc.outsiderz.com" 6667)
     ("OzOrg: AU, Perth" OzOrg "iinet.perth.oz.org" 6667)
     ("Peacefulhaven: Random server" Peacefulhaven "irc.peacefulhaven.net"
      ((6660 6669)
       7000))
     ("PhazedIRC: Random server" PhazedIRC "irc.phazedirc.net" 6667)
     ("Philchat: Random server" Philchat "irc.philchat.net" 6667)
     ("phrozN: Random server" phrozN "irc.phrozn.net" 6667)
     ("PiNet: Random server" PiNet "irc.praetorians.org"
      ((6665 6669)))
     ("Pinoycentral: Random server" Pinoycentral "chat.abs-cbn.com" 6667)
     ("Planetarion: Random server" Planetarion "irc.planetarion.com" 6667)
     ("POLNet: Random server" POLNet "irc.ircnet.pl" 6667)
     ("Psionics: CA, PQ, Montreal" Psionics "chat.psionics.net"
      ((6660 6669)))
     ("PTirc: Random server" PTirc "irc.ptirc.com.pt" 6667)
     ("PTlink: Random server" PTlink "irc.ptlink.net" 6667)
     ("PTnet: Random server" PTnet "irc.ptnet.org" 6667)
     ("QChat: Random server" QChat "irc.qchat.net" 6667)
     ("QuakeNet: Real Server" QuakeNet "irc.quakenet.org"
      ((6667 6669)))
     ("QuakeNet: Random German server" QuakeNet "de.quakenet.org"
      ((6667 6669)))
     ("QuakeNet: Random server" QuakeNet "irc.quakenet.eu.org"
      ((6667 6669)))
     ("QuakeNet: Random Swedish server" QuakeNet "se.quakenet.org"
      ((6667 6669)))
     ("QuakeNet: Random UK server" QuakeNet "uk.quakenet.org"
      ((6667 6669)))
     ("QuakeNet: Random US server" QuakeNet "us.quakenet.org"
      ((6667 6669)))
     ("Realirc: Random server" Realirc "irc.realirc.org" 6667)
     ("RealmNET: Random server" RealmNET "irc.realmnet.com" 6667)
     ("Rebelchat: Random server" Rebelchat "irc.rebelchat.org" 6667)
     ("Red-Latina: Random server" Red-Latina "irc.red-latina.org" 6667)
     ("RedLatona: Random server" RedLatona "irc.redlatona.net"
      (6667 6668))
     ("Relicnet: Random server" Relicnet "irc.relic.net" 6667)
     ("Rezosup: Random server" Rezosup "irc.rezosup.org" 6667)
     ("Risanet: Random server" Risanet "irc.risanet.com"
      ((6667 6669)))
     ("Rizon: Random server" Rizon "irc.rizon.net"
      (6633
       (6660 6669)
       6697 7000 8080 9999))
     ("Rubiks: Random server" Rubiks "irc.rubiks.net" 6667)
     ("Rusnet: EU, RU, Tomsk" Rusnet "irc.tsk.ru"
      ((6667 6669)
       (7770 7775)))
     ("Rusnet: EU, RU, Vladivostok" Rusnet "irc.vladivostok.ru"
      ((6667 6669)
       (7770 7775)))
     ("Rusnet: EU, UA, Kiev" Rusnet "irc.kar.net"
      ((6667 6669)
       (7770 7775)))
     ("Sandnet: Random server" Sandnet "irc.sandnet.net"
      ((6660 6669)
       7000))
     ("Scunc: Random server" Scunc "irc.scunc.net" 6667)
     ("SerbianCafe: Random server" SerbianCafe "irc.serbiancafe.ws"
      ((6665 6669)))
     ("SexNet: Random server" SexNet "irc.sexnet.org" 6667)
     ("ShadowFire: Random server" ShadowFire "irc.shadowfire.org" 6667)
     ("ShadowWorld: Random server" ShadowWorld "irc.shadowworld.net" 6667)
     ("SkyNet: Random server" SkyNet "irc.bronowski.pl"
      ((6666 6668)))
     ("Slashnet: Random server" Slashnet "irc.slashnet.org" 6667)
     ("SolarStone: Random server" SolarStone "irc.solarstone.net"
      ((6660 6669)))
     ("Sorcerynet: Random server" Sorcery "irc.sorcery.net"
      (6667 7000 9000))
     ("Sorcerynet: EU, SE, Karlskrona" Sorcery "nexus.sorcery.net"
      (6667 7000 9000))
     ("Sorcerynet: US, CA, Palo Alto" Sorcery "kechara.sorcery.net"
      (6667 7000 9000))
     ("SourceIRC: Random server" SourceIRC "irc.sourceirc.net"
      ((6667 6669)
       7000))
     ("SpaceTronix: Random server" SpaceTronix "irc.spacetronix.net"
      ((6660 6669)
       7000))
     ("Spirit-Harmony: Random server" Spirit-Harmony "irc.spirit-harmony.com"
      ((6661 6669)))
     ("StarChat: Random server" StarChat "irc.starchat.net"
      ((6667 6669)
       7000))
     ("StarEquinox: Random server" StarEquinox "irc.starequinox.net"
      ((6660 6669)))
     ("StarLink: Random server" Starlink "irc.starlink.net"
      ((6660 6669)))
     ("StarLink-irc: Random server" starlink-irc "irc.starlink-irc.org" 6667)
     ("StarWars-IRC: Random server" StarWars-IRC "irc.starwars-irc.net"
      ((6663 6667)))
     ("Stormdancing: Random server" Stormdancing "irc.stormdancing.net"
      ((6664 6669)
       7000 9000))
     ("Superchat: Random server" Superchat "irc.superchat.org"
      ((6660 6668)))
     ("Sysopnet: Random server" Sysopnet "irc.sysopnet.org"
      ((6666 6668)))
     ("Telstra: Random server" Telstra "irc.telstra.com"
      ((6667 6669)))
     ("TR-net: EU, TR, Ankara" TR-net "irc.dominet.com.tr" 6667)
     ("TR-net: EU, Tr, Istanbul" TR-net "irc.teklan.com.tr" 6667)
     ("Tri-net: Random server" Tri-net "irc.tri-net.org" 6667)
     ("TriLink: Random server" TriLink "irc.ft4u.net" 6667)
     ("TurkishChat: Random server" TurkishChat "irc.turkishchat.org"
      ((6660 6669)
       7000))
     ("UberNinja: Random server" UberNinja "irc.uberninja.net"
      ((6667 6669)))
     ("UICN: Random server" UICN "irc.uicn.net" 6667)
     ("UltraIRC: Random server" UltraIRC "irc.ultrairc.net" 6667)
     ("UnderChat: Random server" UnderChat "irc.underchat.it"
      ((6660 6669)
       7000))
     ("Undernet: CA, ON, Toronto" Undernet "toronto.on.ca.undernet.org"
      ((6661 6669)))
     ("Undernet: CA, QC, Montreal" Undernet "montreal.qu.ca.undernet.org"
      ((6660 6669)))
     ("Undernet: EU, AT, Graz" Undernet "graz.at.eu.undernet.org"
      ((6661 6669)))
     ("Undernet: EU, BE, Antwerp" Undernet "flanders.be.eu.undernet.org"
      ((6660 6669)))
     ("Undernet: EU, BE, Brussels" Undernet "brussels.be.eu.undernet.org" 6667)
     ("Undernet: EU, CH, Geneva" Undernet "geneva.ch.eu.undernet.org"
      ((6660 6669)
       7777 8000))
     ("Undernet: EU, FR, Caen" Undernet "caen.fr.eu.undernet.org"
      ((6666 6669)))
     ("Undernet: EU, NL, Diemen" Undernet "diemen.nl.eu.undernet.org"
      ((6660 6669)))
     ("Undernet: EU, NL, Haarlem" Undernet "haarlem.nl.eu.undernet.org"
      ((6660 6669)))
     ("Undernet: EU, NO, Oslo" Undernet "oslo.no.eu.undernet.org"
      ((6660 6669)))
     ("Undernet: EU, SE, Stockholm" Undernet "stockholm.se.eu.undernet.org"
      ((6666 6669)))
     ("Undernet: EU, UK, Surrey" Undernet "surrey.uk.eu.undernet.org"
      ((6660 6669)))
     ("Undernet: US, AZ, Mesa" Undernet "mesa.az.us.undernet.org"
      ((6665 6667)))
     ("Undernet: US, CA, San Diego" Undernet "sandiego.ca.us.undernet.org"
      ((6660 6670)))
     ("Undernet: US, DC, Washington" Undernet "washington.dc.us.undernet.org"
      ((6660 6669)))
     ("Undernet: US, KS, Manhattan" Undernet "manhattan.ks.us.undernet.org"
      ((6660 6669)))
     ("Undernet: US, NV, Las Vegas" Undernet "lasvegas.nv.us.undernet.org"
      ((6660 6669)))
     ("Undernet: US, TX, Austin" Undernet "austin.tx.us.undernet.org"
      ((6660 6669)))
     ("Undernet: US, UT, Saltlake" Undernet "saltlake.ut.us.undernet.org"
      ((6660 6669)))
     ("Undernet: US, VA, Arlington" Undernet "arlington.va.us.undernet.org"
      ((6660 6669)))
     ("Undernet: US, VA, McLean" Undernet "mclean.va.us.undernet.org"
      ((6666 6669)))
     ("Undernet: Random EU server" Undernet "eu.undernet.org" 6667)
     ("Undernet: Random US server" Undernet "us.undernet.org" 6667)
     ("UnderZ: Random server" UnderZ "irc.underz.org"
      ((6667 6668)))
     ("UniChat: Random server" UniChat "irc.uni-chat.net" 6667)
     ("UnionLatina: Random server" UnionLatina "irc.unionlatina.org" 6667)
     ("Univers: Random server" Univers "irc.univers.org"
      ((6665 6669)))
     ("UnixR: Random server" UnixR "irc.unixr.net"
      ((6667 6669)))
     ("Vidgamechat: Random server" Vidgamechat "irc.vidgamechat.com" 6667)
     ("VirtuaNet: Random server" VirtuaNet "irc.virtuanet.org"
      ((6660 6669)
       7000))
     ("Vitamina: Random server" Vitamina "irc.vitamina.ca" 6667)
     ("Voila: Random server" Voila "irc.voila.fr" 6667)
     ("Wahou: Random server" Wahou "irc.wahou.org"
      ((6665 6669)))
     ("Warpednet: Random server" Warpednet "irc.warped.net" 6667)
     ("Weaklinks: Random server" Weaklinks "irc.weaklinks.net"
      ((6667 6669)))
     ("Webnet: Random server" Webnet "irc.webchat.org"
      ((6667 6669)
       7000))
     ("Webnet: US, CA, Santa Clara" Webnet "webmaster.ca.us.webchat.org"
      ((6661 6669)))
     ("WinChat: Random server" WinChat "irc.winchat.net"
      ((6661 6669)))
     ("WinIRC: Random server" WinIRC "irc.winirc.org"
      ((6667 6669)
       4400))
     ("WorldIRC: Random server" WorldIRC "irc.worldirc.org"
      ((6660 6667)))
     ("WyldRyde: Random server" WyldRyde "irc.wyldryde.net"
      ((6666 6669)))
     ("XentoniX: Random server" XentoniX "irc.xentonix.net"
      ((6661 6669)))
     ("Xevion: Random server" Xevion "irc.xevion.net"
      (6667 7000))
     ("XNet: Random server" XNet "irc.xnet.org" 6667)
     ("XWorld: Random server" XWorld "irc.xworld.org" 6667)
     ("ZAnet Net: Random server" ZAnetNet "irc.zanet.net" 6667)
     ("ZAnet Org: UK, London" ZAnetOrg "mystic.zanet.org.za" 6667)
     ("ZiRC: Random server" ZiRC "irc.zirc.org"
      ((6660 6669)))
     ("ZUHnet: Random server" ZUHnet "irc.zuh.net" 6667)
     ("Zurna: Random server" Zurna "irc.zurna.net" 6667)))
 '(erc-server-connect-function 'erc-open-tls-stream)
 '(erc-server-reconnect-attempts t)
 '(erc-server-reconnect-timeout 10)
 '(erc-services-mode t)
 '(erc-track-faces-priority-list
   '(erc-error-face
     (erc-nick-default-face erc-current-nick-face)
     erc-current-nick-face erc-keyword-face
     (erc-nick-default-face erc-pal-face)
     erc-pal-face erc-nick-msg-face erc-direct-msg-face
     (erc-button erc-default-face)
     (erc-nick-default-face erc-dangerous-host-face)
     erc-dangerous-host-face erc-nick-default-face
     (erc-nick-default-face erc-default-face)
     erc-default-face erc-action-face
     (erc-nick-default-face erc-fool-face)
     erc-fool-face erc-input-face erc-prompt-face))
 '(erc-track-priority-faces-only 'all)
 '(erc-track-shorten-start 8)
 '(erc-user-full-name "Alex ter Weele")
 '(evil-want-fine-undo 'fine)
 '(flymake-allowed-file-name-masks
   '(("\\.\\(?:c\\(?:pp\\|xx\\|\\+\\+\\)?\\|CC\\)\\'" flymake-simple-make-init nil nil)
     ("\\.xml\\'" flymake-xml-init nil nil)
     ("\\.html?\\'" flymake-xml-init nil nil)
     ("\\.cs\\'" flymake-simple-make-init nil nil)
     ("\\.p[ml]\\'" flymake-perl-init nil nil)
     ("\\.php[345]?\\'" flymake-php-init nil nil)
     ("\\.h\\'" flymake-master-make-header-init flymake-master-cleanup nil)
     ("\\.java\\'" flymake-simple-make-java-init flymake-simple-java-cleanup nil)
     ("\\.tex\\'" flymake-simple-tex-init nil nil)
     ("\\.idl\\'" flymake-simple-make-init nil nil)))
 '(fringe-mode '(nil . 0) nil (fringe))
 '(gdb-many-windows t)
 '(geiser-default-implementation 'guile)
 '(geiser-mode-smart-tab-p t)
 '(global-hl-todo-mode t)
 '(global-linum-mode nil)
 '(gnus-fetch-old-headers t)
 '(gnus-group-mode-hook '(gnus-agent-mode))
 '(gnus-group-sort-function
   '(gnus-group-sort-by-method gnus-group-sort-by-server gnus-group-sort-by-alphabet))
 '(gnus-message-archive-group nil)
 '(gnus-parameters
   '(("nnreddit.*"
      (display 'all)
      (gnus-summary-goto-unread 'never))))
 '(gnus-refer-thread-use-nnir t)
 '(gnus-refer-thread-use-search t)
 '(gnus-save-newsrc-file nil)
 '(gnus-secondary-select-methods '((nnimap "imap.gmail.com" (nnimap-stream ssl))))
 '(gnus-select-method '(nnnil ""))
 '(gnus-startup-file "~/.emacs.d/gnus/.newsrc")
 '(gnutls-algorithm-priority "SECURE128")
 '(gnutls-min-prime-bits 1024)
 '(gnutls-verify-error t)
 '(guix-package-arguments '("--manifest=/home/alex/src/guix-conf/user-services.scm"))
 '(helm-external-programs-associations '(("html" . "icecat")))
 '(help-mode-hook '(form-feed-mode))
 '(hs-isearch-open t)
 '(indent-tabs-mode nil)
 '(ispell-program-name "hunspell")
 '(magit-clone-default-directory "~/src")
 '(magit-tag-arguments '("--annotate" "--sign"))
 '(menu-bar-mode nil)
 '(message-kill-buffer-on-exit t)
 '(mouse-yank-at-point t)
 '(mpc-host "~/.mpd/socket")
 '(mpc-songs-format
   "%2{Disc--}%3{Track} %-5{Time} %50{Title} %20{Album} %20{Artist} %5{Date}")
 '(native-comp-async-report-warnings-errors 'silent)
 '(network-security-level 'medium)
 '(nnreddit-preview-width 780)
 '(notmuch-saved-searches
   '((:name "inbox" :query "tag:inbox" :key "i")
     (:name "unread" :query "tag:unread,inbox" :key "u")
     (:name "flagged" :query "tag:flagged" :key "f")
     (:name "sent" :query "tag:sent" :key "t")
     (:name "drafts" :query "tag:draft" :key "d")
     (:name "all mail" :query "*" :key "a")))
 '(notmuch-search-oldest-first nil)
 '(notmuch-show-indent-messages-width 2)
 '(nxml-sexp-element-flag t)
 '(nxml-slash-auto-complete-flag t)
 '(org-agenda-files '("~/.emacs.d/org"))
 '(org-roam-db-autosync-mode t)
 '(org-roam-directory "/home/alex/notes")
 '(orgstruct-setup-hook '(auto-fill-mode flyspell-mode))
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(cobol-mode debbugs ercn leerzeichen geiser paredit erc-hl-nicks chess mvn helm evil elfeed auctex magit pdf-tools tuareg notmuch org))
 '(password-store-password-length 32)
 '(proced-auto-update-flag t)
 '(proced-filter 'all-running)
 '(safe-local-variable-values
   '((eval let
           ((root-dir-unexpanded
             (locate-dominating-file default-directory ".dir-locals.el")))
           (when root-dir-unexpanded
             (let*
                 ((root-dir
                   (expand-file-name root-dir-unexpanded))
                  (root-dir*
                   (directory-file-name root-dir)))
               (unless
                   (boundp 'geiser-guile-load-path)
                 (defvar geiser-guile-load-path 'nil))
               (make-local-variable 'geiser-guile-load-path)
               (require 'cl-lib)
               (cl-pushnew root-dir* geiser-guile-load-path :test #'string-equal))))
     (eval setq-local guix-directory
           (locate-dominating-file default-directory ".dir-locals.el"))
     (eval form-feed-mode t)
     (eval push "/home/alex/src/guix" geiser-guile-load-path)
     (eval modify-syntax-entry 43 "'")
     (eval modify-syntax-entry 36 "'")
     (eval modify-syntax-entry 126 "'")
     (bug-reference-bug-regexp . "<https?://\\(debbugs\\|bugs\\)\\.gnu\\.org/\\([0-9]+\\)>")))
 '(savehist-mode t)
 '(scroll-bar-mode nil)
 '(scroll-conservatively 101)
 '(send-mail-function 'smtpmail-send-it)
 '(show-paren-mode t)
 '(slack-buffer-emojify t)
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 465)
 '(smtpmail-stream-type 'ssl)
 '(tab-bar-mode t)
 '(tls-checktrust t)
 '(tls-program nil)
 '(tool-bar-mode nil)
 '(url-queue-timeout 10)
 '(use-file-dialog nil)
 '(what-cursor-show-names t)
 '(whitespace-global-modes '(text-mode prog-mode))
 '(whitespace-style '(face lines-tail trailing tabs))
 '(winner-mode t)
 '(znc-servers '(("localhost" 6660 nil ((freenode "root" "hunter2")))))
 '(zoneinfo-style-world-list
   '(("America/Los_Angeles" "Seattle")
     ("America/New_York" "New York")
     ("Europe/London" "London")
     ("Etc/UTC" "UTC")
     ("Europe/Paris" "Paris")
     ("Asia/Calcutta" "Bangalore")
     ("Asia/Tokyo" "Tokyo"))))
