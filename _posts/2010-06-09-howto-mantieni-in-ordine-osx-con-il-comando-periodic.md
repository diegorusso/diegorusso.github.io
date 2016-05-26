---
title: 'HOWTO: Mantieni in ordine OSX con il comando &ldquo;periodic&rdquo;'
categories:
- osx
- car
- howto
- snow leopard
tags:
- howto
---
OSX ha a disposizione una serie di comandi da Terminale per **mantenere in
ordine il sistema operativo**. Sto parlando del comando **"periodic"**. Se
apri il terminale e digiti **_"man periodic"_** puoi leggere il manuale di
questo comando. Ci sono tre tipi di insieme di funzioni che si possono
eseguire:

  1. **daily**: sono degli script che solitamente vengono eseguiti alle prime ore della mattina
  2. **weekly**: sono degli script settimanali che solitamente vengono eseguiti il Sabato mattina
  3. **monthly**: sono degli script mensili che solitamente vengono eseguiti il primo giorno del mese
  

  
Le operazioni da fare per ogni insieme sono definite dentro
_**"/etc/periodic"**_. Dentro questa directory ci sono 3 cartelle, una per
ogni insieme di funzioni.

Le configurazioni invece sono dentro _**"/etc/defaults/periodic.conf"**_ dove
sono definiti i vari parametri di periodic. Se vuoi aggiungere delle tue
operazioni, le puoi inserire in queste cartelle, a seconda della frequenza con
cui devono essere eseguite.

Tutti i log (ovvero i risultati) di queste operazioni sono contenute dentro
**"/var/log/"** nei file** "daily.log", "weekly.log" e "monthly.log"
**rispettivamente per ogni insieme di funzioni.

Dunque se vuoi eseguire un set di operazioni ti bastera aprire il Terminale ed
eseguire i seguenti comandi:

    
    
    #> sudo periodic daily  
    
    #> sudo periodic weekly  
    
    #> sudo periodic monthly

  
Se hai domande e/o suggerimenti commenta o scrivimi una mail! :)

