---
title: 'HOWTO: Snow Leopard + django + postgresql + psycopg2'
categories:
- osx
- car
- leopard
- various links
- job
- howto
- snow leopard
- lavoro
tags:
- howto
- python
- django
---
Appena installato Snow Leopard, una delle prime applicazioni che ho dovuto
installare sono quelle necessarie per il lavoro, ovvero:

  1. Django
  2. Postgresql
  3. Python
  4. Psycopg2
  

  
Snow Leopard ha sia Pyhon 2.4, 2.5 che il 2.6, ma per default lui usa il 2.6
(giustissimo). Dunque il python non l'ho dovuto installare: uso il suo di
default (che e compilato a 64bit).

La primncipale limitazioni dell'integrazione tra python, psycopg2 (ed in
generale dei suoi moduli) ed altre applicazioni e che devono essere compilate
tutte alla stessa maniera, o 32 o 64 bit per non incappare in errori strani di
utilizzo (tipo: "_Symbol not found: _PQbackendPID_").

Il segreto e installarsi tutto dai sorgenti e compilarsi il tutto.
Fortunatamente non bisogna fare tutto a mano, ma ci sono i
[macports](http://www.macports.org/). É un progetto open-source che si occupa
di compilare, installare ed aggiornare su OSX tutte le applicazioni X11, aqua
ed open-source.

Dunque per avere Django + Postgresql + Python + Psycopg2 funzionante segui
queste istruzioni:

  1. installa i macports
  2. da terminale digita: "_sudo ports install postgresql84-server"_
  3. segui le istruzioni dopo l'installazione di postgresql
  4. installa psycopg digitando: _"sudo easy_install psycopg2"_
  5. installa django1.1 scaricando i sorgenti dal [sito](http://www.djangoproject.com/)
  

  
Seguendo questi semplici passi avrai la tua piattaforma in django e postgres
per sviluppare le tue web-application.

Come al solito se hai problemi e/o suggerimenti, commenta oppure
[contattami]({{site.url}}/chi-e-diegor/)

