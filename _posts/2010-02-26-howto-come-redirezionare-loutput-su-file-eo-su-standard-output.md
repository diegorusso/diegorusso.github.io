---
title: 'HOWTO: Come redirezionare l&rsquo;output su file e/o su standard output'
categories:
- osx
- linux
- job
- howto
- geek
tags:
- howto
---
Quando si usa la console, soprattutto per gli script, e molto utile saper
redirezionare l'output su file o su standard output/error. Questo howto e
valido **per tutti i sistemi *NIX (linux, unix, osx, bsd, etc)** basati su
standard POSIX.

Ci sono varie redirezioni, vediamo quali:

  1. **Redirezionare l'output in un file:**
    
        echo "hello world" > hello.txt

  

  2. **Redirezionare l'output in un file:**
    
        echo "hello world" | tee hello.txt

  

  3. **Per "appendere" (aggiungere in fondo) l'output in un file si usa il doppio ">":**
    
        echo "hello world" >> hello.txt

  

  4. **Redirezionare lo standard error in un file e mostrare lo standard output** (script.py e uno script che produce uno standard error ed uno standard output) 
    
        ./script.py 2> hello.txt

  

  5. **Redirezionare lo standard error e lo standard output in un file:**
    
        ./script.py 2&> hello.txt

  

  6. **Mostrare e redirezionare lo standard error e lo standard output in un file:**
    
        ./script.py 2>&1 hello.txt

  

  

  
_Fonte:
_[_linux.byexamples.com_](http://linux.byexamples.com/archives/349/how-to-
redirect-output-to-a-file-as-well-as-display-it-out/)

Se hai domande e suggerimenti, commenta oppure
contattami

