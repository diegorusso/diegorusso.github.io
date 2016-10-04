---
title: 'HOWTO: Tunneling con ssh'
categories:
- howto
- italian
tags:
- linux
- job
---
**Il tunnel ssh e un modo sicuro per raggiungere un host che normalmente non potrebbe essere raggiunto.**
Il metodo sfrutta una canale (tunnel) sicuro tra la tua macchina e la macchina remota sfruttando però un altro server che farà da ponte.
Esempi: se vuoi raggiungere una macchina dietro un firewall o dietro NAT, oppure se vuoi usare MSN da una rete aziendale che vieta l'uso dell'instant messenger.

Ci sono fondamentalmente due modi per effettuare il tunnel:

  * forwarding della porta locale
  * forwardind della porta remota
    
**Forwarding della porta locale**

Con questo metodo puoi accedere a porte su host che non puoi raggiungere
direttamente facendo passare il traffico in una connessione SSH ad un host
pubblico (che a sua volta deve poter raggiungere direttamente l'host finale).
L'esempio più classico è di voler raggiungere una macchina che si trova dietro
NAT sfruttando il server che "natta" l'host finale. L'immagine sottostante puo
schiarirti ulteriormente le idee! :)

[![local_tunnel_ssh]({{site.url}}/images/local_tunnel_ssh.png){: .align-center}]({{site.url}}/images/local_tunnel_ssh.png)
Forwarding della porta locale
{: text-center}

Per raggiungere ad esempio il webserver che e in esecuzione su OS9
(dell'immagine) devi aprire una connessione SSH verso il firewall dirigendo il
tunnel secondo le tue esigenze, come ad esempio effettuare il forward di tutte
le richieste fatte sulla porta locale 8080 alla porta 80 del server web che si
trova su OS9. Il comando che dovrai eseguire sarà il seguente:

```
ssh -N -L 8080:os9.server.lan:80 user@firewall.company.com
```

che letteralmente significa: forwarda la porta locale 8080 a
firewall.company.com e digli di mandare il traffico a os9.server.lan sulla
porta 80.  
I paramentri del comando ssh sono:

  * **-N**: di a ssh di creare il tunnel senza creare una shell sull'host
  * **-L**: specifica il tipo di tunneling (locale)
  * **8080**: porta locale da usare
  * **os9.server.lan**: e l'host accessibile dal firewall
  * **80**: e la porta da raggiungere su os9.server.lan
  * **user**: utente per la connessione a ssh
  * **firewall.company.com**: server publico da usare come rampa di lancio

Ora non resta che connetterti con il tuo browser web al_
http://127.0.0.1:8080_ per raggiungere la porta 80 di os9.server.lan.

**Forwarding della porta remota**

Questo approccio ti permette di effettuare il forward di connessioni fatte a
un host remoto, ad un host della tua rete. Un esempio e che vorresti rendere
visibile all'esterno una macchina della tua rete privata. L'immagine
sottostante ti aiuta a capire lo scenario:

[![remote_tunnel_ssh]({{site.url}}/images/remote_tunnel_ssh.png){: .align-center}]({{site.url}}/images/remote_tunnel_ssh.png)
Forwarding della porta remota
{: .text-center}

Per farti capire meglio: hai sviluppato una nuova web application in un server
di sviluppo che e presente nella tua rete privata. Se vuoi far vedere questa
web application ai tuoi clienti devi aprire un tunnel ssh dalla macchina che
può raggiungere entrambe i server ovvero il server pubblico che i tuoi clieti
devono contattare ed il tuo server di sviluppo.  
Il comando da lanciare sarà il seguente:

```
ssh -N -R 8080:os9.server.lan:80 user@server.company.com
```
che tradotto significa: "Di a server.company.com di effettuare il forward
della porta 8080 a me, dando il traffico a os9.server.lan sulla porta 80.  
I paramentri del comando ssh sono:

  * **-N**: di a ssh di creare il tunnel senza creare una shell sull'host
  * **-R**: specifica il tipo di tunneling (remoto)
  * **8080**: porta locale da usare
  * **os9.server.lan**: e l'host della tua lan
  * **80**: e la porta da raggiungere su os9.server.lan
  * **user**: utente per la connessione a ssh
  * **firewall.company.com**: server publico che i tuoi clienti contatteranno
  
Ora devi dire ai tuoi clienti di digitare nel proprio browser:
_http://server.company.com:8080/_

Rispondera così la porta 80 di OS9, dove e la tua web application. Ti vorrei
ricordare che puoi ridirigere qualsiasi tipo di porta, non solo la 80.

Buon tunneling! :)

_Fonte: <http://projects.tynsoe.org/en/stm/doc.php>_
