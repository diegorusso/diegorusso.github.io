---
title: 'HOWTO: "ip_conntrack: table full, dropping packet"'
categories:
- linux
- howto
- guia
- trabajo
tags:
- howto
- guia
---
Yo gestionaba un server con sobre linux y una vez tuve un mensaje extraño:

    
    
    #> ip_conntrack: table full, dropping packet

  
Uno de los efectos de este mensaje es que no puedas crear y recibir conexiones
nuevas.  
Para resolverlo es suficiente aumentar el valor de _ip_conntrack_max_ value.
Como primero paso verifica el valor actual, digitando:

    
    
    #> cat /proc/sys/net/ipv4/ip_conntrack_max  
    
    65536

  
Ahora, aumenta este valor digitando:

    
    
    #> echo 131072 > /proc/sys/net/ipv4/ip_conntrack_max

  
En general el valor de _ip_conntrack_max_ esta establecido a **el total en MB
de la RAM multiplicado por 16**. Si tienes 8GB RAM (8192 MB), e valor debe ser
establecido a 131072.

