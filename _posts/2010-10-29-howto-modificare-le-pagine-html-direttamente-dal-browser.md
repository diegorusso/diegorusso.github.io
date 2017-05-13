---
title: 'HOWTO: Modificare le pagine html direttamente dal browser'
categories:
- howto
- italian
tags:
- job
---
Se stai facendo un sito oppure stai semplicemente navigando, puoi modificare
direttamente dal tuo browser il contenuto della pagina. Queste modifiche sono
solo "client side", ovvero le pagine sul server non verranno in alcuna maniera
modificate. Infatti se ricarichi la pagina la vedrai tornare alla normalita.

[![]({{site.url}}/assets/images/modifica_html_con_js.png){: .align-center}]({{site.url}}/assets/images/modifica_html_con_js.png)
_uh.. che caos! :)_
{: .text-center}

Dunque fai questi step:

  1. Vai sulla pagina che voi modificare (es: www.diegor.it)
  2. Incolla questo codice **al posto dell'indirizzo** e premi invio

     ```
     javascript:document.body.contentEditable='true'; document.designMode='on'; void 0
     ```
  3. Modifica a tuo piacimento la pagina come se fosse un editor di testo.
  
Ora puoi aggiungere e togliere il testo, formattarlo, spostarlo. Inoltre in
Firefox puoi anche ridimensionare/spostare le immagini.

Se hai altri consigli o problemi, commenta!
