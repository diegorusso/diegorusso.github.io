---
title: 'HOWTO: Wake On Lan (WOL)'
categories:
- osx
- private
- car
- computer
- linux
- various links
- job
- book
- howto
- university
- geek
tags:
- howto
---
Il [Wake On Lan (WOL)](http://en.wikipedia.org/wiki/Wake-on-LAN) e un
protocollo standard multipiattaforma e indipendente dal sistema operativo.
**E' una di quelle cose che senti sempre nominare, che ne senti parlare ma che
mai hai utilizzato.**

A me si e rivelato molto utile; ti racconto la mia piccola avventura. Per un
esame universitario devo fare un'applicazione in
[OpenCL](http://en.wikipedia.org/wiki/OpenCL) su architettura NVIDIA. La
NVIDIA ha però rilasciato i driver OpenCL solo per linux. Guarda caso ho una
macchina con una 8600GT supportata da
[OpenCL](http://en.wikipedia.org/wiki/OpenCL). Tenerla a casa sempre accesa
sarebbe stato un grande spreco di corrente, anche perché e una macchina con
molte ventole (dunque anche il rumore sarebbe stato assordante). Ho cosi
posizionato la mia macchina in una cantina e portato un cavo di rete fino a
dentro casa a cui ho connesso un router WRT-54GL con [DD-WRT](http://www.dd-
wrt.com/). Fatto cio ho reso pubblica la mia macchina all'esterno in modo da
connetermi in ssh. La macchina anche se in cantina, non puo stare sempre
accesa a non fare niente. Dunque mi e venuto in mente questo protocollo: il
[WOL](http://en.wikipedia.org/wiki/Wake-on-LAN).** Il Wake On Lan non fa altro
che accedere un computer connesso ad una rete.** Gli unici prerequisiti sono i
seguenti:

  * la scheda di rete deve supportare il wake on lan
  * il computer che deve accendere deve essere sulla stessa rete del computer da accendere (anche wifi)
  * conoscere il [mac address](http://it.wikipedia.org/wiki/Indirizzo_MAC) (indirizzo fisico della scheda di rete) del computer da accendere
  

  
Lo schema della mia rete e il seguente (scusa la poca chiarezza dello schema):

    
    
    mac book pro|-)  wifi  (-|router WRT-54GL|----------|macchina da accendere  
    
    |  
    
    |  
    
    INTERNET

Il MBP e connesso in wifi al router WRT che a sua volta e connesso ad internet
ed alla macchina da accendere. Per accendere il computer da dentro la rete ho
usato un comodissimo client per OSX scaricabile da [questo
link](http://www.coriolis.ch/en/wakeup/). L'utilizzo e molto semplice:
aggiungere il mac address della macchina e premere il tasto wake! :) Dopo
appena 30 secondi ho la macchina up!

Il problema era accendere il computer da remoto. Semplice! DD-WRT ha al suo
interno il client WOL: dunque basta connettersi al router ed accendere la
macchina direttamente dalla pagina web del router. Ovviamente appena accesa
accedo in ssh alla macchina per lavorarci sopra ed alla fine spegnerla! :)

Se hai domande o suggerimenti sul WOL, [contattami]({{site.url}}/chi-
e-diegor/)! :)

