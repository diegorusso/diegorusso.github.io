---
title: 'HOWTO: Editor di default in SVN'
categories:
- personal
- italian
- job
- howto
- lavoro
tags:
---
Se sei un programmatore come me sicuramente ti sei imbattuto in
[subversion](http://subversion.tigris.org/). Subversion (per gli amici, svn) è
un [sistema di controllo di
versione](http://it.wikipedia.org/wiki/Controllo_versione), ed è usato quando
una o più persone lavorano in team per sviluppare un software. C'è molta
documentazione in internet sui sistemi di controllo di revisione, dunque non
resta che "googlare" un po'.

Quando un programmatore finisce di scrivere la sua parte di codice, la deve
_**committare**_ in modo che gli altri sviluppatori la possono scaricare e
continuare lo sviluppo in team. E' buona regola quando un programmatore
commita la sua porzione di codice di lasciare un commento (documentazione) sul
lavoro che andrà a inviare ai suoi colleghi. Questo e possibile digitando:

```
svn commit
```

Appena fatto ciò ti si aprirà l'editor di testo che ti permettera di inserire
la tua documentazione. A me è capitato molte volte di avere editor di testo
mai usti, trovandomi in difficolta con il salvataggio del file e per
l'inserimento del testo.  
In sistemi *NIX e possibile cambiare l'editor di default di SVN digitanto
questo semplice comando:

```
export SVN_EDITOR=vim
```

Facendo così impostarei come editor di default l'amato
[Vim](http://www.vim.org/). Ovviamente tu puoi mettere ciò che vuoi.  
Se vuoi mantere questa impostazione metti questa riga nel file `.bash_profile`
o `.bashrc` che trovi nella tua home.

