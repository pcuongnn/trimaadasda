!function(){function e(){var e=!1;e&&u("keydown",r),g.keyboardSupport&&!e&&c("keydown",r)}function t(){if(document.body){var t=document.body,n=document.documentElement,o=window.innerHeight,r=t.scrollHeight;if(S=document.compatMode.indexOf("CSS")>=0?n:t,w=t,e(),x=!0,top!=self)y=!0;else if(r>o&&(t.offsetHeight<=o||n.offsetHeight<=o)){var a=!1,i=function(){a||n.scrollHeight==document.height||(a=!0,setTimeout(function(){n.style.height=document.height+"px",a=!1},500))};if(setTimeout(i,10),S.offsetHeight<=o){var l=document.createElement("div");l.style.clear="both",t.appendChild(l)}}g.fixedBackground||b||(t.style.backgroundAttachment="scroll",n.style.backgroundAttachment="scroll")}}function n(e,t,n,o){if(o||(o=1e3),d(t,n),1!=g.accelerationMax){var r=+new Date,a=r-C;if(a<g.accelerationDelta){var i=(1+30/a)/2;i>1&&(i=Math.min(i,g.accelerationMax),t*=i,n*=i)}C=+new Date}if(M.push({x:t,y:n,lastX:0>t?.99:-.99,lastY:0>n?.99:-.99,start:+new Date}),!T){var l=e===document.body,c=function(r){for(var a=+new Date,i=0,u=0,s=0;s<M.length;s++){var d=M[s],f=a-d.start,m=f>=g.animationTime,h=m?1:f/g.animationTime;g.pulseAlgorithm&&(h=p(h));var w=d.x*h-d.lastX>>0,v=d.y*h-d.lastY>>0;i+=w,u+=v,d.lastX+=w,d.lastY+=v,m&&(M.splice(s,1),s--)}l?window.scrollBy(i,u):(i&&(e.scrollLeft+=i),u&&(e.scrollTop+=u)),t||n||(M=[]),M.length?N(c,e,o/g.frameRate+1):T=!1};N(c,e,0),T=!0}}function o(e){x||t();var o=e.target,r=l(o);if(!r||e.defaultPrevented||s(w,"embed")||s(o,"embed")&&/\.pdf/i.test(o.src))return!0;var a=e.wheelDeltaX||0,i=e.wheelDeltaY||0;return a||i||(i=e.wheelDelta||0),!g.touchpadSupport&&f(i)?!0:(Math.abs(a)>1.2&&(a*=g.stepSize/120),Math.abs(i)>1.2&&(i*=g.stepSize/120),n(r,-a,-i),void e.preventDefault())}function r(e){var t=e.target,o=e.ctrlKey||e.altKey||e.metaKey||e.shiftKey&&e.keyCode!==H.spacebar;if(/input|textarea|select|embed/i.test(t.nodeName)||t.isContentEditable||e.defaultPrevented||o)return!0;if(s(t,"button")&&e.keyCode===H.spacebar)return!0;var r,a=0,i=0,c=l(w),u=c.clientHeight;switch(c==document.body&&(u=window.innerHeight),e.keyCode){case H.up:i=-g.arrowScroll;break;case H.down:i=g.arrowScroll;break;case H.spacebar:r=e.shiftKey?1:-1,i=-r*u*.9;break;case H.pageup:i=.9*-u;break;case H.pagedown:i=.9*u;break;case H.home:i=-c.scrollTop;break;case H.end:var d=c.scrollHeight-c.scrollTop-u;i=d>0?d+10:0;break;case H.left:a=-g.arrowScroll;break;case H.right:a=g.arrowScroll;break;default:return!0}n(c,a,i),e.preventDefault()}function a(e){w=e.target}function i(e,t){for(var n=e.length;n--;)E[A(e[n])]=t;return t}function l(e){var t=[],n=S.scrollHeight;do{var o=E[A(e)];if(o)return i(t,o);if(t.push(e),n===e.scrollHeight){if(!y||S.clientHeight+10<n)return i(t,document.body)}else if(e.clientHeight+10<e.scrollHeight&&(overflow=getComputedStyle(e,"").getPropertyValue("overflow-y"),"scroll"===overflow||"auto"===overflow))return i(t,e)}while(e=e.parentNode)}function c(e,t,n){window.addEventListener(e,t,n||!1)}function u(e,t,n){window.removeEventListener(e,t,n||!1)}function s(e,t){return(e.nodeName||"").toLowerCase()===t.toLowerCase()}function d(e,t){e=e>0?1:-1,t=t>0?1:-1,(k.x!==e||k.y!==t)&&(k.x=e,k.y=t,M=[],C=0)}function f(e){if(e){e=Math.abs(e),D.push(e),D.shift(),clearTimeout(z);var t=m(D[0],120)&&m(D[1],120)&&m(D[2],120);return!t}}function m(e,t){return Math.floor(e/t)==e/t}function h(e){var t,n,o;return e*=g.pulseScale,1>e?t=e-(1-Math.exp(-e)):(n=Math.exp(-1),e-=1,o=1-Math.exp(-e),t=n+o*(1-n)),t*g.pulseNormalize}function p(e){return e>=1?1:0>=e?0:(1==g.pulseNormalize&&(g.pulseNormalize/=h(1)),h(e))}var w,v={frameRate:300,animationTime:400,stepSize:50,pulseAlgorithm:!0,pulseScale:8,pulseNormalize:1,accelerationDelta:20,accelerationMax:1,keyboardSupport:!0,arrowScroll:50,touchpadSupport:!0,fixedBackground:!0,excluded:""},g=v,b=!1,y=!1,k={x:0,y:0},x=!1,S=document.documentElement,D=[120,120,120],H={left:37,up:38,right:39,down:40,spacebar:32,pageup:33,pagedown:34,end:35,home:36},g=v,M=[],T=!1,C=+new Date,E={};setInterval(function(){E={}},1e4);var z,A=function(){var e=0;return function(t){return t.uniqueID||(t.uniqueID=e++)}}(),N=function(){return window.requestAnimationFrame||window.webkitRequestAnimationFrame||function(e,t,n){window.setTimeout(e,n||1e3/60)}}(),K=/chrome/i.test(window.navigator.userAgent),L=null;"onwheel"in document.createElement("div")?L="wheel":"onmousewheel"in document.createElement("div")&&(L="mousewheel"),L&&K&&(c(L,o),c("mousedown",a),c("load",t))}();