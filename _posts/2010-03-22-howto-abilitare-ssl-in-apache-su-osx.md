---
title: 'HOWTO: Abilitare SSL in Apache su OSX'
categories:
- osx
- private
- open source
- various links
- job
- howto
tags:
- howto
- apache
- test
---
In passato già ho scritto [qualche]({{site.url}}/2010/01/21/howto-configurare-virtualhost-su-osx/)
[cosa]({{site.url}}/2009/10/31/howto-installare-mod_wsgi-in-osx/) riguardante il server web
[Apache](http://www.apache.org) integrato in OSX.  
Oggi vedrai come abilitare il supporto ad SSL su questo server web. Fai queste
semplici operazioni:

  1. Apri un Terminale e digita il comando:

     ```
     sudo vim /etc/apache2/httpd.conf
     ```
  2. Intorno alla linea 477 c'è questa direttiva

     ```
     # Secure (SSL/TLS) connections  
     #Include /private/etc/apache2/extra/httpd-ssl.conf
     ```
     che dovrà diventare:

     ```
     # Secure (SSL/TLS) connections  
     Include /private/etc/apache2/extra/httpd-ssl.conf
     ```
  3. Il prossimo passo è editare il file con il comando:

     ```
     sudo vim /private/etc/apache2/extra/httpd-ssl.conf
     ```
  4. Ora configura SSL seguendo [questa documentazione](http://httpd.apache.org/docs/2.0/mod/mod_ssl.html)
  5. Riavvia Apache per fargli rileggere la configurazione. Per fare ciò vai sulle **"Preferenze di Sistema -> Condivisione"**  
     [![]({{site.url}}/images/apache.png){: .align-center}]({{site.url}}/images/apache.png)
  6. **Disabilita ed abilita** la condivisione Web cliccando sul segno di spunta.
  7. Apri il tuo browser e testa il corretto funzionamento di SSL
  
Se hai suggerimenti, correzioni, domande... sai cosa fare! :)