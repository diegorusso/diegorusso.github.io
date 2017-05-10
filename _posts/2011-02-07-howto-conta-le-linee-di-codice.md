---
title: 'HOWTO: conta le linee di codice'
categories:
- howto
- italian
tags:
- job
---
Da oggi non ti dovrai più arrabbiare per scrivere un script che conti le linee
di codice del tuo ultimo progetto. No, perché c'è
"[CLOC](http://cloc.sourceforge.net/)" che **conta per te**. É un immenso
(**7640 linee**) script in perl che ti da delle ottime statistiche riguardante
il tuo progetto. Lo puoi trovare su [SourceForge](http://cloc.sourceforge.net/).

Una volta scaricato, decomprimilo e con il terminale vai alla directory del
suo eseguibile; poi digita il comando qui sotto:

```
$ perl cloc-1.53.pl /path/to/project/
```

ed avrai un output come questo (dipende dalla complessità del progetto). La
cosa interessante è che **riconosce i linguaggi** e divide le statistiche in
base a quelli che hai usato!

```
http://cloc.sourceforge.net v 1.53  T=121.0 s (4.7 files/s, 1976.7 lines/s)
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
SQL                              3           1473           1257          85959
Python                          97           5733           3435          29419
Java                           170          10411          25782          28139
HTML                           235           4833            200          28045
Javascript                      32            803           1977           6994
CSS                             21            473            149           3380
Bourne Shell                    12             62            154            269
Visual Basic                     1             46             50            136
DOS Batch                        1              2              0              5
-------------------------------------------------------------------------------
SUM:                           572          23836          33004         182346
-------------------------------------------------------------------------------
```

É tutto! Ah si, ovviamente puoi dare un'occhiata alla sua guida lanciandolo
**senza alcun argomento.**

E tu, quante linee di codice hai scritto? :)
