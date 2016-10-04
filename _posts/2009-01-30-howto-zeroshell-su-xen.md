---
title: 'HOWTO: Zeroshell su Xen'
categories:
- howto
- italian
tags:
- linux
- job
---
Ciao, oggi vi spiego come far girare [Zeroshell](http://www.zeroshell.net/
"Zeroshell" ) su una macchina virtuale basata su [XEN](http://www.xen.org/).
[Zeroshell](http://www.zeroshell.net/ "Zeroshell" ) è una distribuzione linux
interamente sviluppata da un italiano (Fulvio Ricciardi) indicata soprattutto
per sistemi embedded. In alcuni casi (come nel mio) si ha la necessità di
installarla in una macchina virtuale per effettuare dei test.  
Dunque, una volta installato [XEN](http://www.xen.org/) ([quì una guida per
debian](http://wiki.debian.org/Xen "Xen su Debian" )) è sufficiente scaricarsi
l'immagine disco di Zeroshell da [questa
pagina](http://www.zeroshell.net/download/ "Zeroshell Download" )
(ATTENZIONE!! Dovete scaricare l'immagine IDE,SATA USB da 1GB!!) e
posizionarla ad esempio in _"/var/xen/domains/zeroshell"_. 
In XEN dovete avere compilato il supporto della piena virtualizazione: in
debian sono nel pacchetto _**"xen-ioemu".  
Fatto ciò create il file di configurazione _"/etc/xen/zeroshell.cfg"_ con il
seguente contenuto:**_

    
```    
#  Kernel + memory size  
kernel = 'hvmloader'    #path to hvmloader  
builder = 'hvm'  
memory  = '256'  
device_model = '/usr/lib/xen/bin/qemu-dm' #path to qemu-dm

boot = "c"  
sdl=0  
vncviewer=0  
vnc=1  
stdvga=0  
serial='pty'

#  Disk device(s).  
root    = '/dev/ram1 ro'  
disk    = [ 'file:/var/xen/domains/zeroshell/hdabeta10.img,hda,w' ]

#  Hostname  
name    = 'zeroshell'

#  Networking  
vif  = [ 'ip=192.168.111.222' ]

#  Behaviour  
on_poweroff = 'destroy'  
on_reboot   = 'restart'  
on_crash    = 'restart'
```
  
Una volta creato il file di configurarazione digitare _"xm create
/etc/xen/zeroshell.cfg"_ per poi controllare l'effettivo boot della macchina
virtuale con "xm list":

    
```    
Name                                        ID   Mem VCPUs      State   Time(s)  
Domain-0                                     0  3696     8     r-----  62821.5  
diegor                                      85   256     1     -b----   1022.0  
francesco                                   87   256     1     -b----    245.8  
giacomo                                     88   256     1     -b----     73.2  
zeroshell                                  123   256     1     r-----  34077.7
```
  
Nel caso della piena virtualizzazione il comando "xm console" non ha nessun
effetto. Per accedere alla macchina virtuale si deve usare un client vnc,
**impostando l'ip della Dom0 e non di zeroshell!!!**
