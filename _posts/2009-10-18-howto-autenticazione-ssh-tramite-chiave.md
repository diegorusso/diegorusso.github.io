---
title: 'HOWTO: Autenticazione SSH tramite chiave'
categories:
- personal
- italian
- osx
- linux
- job
- howto
tags:
---
Già ho parlato di SSH [in questo post]({{site.url}}/2009/08/22/howto-tunneling-con-ssh/).
Oggi vedrai impostare il tuo client ed il tuo server per
accedere in maniera sicura e veloce tramite **l'autenticazione con chiave**,
piuttosto che con una semplice password. L'autenticazione basata su nomeutente
e password rende il sistema potenzialmente insicuro per i seguenti motivi:

  * la password può essere indovinata in qualsiasi momento (**tramite attacco brute force**)
  * la maggior parte degli utenti non guardano il file **secure.log o auth.log** per vedere gli accessi non autorizzati
  * per default il server SSH ha **l'accesso di root abilitato**, mettendo a rischio la sicurezza di tutto il sistema
  
Per rendere più sicura l'autenticazione puoi usare una **coppia di chiavi
crittografate** al posto dell'autenticazione con password. Esistono due tipi
di algoritmi per generare le chiavi ssh:
[RSA](http://it.wikipedia.org/wiki/RSA) (cripta e firma) e
[DSA](http://it.wikipedia.org/wiki/Digital_Signature_Algorithm) (firma
solamente). Personalmente consiglio di usare **RSA**.

Dunque per generare le chiavi digita:

```
$ ssh-keygen -t rsa  
Generating public/private rsa key pair.
```

A questo punto premi invio se non vuoi dare un nome personalizzato alla
chiave:

```
Enter file in which to save the key (/Users/exampleuser/.ssh/id_rsa):
```

Se vuoi usare l'algoritmo DSA basta specificare "-t DSA". Ad un certo punto ti
verrà chiesto di inserire una passphrase per proteggere la chiave privata:

```
Enter passphrase (empty for no passphrase):  
Enter same passphrase again:
```

La scelta di una passphrase dipenda da situazione a situazione. Se non
immetterai nessuna passphrase potrai accedere al tuo server **direttamente
senza dover digitare niente**. Questo però comporta se qualcun altro accede
alla tua chiave privata oppure ad una copia può entrare senza nessun problema
nel server dove e impostata quella chiave. Se invece decidi di proteggerla con
una passphrase dovrai digitare ogni volta la password per sbloccare la chiave
privata. Per venirti incontro potresti usare un
[ssh-agent](http://www.openbsd.org/cgi-bin/man.cgi?query=ssh-agent&sektion=1) per
**memorizzare la password del certificato per un tempo finito** come ad
esempio un'ora, una giornata, al termine della sessione grafica etc.

Appena finita la creazione delle due chiavi le potrai trovare in
`/home/tuo_username/.ssh/` per sistemi GNU/Linux oppure
`/Users/tuo_username/.ssh/` per sistemi OSX. Ora devi **copiare la tua
chiave pubblica nel server remoto** tramite il seguente comando:

```
$ scp id_rsa.pub username@server.remoto:/home/username/.ssh/authorized_keys
```
**Questo comando sovrascrive il file authorized_keys** nel server remoto. Se vuoi aggiungere la tua chiave ad altre già esistenti fa in questo modo:

  1. copia la chiave sul server remoto
     
     ```
     $ scp id_rsa.pub username@server.remoto:/home/username/.ssh/
     ```
  2. loggati sul server remoto

     ```    
     $ ssh username@server.remoto
     ```
  3. appendi la tua chiave a quelle esistenti
     
     ```    
     server_remoto$ cd .ssh  
     server_remoto$ cat ip_rsa.pub >> authorized_keys
     ```

Ora devi **impostare i giusti permessi**. Sul server remoto fai

```
server_remoto$ chmod 700 ~/.ssh  
server_remoto$ chmod 600 ~/.ssh/authorized_keys
```

A questo punto puoi accedere al tuo server senza dover far uso della password.
**Se vuoi proteggere il tuo server da attacchi brute force** sulle password
puoi dire al server ssh di non accettare l'autenticazione ssh.

**ATTENZIONE: prima di fare questa operazione assicurati di avere un accesso secondario alla macchina per non rimanere tagliati fuori**

Vai sul tuo server ed edita il file `/etc/sshd_config` in modo da avere
questa questa direttiva: `PasswordAuthentication no`

Fatto ciò riavvia il server ssh per fargli leggere la nuova configurazione.

_Fonte: [www.unt.net](http://www.unt.edu/benchmarks/archives/2007/june07/sshkey.htm)_

