---
title: 'HOWTO: count lines of code'
categories:
- languages
- open source
- job
- howto
- geek
- curiosity
tags:
- howto
- python
---
From today you will not go mental anymore to write a script that count lines
of code of your last project. No, because there is
"[CLOC](http://cloc.sourceforge.net/)" that **counts them for you**. It's a huge
(**7640 lines**) perl script that gives you nice statistics about your project.
You can find it on [SourceForge](http://cloc.sourceforge.net/).

Once downloaded, unzip it and with a terminal cd _(to cd=to change directory)_
to executable; then type the command below:

```    
$ perl cloc-1.53.pl /path/to/project/
```

and you'll have an output like this (it depends by the project's complexity).
The cool things is that **recognizes languages** and divides statistics
depending on which have you used!

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
  
That's it! Oh yes, obviously you can **take a look to its help** launching it
**without any argument.**

And you, how many line of code have you written? :)