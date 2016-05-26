---
title: 'HOWTO: Installare Gears su Prism'
categories:
- private
- car
- open source
- various links
- howto
- google
tags:
- howto
- test
---
Ho gia discusso [qui](http://www.diegor.it/2009/06/15/howto-
wordpress-2-8-e-tinymce-dove-e-finito/) e
[qui](http://www.diegor.it/2009/07/13/howto-wordpress-2-8-1-e-tinymce-eccolo-
di-nuovo/) sull'utilita di Gears su alcuni siti e/o piattaforme.
[Prism](http://prism.mozilla.com/started/) invece e software che ti permette
di trasformare qualsiasi sito web in un'applicazione per il desktop.
[Prism](http://prism.mozilla.com/started/) e basato su Firefox ed e
scaricabile sia come estensione per Firefox che come applicazione indipendente
da eseguire.

Io uso Prism per il mio sito. Questa piattaforma usa wordpress che e
compatibile con Gears. Se proverai a installare Gears su Prism sicuramente
riceverai il seguente messaggio:

[![incompatible_gears]({{site.url}}/images/incompatible_gears.png)]({{site.url
}}/images/incompatible_gears.png)

Il trucco e far credere a Google Gears che l'applicazione che gira su Prism e
compatibile con lui. É molto semplice, segui questi punti:

  1. Scaricati Google Gears da qui <http://gears.google.com/> e salvala sul Dekstop
  2. Cambia l'estensione del file appena scaricato in **".zip"**
  3. Decomprimi il file in una cartella
  4. Edita il file **"install.rdf"** all'interno della cartella.
  5. Vai alla seguente sezione del file: 
    
          
    
       
    
      {ec8030f7-c20a-464f-9b0e-13a3a9e97384}  
    
      1.5  
    
      3.0.*  
    
       
    
    

  

  6. Sostituiscela con la seguente: 
    
          
    
       
    
      prism@developer.mozilla.org  
    
      0.1.*  
    
      10.0.*  
    
       
    
    

  

  7. Chiudi l'editor di testoComprimi la cartella con l'estensione **".zip"**
  8. Cambia l'estensione del file da **".zip"** a **".xpi"**
  9. Installa l'estensione modificata in Prism
  

  
A questo punto puoi usare Gears con Prism su tutti i siti che vuoi.

