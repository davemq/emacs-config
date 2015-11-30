(setq inhibit-startup-screen t)
;; package.el (ELPA)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'load-path (expand-file-name "~/emacs/lisp"))
(add-to-list 'load-path "/usr/share/emacs/site-lisp/org")
;(add-to-list 'load-path "/gsa/ausgsa/projects/b/beam") ; for beam-parse.el

;; server
(server-start)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector (vector "#cccccc" "#f2777a" "#99cc99" "#ffcc66" "#6699cc" "#cc99cc" "#66cccc" "#2d2d2d"))
 '(ansi-term-color-vector [unspecified "#393939" "#f2777a" "#99cc99" "#ffcc66" "#6699cc" "#cc99cc" "#6699cc" "#e8e6df"] t)
 '(background-color "#fdf6e3")
 '(background-mode light)
 '(c-default-style (quote ((c-mode . "aix") (java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(c-mode-common-hook (quote ((lambda nil (gtags-mode 1)))))
 '(calendar-latitude 30.5151)
 '(calendar-location-name "Round Rock, TX")
 '(calendar-longitude -97.7164666667)
 '(canlock-password "1ae0ba02f75da1ba76cbd22c9fc3d528b1c4ded1")
 '(cursor-color "#657b83")
 '(custom-safe-themes (quote ("0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" "b6d649c9f972b491686e7fa634535653e6222c1faca1ab71b3117854470a79ae" "4904daa168519536b08ca4655d798ca0fb50d3545e6244cefcf7d0c7b338af7e" "8e7ca85479dab486e15e0119f2948ba7ffcaa0ef161b3facb8103fb06f93b428" "c55d8474e898e1231c49547d50e15d05c387e4111f4085f5fb7120a7418165c2" "70340909b0f7e75b91e66a02aa3ad61f3106071a1a4e717d5cdabd8087b47ec4" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "76659fd7fc5ce57d14dfb22b30aac6cf0d4eb0a279f4131be3945d3cfff10bc6" "5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" "294834baa9ca874795a3181cce7aaf228b1e3fb3899587ffd3ae7546de328c90" "1011be33e9843afd22d8d26b031fbbb59036b1ce537d0b250347c19e1bd959d0" "ad950f1b1bf65682e390f3547d479fd35d8c66cafa2b8aa28179d78122faa947" "0d19ff470ad7029d2e1528b3472ca2d58d0182e279b9ab8acd65e2508845d2b6" "2f4afdef79a7f8a6b54f7e70959e059d7e09cf234d412662e0897cacd46f04b4" "7dd515d883520286fc8936ce32381fb01b978d0d7cfb6fe56f7f55d8accbf63a" "3ed645b3c08080a43a2a15e5768b893c27f6a02ca3282576e3bc09f3d9fa3aaa" "22a8040977c0b761c71e5f7c68747285eb856f61ac9f2fc8a0b3619e9bcce904" "304c03c9cfcd368b4ab0832357788cd48513fe1bd89b9e531dd47886a83405a1" "cb1cf5e453f66d21f5d4decefcca85b945f422bc63f827672ad84e4e139a3b07" "cadc97db0173a0d0bfc40473cab4da462af0ba8d60befd0a4879b582bcbc092d" "e681c4fc684a543ce97c2d55082c6585182c0089f605dc9a5fe193870f03edc6" "0788bfa0a0d0471984de6d367bb2358c49b25e393344d2a531e779b6cec260c5" "789844278c5a75283b5015c1fc7bebe7e4cf97843b8f8cffe21fafa05e81e90a" "b83c1e19c912f0d84a543b37367242f8a3ad2ed3aec80f5363d0d82ba4621e7d" "f5e9f66da69f504cb61aacedeb8284d8f38f2e6f835fd658cac5f0ad5d924549" "c158c2a9f1c5fcf27598d313eec9f9dceadf131ccd10abc6448004b14984767c" "e1551b5516e0a439b6ab019ba00cee866e735f66f22ff67a5d882ad0f1383454" "419637b7a8c9cb43f273980f0c9879c0cbadace6b38efac0281e031772c84eb2" "64da9a8dba17dcf210420875eba3f1a5ea6272217dc403706e4e2c985aa537fa" "4a60f0178f5cfd5eafe73e0fc2699a03da90ddb79ac6dbc73042a591ae216f03" "479f188da96dcf244be270724c23de58607c031626bde8ba8243799f209d16b1" "2c73253d050a229d56ce25b7e5360aa2f7566dfd80174da8e53bd9d3e612a310" "b3ce6fadd85126d247b72d4ed9ac4d2bb43c0e0fd1605008cafd54185f30b7eb" "3164a65923ef23e0f3dff9f9607b4da1e07ef1c3888d0f6878feef6c28357732" "a99e7c91236b2aba4cd374080c73f390c55173c5a1b4ac662eeb3172b60a9814" "3d5307e5d6eb221ce17b0c952aa4cf65dbb3fa4a360e12a71e03aab78e0176c5" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "e254f8e18ba82e55572c5e18f3ac9c2bd6728a7e500f6cc216e0c6f6f8ea7003" "5d1434865473463d79ee0523c1ae60ecb731ab8d134a2e6f25c17a2b497dd459" "1edf370d2840c0bf4c031a044f3f500731b41a3fd96b02e4c257522c7457882e" "07840b49217157323d6ea4ccbdecc451b5989ebdc6e06cb0b4d742a141475a44" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "97a2b10275e3e5c67f46ddaac0ec7969aeb35068c03ec4157cf4887c401e74b1" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "0c311fb22e6197daba9123f43da98f273d2bfaeeaeb653007ad1ee77f0003037" "1d6a2b8d5719875cd5f268ea4c2d4a24254122f9c63619b45d82404dd7359951" "55ed02951e7b458e4cd18837eefa1956884c9afd22bb514f697fd1d2d1abb3d3" "5424f18165ed7fd9c3ec8ea43d801dc9c71ab9da2b044000162a47c102ef09ea" "4d80487632a0a5a72737a7fc690f1f30266668211b17ba836602a8da890c2118" "d1a42ed39a15a843cccadf107ee0242b5f78bfbb5b70ba3ce19f3ea9fda8f52d" "c70cc9c4c6257d70f5c11b90cb9e8b1e54e6edd6aa43f39879746e16a70533f5" "e8bba3c8e8caea2c7a8b6932b0db8d9bdb468c9b44bf554f37b56093d23fde57" "c73236c58c77d76271fef510552c4c43c4c69748f4bfd900b132ad17cc065611" "d809ca3cef02087b48f3f94279b86feca896f544ae4a82b523fba823206b6040" "fe6fb0cb1aa50dc563d81aad98c470a30f4e89db6d55a108f1083f33317ad413" "4ab89cc4c58408bb799084a4d9be77fe0700b2f1b75809eae330129b4b921b6f" "1cd9defef2a98138c732728568b04043afd321eb802d25a254777de9b2463768" "00f09a2728377a37e9a24d631de94cc7440e0803e218474cac287061951c205c" "01d8c9140c20e459dcc18addb6faebd7803f7d6c46d626c7966d3f18284c4502" "013e87003e1e965d8ad78ee5b8927e743f940c7679959149bbee9a15bd286689" "b953823053c6372fafde04957ab6d482021cc3a0f4b279f2868180c3ca56ca59" "bac3f5378bc938e96315059cd0488d6ef7a365bae73dac2ff6698960df90552d" "603a9c7f3ca3253cb68584cb26c408afcf4e674d7db86badcfe649dd3c538656" "5999e12c8070b9090a2a1bbcd02ec28906e150bb2cdce5ace4f965c76cf30476" "c044b28c1e8a47cc7c8ff01d683bd8e7c075d2f758c4f88e5bc67c31d8b9a6e7" "cc0dbb53a10215b696d391a90de635ba1699072745bf653b53774706999208e3" "1934bf7e1713bf706a9cb36cc6a002741773aa42910ca429df194d007ee05c67" "fc2782b33667eb932e4ffe9dac475f898bf7c656f8ba60e2276704fabb7fa63b" "1abda075ebacaa3795d675bb2be0a905322ac856f9c0c259da63f9ccfe1962ec" "ad9fc392386f4859d28fe4ef3803585b51557838dbc072762117adad37e83585" "6c189cbe61f4c909769c5e139f5a517b10bad3d478cc95067146f1e029470d0a" "59dbfb6861c131748d7f31abcf339c9d611e2700e65f4d52f98c51b8040b255c" "cab317d0125d7aab145bc7ee03a1e16804d5abdfa2aa8738198ac30dc5f7b569" "c3e6b52caa77cb09c049d3c973798bc64b5c43cc437d449eacf35b3e776bf85c" "9eb5269753c507a2b48d74228b32dcfbb3d1dbfd30c66c0efed8218d28b8f0dc" "d76af04d97252fafacedc7860f862f60d61fdcfbd026aeba90f8d07d8da51375" "86847534b000a2e7f2b77c24faf3a94283329073bd4687807a4b6a52cae752dd" "3f7db1a70bee5e15a3d72b016a7e05f6d813b6868e88961c46019b57d0b29452" "89586444c668bae9ec7e594bc38b3a956f31dc6cb7c851ed40411cc4ff770708" "9816ae6d55f2f6511cfa5120bf69630e53d85165d4859df0104d4eaf90ba2394" "8cf56691a70156f611ac86d0bbcbc7dee7673df195de5918f34bfdc6814ffd39" "cdd26fa6a8c6706c9009db659d2dffd7f4b0350f9cc94e5df657fa295fffec71" "a5beb9b1d6dc23dd8a3c204c159c9a5f1e0115ff14b5b8579d6f3ede4f3b3aee" "f0d8af755039aa25cd0792ace9002ba885fd14ac8e8807388ab00ec84c9497d7" "e846977fc1a5c0c8df0877640d039261f2e96a4a049b1414e99c70666d982133" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "3328e7238e0f6d0a5e1793539dfe55c2685f24b6cdff099c9a0c185b71fbfff9" "49e5a7955b853f70d1fe751b2f896921398b273aa62f47bda961a45f80219581" "17fd8388e49d3055185e817ed3a2b7c955a2dda92b990f475c14a8e1d97dbe4b" "39dd7106e6387e0c45dfce8ed44351078f6acd29a345d8b22e7b8e54ac25bac4" "4530ef4d9cf54740fffb6ce25b393122158057d213a2b812f04930fcadf89d62" "256043df45fcafe27c66091cdd699a7818ff22c390c28229154e7a1c2fa0faf0" "75c0b1d2528f1bce72f53344939da57e290aa34bea79f3a1ee19d6808cb55149" "bbd51dc8bc53d40beadc267c490ffed3d62a4e10293512cc634ee97f77c1fc82" "cd95da9e526850b3df2d1b58410d586386bfc0182a2aaca3f33d6cd8548c091a" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "0795e2c85394140788d72d34969be4acb305e4a54149e7237787d9df27832fbb" "ad6db94e21962ae96fc834e71b6763dc8cdf9b3798117b70b2bb7b91e628ac34" "3af98081c0cf235b7fba9ef7389dde9cfe79ab000fcb0e81735a55003258a7c5" "95f954ce018bbff3107b357bd87d060db195a2d5c6b70411587223597fde171d" "e6d83e70d2955e374e821e6785cd661ec363091edf56a463d0018dc49fbc92dd" "ed5af4af1d148dc4e0e79e4215c85e7ed21488d63303ddde27880ea91112b07e" "4cc014287035b11d1f8d45af1ff18f3509496a760650d16c7771ac9bdf16b1a6" "cda6cb17953b3780294fa6688b3fe0d3d12c1ef019456333e3d5af01d4d6c054" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "9fab7d4f70b99927d898a0c93b1ae90fc1529248b9c2604ed88e864fc2665aa7" "b09a0d8886704ec444e0e75e97772059759e327d8816c25308897df68a84863a" "37783713b151d949b0da66ff7cd8736dd0893089cbad12eb5a71f3a72e201b47" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "26247bcb0b272ec9a5667a6b854125450c88a44248123a03d9f242fd5c6ec36f" "ff5acbbf20c7ba4889eb2b14395fcd55eeecbfb57853e47c7d514503ad83d6bb" "c63bee436bd8a67f6d9cd96acd5720c4a949c169f09c6850c439751f14fd923e" "2affb26fb9a1b9325f05f4233d08ccbba7ec6e0c99c64681895219f964aac7af" "40bc0ac47a9bd5b8db7304f8ef628d71e2798135935eb450483db0dbbfff8b11" "725bf8c75148ad785f9761623fc56ac1284a5e462a9c41d4645799b5a0375a63" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "01b9bfb4ddb9c7cc6e3720ad4fc71bd6f0351ba8014a992d672320cca0a676bd" "e74d80bf86c7951b1a27994faa417f7e3b4a02f7a365ed224f032bd29f5d2d6d" "f5bd8485ec9ba65551bf9b9fcaa6af6bcbaebaa4591c0f30d3e512b1d77b3481" "b9183de9666c3a16a7ffa7faaa8e9941b8d0ab50f9aaba1ca49f2f3aec7e3be9" "7feeed063855b06836e0262f77f5c6d3f415159a98a9676d549bfeb6c49637c4" "f9e975bdf5843982f4860b39b2409d7fa66afab3deb2616c41a403d788749628" "66132890ee1f884b4f8e901f0c61c5ed078809626a547dbefbb201f900d03fd8" "2a86b339554590eb681ecf866b64ce4814d58e6d093966b1bf5a184acf78874d" "764e3a6472a3a4821d929cdbd786e759fab6ef6c2081884fca45f1e1e3077d1d" "e3c90203acbde2cf8016c6ba3f9c5300c97ddc63fcb78d84ca0a144d402eedc6" "2916d16e583c17bb2a1a9d231ea8ddcb3577f8cb97179eea689e91036213ff03" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "08efabe5a8f3827508634a3ceed33fa06b9daeef9c70a24218b70494acdf7855" "c56d90af9285708041991bbc780a073182cbe91721de17c6e7a8aac1380336b3" "e292ec749f785d348969926448e25790356a7ce1a8fda6e695f5e8b70bed786b" "49eea2857afb24808915643b1b5bd093eefb35424c758f502e98a03d0d3df4b1" "3103287c8d39800d6b41f8664b223f8ecdd8c6cc0b073441e174b61afdb4ce02" "c0dd5017b9f1928f1f337110c2da10a20f76da0a5b14bb1fec0f243c4eb224d4" "f04122bbc305a202967fa1838e20ff741455307c2ae80a26035fbf5d637e325f" "8d6fb24169d94df45422617a1dfabf15ca42a97d594d28b3584dc6db711e0e0b" "53e29ea3d0251198924328fd943d6ead860e9f47af8d22f0b764d11168455a8e" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "b458d10c9ea0c8c465635b7b13e1bd23f04e6b696b1ca96cb2c4eca35a31641e" "75d807376ac43e6ac6ae3892f1f377a4a3ad2eb70b14223b4ed0355e62116814" "0c97dcff4ea6ac23af383e6153723a712c1de3a4b427e97d1e473504dbc2fe06" "ca229a0a89717c8a6fe5cd580ee2a85536fbafce6acb107d33cf38d52e2f492c" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "2b56bd7a702f4dd5f50db417ec2bcdd06a878a0e2834e9ab37ad3c5c93aaab74" "573e46dadf8c2623256a164831cfe9e42d5c700baed1f8ecd1de0675072e23c2" "de2c46ed1752b0d0423cde9b6401062b67a6a1300c068d5d7f67725adc6c3afb" "c3e567dedaa800e869d879c4df8478237d6ea31fd04464086fd674c864fe4d71" "e24180589c0267df991cf54bf1a795c07d00b24169206106624bb844292807b9" "c1fb68aa00235766461c7e31ecfc759aa2dd905899ae6d95097061faeb72f9ee" "70cf411fbf9512a4da81aa1e87b064d3a3f0a47b19d7a4850578c8d64cac2353" "a507b9ca4a605d5256716da70961741b9ef9ec3246041a4eb776102e8df18418" "769bb56fb9fd7e73459dcdbbfbae1f13e734cdde3cf82f06a067439568cdaa95" "51bea7765ddaee2aac2983fac8099ec7d62dff47b708aa3595ad29899e9e9e44" "cb247cf944eea968aa613a5c40f4cb79f4c05503591cf33e5b4224394dd57e94" "77bd459212c0176bdf63c1904c4ba20fce015f730f0343776a1a14432de80990" "4eaad15465961fd26ef9eef3bee2f630a71d8a4b5b0a588dc851135302f69b16" "3a727bdc09a7a141e58925258b6e873c65ccf393b2240c51553098ca93957723" "0e121ff9bef6937edad8dfcff7d88ac9219b5b4f1570fd1702e546a80dba0832" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "96b023d1a6e796bab61b472f4379656bcac67b3af4e565d9fb1b6b7989356610" "46223bc978f9e7ab7f5b61d171da7ce98e69661158b75ed011603d3134fbad02" "1affe85e8ae2667fb571fc8331e1e12840746dae5c46112d5abb0c3a973f5f5a" "61b188036ad811b11387fc1ef944441826c19ab6dcee5c67c7664a0bbd67a5b5" "024b0033a950d6a40bbbf2b1604075e6c457d40de0b52debe3ae994f88c09a4a" "f41fd682a3cd1e16796068a2ca96e82cfd274e58b978156da0acce4d56f2b0d5" "96efbabfb6516f7375cdf85e7781fe7b7249b6e8114676d65337a1ffe78b78d9" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "f0ea6118d1414b24c2e4babdc8e252707727e7b4ff2e791129f240a2b3093e32" default)))
 '(debug-on-quit nil)
 '(diary-entry-marker (quote font-lock-variable-name-face))
 '(diary-file "~/pers/diary")
 '(display-time-24hr-format t)
 '(display-time-mode t)
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(emms-mode-line-icon-image-cache (quote (image :type xpm :ascent center :data "/* XPM */
static char *note[] = {
/* width height num_colors chars_per_pixel */
\"    10   11        2            1\",
/* colors */
\". c #1ba1a1\",
\"# c None s None\",
/* pixels */
\"###...####\",
\"###.#...##\",
\"###.###...\",
\"###.#####.\",
\"###.#####.\",
\"#...#####.\",
\"....#####.\",
\"#..######.\",
\"#######...\",
\"######....\",
\"#######..#\" };")))
 '(erc-hide-list (quote ("JOIN" "PART" "QUIT")))
 '(erc-modules (quote (autojoin button completion list match menu move-to-prompt netsplit networks noncommands readonly ring services stamp track highlight-nicknames)))
 '(erc-networks-alist (quote ((4-irc "4-irc.com") (A5KNet "a5knet.com") (AbleNet "ablenet.org") (Accessirc "accessirc.net") (Acestar "acestar.org") (Action-IRC "action-irc.net") (AfterNET "afternet.org") (Alternativenet "altnet.org") (AmigaNet "amiganet.org") (AngelEyez "angeleyez.net") (Anothernet "another.net") (ArabChat "arabchat.org") (Ars "arstechnica.com") (AsiaTalk "asiatalk.org") (AstroLink "astrolink.org") (Asylumnet "asylumnet.org") (Austnet "austnet.org") (AwesomeChat "awesomechat.net") (Awesomechristians "awesomechristians.com") (Axenet "axenet.org") (Beyondirc "beyondirc.net") (BGIRC "bulgaria.org") (Blabbernet "blabber.net") (Blitzed "blitzed.org") (BlueNet "ibm.com") (BrasIRC "brasirc.net") (BRASnet "brasnet.org") (BubbleNet "bubblenet.org") (CCnet "christian-chat.net") (Chat-Net "chat-net.org") (Chat-Solutions "chat-solutions.org") (Chatcafe "chatcafe.net") (Chatchannel "chatchannel.org") (ChatCircuit "chatcircuit.com") (Chatlink "chatlink.org") (Chatnet "chatnet.org") (ChatNut "chatnut.net") (Chatpinoy "chatpinoy.com") (ChatPR "chatpr.org") (Chatroom "chatroom.org") (Chatster "chatster.org") (ChatX "chatx.net") (China263 "263.net") (Cineplex1 "cineplex1.com") (CNN "cnn.com") (CobraNet "cobra.net") (Coolchat "coolchat.net") (Criten "criten.net") (Cyberchat "cyberchat.org") (CyGanet "cyga.net") (DALnet "dal.net") (Dark-Tou-Net "d-t-net.de") (Darkfire "darkfire.net") (DarkMyst "darkmyst.org") (Darkserv "darkserv.net") (Darksystem "darksystem.com") (Darktree "darktree.net") (DayNet "daynet.org") (Deepspace "deepspace.org") (Different "different.net") (Digarix "digarix.net") (Digatech "digatech.net") (Digital-Base "digital-base.net") (Digitalirc "digitalirc.net") (Discussioni "discussioni.org") (DorukNet "doruk.net.tr") (DWChat "dwchat.net") (Dynastynet "dynastynet.net") (EFnet nil) (EgyptianIRC "egyptianirc.net") (Eircnet "eircnet.org") (Eleethal "eleethal.com") (EntertheGame "enterthegame.com") (EpiKnet "epiknet.org") (EsperNet "esper.net") (Esprit "esprit.net") (euIRC "euirc.net") (Evilzinc "evilzinc.net") (ExodusIRC "exodusirc.net") (FDFnet "fdfnet.net") (FEFnet "fef.net") (Financialchat "financialchat.com") (Forestnet "forestnet.org") (ForeverChat "foreverchat.net") (Fraggers "fraggers.co.uk") (FreedomChat "freedomchat.net") (FreedomIRC "freedomirc.net") (freenode "freenode.net") (FunNet "funnet.org") (GalaxyNet "galaxynet.org") (Gamesnet "gamesnet.net") (GammaForce "gammaforce.org") (GeekShed "geekshed.net") (GIKInet "giki.edu.pk") (GizNet "giznet.org") (Globalchat "globalchat.org") (GlobIRC "globirc.net") (Goldchat "goldchat.nl") (Goodchatting "goodchatting.com") (GravityLords "gravitylords.net") (GRnet "irc.gr") (GulfChat "gulfchat.net") (HabberNet "habber.net") (HanIRC "hanirc.org") (Hellenicnet "mirc.gr") (IceNet "icenet.org.za") (ICQnet "icq.com") (iip "anon.iip") (Infatech "infatech.net") (Infinity "infinity-irc.org") (Infomatrix "infomatrix.net") (Inside3D "inside3d.net") (InterlinkChat "interlinkchat.net") (IRC-Chile "irc.cl") (IRC-Hispano "irc-hispano.org") (IRCchat "ircchat.tk") (IRCGate "ircgate.net") (IRCGeeks "ircgeeks.org") (IRChat "irchat.net") (IrcLordz "irclordz.com") (IrcMalta "ircmalta.org") (IRCnet nil) (IRCSoulZ "ircsoulz.net") (IRCSul "wnet.com.br") (IrcTalk "irctalk.net") (Irctoo "irctoo.net") (IRCtown "irc.irctown.net") (IRCworld "ircworld.org") (ircXtreme "ircXtreme.net") (Israelnet "israel.net") (K0wNet "k0w.net") (KDFSnet "kdfs.net") (Kemik "kemik.net") (Kewl\.Org "kewl.org") (Kickchat "kickchat.com") (KidsWorld "kidsworld.org") (Knightnet "knightnet.net") (Konfido\.Net "konfido.net") (Kreynet "krey.net") (Krono "krono.net") (Krushnet "krushnet.org") (LagNet "lagnet.org.za") (Librenet "librenet.net") (LinkNet "link-net.org") (LinuxChix "cats.meow.at\\|linuxchix.org") (Liquidized "liquidized.net") (M-IRC "m-sys.org") (MagicStar "magicstar.net") (Mavra "mavra.net") (MediaDriven "mediadriven.com") (mIRC-X "mircx.com") (Morat "morat.net") (MusicCity "musiccity.com") (Mysteria "mysteria.net") (Mysterychat "mysterychat.net") (Mystical "mystical.net") (Narancs "narancs.com") (Net-France "net-france.com") (Nevernet "nevernet.net") (Newnet "newnet.net") (Nexusirc "nexusirc.org") (NightStar "nightstar.net") (NitrousNet "nitrousnet.net") (Novernet "novernet.com") (Nullrouted "nullrouted.org") (NullusNet "nullus.net") (OFTC "oftc.net") (OpChat "opchat.org") (Openprojects "openprojects.net") (Othernet "othernet.org") (OtherSide "othersideirc.net") (Outsiderz "outsiderz.com") (OzOrg "oz.org") (Peacefulhaven "peacefulhaven.net") (PhazedIRC "phazedirc.net") (Philchat "philchat.net") (phrozN "phrozn.net") (PiNet "praetorians.org") (Pinoycentral "abs-cbn.com") (Planetarion "planetarion.com") (POLNet "ircnet.pl") (Psionics "psionics.net") (PTirc "ptirc.com.pt") (PTlink "ptlink.net") (PTnet "ptnet.org") (QChat "qchat.net") (QuakeNet "quakenet.org") (Realirc "realirc.org") (RealmNET "realmnet.com") (Rebelchat "rebelchat.org") (Red-Latina "red-latina.org") (RedLatona "redlatona.net") (Relicnet "relic.net") (Rezosup "rezosup.org") (Risanet "risanet.com") (Rubiks "rubiks.net") (Rusnet "nil") (Sandnet "sandnet.net") (Scunc "scunc.net") (SerbianCafe "serbiancafe.ws") (SexNet "sexnet.org") (ShadowFire "shadowfire.org") (ShadowWorld "shadowworld.net") (SkyNet "bronowski.pl") (SlashNET "slashnet.org") (SolarStone "solarstone.net") (Sorcery "sorcery.net") (SourceIRC "sourceirc.net") (SpaceTronix "spacetronix.net") (Spirit-Harmony "spirit-harmony.com") (StarChat "starchat.net") (StarEquinox "starequinox.net") (Starlink "starlink.net") (starlink-irc "starlink-irc.org") (StarWars-IRC "starwars-irc.net") (Stormdancing "stormdancing.net") (Superchat "superchat.org") (Sysopnet "sysopnet.org") (Telstra "telstra.com") (TR-net "dominet.com.tr") (Tri-net "tri-net.org") (TriLink "ft4u.net") (TurkishChat "turkishchat.org") (UberNinja "uberninja.net") (UICN "uicn.net") (UltraIRC "ultrairc.net") (UnderChat "underchat.it") (Undernet "undernet.org") (UnderZ "underz.org") (UniChat "irc.uni-chat.net") (UnionLatina "unionlatina.org") (Univers "univers.org") (UnixR "unixr.net") (Vidgamechat "vidgamechat.com") (VirtuaNet "virtuanet.org") (Vitamina "vitamina.ca") (Voila "voila.fr") (Wahou "wf-net.org") (Warpednet "warped.net") (Weaklinks "weaklinks.net") (Webnet "webchat.org") (WinChat "winchat.net") (WinIRC "winirc.org") (WorldIRC "worldirc.org") (WyldRyde "wyldryde.net") (XentoniX "xentonix.net") (Xevion "xevion.net") (XNet "xnet.org") (XWorld "xworld.org") (ZAnetNet "zanet.net") (ZAnetOrg "zanet.org.za") (ZiRC "zirc.org") (ZUHnet "zuh.net") (Zurna "zurna.net"))))
 '(erc-nickserv-passwords (quote ((freenode (("davemq" . "irc4me"))) (BlueNet (("davemq" . "irc4me"))) (GeekShed (("davemq" . "irc4me"))))))
 '(erc-pals (quote ("morsing" "hartb" "tbberry" "aTypical" "warrier")))
 '(erc-prompt-for-nickserv-password nil)
 '(evil-emacs-state-cursor (quote ("#D50000" bar)) t)
 '(evil-insert-state-cursor (quote ("#D50000" hbar)) t)
 '(evil-normal-state-cursor (quote ("#FFA000" box)) t)
 '(evil-visual-state-cursor (quote ("#66BB6A" box)) t)
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#515151" t)
 '(foreground-color "#657b83")
 '(fringe-mode 4 nil (fringe))
 '(gnus-agent-queue-mail nil)
 '(gnus-decay-scores t)
 '(gnus-default-charset (quote iso-8859-1))
 '(gnus-group-mode-hook (quote (gnus-agent-mode gnus-topic-mode)))
 '(gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\"]\"[#'()]")
 '(gnus-message-archive-group "Sent")
 '(gnus-message-archive-method (quote (nnimap "imap.linux.ibm.com" (nnimap-stream ssl) (nnimap-authenticator login))))
 '(gnus-posting-styles (quote ((".*" (address "davemarq@linux.vnet.ibm.com") (eval (setq smtp-mail-server "na.relay.ibm.com" smtp-mail-service 25 gnus-message-archive-group "Sent"))) ("nnimap\\+gmail:.*" (address "dave.marquardt.tx@gmail.com") (eval (setq smtp-mail-server "smtp.gmail.com" smtp-mail-service 465 gnus-message-archive-group "nnimap+gmail:[Gmail]/Sent Mail"))) ("nnimap\\+daverrtx:.*" (address "daverrtx@gmail.com") (eval (setq smtp-mail-server "smtp.gmail.com" smtp-mail-server 465 gnus-message-archive-group "nnimap+daverrtx:[Gmail]/Sent Mail"))))))
 '(gnus-select-method (quote (nnimap "imap.linux.ibm.com" (nnimap-stream ssl) (nnimap-authenticator login))))
 '(gnus-simplify-subject-functions (quote (gnus-simplify-subject-fuzzy)))
 '(gnus-simplify-subject-fuzzy-regexp (quote ("The defect is now in Verify: " "defect Note Modified: " "Defect/Feature Closed: " "Defect " "Comment: " "Returned as Dup: " "Returned: " "Assigned: " "Reopened: " "Opened: " "Modified: " "Accepted: " " by .*" ", sev [1-5]" "Canceled: " "Verification Record For " "Marked")))
 '(gnus-sum-thread-tree-false-root "")
 '(gnus-sum-thread-tree-indent " ")
 '(gnus-sum-thread-tree-leaf-with-other "├► ")
 '(gnus-sum-thread-tree-root "")
 '(gnus-sum-thread-tree-single-leaf "╰► ")
 '(gnus-sum-thread-tree-vertical "│")
 '(gnus-summary-exit-hook (quote (gnus-summary-bubble-group)))
 '(gnus-summary-gather-subject-limit (quote fuzzy))
 '(gnus-summary-line-format "%U%R%z %(%&user-date;  %-15,15f  %B%s%)\\n")
 '(gnus-thread-sort-functions (quote (gnus-thread-sort-by-date gnus-thread-sort-by-score gnus-thread-sort-by-total-score)))
 '(gnus-total-expirable-newsgroups ".*")
 '(gnus-treat-from-gravatar (quote head))
 '(gnus-treat-mail-gravatar (quote head))
 '(gnus-use-adaptive-scoring (quote (line)))
 '(gnus-user-date-format-alist (quote (((gnus-seconds-today) . "           %H:%M") ((gnus-seconds-month) . "     ---%d %H:%M") ((gnus-seconds-year) . "   --%m-%d %H:%M") (t . "%Y-%m-%d %H:%M"))))
 '(gtags-suggested-key-mapping t)
 '(highlight-symbol-colors (quote ("#EFFF00" "#73CD4F" "#83DDFF" "MediumPurple1" "#66CDAA" "DarkOrange" "HotPink1" "#809FFF" "#ADFF2F")))
 '(highlight-symbol-foreground-color "#546E7A")
 '(highlight-tail-colors (if (eq (quote light) (quote light)) (quote (("#FF5722" . 0) ("#FFA000" . 10) ("#FFD600" . 30) ("#f2f2f2" . 60) ("#FAFAFA" . 80))) (quote (("#F8BBD0" . 0) ("#EC407A" . 10) ("#B388FF" . 30) ("#f2f2f2" . 60) ("#FAFAFA" . 80)))))
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
 '(ldap-host-parameters-alist (quote (("bluepages.ibm.com" base "ou=bluepages,o=ibm.com" auth simple scope subtree))))
 '(linum-format " %7i ")
 '(mail-host-address "linux.vnet.ibm.com")
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
 '(message-from-style (quote angles))
 '(message-send-mail-function (quote message-smtpmail-send-it))
 '(mm-discouraged-alternatives (quote ("text/html" "text/richtext")))
 '(org-agenda-files (quote ("~/org/aix.org" "~/org/ibm.org" "~/pers/personal.org")))
 '(org-agenda-include-diary t)
 '(org-babel-load-languages (quote ((emacs-lisp . t) (gnuplot . t) (ditaa . t))))
 '(org-clock-clocktable-default-properties (quote (:maxlevel 2 :scope file :indent nil :formula %)))
 '(org-export-backends (quote (ascii beamer html icalendar latex md odt)))
 '(org-habit-show-habits-only-for-today nil)
 '(org-html-postamble nil)
 '(org-log-into-drawer t)
 '(org-modules (quote (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m)))
 '(org-time-clocksum-format (quote (:hours "%d" :require-hours t :minutes ":%02d" :require-minutes t)))
 '(org-todo-keywords (quote ((sequence "TODO(t!)" "WAIT(w!)" "|" "DONE(d!)" "CANCELED(c!)"))))
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.org/packages/"))))
 '(pos-tip-background-color "#ffffff")
 '(pos-tip-foreground-color "#78909C")
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(rainbow-identifiers-cie-l*a*b*-lightness 25)
 '(rainbow-identifiers-cie-l*a*b*-saturation 40)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(smtpmail-smtp-server "na.relay.ibm.com")
 '(tabbar-background-color "#ffffff")
 '(tramp-default-method "scp")
 '(undo-outer-limit 20000000)
 '(user-full-name "Dave Marquardt")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map (quote ((20 . "#f2777a") (40 . "#f99157") (60 . "#ffcc66") (80 . "#99cc99") (100 . "#66cccc") (120 . "#6699cc") (140 . "#cc99cc") (160 . "#f2777a") (180 . "#f99157") (200 . "#ffcc66") (220 . "#99cc99") (240 . "#66cccc") (260 . "#6699cc") (280 . "#cc99cc") (300 . "#f2777a") (320 . "#f99157") (340 . "#ffcc66") (360 . "#99cc99"))))
 '(vc-annotate-very-old-color nil))

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
(let* ((raw (shell-command-to-string "head -c 4 /dev/urandom"))
       (decoded (bindat-unpack '((value u32)) (string-to-unibyte raw)))
       (value (bindat-get-field decoded 'value)))
  (load-theme (nth (% value (length (custom-available-themes)))
		   (custom-available-themes))))



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
 )

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
