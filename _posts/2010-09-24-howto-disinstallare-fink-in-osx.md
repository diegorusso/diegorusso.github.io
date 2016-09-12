---
title: 'HOWTO: Disinstallare fink in OSX'
categories:
- personal
- italian
- osx
- open source
- job
- howto
- geek
tags:
---
[Fink](http://www.finkproject.org) è un'applicazione per OSX che ti permette
di installare software opensource ed è basato sulla gestione dei pacchetti
presenti in Debian. Personalmente uso i [Macports](http://www.macports.org/)
ed ho installato [Fink](http://www.finkproject.org) solo una volta per provare
dei pacchetti che non erano presenti nei [Macports](http://www.macports.org/).

[![]({{site.url}}/images/fink_logo.png){: .align-center}]({{site.url}}/images/fink_logo.png)
  
Così ho deciso di **disinstallarlo** seguendo questi semplici passi:

  1. April il _Terminale_
  2. Digita il comando **(nota - assicurati che hai installato Fink in `/sw` e di digitare bene il path da rimuovere. Questo comando è distruttivo ed elimina la cartella passatagli senza alcuna conferma)**
    
     ```
     $ sudo rm -rf /sw
     ```
  3. Se hai installato tramite Fink anche "**_X Server_**" allora digita:
    
     ```
     $ sudo rm -rf /usr/X11R6 /etc/X11 /Applications/XDarwin.app
     ```
  4. Se non hai più intenzione di installare Fink elimina questa riga `source /sw/bin/init.sh` dal file `.bash_profile` o `.bashrc` presenti nella tua home directory. Per fare ciò usa un qualsiasi editor di testo.
  
Se hai problemi, domande o integrazioni, commenta o contattami.

A presto :)
