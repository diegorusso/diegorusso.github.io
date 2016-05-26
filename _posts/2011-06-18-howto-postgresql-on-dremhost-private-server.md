---
title: 'HOWTO: postgresql on Dremhost Private Server'
categories:
- private
- linux
- open source
- job
- howto
tags:
- howto
- mysql
---
If you have a [PS](http://www.dreamhost.com/hosting-vps.html) with
[DreamHost](http://www.dreamhost.com/) and you need to use
[PostgreSQL](http://www.postgresql.org/) as database, you'll see that's
impossible to login with _postgres_ user and so you won't able to use
PostgreSQL.  
Dreamhost supports officially only MySQL, so they don't provide any info about
PostgreSQL.  
Anyway the problem of using PostgreSQL in DH's PS is permit the login to
postgres user. Follow this two steps:

  1. Become root, typing: 
    
        #>sudo su

  

  2. Edit _/etc/passwd_ file and find the line containing _postgres_. Change it from: 
    
        postgres:x:32:32:PostgreSQL administrator,,,:/var/lib/postgresql:/bin/false

  
to:

    
        postgres:x:32:32:PostgreSQL administrator,,,:/var/lib/postgresql:/bin/bash

  

  

  
Now you can become _postgres_ user and you can use PostgreSQL.  
Doubts? Comment! :)

_PS: Are you looking for a serious, riable and fast hosting? So
[Dreamhost](http://www.dreamhost.com/r.cgi?587246) is for you! Use Dreamhost
promo code "**DIEGOR**" or click on [this
link](http://www.dreamhost.com/r.cgi?587246) to **get 50$ off right now**!_

