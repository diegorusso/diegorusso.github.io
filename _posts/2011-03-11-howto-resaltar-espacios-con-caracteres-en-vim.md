---
title: 'HOWTO: resaltar espacios con car&aacute;cteres en VIM'
categories:
- osx
- car
- howto
- guia
- programaci&oacute;n
- trabajo
- enlaces varios
tags:
- howto
- guia
---
Cuando modificas un archivo con [vim](http://www.vim.org/), es comodo ver
donde la linea termina, especialmente si termina con espacios. En lugar de
verificar cada linea, **puedes resaltar espacios**. Como?

  1. Apre [Vim](http://www.vim.org/) desde el **Terminal**
  2. Digita 

     ```
     :set list
     ```
  3. Puedes ver un resultado como este a continuación  
     [![]({{site.url}}/images/vimsetlist1.png){: .align-center}]({{site.url}}/images/vimsetlist1.png)
  4. Si quieres ver cada espacio como caracter, digita este comando 

     ```
     :set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
     ```
  5. El resultado deberia ser como este  
     [![]({{site.url}}/images/vimsetlist2.png){: .align-center}]({{site.url}}/images/vimsetlist2.png)

¡Un consejo muy simple y utiles! :)

Si tienes dudas, consejos u otro, ¡comenta este artículo!

_Fuente: [Stackoverflow](http://stackoverflow.com/questions/1675688/make-vim-show-all-white-spaces-as-a-character)_

