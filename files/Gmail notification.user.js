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
        var label = $('#canvas_frame').contents().find('#\\:r2').contents().html();
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