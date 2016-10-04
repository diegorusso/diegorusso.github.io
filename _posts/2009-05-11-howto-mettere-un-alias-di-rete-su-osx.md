---
title: 'HOWTO: Mettere un alias di rete su OSX'
categories:
- howto
- italian
tags:
- osx
---
Poco tempo fa hai visto come impostare un [alias di rete su
linux]({{site.url}}/2009/04/28/howto-mettere-un-alias-di-rete-su-linux/).
Oggi vedrai come fare la stessa cosa su OSX. Sostanzialmente ci sono
due modi per impostare un alias di rete su OSX: da terminale e da interfaccia
grafica.  
Segui l'esempio dello scorso post, ovvero impostare un alias di rete sulla
scheda di rete ethernet. Solitamente il nome di questa interfaccia di rete e
**en0** (ma potrebbe variare).

Segui questi semplici passi.

Da terminale:

* Apri il Terminale _(Applicazioni -> Utility -> Terminale)_
* Digita il seguente comando

```    
sudo ifconfig en0 inet 169.254.1.1 alias
```

* Controlla digitando

```    
ifconfig en0
```

* Avrai il seguente output:

```    
iAndrew:~ diegor$ ifconfig en0      
en0: flags=8863 mtu 1500  
inet 169.254.1.1 netmask 0xffff0000 broadcast 169.254.255.255  
ether 00:1b:63:98:a0:12  
media: autoselect status: inactive
```

* Per togliere l'alsias e sufficiente digitare:

```    
sudo ifconfig en0 inet 169.254.1.1 delete
```

Da interfaccia grafica:

1. Vai su _**"Preferenze di Sistema"**_
2. Seleziona la voce **_"Network"_**
3. Clicca in basso a sinistra sul pulsante **"+"**
4. Ti apparira il tipo di interfaccia da creare (come l'immagine sottostante)
    ![osx_alias]({{site.url}}/images/osx_alias.png){: .align-center}
5. Appena selezionata clicca su **_"OK"_**
6. Ora configura la tua interfaccia con l'ip desiderato
7. Per eliminare l'interfaccia selezionarla e cliccare sul simbolo meno **"-"**
  

