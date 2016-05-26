---
title: 'HOWTO: Installare LaTeX in OSX'
categories:
- osx
- blog
- private
- open source
- various links
- howto
- university
- geek
- snow leopard
- lavoro
tags:
- howto
- test
---
[LaTeX](http://www.latex-project.org/) e un linguaggio di markup per la
produzioni di testi basato su [TeX](http://en.wikipedia.org/wiki/TeX). É usato
soprattutto da scienziati, matematici ed ingegneri in quanto **si presta molto
bene per la scrittura di formule matematiche e non.**

In OSX non e installato di default ed e possibile farlo in due modi:

  1. tramite un installer apposito
  2. tramite [macports](http://www.macports.org/) o [fink](http://www.finkproject.org/)
  

  
Per il primo punto c'e [MacTex](http://www.tug.org/mactex/), una distribuzione
di LaTeX precompilata per OSX: nel pacchetto (grande circa **1.6GB**) trovi
tutto quello che hai bisogno per iniziare a lavorare con LaTeX. L'unica cosa
che ti manca **e un editor** in grado di aiutarti nella scrittura del
linguaggio. A riguardo, sempre in questa pagina (<http://www.tug.org/mactex/>)
c'e il **MacTeXtras.zip** che contiene molti extras, tra cui anche degli
editor.

![]({{site.url}}/images/latex.png)

  
Da bravo programmatore uso [TextMate](http://macromates.com/), un editor di
testo molto ben fatto per OSX.

Altro metodo per installare LaTex (un pochino piu complicato) e quello di
utilizzare i **macports o fink**. [Ho usato varie volte i
macports](http://www.diegor.it/?s=macports) e sono molto comodi. [Fink invece
l'ho disinstallato](http://www.diegor.it/2010/09/24/howto-disinstallare-fink-
in-osx/) :)

Dunque per installare LaTeX dai macports segui questi passi:

  1. apri il _Terminale_
  2. digita: 
    
        sudo port install tetex

  
pazienta ed attendi la fine dell'installazione.

  

  
Ora sei in grado di generare i tuoi documenti partendo dal codice LaTex.

Buon lavoro! :)

  

