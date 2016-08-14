---
title: 'HOWTO: Installare le applicazioni su iPhone con XCode e senza certificato'
categories:
- car
- various links
- iPhone
- howto
- telephony
- lavoro
tags:
- howto
---
Se vuoi sviluppare applicazioni per iPhone devi acquistare  [la
licenza](http://developer.apple.com/programs/iphone/) (99$)che ti permette di
installare l'applicazione nel tuo iPhone e di pubblicarla nell'App Store. Se
non hai voglia/denaro da spendere e non ti interessa pubblicare la tua
applicazione nell'App Store, c'è un metodo che ti permette di installare
l'applicazione da te sviluppata nel tuo iPhone. Segui questi passi:

  1. Imposta il tuo iPhone per sviluppare collegandolo al tuo Mac ed aprendo XCode e vai in _"Window -> Organizer"_. Se non vedi la schermata sottostante, clicca sul pulsante _"Use this device for developing".  
[]({{site.url}}/images/xcode_iphone1.png) _

[![]({{site.url}}/images/xcode_iphone1.png){: .align-center}]({{site.url}}/images/xcode_iphone1
.png)

  2. Assicurati di chuedere XCode, con il Finder vai fino alla seguente cartella: _"/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/" _ ed entra nella cartella che indica la versione del firmware con cui vuoi compilare le tue applicazioni (Es: **iPhoneOS3.1.2.sdk**)
  3. Una volta entrati in questa cartella copia sul Desktop il file _"SDKSettings.plist"_. Questa operazione e necessaria perché questo file e protetto da scrittura.
  4. Clicca con il destro sul file appena copiato sul Desktop ed **aprilo con XCode**. Dovrai cambiare i valori che hai con quelli che vedi nella schermata sottostante, facendo particolare attenzione alle chiavi _CODE_SIGNING_REQURIED_, _CODE_SIGN_ENTITLEMENTS_ e _AD_HOC_CODE_SIGNING_ALLOWED_. 

[![]({{site.url}}/images/xcode_iphone2.png){: .align-center}]({{site.url}}/images/xcode_iphone2
.png)

  

  5. Chiudi e **salva** il file per poi riposizionarlo nella sua cartella di origine sostituendo quello già presente. Se viene chiesta la password, inseriscila per permettere l'operazione.
  6. Ogni volta che  farai un nuovo progetto con XCode dovrai stare attento ad effettuare delle piccole modifiche. Appena hai creato un nuovo progetto per iPhone fai doppio clic sul suo nome. Ti apparira la seguente finestra: 

[![]({{site.url}}/images/xcode_iphone3.png){: .align-center}]({{site.url}}/images/xcode_iphone3
.png)

  

  7. Ora vai sul tab **"Build"** e cerca la voce _"Code Signing Identity"_ cambiando il valore a _"Don't Code Sign"._ In questo modo impedisci a XCode di controllare il certificato.
  8. Fatto cio puoi installare tranquillamente le tue applicazione nell'iPhone selezionando il tuo dispositivo contesualmente con la voce "release", come nella seguente figura. 

[![]({{site.url}}/images/xcode_iphone4.png){: .align-center}]({{site.url}}/images/xcode_iphone4
.png)

  

  9. Sviluppa la tua applicazione e mettila nell'iPhone! :)
  

  
Non mi resta che augurarti buon lavoro ed in bocca al lupo! :)

Se hai suggerimenti, correzioni, critiche, scrivimi o commenta il post!

_Fonte: _[_bubidevs.net_](http://www.bubidevs.net)

