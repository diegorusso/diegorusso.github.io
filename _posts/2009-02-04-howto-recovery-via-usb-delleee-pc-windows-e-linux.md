---
title: 'HOWTO: Recovery via USB dell''EEE PC (windows e linux)'
categories:
- car
- computer
- linux
- microsoft
- various links
- windows
- howto
- guida
tags:
- howto
- guida
---
Vorrei scrivere questa guida per semplificare la vita a coloro che vorranno
ripristinare il proprio **Asus EEE PC alle condizioni originali.**  
Come sapete l'asus EEE, non **ha un lettore DVD.** Ci sono dunque due modi per
ripristinare il sistema alle condizioni originali:

  1. Avere un lettore DVD esterno USB ed eseguire direttamente il ripristino
  2. Seguire questa guida! :) **Tutto quello che serve e un compuer con windows ed una usb pendrive (2GB, meglio se 4GB)**
  

  
Creeremo una penna usb bootabile che permettera di:

  * **Creare immagini di ripristino**
  * **Ripristinare immagini già create **(come quella contenuta nel dvd Asus)
  

  
Seguite i segeunti passi:

  1. Scaricate questo archivio: [EEERecoveryPack]({{site.url}}/files/eeerecovery.rar) (sono circa 55MB). **Qui ci sara tutto quello che ci serve.**
  2. Scompattate l'archivio e aprite _"vfdwin.exe"_.
  3. Selezionate la scheda _Driver_, e clickate prima su _Install_ e poi su _Start_.
  4. Tornate alla voce _Drive0_ e Clickate su _Open/Create._
  5. Poi su Browse, e selezionate il file _"boot98.bin"_.
  6. Clickate infine su _Open_.
  7. Se avete un floppy drive installato nel pc, alla voce "_Drive letter_" clickate su change e selezionate la lettera B (se la B dovesse essere occupata, sceglietene un'altra).
  8. Andate in _Risorse del Computer_ per verificare che la lettera da voi selezionata sia comparsa. Apritela e dovrete trovare dei file. In caso contrario, ripetete la procedura.
  9. A questo punto aprite _"HPUSBFW.EXE"_
  10. Sotto la voce Device selezionate la vostra penna usb. Come file system selezionate FAT32 (se disponibile, altrimenti FAT16). Volume label quello che volete. Checkate la casella _"Create a DOS startup disk"_, _"Using DOS system files located at:"_ selezionate il disco che avete creato prima con _"vfdwin.exe"._ Ora clickate su Start.
  11. Al termine della procedura, aprite la cartella di nome _"Cartella"_ contenuta nell'archivio, e copiatene tutto il contenuto nella penna usb. ATTENZIONE: Assicuratevi di avere impostato la visualizzazione dei file nascosti, in modo da poter copiare anche i file che non vedete. Sostituite i file esistenti se richiesto.
  12. a) Se avete già un file di recovery **.GHO**, copiatelo nella penna e riavviate il computer avviandolo dalla periferica usb. Seguendo le istruzioni di Norton Ghost sarete in grado di ripristinare lo stato del computer dal file che avete caricato.  
b) Se non avete ancora un file di ripristino, riavviate comunque il computer
avviandolo da periferica usb, e tramite il Norton Ghost che si avviera, sarete
in grado di creare un file di ripristino.

  

_Fonte: [forum.eeepc.it](http://forum.eeepc.it/viewtopic.php?id=5077)_

