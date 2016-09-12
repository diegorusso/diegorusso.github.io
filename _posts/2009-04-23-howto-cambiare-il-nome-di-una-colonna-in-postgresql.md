---
title: 'HOWTO: Cambiare il nome di una colonna in postgresql'
categories:
- personal
- italian
- open source
- job
- howto
tags:
---
Se sei un programmatore come me, sicuramente hai avuto anche a che fare con i
database. Io uso solo maggiormente [postgresql](http://www.postgresql.org) che
a mio parere è il **migliore database esistente** (open source ovviamente).

In questo piccolo howto vedrai come cambiare il nome di una colonna in una
tabella in postgresql. Segui questi semplici passi:

1. connettiti al database 

    ```
    psql nome_database
    ```
2. lancia questo comando 

    ```    
    ALTER TABLE nome_tabella RENAME nome_vecchia_colonna TO nome_nuova_colonna;
    ```

Il gioco è fatto!

Ti consiglio comunque di leggere la documentazione in merito [sul sito
ufficiale di postgresql](http://www.postgresql.org/docs/).

