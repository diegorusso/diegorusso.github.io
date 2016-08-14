---
title: 'HOWTO: Scrivere nativamente su NTFS con OSX'
categories:
- osx
- private
- computer
- leopard
- windows
- howto
- snow leopard
tags:
- howto
---
In OSX (sia Leopard che Snow Leopard) **manca per default il supporto per la
scrittura su partizioni NTFS.** Per fare cio esistono sono molte soluzioni di
terze parti che permettono le scritture su questo tipo di filesystem. Questo
tipo di supporto e utile se, avendo un hard disk esterno, vuoi scambiare file
con i tuoi amici o semplicemente con altri tuoi computer che hanno Windows.

Come ho detto prima, OSX ha la scrittura disabilitata per default **ma e in
grado di scrivere su partizioni di tipo NTFS.** Per fare cio e sufficiente
eseguire qualche piccolo passo con il Terminale.

**ATTENZIONE: non mi assumo nessuna responsabilità sull'eventuale perdita di dati o corruzione del filesystem. La procedura, se pur semplice, e consigliata ad utenti che hanno un minimo di esperienza con il Terminale.**

  
****Detto cio, procedi pure:

  1. Apri il _Terminale_
  2. **Rinomina** il file mount_ntfs in mount_ntfs.orig (se ti viene chiesta la password, inseriscila):
    
        sudo mv /sbin/mount_ntfs /sbin/mount_ntfs.orig

  

  3. **Crea ed edita** il file con il seguente comando: 
    
        sudo vim /sbin/mount_ntfs

  

  4. **Incollaci** il seguente contenuto: 
    
        #!/bin/sh  
    
    /sbin/mount_ntfs.orig -o rw "$@"

  

  5. Salva ed esci da vim premendo: _"**esc**"_ \+ _**:**_ \+ _**x**_
  6. Dai i **permessi di esecuzione** al file appena creato: 
    
        sudo chmod a+x /sbin/mount_ntfs

  

  

  
Il gioco è fatto. **Ora sarai in grado di scrivere in ogni partizione NTFS**
senza alcun problema.

Se hai domande, suggerimenti, critiche... commenta oppure scrivimi una mail!
:)

