---
title: 'HOWTO: Nascondere Disqus su pagine statiche di wordpress'
categories:
- blog
- various links
- social network
- howto
- status
tags:
- howto
---
[Disqus Comments](http://disqus.com/comments/) e un sistema di commenti e
strumenti di moderazione per il tuo sito. Questo servizio ti permette di
aggiungere al tuo sito un sistema avanzato usato da migliaia di siti e blog.
Con lo stesso account puoi tenere traccia di tutti i tuoi commenti che lasci
in giro per il web (ovviamente i siti devono avere Disqus).

Se hai un sito in wordpress ti basta seguire [queste
istruzioni](http://disqus.com/comments/wordpress/) per installarlo.
Automaticamente ti ritroverai Disqus in ogni post e su ogni pagina di
wordpress. Se pero hai una pagina con dei contenuti statici e non vuoi
mostrare Disqus e vuoi impedire i commenti, dovrai seguire questi piccole
modifiche:

  1. Modifica il file **"disqus-comment-system/disqus.php"** che trovi nella directory del plugin
  2. Scorri fino alla sezione _"Filters/Actions"_ dove potrai vedere il codice seguente: 
    
        if ( ! (is_single() || is_page() || $withcomments) ) {  
    
    		return;  
    
    	}  
    
    if ( !dsq_can_replace() ) {  
    
    		return $value;  
    
    	}

  

  3. Prima, in mezzo o dopo inserisci queste righe di codice: 
    
        if ( ('closed' == $post->comment_status) || ('page' == $post->post_type)){  
    
    return;  
    
    }

  

  4. Salva il file. Se hai modificato il file in locale, mettilo sul server. Se hai modificato il file in remoto, le modifiche sono immediate
  

  
Come al solito se hai problemi, consigli o correzioni, commenta oppure
[contattami](http://www.diegor.it/chi-e-diegor/)! :)

Fonte: _[wordpress.org](http://wordpress.org/support/topic/320856)_

