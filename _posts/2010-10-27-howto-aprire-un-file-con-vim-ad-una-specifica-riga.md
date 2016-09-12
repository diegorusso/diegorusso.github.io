---
title: 'HOWTO: Aprire un file con VIM ad una specifica riga'
categories:
- personal
- italian
- open source
- job
- howto
tags:
---
Spesso mi capita di modificare grandi file con l'editor di testo
[VIM](http://www.vim.org/). A volte capita che prima di aprire il file per
modificarlo **tu conosca già la riga**. Nell'esempio sottostante ho provato ad
accedere con ssh ad una macchina remota a cui era cambiato il fingerprint.

```
iandrew:~ diegor$ ssh 192.168.1.20 -l diegor
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
Someone could be eavesdropping on you right now (man-in-the-middle attack)!
It is also possible that the RSA host key has just been changed.
The fingerprint for the RSA key sent by the remote host is
66:5a:0d:5d:03:d8:51:b0:6c:49:5a:6d:31:f6:75:f7.
Please contact your system administrator.
Add correct host key in /Volumes/diegor/.ssh/known_hosts to get rid of this message.
Offending key in /Volumes/diegor/.ssh/known_hosts:87
RSA host key for 192.168.1.20 has changed and you have requested strict checking.
Host key verification failed.
iandrew:~ diegor$
```

Come puoi vedere la riga violata e la numero **87** del file
`/Volumes/diegor/.ssh/known_hosts`. Senza dover **aprire il file e spostarmi
alla riga 87, _posso farlo tutto in un solo comando_**:

```
iandrew:~ diegor$ vim .ssh/known_hosts +87
```

A questo punto vedrai il cursore posizionato direttamente sulla riga 87. La
sintassi e la seguente:

```
$ vim nomefile +numeroriga
```

Se hai altre interessanti opzioni, commenta il post: sicuramente faranno
comodo ad altri utenti!
