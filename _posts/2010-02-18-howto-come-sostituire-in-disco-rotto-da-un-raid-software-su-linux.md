---
title: 'HOWTO: Come sostituire in disco rotto da un RAID software su linux'
categories:
- personal
- italian
- linux
- friends
- job
- howto
tags:
---
Se sei un sysadmin oppure ti piace smanettare con linux + dischi +
[RAID](http://en.wikipedia.org/wiki/RAID) questo howto ti potrebbe essere
molto utile. Se hai un [RAID](http://en.wikipedia.org/wiki/RAID), qualunque
tipo esso sia, questo howto ti indica come procedere nel sostituire il disco
rotto di un RAID. Ovviamente se un disco si rompe, il RAID può decidere
autonomamente di espellerlo da solo. A volte questo non succede e lo si deve
fare a mano. Ecco come:

**Supponiamo che il disco da rimuovere sia /dev/sda**

  1. Manda in stato di fail il disco su tutte le partizioni in cui e coinvolto (qui nell'esempio 3 partizioni):
     
     ```
     mdadm /dev/md0 --fail /dev/sda1  
     mdadm /dev/md1 --fail /dev/sda2  
     mdadm /dev/md2 --fail /dev/sda3
     ```
  2. Attendi il resync (questa operazione può richiedere molto tempo) tramite:

     ```
     cat /proc/mdstats
     ```
  3. Rimuovi dal RAID il disco rotto:

     ```
     mdadm /dev/md0 --remove /dev/sda1  
     mdadm /dev/md1 --remove /dev/sda2  
     mdadm /dev/md2 --remove /dev/sda3
     ```
  4. Estrai il disco /dev/sda
  5. Copia l'MBR (uguale su tutti i dischi) in un file:

     ```
     dd if=/dev/sda of=mbr bs=512 count=1
     ```
  6. Inserisci il nuovo disco
  7. Copia l'MBR sul nuovo disco appena inserito:

     ```
     dd if=mbr of=/dev/sdf
     ```
  8. Immetti il nuovo disco nel RAID:

     ```
     mdadm /dev/md0 --re-add /dev/sdf1  
     mdadm /dev/md1 --re-add /dev/sdf2      
     mdadm /dev/md2 --re-add /dev/sdf3
     ```
  9. Ora il disco appena inserito prendera il ruolo di quello rotto.
  
Se hai suggerimenti, problemi, domande, commenta il post oppure
contattami! :)

_Autore originale: [Lorenzo](http://twitter.com/l_allegrucci)_

