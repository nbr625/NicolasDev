/**
 * jQuery-Plugin "preloadCssImages"
 * by Scott Jehl, scott@filamentgroup.com
 * http://www.filamentgroup.com
 * reference article: http://www.filamentgroup.com/lab/update_automatically_preload_images_from_css_with_jquery/
 * demo page: http://www.filamentgroup.com/examples/preloadImages/index_v2.php
 * 
 * Copyright (c) 2008 Filament Group, Inc
 * Dual licensed under the MIT (filamentgroup.com/examples/mit-license.txt) and GPL (filamentgroup.com/examples/gpl-license.txt) licenses.
 *
 * Version: 5.0, 10.31.2008
 * Changelog:
 * 	02.20.2008 initial Version 1.0
 *    06.04.2008 Version 2.0 : removed need for any passed arguments. Images load from any and all directories.
 *    06.21.2008 Version 3.0 : Added options for loading status. Fixed IE abs image path bug (thanks Sam Pohlenz).
 *    07.24.2008 Version 4.0 : Added support for @imported CSS (credit: http://marcarea.com/). Fixed support in Opera as well. 
 *    10.31.2008 Version: 5.0 : Many feature and performance enhancements from trixta
 * --------------------------------------------------------------------
 */
jQuery.preloadCssImages=function(e){function s(){if(clearTimeout(n),o&&o.length&&o[l]){if(l++,e.statusTextEl){var s=o[l]?"Now Loading: <span>"+o[l].split("/")[o[l].split("/").length-1]:"Loading complete";jQuery(e.statusTextEl).html('<span class="numLoaded">'+l+'</span> of <span class="numTotal">'+o.length+'</span> loaded (<span class="percentLoaded">'+(l/o.length*100).toFixed(0)+'%</span>) <span class="currentImg">'+s+"</span></span>")}if(e.statusBarEl){var a=jQuery(e.statusBarEl).width();jQuery(e.statusBarEl).css("background-position",-(a-(a*l/o.length).toFixed(0))+"px 50%")}t()}}function t(){if(o&&o.length&&o[l]){var t=new Image;t.src=o[l],t.complete?s():jQuery(t).bind("error load onreadystatechange",s),n=setTimeout(s,e.errorDelay)}}function a(s,n){for(var l,i=!1,u=[],p=[],h=s.length;h--;){var c="";if(n&&n[h])l=n[h];else{var f=s[h].href?s[h].href:"window.location.href",g=f.split("/");g.pop(),l=g.join("/"),l&&(l+="/")}if(s[h].cssRules||s[h].rules){r=s[h].cssRules?s[h].cssRules:s[h].rules;for(var d=r.length;d--;)if(r[d].style&&r[d].style.cssText){var m=r[d].style.cssText;-1!=m.toLowerCase().indexOf("url")&&(c+=m)}else r[d].styleSheet&&(u.push(r[d].styleSheet),i=!0)}var y=c.match(/[^\("]+\.(gif|jpg|jpeg|png)/g);if(y)for(var v=y.length;v--;){var j="/"==y[v].charAt(0)||y[v].match("://")?y[v]:l+y[v];-1==jQuery.inArray(j,o)&&o.push(j)}if(!i&&s[h].imports&&s[h].imports.length)for(var x=0,T=s[h].imports.length;T>x;x++){var E=s[h].imports[x].href;E=E.split("/"),E.pop(),E=E.join("/"),E&&(E+="/");var L="/"==E.charAt(0)||E.match("://")?E:l+E;p.push(L),u.push(s[h].imports[x])}}if(u.length)return a(u,p),!1;for(var Q=e.simultaneousCacheLoading;Q--;)setTimeout(t,Q)}e=jQuery.extend({statusTextEl:null,statusBarEl:null,errorDelay:999,simultaneousCacheLoading:2},e);var r,n,l=0,o=[];return a(document.styleSheets),o};