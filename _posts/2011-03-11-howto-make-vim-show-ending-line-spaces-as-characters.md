---
title: 'HOWTO: make vim show ending line spaces as characters'
categories:
- osx
- programming
- open source
- various links
- job
- howto
- geek
tags:
- howto
---
When you edit a file with [vim](http://www.vim.org/), it's useful understand
where the line ends especially if there are spaces at the end of the line.
Instead checking all lines, **you can highlight white spaces**. How?

  1. Open [Vim](http://www.vim.org/) from **Terminal**
  2. type 
    
        :set list

  

  3. You see an output like the one below  
[![]({{site.url}}/images/vimsetlist1.png){: .align-center}]({{site.url}}/images/vimsetlist1.png
)

  4. If you want see each space as character, type this command 
    
        :set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

  

  5. The output should look like below  
[![]({{site.url}}/images/vimsetlist2.png){: .align-center}]({{site.url}}/images/vimsetlist2.png
)

  

  
Very simple and useful tip! :)

If you have any doubt, advice or something else, comment this post! :)

_Source: [Stackoverflow](http://stackoverflow.com/questions/1675688/make-vim-
show-all-white-spaces-as-a-character)_

