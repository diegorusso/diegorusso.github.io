---
title: 'HOWTO: Il comando "defaults" su OSX'
categories:
- personal
- italian
- osx
- linux
- apple
- windows
- howto
- guida
tags:
- guida
- linux
- vim
---
Eccomi di nuovo con un HOWTO sui comandi da terminale in OSX. Ho sempre
considerato il terminale (o shell, chiamatela come volete) un **potentissimo
strumento.** Quando avvio GNU/Linux la prima cosa che apro e terminale perché
tanto ho sempre qualche cosa da fare con questo strumento. In verità sono
stato mesi e mesi senza intefaccia utente! :P Il problema e che quelle poche
volte che uso Windows, non so dove sbattere la testa e preferisco aprire
"Risorse del Computer" piuttosto che il "prompt dei comandi". Tranne questa
introduzione (di parte) oggi mi vorrei incentrare su un utile comando da
terminale che si trova su OSX: **"defaults"**

Leggendo dal suo manuale (_"man defaults"_ da Terminale) puoi vedere che è
utile per **accedere ai valori default dell'utente del sistema OSX.** Sempre
dal manuale _"Le applicazioni OSX ed altri programmi usano i valori default di
sistema per registrare le preferenze degli utenti ed altre informazioni che
devono essere mantenute anche quando l'applicazione non e in esecuzione. [...]
Molte informazioni sono accedibili dalle Preferenze di Sistema ed altre no. Le
puoi accedere con il comando defaults"_

Ora starai pensando? **Che ci posso fare?** Beh le possibilità sono
tantissime. In questa piccola guida ne elencherò solo alcune, poi sta a te
sperimentare e divertirti a cambiare i comportamenti di default del tuo OSX.

I comandi principali di defaults sono:

  * **read**: legge il valore della chiave
  * **write**: scrive il valore della chiave
  * **rename**: rinomina la chiave
  * **delete**: cancella la chiave
  * **find**: trova una chiave
  

Sul manuale ("_man defaults"_) puoi approfondire questi comandi. Prima di
sovrascrivere un valore di default_ ti consiglio sempre di vedere cosa
contiene con il comando **"read"**_

**Esempi:**

Cambia il saluto al login:

Prima leggi il valore:

```
$ defaults read /Library/Preferences/com.apple.loginwindow LoginwindowText  
Hi! I'm a Mac
```

Poi ne scrivi un altro:

```
$ defaults write /Library/Preferences/com.apple.loginwindowLoginwindowText 'Hola!!!! Como estas?'
```

Impostare il dock in 2D:

```
$ defaults write com.apple.dock no-glass -boolean YES  
$ killall dock
```

Impostare il dock in 3D:

```
$ defaults write com.apple.dock no-glass -boolean NO  
$ killall Dock
```

Evidenziare con un gradiente l'elemento in cui si trova il mouse, solo con la
visualizzazione a griglia

```    
$ defaults write com.apple.dock mouse-over-hilte-stack -boolean YES  
$ killall dock
```

Togliere il gradiente

```    
$ defaults write com.apple.dock mouse-over-hilte-stack -boolean NO  
$ killall dock
```

Disabilitare la Dashboard

```
$ defaults write com.apple.dashboard mcx-disabled -boolean YES  
$ killall dock
```

Abilitare la Dashboard

```
$ defaults write com.apple.dashboard mcx-disabled -boolean NO  
$ killall dock
```

Rendere visibile il percorso completo sulla barra Finder

``` 
$ defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES
```

Abilitare la visualizzazione di file nascosti nel Finder

```
$defaults write com.apple.finder AppleShowAllFiles TRUE
```

Trascinare le widget della Dashboard sul Desktop. Entrare in Dashboard,
agganciare un widget e disattivare la Dashboard.

```
$ defaults write com.apple.dashboard devmode YES  
$ killall Dock
```

Per ora non mi viene in mente nient'altro.  
  
Se trovi altre configurazioni o errori, commenta sotto, scrivimi una mail,
quello che vuoi. Saro molto felice di integrare questo post con il tuo aiuto!  
  
Grazie e buon divertimento! :)
