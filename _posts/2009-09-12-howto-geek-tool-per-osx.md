---
title: 'HOWTO: Geek Tool per OSX'
categories:
- osx
- technology
- leopard
- job
- howto
- geek
- snow leopard
- lavoro
tags:
- howto
---
In questo post vedrai un'applicativo per OSX molto utile per il monitoraggio
della tua macchina o di sistemi remoti. Il programma si chiama [Geek
Tool](http://projects.tynsoe.org/en/geektool/) e non e altro che un modulo
delle preferenze del sistema per OSX (io ho Snow Leopard) che ti visualizza
sul tuo desktop una serie di informazioni con l'ausilio di 3 plugins:

  * **File plugin: **visualizza il contenuto di file. d esempio puoi monitorare il file di log di OSX "/var/log/system.log" oppure ogni altro file nel tuo filesystem
  * **Shell mode:** per lanciare comandi shell e visualizzare l'output sul desktop. Comandi utili possono essere: df, uptime, date, top. Ovvviamente puoi eseguire anche combinazioni di comandi (grep, awk, sed, etc)
  * **Image Mode:** puoi mettere sul tuo desktop sia immagini locali che remote. Puoi usare immagini prodotte da [MRTG](http://tobi.oetiker.ch/hp/) o [RRD](http://tobi.oetiker.ch/hp/) per controllare consumi di banda, cpu, ram di sistemi remoti.
  

  
Inoltre **puoi creare anche gruppi di widget** per abilitarli o meno. Ad
esempio puoi creare il gruppo "Default" per i tuoi widget che usi spesso e
puoi fare anche il gruppo "Work" per usare questi strumenti per il tuo lavoro.

L'immagine sottostante e il mio desktop.

[![geek_tool_diegor]({{site.url}}/images/geek_tool_diegor.png){: .align-center}]({{site.url}}/i
mages/geek_tool_diegor.png)

Come puoi vedere ci sono delle informazioni. Ci sono tre zone del desktop:

  1. la parte superiore e l'esecuzione di un comando da shell: **"top -l1 -n 16"**
  2. nella parte centrale ci sono dei grafici dell'applicazione [MRTG](http://tobi.oetiker.ch/hp/) ed il mio avatar :)
  3. nella parte inferiore e il contenuto del file **"/var/log/system.log"**
  

  
Ovviamente puoi importare tutti i widget che ti vengono in mente. Le uniche
due limitazioni** sono lo spazio del desktop e la tua fantasia!** :)

