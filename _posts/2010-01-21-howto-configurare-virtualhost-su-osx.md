---
title: 'HOWTO: Configurare VirtualHost su OSX'
categories:
- osx
- private
- car
- linux
- open source
- various links
- job
- howto
tags:
- howto
- apache
- test
---
OSX, come molte distribuzioni linux hanno integrato il webserver
[Apache](http://apache.org/). Apache ha centinaia di opzioni e configurazioni
disponibili per la gestione di qualsiasi situazione.  
Tra queste configurazioni ci sono i
[VirtualHost](http://httpd.apache.org/docs/2.0/vhosts/), che permettono
l'esecuzioni di piu siti (_www.sito1.com, www.sito2.com_) sulla stessa
macchina. I siti possono essere suddivisi basandosi sia su nomi differenti sia
su IP.  
In OSX tutte le configurazioni si trovano dentro la cartella_
"/etc/apache2/"_. I passi da fare per abilitare i VirtualHost sono i seguenti:

  1. Apri un Terminale e digita il comando: 
    
        sudo vim /etc/apache2/httpd.conf

  2. Intorno alla linea 460 c'e questa direttiva 
    
        # Virtual hosts  
    
    #Include /private/etc/apache2/extra/httpd-vhosts.conf

  
che dovra diventare:

    
        # Virtual hosts  
    
    Include /private/etc/apache2/extra/httpd-vhosts.conf

  

  3. Il prossimo passo e editare il file con il comando: 
    
        sudo vim /private/etc/apache2/extra/httpd-vhosts.conf

  

  4. Ora configura il tuo VirtualHost seguendo [questa documentazione](http://httpd.apache.org/docs/2.0/mod/core.html#virtualhost)
  5. Riavvia Apache per fargli rileggere la configurazione. Per fare cio vai sulle **"Preferenze di Sistema -> Condivisione"  
[![]({{site.url}}/images/apache.png)]({{site.url}}/images/apache.png) **

  6. **Disabilita ed abilita** la condivisione Web cliccando sul segno di spunta.
  7. Apri il tuo browser e testa il corretto funzionamento dei VirtualHost
  

  
Se hai suggerimenti, correzioni, domande... sai cosa fare! :)

