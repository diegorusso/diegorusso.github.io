---
title: 'HOWTO: ignorar peticiones sin usar agent en Apache'
categories:
- howto
- spanish
tags:
- apache
- job
---
Un servidor web publico podria recibir muchas peticiones http que no tienen lo
"user agent". Apache puede evitar este tipologia de peticiones. La
configuración es muy sencilla:

```
SetEnvIfNoCase User-Agent "^-?$" noUserAgent  
Order Allow,Deny  
Allow from All  
Deny from env=noUserAgent
```
  
En este ejemplo Apache ignora todas la peticiones sin user agent que son
dirigidas a `/path/to/a/directory`

Comentarios son bienvenidos.
