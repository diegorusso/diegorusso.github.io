---
title: 'HOWTO: Fixare Macfusion su Snow Leopard'
categories:
- osx
- car
- computer
- open source
- leopard
- various links
- howto
- geek
- snow leopard
tags:
- howto
- test
---
[Macfusion](http://www.macfusionapp.org/) è un applicazione open source (solo
per Mac) che ti permette di lavorare con file che si trovano su server remoti,
come se fossero nel tuo computer. Per i più tecnici, **macfusion ti permette
di montare cartelle remote sul tuo mac** sfruttando vari protocolli. Vedrai la
cartella remota nel Finder di OSX.

[![macfusion]({{site.url}}/images/macfusion.jpg){: .align-center}]({{site.url}}/images/macfusion.jpg)

In Snow Leopard però questa applicazione ha qualche problema rifiutando a
connessione con il server remoto. Per ora non c'è un fix ufficiale
nell'applicazione ma puoi risolvere il problema seguendo questi passi:

  1. Esci da MacFusion
  2. Apri le **"Preferenze di Sistema"** e vai sulla sezione MacFUSE.
  3. Metti il segno di spunta su **"Show Beta Versions"**
  4. Clicca su **"Check for updates"**
  5. Aggiorna MacFUSE all'ultima versione di beta.
  6. Appena aggiornata apri un terminale e digita il seguente comando:

     ```
     rm /Applications/Macfusion.app/Contents/PlugIns/sshfs.mfplugin/Contents/Resources/sshnodelay.so
     ```
  7. Riavvia MacFusion e prova a connetterti alle cartelle remote.
  
Personalmente l'ho testato solo con connessioni sshfs e sembra funzionare
senza alcun problema.

_Fonte: [Racker Hacker](http://rackerhacker.com/2009/08/28/fix-macfusion-on-snow-leopard/)_

