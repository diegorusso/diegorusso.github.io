---
title: 'HOWTO: Mettere un alias di rete su linux'
categories:
- car
- computer
- linux
- job
- howto
tags:
- howto
---
In questo howto vedrai come impostare un alias sulle interfacce di rete sotto
Linux. L'alias e il** modo per impostare piu indirizzi IP  sulla stessa
interfaccia di rete fisica**.  
Questo potrebbe essere comodo se il tuo computer e collegato ad uno switch
collegato a sua volta a piu reti.

Se vuoi mettere un alias sulla eth0 per prima cosa controlla lo stato
dell'interfaccia, digitando:

    
    
    sudo ifconfig eth0

  
Il comando dara un output come il seguente:

    
    
    eth0      Link encap:Ethernet  HWaddr 00:00:00:00:00:00   
    
              inet addr:192.168.5.100  Bcast:192.168.5.255  Mask:255.255.255.0  
    
              inet6 addr: fe80::21e::0000/64 Scope:Link  
    
              UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1  
    
              RX packets:142135 errors:0 dropped:0 overruns:0 frame:0  
    
              TX packets:108857 errors:0 dropped:0 overruns:0 carrier:0  
    
              collisions:0 txqueuelen:1000  
    
              RX bytes:67786936 (64.6 MiB)  TX bytes:46751206 (44.5 MiB)  
    
              Interrupt:17

  
Per esempio se vuoi impostare 169.254.1.1 sulla eth0 dovrai digitare:

    
    
    sudo ifconfig eth0:alias 169.254.1.1

  
Al posto di _"alias"_ puoi metterci quello che vuoi, anche un numero. Puoi
controllare l'avvenuta impostazione dell'alias attraverso il seguente comando:

    
    
    sudo ifconfig eth0:alias

  
e vedrai un output del genere:

    
    
    eth0:169  Link encap:Ethernet  HWaddr 00:1e:c2:1c:6f:b5  
    
              inet addr:192.254.1.1  Bcast:192.254.1.255  Mask:255.255.255.0  
    
              UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1  
    
              Interrupt:17

