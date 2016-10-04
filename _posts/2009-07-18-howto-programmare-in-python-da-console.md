---
title: 'HOWTO: Programmare in python da console'
categories:
- howto
- italian
tags:
- programming
- python
---
Oggi voglio segnalarti alcune utility che ti aiuteranno a programmare in
Python dalla console di un sistema Unix-like (Linux, BSD, OSX etc). Molti
preferiscono il classico vim, ma per progetti più grandi potrebbe risultare
scomodo.

A tal proposito voglio indicarti due progetti promettenti per il python da
console. **Il primo è [iPython](http://ipython.scipy.org/moin/Documentation)**,
una shell interattiva con tante funzionalità per la programmazione in python, quali:

  * autocompletamento di variabili, classi, packages, metodi, premendo il tasto TAB
  * sintassi automatica
  * evidenziazione del codice
  * history dei comandi
  * altre funzionalità avanzate
  
Personalmente uso iPython come console di default per il python e per eseguire
test di script o altro che poi importerò nel mio editor preferito
([Textmate](http://macromates.com/)). iPython può essere installato in vari
modi: con easy_install, da sorgente, eseguibile per windows. Maggiori dettagli
li puoi trovare [qui](http://ipython.scipy.org/doc/rel-0.9.1/html/install/install.html#installing-ipython-itself).

**L'altro progetto è [bpython](http://www.bpython-interpreter.org/),**
un'interfaccia funzionale per la console del python. Ha le seguenti caratteristiche:

  * evidenziazione del codice in linea
  * autocompletamenteo con suggerimenti mostrati mentre scrivi
  * lista dei parametri attesi per le funzioni Python
  * funzione di "rewind" per prendere l'ultima linea di istruzione dalla memoria e rivalutarla
  * inviare il codice a pastebin
  * salvare il codice che hai scritto in un file
  * auto indentazione
    
Anche questo progetto sembra promettere bene e lo uso in OSX. Ci sono vari
modi di installazione che sono tutti spiegati nel suo sito. bpython può essere
scaricato [da qui](http://www.bpython-interpreter.org/downloads/) e in [questa
pagina puoi trovare la documentazione associata](http://docs.bpython-interpreter.org/).

_Happy hacking! :)_
