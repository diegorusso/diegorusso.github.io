---
title: 'HOWTO: Rimuovere "Briefly unavailable for scheduled maintenance. Check back
  in a minute."  in wordpress'
categories:
- blog
- private
- car
- various links
- howto
- geek
tags:
- howto
---
Oggi, dopo un po' di tempo che non scrivevo qui sul blog, ho deciso di
scrivere un post. Entro nell'amministrazione di
[wordpress](http://wordpress.org) e vedo che ci sono degli aggiornamenti.  
Vado sui plugins e faccio partire l'aggiornamento automatico. Ad un certo
punto vedo pero qualche cosa che non va. Qualsiasi pagina chiamavo del mio
sito (anche dell'admin) mi compariva il seguente messaggio: **"Briefly
unavailable for scheduled maintenance. Check back in a minute."**

[![]({{site.url}}/images/maintenance.png)]({{site.url}}/images/maintenance.png
)

  
Wordpress, quando aggiorna i plugins o temi, mette il sito in questo stato per
evitare che delle richieste esterne possano interrompere la fase di
aggiornamento. Pero se per qualche (**oscuro**) motivo l'aggiornamento
fallisce l'installazione di wordpress rimane in questo stato!

Niente paura, la soluzione e molto semplice. Basta avere accesso in FTP o in
SSH al tuo sito. Tutto quello che devi fare e cancellare il file
**".maintenance"** nella root del tuo sito.

In SSH segui questi passi:

  1. apri un **Terminale**
  2. digita 
    
        $> ssh utente@tuosito.it

  
ed immetti la password

  3. recati alla directory in cui e installato wordpres 
    
        $> cd /path/to/wordpress/

  

  4. per verificare l'esistenza del file **.maintenance **digita 
    
        $> ls -la

  
dovrai vedere una schermata come la seguente:

[![]({{site.url}}/images/maintenance-console.png)  
]({{site.url}}/images/maintenance-console.png)_il file ".maintenance" lo trovi
all'inizio della lista_

  

  5. per rimuovere il file digita: 
    
        rm .maintenance

  

  6. ricarica il sito... et voila! :)
  

  
Se hai domande e suggerimenti commenta oppure scrivimi! :)

_Fonte: _[_rlmseo.com_](http://www.rlmseo.com/blog/briefly-unavailable-for-
scheduled-maintenance/)

