---
title: 'HOWTO: Script per notifica di mail con Fluid + Gmail'
categories:
- personal
- italian
- howto
- google
- lingue
tags:
---
Se hai [Fluid](http://fluidapp.com/ "http://fluidapp.com/" ) configurato per
Gmail e non vuoi usare applicazioni esterne per controllare l'arrivo di posta
ti consiglio di usare il mio script che tramite [Growl](http://growl.info/
"http://growl.info/" ) ti notifica sia visualmente che con un suono l'arrivo
di nuove mail. Inoltre e personalizzabile e disponibile in 3 lingue
(**Italiano, Inglese, Spagnolo**) ma è facilemente espandibile per altre
localizzazioni.  
Una volta aperto Fluid per Gmail, vai sul simbolo della pergamena accanto a
"_Window_" nei menu in alto, cliccaci e seleziona "_New Userscript_". Digita
il nome che vuoi dare al nuovo script e dopo ti apparira il tuo editor
preferito.  
All'interno del file copiaci questo codice:
  
```    
// ==UserScript==
// @name        Gmail Badge + Growl MultiLanguage
// @namespace   http://fluidapp.com
// @description Mail notificator for Gmail
// @include     http://mail.google.com/*
// @include     http://*.google.com/mail/*
// @include     https://mail.google.com/*
// @include     https://*.google.com/mail/*
// ==/UserScript==

(function() {

//customize the below fields
var notification_sound = "Glass";
var lang = "spanish";

if (lang == "english") {
var lbl_unread_messages = " Unread message(s)";
}
if (lang == "italian") {
var lbl_unread_messages = " Messaggi non letti";
}
if (lang == "spanish") {
var lbl_unread_messages = " Mensaje(s) no leído(s)";
}
// end customization

if (!window.fluid) {
return;
}

function importScript(url){
var tag = document.createElement("script");
tag.type="text/javascript";
tag.src = url;
document.body.appendChild(tag);
}

importScript("http://jqueryjs.googlecode.com/files/jquery-1.3.min.js");

var mail_unread = 0;

function updateDockBadge() {
var label = $('#canvas_frame').contents().find('#:r2').contents().html();
var title = document.title;
var old_mail_unread = mail_unread || 0;

if (title.indexOf('@') > 0){
if (label && label.length) {
//Parse number of messages
var start = label.indexOf("(");
var end = label.indexOf(")");
if (start > -1 && end > -1) {
start++;
mail_unread = label.substring(start, end);
} else {
mail_unread = 0;
}
}

//set the dock badge with the number unread messages
if ((mail_unread || 0) > 0) {
fluid.dockBadge = (mail_unread || "");
sticky: true
}

//growl if there are more unread items than last time
if ((mail_unread || 0) > old_mail_unread) {
window.fluid.playSoundNamed(notification_sound);
fluid.showGrowlNotification({
title: "Gmail",
description: (mail_unread || "") + lbl_unread_messages,
priority: 3,
sticky: false
});
}
}
}

setInterval(function(){updateDockBadge();}, 100);
})();
```

Una volta copiato, salva il file, attiva il plugin, riavvia fluid ed il gioco
è fatto! :)  
[Il file e disponibile per il download,
qui.]({{site.url}}/files/Gmail notification.user.js) :)  
Se hai problemi contattami!

