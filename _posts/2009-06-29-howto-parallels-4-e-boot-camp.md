---
title: 'HOWTO: Parallels 4 e Boot Camp'
categories:
- osx
- linux
- leopard
- various links
- windows
- video
- howto
tags:
- howto
---
Ciao, oggi vedrai come risolvere un fastidioso errore di
[Parallels](http://www.parallels.com/it/) 4 su partizioni [Boot
Camp](http://it.wikipedia.org/wiki/Boot_Camp).

[Parallels](http://www.parallels.com/it/) e quel software (diponibile sia per
OSX che per Linux che per Windows) che ti permette di eseguire più macchine
virtuali nel tuo sistema operativo. [Boot
Camp](http://it.wikipedia.org/wiki/Boot_Camp) invece sono un insieme di
utility incluse in OSX Leopard (10.5) che ti permettono di installare Windows
XP Sp2 e Windows Vista direttamente sul tuo mac in maniera nativa (e dunque
non virtualizzata).

Le differenze tra i due approcci sono notevoli: la più evidente e che con il
primo **puoi utilizzare più sistemi operativi contemporanetamente** mentre con
la seconda devi riavviare il tuo mac per poter utilizzare Windows Xp.

**Parallels ti permette però di accedere alla partizione Boot Camp per farti eseguire ****come macchina virtuale l'installazione nativa di**** Windows. **Questa funzionalita e molto comoda poiché puoi beneficiare sia dei vantaggi dell'esecuzione dei due sistemi operativi sia i vantaggi dell'esecuzione di solo windows (ad esempio sfruttare al massimo il 3d della scheda video).

Dunque esegui questi passaggi per creare la tua macchina virtuale basata su
boot camp:

  1. Apri _**Parallels Desktop**_ ed aggiungi una nuova macchina virtuale
  2. Clicca su **_"Skip Detection"_** per configurare a mano la macchina virtuale
  3. Selezione il tipo di sistema operativo che hai installato in Boot Camp (Xp o Vista)
  4. Scegli il tipo _**"Custom"**_ sulla tipologia di installazione
  5. Continua fino alla selezione dell'hard disk cliccando su **_"Boot Camp Partition"_**
  6. Continua fino alla fine. Sull'ultima schermata clicca su **"Create"**
  

A questo punto Parallels configura la nuova macchina virtuale patchando
windows installato in boot camp. Proprio in questa fase potrebbe capitarti un
errrore che ti impedirebbe la configurazione della macchina virtuale.

[![parallels_bootcamp]({{site.url}}/images/parallels_bootcamp.png)]({{site.url
}}/images/parallels_bootcamp.png)_Errore in fase di creazione della macchina
virtuale_

**Parallels non avrebbe i permessi di lettura e scrittura sul disco di Boot Camp.** Sul web ho trovato molti workaround per risolvere questo problema ma quello più veloce ed indolore e il seguente:

  1. Apri un terminale
  2. Digita il seguente comando
  

_"sudo mv  
/Library/Parallels/Parallels Service.app/Contents/MacOS/BootcampConfigurator  
/Library/Parallels/Parallels
Service.app/Contents/MacOS/BootcampConfigurator.old"_

Praticamente si andrebbe a rinominare il file "BootcampConfigurator". Fatto
cio ripeti la creazione della macchina virtuale e tutto andra a buon fine.

Spero che quelli di Parallels risolvano presto questo fastidiosissimo bug. :)

