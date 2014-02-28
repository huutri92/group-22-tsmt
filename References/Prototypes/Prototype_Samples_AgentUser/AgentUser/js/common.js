/**
 * Pop up the window with the requested URL
 * and params. 
 */
function popWindow() {
    var iWidth = 600;
    var iHeight = 400;
    var iTop = 0;
    var iLeft = 0;
    var sWinHand = "";
    var bCenterWin = true;
    var paramStr = "";
    var iIsScroll = "1";
    // check if the URL is posted
    if (arguments[0] == null) {
    	return false;
    } else {
    	sURL = arguments[0];
    }
    if (arguments[1] != null) 
        iWidth = arguments[1];
    if (arguments[2] != null) 
        iHeight = arguments[2];        
    // check other params for width and height and WinName
    if (arguments[1] != null)
    	iWidth = arguments[1];
    if (arguments[2] != null)
    	iHeight = arguments[2];
    if (arguments[3] != null)
    	sWinHand = arguments[3];
    if (arguments[4] != null)
    	iIsScroll = arguments[4];
    if (bCenterWin) {
        iTop = (550 - iHeight) / 2;
        if (iTop < 50)
            iTop = 50;
        iLeft = (780 - iWidth) / 2;
    }
    paramStr = "\"top=" + iTop + ", left=" + iLeft + ", height=" + iHeight + ", width=" + iWidth
             + ", status=no, toolbar=no, scrollbars=" + iIsScroll + "\"";
    window.open(sURL, sWinHand, paramStr);
    }
   
 function resizeIframe() {
 
 try{
 
    var ifrm = document.getElementById('contentFrame');
 
    if(window.frames['contentFrame'] && window.frames['contentFrame'].document) {
        window.frames['contentFrame'].window.scroll(0,0);
         var body = window.frames['contentFrame'].document.body;
        if(body) {
             var height = body.scrollHeight + 30;
             ifrm.style.height = height + 'px';
         }
    }
    } catch (error) {}
  }

 var showUser = true;   
 function showHideUser(showImg,hideImg){
	if(showUser){
		document.getElementById("userInfo").style.display = "none";
		document.getElementById("showHideUserImg").src = hideImg;
		document.getElementById("showHideUserImg").alt = "Expand User Profile";
		showUser = false;
	}
	else{
		document.getElementById("userInfo").style.display = "block";
		document.getElementById("showHideUserImg").src = showImg;
		document.getElementById("showHideUserImg").alt = "Collapse User Profile";
		showUser = true;
	}
 }

function onlyDigits(e) {
         var _ret = true;
			
         if (window.event.keyCode == 13)
           return false;

         if  (window.event.keyCode == 45) //-
		      return (_ret);
         if ((window.event.keyCode < 46 || window.event.keyCode > 57) && window.event.keyCode != 45) {
         window.event.keyCode = 0;
         _ret = false;
         }
         return (_ret);
 }

 function onlyChars(e) {
 
          if ( (window.event.keyCode >96  && window.event.keyCode  <123) || 
		       (window.event.keyCode >64  && window.event.keyCode  <91)  ||
			 (window.event.keyCode == 45 || window.event.keyCode==32) ) {
     		   return true;
        	 }


		window.event.keyCode = 0
         return false;
 }

 function Trim(TRIM_VALUE){
if(TRIM_VALUE.length < 1){
return"";
}
TRIM_VALUE = RTrim(TRIM_VALUE);
TRIM_VALUE = LTrim(TRIM_VALUE);
if(TRIM_VALUE==""){
return "";
}
else{
return TRIM_VALUE;
}
}

function RTrim(VALUE){
var w_space = String.fromCharCode(32);
var v_length = VALUE.length;
var strTemp = "";
if(v_length < 0){
return"";
}
var iTemp = v_length -1;

while(iTemp > -1){
if(VALUE.charAt(iTemp) == w_space){
}
else{
strTemp = VALUE.substring(0,iTemp +1);
break;
}
iTemp = iTemp-1;

} //End While
return strTemp;

} //End Function

function LTrim(VALUE){
var w_space = String.fromCharCode(32);
if(v_length < 1){
return"";
}
var v_length = VALUE.length;
var strTemp = "";

var iTemp = 0;

while(iTemp < v_length){
if(VALUE.charAt(iTemp) == w_space){
}
else{
strTemp = VALUE.substring(iTemp,v_length);
break;
}
iTemp = iTemp + 1;
} //End While
return strTemp;
} //End Function
