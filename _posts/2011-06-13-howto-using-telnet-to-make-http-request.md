---
title: 'HOWTO: using telnet to make HTTP request'
categories:
- computer
- job
- howto
- geek
tags:
- howto
- apache
- test
---
[Telnet](http://en.wikipedia.org/wiki/Telnet) is an old utility used in local
network to offer a bidirectional communication text-oriented using a terminal.
Can be used also to make an http call to a remote server with **the purpose of
testing**. Let's see how:

  1. Open you favorite terminal
  2. Type (instead of diegor.it you can choose whatever server you want) 
    
        #> telnet diegor.it 80

  
and you should have as output:

    
        Trying 75.119.192.123...  
    
    Connected to diegor.it.  
    
    Escape character is '^]'.

  3. Now type:
    
        GET / HTTP/1.1  
    
    host: diegor.it
    
    
    

  
where "/" is the remote path. In this case we want the root. The output looks
like this below:

    
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

  

  
Pretty simple! Any questions or comments are welcome.

