function a(e){var t=document.createElement("script");t.type="text/javascript",t.src=e;var n=document.getElementsByTagName("script")[0];n.parentNode.insertBefore(t,n)}function v(e,t){var n=document.getElementsByTagName("body")[0],r=document.createElement("div");r.innerHTML=e,n.insertBefore(r,n.firstChild)}function c(e){var t=document.getElementsByTagName("head")[0],n=document.createElement("style");n.setAttribute("type","text/css"),n.styleSheet?n.styleSheet.cssText=e:n.appendChild(document.createTextNode(e)),t.appendChild(n)}function l(e,t){if(t){var n="https://static.glyphs.co/kit/v1/"+e+".min.js";a(n)}else var n='<script type="text/javascript" src="https://kit.glyphs.co/v1/'+e+'.min.js"></script>';document.write(n)}function XHR(e,t,n){var r=new XMLHttpRequest;r.open(e,t,!0),r.setRequestHeader("Content-Type","application/x-www-form-urlencoded; charset=UTF-8"),r.onload=function(){if(r.status>=200&&r.status<400){var e=JSON.parse(r.responseText);"views"==e.type&&"yes"==e.recorded&&(globalReturn=new Array,globalReturn.push(e))}},r.send(n)}function inlineIcons(){for(var e,t=document.querySelectorAll("svg[data-inline]"),n=0;e=t[n];n++){var r=e.firstChild.getAttribute("xlink:href");e.removeChild(e.firstChild);var a=document.querySelectorAll(r),i=a[0].getAttribute("viewBox");e.setAttribute("viewBox",i),e.innerHTML=a[0].innerHTML}}function findAllPhotos(){for(var e,t=document.querySelectorAll("*"),n=[],r=new RegExp(/[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}/,"g"),a=0;e=t[a];a++)e.currentStyle?(style=e.currentStyle.backgroundImage,"none"!==style&&(match=style.match(r),match&&n.push(match[0]))):window.getComputedStyle&&(style=document.defaultView.getComputedStyle(e,null).getPropertyValue("background-image"),"none"!==style&&(match=style.match(r),match&&n.push(match[0]))),e.src&&(match=e.src.match(r),match&&n.push(match[0]));return n}function recordView(){var e="https://glyphs.co/actions/glyphsUsers/recordPageview",t={};t.kitId=113088,t.httpReferrer=window.location.href;var n="fields="+JSON.stringify(t);XHR("post",e,n)}l("1485833232-113088");var globalReturn;document.addEventListener("DOMContentLoaded",function(e){matches=findAllPhotos(),matches.length>0&&recordView(),inlineIcons()});
