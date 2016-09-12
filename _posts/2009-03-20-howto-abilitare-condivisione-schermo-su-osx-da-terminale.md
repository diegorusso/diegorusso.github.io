---
title: 'HOWTO: Abilitare "Condivisione Schermo" su OSX da terminale'
categories:
- personal
- italian
- osx
- apple
- leopard
- howto
tags:
---
Posto questo howto con particolare soddisfazione, poiché mi ha salvato da una
situazione molto critica (ma questa e un'altra storia post :). Come unico
prerequisito è **avere un accesso ssh attivo e funzionante.**  
Per fare ciò clicca su **"Preferenze di Sistema -> Condivisione"** ed
abilitare la voce **"Login remoto"**. In questo modo hai l'accesso ssh attivo
su quella macchina. Consiglio di tenere questo servizio sempre attivo, in modo
che hai sempre un'accesso minimo alla macchina.  
Mettiamo per esempio che devi lavorare da remoto con la **"Condivisione
schermo"** ma ti sei dimenticato di attivarla. Le operazioni sono molto
semplici da eseguire:

  1. Entra in ssh sulla tua macchina: `$ ssh utente@ip.della.tua.macchina`
  2. Vai nella directory "/Library/Preferences" `$ cd /Library/Preferences`
  3. Esegui questo comando: `$ echo -n enabled > com.apple.ScreenSharing.launchd`

Fatto ciò la "Condivisione schermo" è subito attiva e la puoi usare tramite un
qualsiasi [**client VNC**](http://it.wikipedia.org/wiki/Virtual_Network_Computing).  
Quando hai finito di lavorare da remoto _(o anche per per paranoia :)_ puoi
disabilitare la "Condivisione Schermo" con una procedura analoga alla
precedente, dunque:

  1. Entra in ssh sulla tua macchina: `ssh utente@ip.della.tua.macchina`
  2. Vai nella directory "/Library/Preferences" `$ cd /Library/Preferences`
  3. Esegui questo comando: `$ rm com.apple.ScreenSharing.launchd`

Tutto ciò è fattibile perché la "Condivisione Schermo" come tanti altri
servizi sono gestiti da launchd. Se ne vuoi sapere di più su questo demone
[leggi qui, su wikipedia.](http://it.wikipedia.org/wiki/Launchd)

_Fonte: [MacFidelity](http://macfidelity.de/2008/03/27/105-start-screen-sharing-remotely-in-terminal/)_
