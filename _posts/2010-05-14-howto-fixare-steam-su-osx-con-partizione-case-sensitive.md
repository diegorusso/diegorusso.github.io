---
title: 'HOWTO: Fixare Steam su OSX con partizione case-sensitive'
categories:
- osx
- blog
- private
- car
- linux
- various links
- windows
- howto
tags:
- howto
---
Valve Software ha rilasciato da pochi giorni Steam **per OSX e per Linux**.
Steam e la piattaforma di gioco di suddetta azienda dove ci girano moti
software. L'unico handicap e che che questa piattaforma era disponibile solo
per Windows. E sottolineo ERA!  
In **OSX** ci possono essere delle incompatibilita per quanto riguarda la
tipologia di filesystem utilizzato. Steam in fase di installazione vuole un
**file system non case sensitive**, ovvero dove la lettera minuscola e la
lettera Maiuscola sono due caratteri uguali.

![]({{site.url}}/images/logo_steam.jpg)

_Logo di Steam :)_

  
Dunque sei hai un file system case-sensitive ti sarai bloccato in fase di
installazione.  
C'e un trucco che ti permette di installare Steam sul tuo Mac sfruttando i
dischi virtuali. I passi da fare sono molti dunque metto a disposizione un
script in bash (richiede l'utilizzo del Terminale) creato da [Dustin L.
Howett](http://blog.howett.net).

    
    
    Qui di seguito il contenuto del file:  
    
    #!/bin/bash -e
    
    
    
    
    ### ## #  
    
    # Steamcase 1.0; creates a case-insensitive volume and prepares it for use with Steam.  
    
    # Does not download Steam.  
    
    #  
    
    # By Dustin L. Howett  
    
    # Public Domain  
    
    # Tries to be careful about moving and not destroying existing content.  
    
    ### ## #
    
    
    
    
    ### ## #  
    
    #Section to customize  
    
    IMAGE="/path/to/image/steamfs.sparsebundle"  
    
    VOLNAME="steamfs"  
    
    ### ## #
    
    
    
    
    if [[ -z $1 ]]; then  
    
    	echo "Syntax: $0 (g|t)" >&2  
    
    	echo "g = gigabytes, t = terabytes" >&2  
    
    	echo "This script creates a sparse bundle disk image at /Case Insensitive.sparsebundle" >&2  
    
    	exit 1  
    
    fi
    
    
    
    
    echo Creating $IMAGE...  
    
    hdiutil create -size $1 "$IMAGE" -type SPARSEBUNDLE -fs HFS+J -volname "$VOLNAME" -layout NONE  
    
    echo Mounting $IMAGE...  
    
    hdiutil attach "$IMAGE"  
    
    echo Creating Basic Structure in /Volumes/$VOLNAME  
    
    mkdir -p "/Volumes/$VOLNAME/Applications"  
    
    mkdir -p "/Volumes/$VOLNAME/Users/$USER/Documents/Steam Content"  
    
    mkdir -p "/Volumes/$VOLNAME/Users/$USER/Library/Application Support/Steam"
    
    
    
    
    echo -n "Migrating existing Steam Content... "  
    
    if [[ -d "$HOME/Documents/Steam Content" && ! -h "$HOME/Documents/Steam Content" ]]; then  
    
    	rsync -qa "$HOME/Documents/Steam Content" "/Volumes/$VOLNAME/Users/$USER/Documents/Steam Content"  
    
    	rm -rf "$HOME/Documents/Steam Content"  
    
    	echo "OK."  
    
    else  
    
    	echo "Skipped."  
    
    fi
    
    
    
    
    echo -n "Migrating existing Steam Application Support... "  
    
    if [[ -d "$HOME/Library/Application Support/Steam" && ! -h "$HOME/Library/Application Support/Steam" ]]; then  
    
    	rsync -qa "$HOME/Library/Application Support/Steam" "/Volumes/$VOLNAME/Users/$USER/Library/Application Support/Steam"  
    
    	rm -rf "$HOME/Library/Application Support/Steam"  
    
    	echo "OK."  
    
    else  
    
    	echo "Skipped."  
    
    fi
    
    
    
    
    echo -n "Symlinking Steam Content... "  
    
    if [[ ! -h "$HOME/Documents/Steam Content" ]]; then  
    
    	echo "OK."  
    
    	ln -s "/Volumes/$VOLNAME/Users/$USER/Documents/Steam Content" "$HOME/Documents/Steam Content"  
    
    else  
    
    	echo "Skipped."  
    
    fi
    
    
    
    
    echo -n "Symlinking Steam Application Support... "  
    
    if [[ ! -h "$HOME/Library/Application Support/Steam" ]]; then  
    
    	echo "OK."  
    
    	ln -s "/Volumes/$VOLNAME/Users/$USER/Library/Application Support/Steam" "$HOME/Library/Application Support/Steam"  
    
    else  
    
    	echo "Skipped."  
    
    fi
    
    
    
    
    echo Settings up /volumes...  
    
    mkdir -p /volumes  
    
    ln -s "/Volumes/$VOLNAME" "/volumes/$(echo $VOLNAME | tr A-Z a-z)"
    
    
    
    
    echo Done.

  
Attenzione!! L'unica parte da modificare sono le seguenti righe:

    
    
    ### ## #  
    
    #Section to customize  
    
    IMAGE="/path/to/image/steamfs.sparsebundle"  
    
    VOLNAME="steamfs"  
    
    ### ## #

  
che dovranno contenere sulla prima il percorso del file immagine da creare,
mentre la seconda indica il nome dell'immagine. Appena salvi le mofiche devi
lanciare questo script, facendo questi due semplici passi:

    
    
    chmod a+x  /path/to/steamcase.sh  
    
    ./steamcase.sh 10g

  
Una volta fatto cio devi copiare il file _**Steam.app**_ nel disco immagine
appena creato e poi doppio click. Vedrai che ti si aprira la finestra con
l'installazione del Gioco.

Ah.. ricordo che lo script lo ha scritto [Dustin L.
Howett](http://blog.howett.net) si trova in [download
qui]({{site.url}}/files/steamcase.sh) e l'applicazione della Steam
[la puoi scaricare qui](http://store.steampowered.com/) (previa registrazione
al servizio)  
Buon divertimento! :)

Se hai domande sono qui, come sempre! :)

_Fonte: _[_http://blog.howett.net/?p=103_](http://blog.howett.net/?p=103)

