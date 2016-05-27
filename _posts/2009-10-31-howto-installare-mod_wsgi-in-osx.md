---
title: 'HOWTO: Installare mod_wsgi in OSX'
categories:
- osx
- car
- open source
- various links
- job
- howto
- snow leopard
tags:
- howto
- python
- apache
- django
---
Il **mod_wsgi** e un modulo di [Apache](http://apache.org/) per far girare
applicazioni [Python](http://www.python.org) che supportano l'interfaccia
WSGI. A me personalmente e servito per far girare Django su OSX sfruttando il
web server Apache.

Segui questi passi per installare mod_wsgi su OSX:

  1. Scarica i sorgenti di mod_wsgi da [qui](http://code.google.com/p/modwsgi/downloads/list)
  2. Decomprimi il tar.gz appena scaricato
  3. Apri il Terminale di OSX ed entra la directory appena decompress
  4. Lancia questa sequenza di comandi:  
./configure  
make  
sudo make install

  5. Ora edita il file /etc/apache2/httpd.conf (con i permessi di root) ed aggiungi la seguente riga:  
LoadModule wsgi_module     libexec/apache2/mod_wsgi.so

  6. Riavvia Apache con:  
sudo apachectl restart

  

  
Ora il tuo apache e pronto per eseguire applicazioni Python con interfaccia
WSGI.

Per qualsiasi problema o suggerimento commenta o
[scrivimi](http://www.diegor.it/chi-e-diegor/)! :)
