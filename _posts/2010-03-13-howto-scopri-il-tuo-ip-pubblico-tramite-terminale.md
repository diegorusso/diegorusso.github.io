---
title: 'HOWTO: Scopri il tuo IP pubblico tramite terminale'
categories:
- howto
- italian
tags:
- linux
- osx
- job
---
A volte potrebbe servire conoscere il proprio indirizzo IP pubblico. Per chi
lavora davanti ad un computer con un browser questa operazione risulta molto
semplice: infatti basta che vai su google e scrivi **"my public ip"** ed avrai
a disposizione una miriade di siti che diranno il tuo indirizzo IP. Lo fa
persino il mio sito: infatti se guardi attentamente sulla barra di destra
troverai una scritta del genere:

[![]({{site.url}}/assets/images/statistiche.png){: .align-center}]({{site.url}}/assets/images/statistiche.png)

Ma per chi non ha un monitor davanti? Chi vuole sapere il proprio indirizzo IP
pubblico in uno script? **Fortunatamente Linux ha dei comandi da terminale che
ti possono aiutare.** Qui ti faro vedere tre metodi per prendere il tuo
indirizzo IP pubblico da terminale:

  1. Tramite **wget**: 

     ```
     wget -q -O - checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*$//'
     ```
  2. Tramite **curl**:

     ```
     curl -s checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*$//'
     ```
  3. Tramite **lynx**:

     ```
     lynx -dump checkip.dyndns.org
     ```

**Il tutto funziona anche su OSX** solo se si installano _wget, curl e lynx_ tramite [MacPorts](http://www.macports.org/) o [Fink](http://www.finkproject.org/).

Se conosci altri metodi più efficienti oppure altri siti, commenta! :)

_Fonte: [go2linux.org](http://www.go2linux.org/what-is-my-public-ip-address-with-linux)_
