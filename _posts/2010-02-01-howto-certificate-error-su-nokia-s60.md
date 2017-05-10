---
title: 'HOWTO: "Certificate error" su Nokia S60'
categories:
- howto
- italian
tags:
- nokia
---
Se sei possessore di un **Nokia** (con S60) questo post ti potrebbe far molto
comodo. Il **"Certificate Error"** ti capita quando vuoi installare
applicazioni .SIS o SISX sul tuo dispositivo. Molte applicazioni per Nokia non
hanno un certificato valido dunque è necessario disabilitare il controllo
dello stesso prima dell'installazione dell'applicazione. Per fare questo devi
fare i seguenti passi:

  * vai su _"Menu -> Installazioni -> Gestione Applicazioni"_
  * clicca su _"Opzioni -> Impostazioni"_
  * su _"Installazione Software"_ seleziona _"Completa"_
  * su _"Verifica in linea cert."_ seleziona _"Disattiva"_
  
Queste impostazioni ti permettono di installare senza alcun problema tutte le
applicazioni che trovi in giro per la rete. A volte capita però di avere un
**"Certificate Error"** anche con le impostazioni precedenti. A me è successo
quando ho provato ad installare [ustream.tv](http://ustream.tv) per Nokia
([scaricabile da qui](http://www.ustream.tv/mobile/broadcaster)). Ho così
aperto dei ticket sul sito di ustream e l'unica cosa che mi hanno suggerito di
fare è:

  * aggiornare l'OS del dispositivo: **fatto** (vedi [qui]({{site.url}}/2009/08/29/howto-sbrandizzare-il-nokia-e71/))
  * aggiornare data ed ora sul dispositivo: **fatto** (aggiornata con l'ora dell'operatore)
  * cancellare la vecchia applicazione: **mai installata**
  * avere abbastanza spazio: **3.7GB bastano?**

Dopo aver controllato tutte queste cose ho provato a reinstallare
l'applicazione con lo stesso risultato. Dunque l'assistenza di ustream non mi
ha risolto il problema. Leggendo un po' in giro e ragionandoci sopra sono
arrivato ad una conclusione che mi ha risolto il problema:

  * porta l'ora del dispositivo indietro: io l'ho portato al **2009-06-26**
  * trasferisci il file .SIS o .SISX nel telefono
  * installalo :) (dai continua a tutte le richieste)

Se hai altri problemi o altre soluzioni scrivimi o commenta qui sotto! :)

