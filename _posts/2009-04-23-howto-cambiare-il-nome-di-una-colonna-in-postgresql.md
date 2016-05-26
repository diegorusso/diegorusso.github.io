---
title: 'HOWTO: Cambiare il nome di una colonna in postgresql'
categories:
- open source
- job
- howto
tags:
- howto
---
Se sai un programmatore come me, sicuramente hai avuto anche a che fare con i
database. Io uso solo maggiormente [postgresql](http://www.postgresql.org) che
a mio parere e il **migliore database esistente** (open source ovviamente).

In questo piccolo howto vedrai come cambiare il nome di una colonna in una
tabella in postgresql. Segui questi semplici passi:

  1. connettiti al database 
    
        psql _nome_database_

  

  2. lancia questo comando 
    
        ALTER TABLE _nome_tabella_ RENAME_ nome_vecchia_colonna_ TO _nome_nuova_colonna_;

  

  

  
Il gioco e fatto!

Ti consiglio comunque di leggere la documentazione in merito [sul sito
ufficiale di postgresql](http://www.postgresql.org/docs/).

