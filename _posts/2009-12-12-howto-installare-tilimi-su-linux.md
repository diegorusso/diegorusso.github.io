---
title: 'HOWTO: Installare Tilimi su Linux'
categories:
- car
- technology
- computer
- linux
- friends
- various links
- windows
- ubuntu
- iPhone
- social network
- howto
- geek
- snow leopard
tags:
- howto
---
[Tilimi](http://tilimi.com) è una fantastica applicazione che **porta il mondo
della radio a portata di computer o iPhone.** Tilimi è un progetto interamente
italiano ed e veramente ben fatto. Tramite un'interfaccia chiara e semplice
puoi scegliere il canale che vuoi (il corrispettivo della frequenza per la
radio) vedere chi è collegato in quel canale, premere il tasto e parlare con
le persone di quel canale. Ovviamente **la comunicazione è half-duplex**, come
nella comunicazione classica radioamatoriale.

[![tilimi_logo]({{site.url}}/images/tilimi_logo.png){: .align-center}]({{site.url}}/images/tilimi_logo.png)
_Logo di Tilimi_
{: .text-center}

L'applicazione è disponibile per tre piattaforme: **Macintosh, PC ed iPhone.**
Io l'ho installato su iPhone (qui per
[scaricarlo](http://itunes.apple.com/it/app/tilimi/id300848480?mt=8)) e su Mac
(qui per [scaricarlo](http://tilimi.com)). Noto con dispiacere che
l'applicazione NON è disponibile per altre piattaforme tipo GNU/Linux,
Symbian, Android, etc. La prima cosa che ho provato è stato **installare
Tilimi per Windows su Linux utilizzando l'emulazione
[wine](http://www.winehq.org/).**

Ho effettuato l'installazione su una **Ubuntu 9.10**, grazie anche all'aiuto
di [Pablo](http://www.berbell.com/) e alle **dritte del team di sviluppo di
Tilimi** stesso. Ecco i semplici passi per installare Tilimi su Linux:

  1. Installa Wine: `apt-get install wine1.2` (con wine 1.0.X l'installer non funziona)
  2. Scarica il file **winetricks** seguendo le istruzioni di questa pagina: <http://wiki.winehq.org/winetricks>
  3. Installa la libreria GDIPLUS: `sh winetricks gdiplus"` (necessaria per visualizare correttamente l'interfaccia)
  4. Installa Tilimi tramite il comando: `msiexec /a TilimiInstaller.exe`
  5. Lancia Tilimi cliccando su "**_Applicazioni -> Wine -> Programs -> Tilimi -> Tilimi_**"
  
Ovviamente per far funzionare il tutto **devi avere sia il microfono che la
scheda audio funzionanti sotto Linux**, poiché wine "si appoggia" ai driver
audio di Linux.

Se hai domande, delucidazioni, correzioni, sugerimenti o altro, commenta
oppure contattami. Saro felice di rispondere. :)