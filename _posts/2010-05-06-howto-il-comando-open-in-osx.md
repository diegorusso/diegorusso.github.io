---
title: 'HOWTO: Il comando "open" in OSX'
categories:
- osx
- blog
- car
- technology
- apple
- howto
- snow leopard
tags:
- howto
- test
---
Dopo un po' di post non tecnici, eccomi di nuovo con un piccolo
[HOWTO]({{site.url}}/howtos/). Se hai OSX ed usi spesso il
**Terminale** il comando open puo esserti molto utile per "aprire" qualsiasi
cosa tu voglia.  
Ad esempio puoi aprire la cartella corrente in cui ti trovi digitando:

    
    
    #> open .

  
Vedrai che ti si aprira il **Finder** nella stessa cartella in cui ti trovi
nel Terminale. Il comando ha la stessa funzione del _"doppio click"_ del
mouse.

[![]({{site.url}}/images/open-osx.png){: .align-center}]({{site.url}}/images/open-osx.png)

  
Infatti se per esempio digiti

    
    
    #> open file_di_testo.txt

  
ti aprira il file _file_di_testo.txt_ con l'applicazione che per default apre
i file di testo (come determinato da LanchServices).  
Altri esempi (presi dal manuale di open) sono:

  * Apre la directory _/Volumes/Macintosh HD/Applications/_ con il Finder: 
    
        #> open '/Volumes/Macintosh HD/Applications/'

  

  * Apre il file _foo.txt_ con l'applicazione specificata (_TextEdit_): 
    
        #> open -a /Applications/TextEdit.app '/Volumes/Macintosh HD/foo.txt'

  

  * Apre il file _foo.txt _con l'applicazione specificata (_TextEdit_): 
    
        #> open -b com.apple.TextEdit '/Volumes/Macintosh HD/foo.txt'

  

  * Apre il file _foo.txt_ con _TextEdit:_
    
        #> open -e '/Volumes/Macintosh HD/foo.txt'

  

  * Scrive l'output del comando _ls_ in un file in _/tmp_ e lo apre nell'editor di testo predefinito: 
    
        #> ls | open -f

  

  * Apre l'url nel browser di default: 
    
        #> open http://www.apple.com/

  

  * Apre il file con l'applicazione di default (determinato da LaunchServices): 
    
        #> open 'file://localhost/Volumes/Macintosh HD/foo.txt'

  

  * Apre la directory nel _Finder:_
    
        #> open 'file://localhost/Volumes/Macintosh HD/Applications/'

  

  

  
Se vuoi un manuale completo sul comando **"open"** vai nel terminale e digita:

    
    
    #> man open

  
per vedere tutte le opzioni disponibili.  
Se hai domande suggerimenti o altro, [scrivimi]({{site.url}}/chi-e-
diegor/) o commenta il post.

[ad#user]

