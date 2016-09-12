---
title: 'HOWTO: utilizar telnet para crear llamadas HTTP'
categories:
- personal
- italian
- howto
- guia
- trabajo
tags:
- apache
- guia
---
[Telnet](http://es.wikipedia.org/wiki/Telnet) es una vieja utilidad utilizadas
en la red local para proporcionar una comunicación bidireccional orientada a
texto usando un terminal. Puede ser utilizada para crear llamadas http hacia
un servidor remoto **con finalidad de testing**. Veamos como:

  1. Abre tu terminal favorito
  2. Escribe (en cambio de diegor.it puedes elegir cualquiera server quieras) 
    
     ```
     $ telnet diegor.it 80
     ```
     y deberias tener este output:
     
     ```
     Trying 75.119.192.123...  
     Connected to diegor.it.  
     Escape character is '^]'.
     ```
  3. Ahora escribe:

     ```
     GET / HTTP/1.1  
     host: diegor.it
     ```

     donde "/" es la ruta remota. En este caso nosotros queremos la raiz. El output
     parecera como este de bajo:

     ```
     HTTP/1.1 200 OK  
     Date: Mon, 13 Jun 2011 09:06:43 GMT  
     Server: Apache  
     Cache-Control: no-cache, must-revalidate, max-age=0  
     Pragma: no-cache  
     Expires: Wed, 11 Jan 1984 05:00:00 GMT  
     Last-Modified: Sun, 12 Jun 2011 13:29:48 GMT  
     Vary: Accept-Encoding  
     Content-Length: 85589  
     Content-Type: text/html;charset=UTF-8
     ...
     ```

¡Muy simple! Preguntas y comentarios son bienvenidos.
