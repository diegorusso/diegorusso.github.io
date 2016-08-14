---
title: 'HOWTO: Trovare file e cancellarli in un solo comando'
categories:
- osx
- linux
- various links
- howto
- programmazione
tags:
- howto
- python
- test
---
Eccomi di nuovo. Oggi vedrai come trovare e cancellare file in un solo step
con il comando "[**find**](http://www.gnu.org/software/findutils/)". Questo
comando lo trovi in tutte le distribuzioni linux, in OSX, BSD ed in tutti i
sistemi operativi *NIX like.

"[find](http://www.gnu.org/software/findutils/)" è molto potente ed ha una
flessibilita non indifferente. Oggi vedrai come cancellare i file che "find"
trova. Come caso di esempio, hai un progetto [python](http://www.python.org) o
[java](http://www.java.com) molto esteso. Questi due linguaggi di
programmazione sono precompilati, ovvero generano del
[bytecode](http://it.wikipedia.org/wiki/Bytecode) che l'interprete eseguirà.
Il Python genera file _**.pyc**_, mentr il Java genera file **_.class_**. É da
matti andare directory per directory e cancellare tutti i file uno ad uno. Il
comando "find" ti viene in aiuto.  
Infatti basta andare sulla root del progetto e digitare il seguente comando:

```
$ find . -iname  *.pyc  
$./trunk/progetto/urls.pyc  
./trunk/progetto/utility_functions.pyc  
./trunk/progetto/porting_conf.pyc
```
  
Per trovare i file da cancellare. Ti consiglio sempre di testare il comando
"find" prima di cancellare i file, per evitare brutte sorprese! Una volta che
sei sicuro dei file che vuoi cancellare ti basta lanciare il comando
precedente con una opzione in più:

``` 
$ find . -iname  *.pyc -delete
```

Puoi vedere il risultato del "**delete**" ricercando di nuovo i file *.pyc.
Sicuramente vedrai che i file *.pyc non ci sono più! :)  
A seconda del sistema operativo che usi la sintassi del comando potrebbe
cambiare leggermente. Questi comando sono stati provati su OSX. Per linux ad
esempio lo stesso comando produrrebbe un errore. Su linux sarebbe in questo
modo:

``` 
$ find . -iname  "*.pyc" -delete
```
  
Dunque ti consiglio sempre di leggerti prima il manuale di find digitando:

``` 
$ man find
```

oppure andando [su questa pagina.](http://unixhelp.ed.ac.uk/CGI/man-cgi?find)

Ti accorgerai che find farà molto di più oltre a semplici ricerche.

Happy find! :)