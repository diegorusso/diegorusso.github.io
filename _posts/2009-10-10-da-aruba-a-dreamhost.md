---
title: Da Aruba a DreamHost
categories:
- personal
- italian
tags:
- blog
---
Questo doveva essere uno dei primi post da fare appena eseguito [il
trasferimento da Aruba a DreamHost]({{site.url}}/2009/10/02/di-nuovo-online-ed-in-versione/).
Va beh lo scrivo oggi, è lo stesso.

Perché questo passaggio? Prima di passare a Dreamhost il dominio e l'hosting
[www.diegor.it]({{site.url}}) erano registrati presso Aruba.it. Sono
stato loro cliente per due anni con [questo
profilo](http://hosting.aruba.it/hosting_con_spazio.asp?offerta=2): per circa
25€ l'anno hai un hosting di medio profilo. Il database mysql è a parte. Non
mi vorrei dilungare su quello che ti da Aruba (lo puoi leggere benissimo da
solo) ma vorrei indicarti quali sono le carenze, a mio avviso, che ha questo
hosting.

  * Sistemi non molto aggiornati: php5 ci ha messo molto ad approdare sui loro sistemi
  * Supporto tecnico: gli do **un 6 scarso.**
  * **Spazio web NON è illimitato**. Leggi [qui]({{site.url}}/2009/06/30/aruba-it-e-il-fantomatico-spazio-web-illimitato) per maggiori dettagli
  * Il database mysql a mio avviso indispensabile lo devi prendere a parte ed è limitato a 5 db da 100MB l'uno (inizialmente a 50MB)
  * Pannello di controllo anti-intuitivo, **come il resto del sito.**
  * **Sistemi lenti:** il mio wordpress non era velocissimo
  
Dreamhost è un servizio di hosting americano ed ha prezzi più elevati rispetto
ad Aruba a cui però corrisponde un profilo più alto. Sono circa due settimane
che sto con loro e non c'è nulla da paragonare rispetto all'hosting di Aruba.
I loro punti forti sono:

  * Assistenza **tecnicamente preparata**, reattiva e molto simpatica
  * Pannello di controllo unificato dove puoi gestire tutto quello che ti serve
  * **Numero illimitato di database**
  * **Accesso ssh alla tua home directory**
  * **One-click installation** (wordpress, gallery, zencart, phpgdview, openX, pligg, dotProject, Moodle, Joomla, phpbb, Mediawiki, Webcalendar, Advancepoll, Trac, Drupal, zenphoto, etc.)
  * **Server molto veloci **(per lo meno rispetto ad Aruba)
  * Dinamici ed in continua espansione
  * subversion, cron jobs, amazon cloudfront, flash media, media straming, server jabber, google adword, google apps, mail illimitate, gestione dns, gestione multiutente, gestione sottocartelle, statistiche avanzate, gruppi unix **il tutto configurabile dal pannello di controllo.**
  
Unica pecca di Dreamhost (come di qualsiasi servizio hosting non Italiano) è
che non può ne registrare ne trasferire domini italiani **.it**. Per ovviare a
cio sposti o registri il tuo dominio su un registrant in grado di gestire .it
e punti i nameserver verso Dreamhost. Nello specifico mi sono appoggiato a
[misterdomain.eu](http://misterdomain.eu) che con circa **6€ l'anno hai il tuo
dominio registrato con gestione dns e nameserver.** Se punti i nameserver
verso Dreamhost, poi puoi gestire i dns direttamente dal pannello di controllo
di Dreamhost.

Una nota se vuoi lasciare l'hosting con Aruba. Come scritto sul contratto
l'hosting cessa di esistere nelle seguenti condizioni:

[![cessazione-contratto-aruba]({{site.url}}/images/cessazione-contratto-aruba.png){: .align-center}]({{site.url}}/images/cessazione-contratto-aruba.png)

**Dunque in caso di trasferimento esegui subito un backup dei tuoi file e del database altrimenti andrà tutto perso! **Ho avuto la fortuna che anche dopo la chiusuta dell'hosting un'operatrice mi ha fatto accedere lo stesso per eseguire il backup di tutti i miei dati. :)

Dreamhost è solito offrire degli sconti sottoforma di codici per acquisire
nuovi clienti. Io ho usato il codice promozionale di
[tomstardust.com](tomstardust.com) che mi ha dato ben 50$ di sconto sul prezzo
finale dell'hosting. Credo che lui non e a conoscenza del furto del codice
promozionale. **Lo ringrazio publicamente!** :) Se cerchi su google "Dreamhost
discount" ci sono migliaia di codici che puoi utilizzare per aprire il tuo
hosting con Dreamhost.

**Tirando le somme consiglio fortemente Dreamhost come sito di hosting.**
Se vuoi farmi domande, darmi suggerimenti o altro contattami o commenta, sarò felice di risponderti! :)
