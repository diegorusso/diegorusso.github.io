---
title: 'HOWTO: "psycopg2 module: cannot import name tz"'
categories:
- open source
- various links
- job
- howto
tags:
- howto
- python
- django
---
Gia ho scritto a riguardo di [postgres + psycopg2 +
django]({{site.url}}/2009/09/04/howto-snow-leopard-django-postgresql-
psycopg2/) e nell'utilizzo (dunque la compilazione e andata a buon fine) di
**psycopg2 con django **puoi incappare in un errore del genere:

    
    
    raise ImproperlyConfigured("Error loading psycopg2 module: %s" % e)  
    
    ImproperlyConfigured: Error loading psycopg2 module: cannot import name tz

  
Ho cercato molto in giro e non ho mai trovato una soluzione a questo errore,
finche la mia perseveranza ha trovato un'uscita. Praticamente questo errore e
scaturito poiché **il tuo server non riesce a scrivere sul path
PYTHON_EGG_CACHE e di conseguenza non puo usare le eggs.**  
Il vero fix e però nella configurazione del tuo _mod_python_ o del _mod_wsgi_,
in modo da configurare questo path.  
Per il _mod_wsgi_, modifica il file .wsgi del tuo progetto aggiungendoci
questa riga:

    
    
    os.environ['PYTHON_EGG_CACHE'] = '/writable/path/.python-eggs'

  
Dove il path che vai ad inserire e scrivibile dall'utente che esegue il web
server come, ad esempio, **www-data.**

Per quanto riguarda _mod_python_ segui questi due passaggi:

  1. Crea un piccolo modulo python _"eggs.py"_ e mettici dentro queste due righe: 
    
        import os  
    
    os.environ['PYTHON_EGG_CACHE'] = '/home/django/.python-eggs'

  

  2. Nel file del tuo virtualhost aggiungi le seguenti direttive: 
    
        PythonInterpreter my_django  
    
    PythonImport /path/to/my/profile/eggs.py my_django

  

  

  
Sia per _mod_wsgi_ che per _mod_python_, a modifiche finite riavvia il tuo
server web e controlla se tutto funziona correttamente.

Come al solito se hai domande, suggerimenti, critiche, altro... scrivimi
oppure commenta il post! :)

_Fonte: [lethain.com](http://lethain.com/entry/2009/feb/13/when-psycopg2-can-
t-import-tz/)_

