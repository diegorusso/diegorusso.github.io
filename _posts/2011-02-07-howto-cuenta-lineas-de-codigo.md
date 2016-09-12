---
title: 'HOWTO: cuenta lineas de c&oacute;digo'
categories:
- personal
- italian
- howto
- curiosidad
- guia
- trabajo
tags:
- python
- guia
---
Desde hoy no deberas enojarte mas para escribir uno script que cuente las
lineas de codigo de tu último projecto. No, porque hay
"[CLOC](http://cloc.sourceforge.net/)" que **las cuenta para ti**. Es un enorme
(**7640 lineas**) script en perl que te da estadisticas muy buenas sobre tu
proyecto. Lo puedes encontrar en [SourceForge](http://cloc.sourceforge.net/).

Una vez descargado, descomprimilo y con el terminal va en la carpeta del su
ejecutable; luego escriba el comando de bajo:
```
$ perl cloc-1.53.pl /path/to/project/
```

y tendras un output como esto (depende de la complejidad del projecto). La
cosa interesante es que **reconoce los lenguajes** y divide las estadisticas
secundo de los que hayas utilizado.

    
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

Bueno! Ah sí, obviamente puedes echar un vistazo a la guía ejecutandolo
**sin argumentos.**

Y tú, ¿cuantas lineas de codigo has escrito? :)
