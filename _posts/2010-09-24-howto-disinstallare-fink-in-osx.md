---
title: 'HOWTO: Disinstallare fink in OSX'
categories:
- osx
- car
- open source
- various links
- job
- howto
- geek
tags:
- howto
- test
---
[Fink](http://www.finkproject.org) e un'applicazione per OSX che ti permette
di installare software opensource ed e basato sulla gestione dei pacchetti
presenti in Debian. Personalmente uso i [Macports](http://www.macports.org/)
ed ho installato [Fink](http://www.finkproject.org) solo una volta per provare
dei pacchetti che non erano presenti nei [Macports](http://www.macports.org/).

[![]({{site.url}}/images/fink_logo.png){: .align-center}]({{site.url}}/images/fink_logo.png)

  
Cosi ho deciso di **disinstallarlo** seguendo questi semplici passi:

  1. april il _Terminale_
  2. digita il comando **(nota - assicurati che hai installato Fink in /sw e di digitare bene il path da rimuovere. Questo comando e distruttivo ed elimina la cartella passatagli senza alcuna conferma)**
    
        sudo rm -rf /sw

  

  3. se hai installato tramite Fink anche "**_X Server_**" allora digita: 
    
        sudo rm -rf /usr/X11R6 /etc/X11 /Applications/XDarwin.app

  

  4. se non hai più intenzione di installare Fink elimina questa riga "_source /sw/bin/init.sh_" dal file "_.bash_profile_" o "_.bashrc_" presenti nella tua home directory. Per fare cio usa un qualsiasi editor di testo.
  

  
Se hai problemi, domande o integrazioni, commenta o
[contattami]({{site.url}}/chi-e-diegor/).

A presto :)

