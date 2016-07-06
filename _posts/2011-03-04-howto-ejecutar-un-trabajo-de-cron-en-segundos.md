---
title: 'HOWTO: ejecutar un trabajo de cron en segundos'
categories:
- osx
- howto
- guia
- trabajo
tags:
- howto
- guia
---
Si conoces que es [cron](http://es.wikipedia.org/wiki/Cron), tambien conoces
que el tiempo minimo para ejecutar un trabajo de cron es un minuto. Hay un
pequeño truco para ejecturalo cada X segundos. Por ejemplo si necesitas
ejecutar un trabajo de cron **cada 30 segundos** (es un caso comun), puedes
añadir estas lineas al crontab:

    
    
    * * * * * root sh /path/to/myscript.sh  
    
    * * * * * root sleep 30 && sh /path/to/myscript.sh

  
Ambas las lineas ejecutan el trabajo cron cada minuto, però la **segunda
espera 30 segundos** utilizando el comando
"[sleep](http://en.wikipedia.org/wiki/Sleep_\(Unix\))" de la bash.

Si tienes preguntas, comenta este articulo. :)

