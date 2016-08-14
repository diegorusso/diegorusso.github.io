---
title: 'HOWTO: "mdfind", ovvero Spotlight da console'
categories:
- osx
- car
- computer
- linux
- various links
- windows
- howto
- guida
tags:
- howto
- test
- guida
---
Se hai un mac con OSX sicuramente hai usato
[**Spotlight**](http://it.wikipedia.org/wiki/Spotlight) o per lo meno ne hai
sentito parlare. **Non sai cosa è?** E' quella barra blu chiaro che si attiva
in alto a destra se premi (per default) _" + spazio"_ ed è molto utile per
trovare qualsiasi cosa nel tuo computer, anche all'interno dei file.

Ne ho provati tanti di strumenti di ricerca, sia per windows che per linux ma
Spotlight li batte tutti.

E' fatto molto bene ed e molto veloce. Ha un aspetto del genere:

![spotlight]({{site.url}}/images/spotlight.png){: .align-center}
_Questo e Spotlight_
{: .text-center}

La guida di oggi ha però lo scopo di analizzare il comando da console che si
cela dietro Spotlight: **mdfind**.

Qui farò solo una carrellata dei comandi principali che ti aiuteranno a
cercare quello che vuoi dandoti più flessibilita nelle personalizzazioni delle
ricerche. Bene, non resta che iniziare! :)

Se digiti il seguente comando

```
mdfind
```

nel terminale avrai un rapido aiuto alle opzioni che questo comando puo
accettare. Se vuoi maggiori informazioni su mdfind digita

```
man mdfind
```

e ti si aprira la pagina di manuale di mdfind. Ad esempio puoi cercare tutti i
file che hanno a che fare con la parola _"vacanze"_ semplicemente digitanto

```
mdfind vacanze
```

Avrai come risultato foto, documenti, pagine web inerenti alle vacanze.
Ovviamente puoi avere più termini di ricerca come _"vacanze Madrid"_. Il
risultato puoi intuire quale è! :P  
Se vuoi cercare in una specifica cartella puoi fare in questo modo

```
mdfind vacanze Madrid -onlyin /Users/diegor/Documents/
```

Esiste anche una ricerca _"live"_ passando il parametro _"-live"_. Questo tipo
di ricerca "rimane in ascolto" e ti fa vedere se il file che hai cercato viene
copiato nel filesystem.

```
mdfind -live Madrid
```

Questo è utile se un tuo amico deve copiarti dei file nella tua dropbox
riguardanti Madrid (in quest caso). Spotlight se ne accorge subito! :)

Ma non esiste solo **mdfind**. Ci sono anche una serie di comandi a corredo
che ti permettono di personalizzare come vuoi le tue ricerche. Questi sono:

**mdimport**: per importare cartelle che per default OSX non indicizza. Esempio:
    
```
mdimport -f /Developer
```

**mdutil**: serve ad abilitare o meno l'indicizzazione di alcuni volumi oppure ad eliminare l'indicizzazione su un volume particolare. Esempio:
```
sudo mdutil -i on /Volumes/Film  
sudo mdutil -i off /Volumes/Film  
sudo mdutil -E /Volumes/Film
```

**mdls**: visualizza tutti i metadati di un file
    
```
mdls Desktop/foto.jpg
```

Se vuoi approfondire l'utilizzo di questi comandi non ti resta che provarli e
testarli. Se ti senti in difficolta puoi usare le pagine di manuale digitando

```
man nome_comando
```

Vedrai che una volta presa manualità ritrovare i tuoi documenti sarà molto più
semplice! Dunque non resta che augurarti... ** buona ricerca!** :)

_Fonte: [macworld.com](http://www.macworld.com/article/45793/2005/07/augustgeekfactor.html)_