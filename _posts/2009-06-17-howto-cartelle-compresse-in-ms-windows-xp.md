---
title: 'HOWTO: Cartelle compresse in MS Windows XP'
categories:
- car
- windows
- howto
tags:
- howto
---
Non e mio solito scrivere HOWTO su MS Windows. Oggi vorrei fare un'eccezione.
Da Windows XP in qua esiste una comoda libreria per comprimere e decomprimere
le cartelle. Questa operazione non fa altro che **creare dei file zip** che
possono essere scambiato con tutti gli altri ed essere aperti da altre
applicazioni come WinZip, WinRar, 7-zip...

Proprio l'installazione di applicazioni come queste potrebbe far perdere la
possibilita dell'uso di questa libreria standard di Windows. Infatti cliccando
con il tasto destro sul file zip o cartella che sia, non e piu presente la
voce _"Cartella compressa"._

In questo momento starai pensando: **"Ma se io ho WinRar o WinZip, che cosa mi
importa della funzione Cartella compressa di Windows?"** A volte capita che
alcuni file **.zip** non vengono aperti da questi famigerati programmi e
dunque non resta che aprirli con Windows.

Per riabilitare la funzione delle Cartelle Compresse esegui questi passi:

  * Clicca su Start -> Esegui (oppure premi i tasti WIN+R)
  * Digita 
    
        regsvr32 zipfldr.dll

  

  

  
Per disabilitare questa funzione ti basta digitare:

    
    
    regsvr32 /u zipfldr.dll

_[Fonte: Oroboros cognitivo](http://my.opera.com/vevola/blog/show.dml/476082)_

