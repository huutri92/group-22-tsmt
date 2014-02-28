/***********************************************************
* JavaScript Library
* Last Modified	: 27-Dec-2004 - Nguyen Ich Cuong
				: 29-Dec-2004 - Vu Hong Hai [Add 2 functions checkSelect() and checkSelectAll()]
				: 24-May-2005 - Vu Hong Hai [Add function doReset()]
***********************************************************/
// Open new window with attributes
// Status bar = No
// Menu bar = No
// Resizeable = No
function centerWindow(width, height)
{
	var left = parseInt((screen.availWidth/2) - (width/2));
	var top = parseInt((screen.availHeight/2) - (height/2));
	var windowFeatures = "width=" + width + ",height=" + height + 
							",status=no,menubar=no,left=" + left + ",top=" + top + 
							",screenX=" + left + ",screenY=" + top;	
	return windowFeatures;
}

// Browsercheck object
function checkBrowser()
{
	this.ver = navigator.appVersion;
	this.name = navigator.appName;
	this.agent = navigator.userAgent.toLowerCase();
	this.dom = document.getElementById?1:0;

	this.op5 = (this.agent.indexOf("opera 5")>-1 || this.agent.indexOf("opera/5")>-1) && window.opera ;
  	this.op6 = (this.agent.indexOf("opera 6")>-1 || this.agent.indexOf("opera/6")>-1) && window.opera ;

  	this.ie5 = (this.agent.indexOf("msie 5")>-1 && !this.op5 && !this.op6);
  	this.ie55 = (this.ie5 && this.agent.indexOf("msie 5.5")>-1);
  	this.ie6 = (this.agent.indexOf("msie 6")>-1 && !this.op5 && !this.op6);
	this.ie4 = (this.agent.indexOf("msie")>-1 && document.all && !this.op5 && !this.op6 && !this.ie5 && !this.ie6);
  	this.ie = (this.ie4 || this.ie5 || this.ie6);

	this.mac = (this.agent.indexOf("mac")>-1);

	this.mo5 = (this.agent.indexOf("mozilla/5")>-1);

	this.ns6 = (this.agent.indexOf("gecko")>-1 || window.sidebar);
	this.ns4 = (!this.dom && document.layers)?1:0;

	this.bw = (this.ie6 || this.ie5 || this.ie4 || this.ns4 || this.ns6 || this.op5 || this.op6);
  	this.usedom = this.ns6; 			//Use dom creation
  	this.reuse = this.ie || this.usedom;		//Reuse layers
  	this.px = this.dom && !this.op5 ? "px":"";
	return this;
}
var bw = new checkBrowser();

// LTrim: Returns a String containing a copy of a specified
//		string without leading spaces
//
// Parameters:
//	  String = The required string argument is any valid
//			   string expression. If string contains null,
//			   false is returned
//
// Returns: String
function LTrim(String)
{
	var i = 0;
	var j = String.length - 1;

	if (String == null)
		return (false);

	for (i = 0; i < String.length; i++)
	{
		if (String.substr(i, 1) != ' ' &&
			String.substr(i, 1) != '\t')
			break;
	}

	if (i <= j)
		return (String.substr(i, (j+1)-i));
	else
		return ('');
}

// RTrim: Returns a String containing a copy of a specified
//		string without trailing spaces
//
// Parameters:
//	  String = The required string argument is any valid
//			   string expression. If string contains null,
//			   false is returned
//
// Returns: String
function RTrim(String)
{
	var i = 0;
	var j = String.length - 1;

	if (String == null)
		return (false);

	for(j = String.length - 1; j >= 0; j--)
	{
		if (String.substr(j, 1) != ' ' &&
			String.substr(j, 1) != '\t')
		break;
	}

	if (i <= j)
		return (String.substr(i, (j+1)-i));
	else
		return ('');
}

// RTrim: Returns a String containing a copy of a specified
//		string without both leading and trailing spaces
//
// Parameters:
//	  String = The required string argument is any valid
//			   string expression. If string contains null,
//			   false is returned
//
// Returns: String
function Trim(String)
{
	if (String == null)
		return (false);

	return RTrim(LTrim(String));
}

// IsNumber: Returns a Boolean value indicating whether an
//		   expression can be evaluated as a number (this
//		   includes values like $15,656.00)
//
// Parameters:
//	  Expression = Variant containing a numeric expression or
//				   string expression.
//
// Returns: Boolean
function IsNumber(Expression)
{
	Expression = Expression.toLowerCase();
	RefString = "0123456789.-";

	if (Expression.length < 1)
		return (false);

	for (var i = 0; i < Expression.length; i++)
	{
		var ch = Expression.substr(i, 1);
		var a = RefString.indexOf(ch, 0);
		if (a == -1)
			return (false);
	}
	return(true);
}

// IsEmail: Returns a Boolean if the specified Expression is a
//		  valid e-mail address. If Expression is null, false
//		  is returned.
//
// Parameters:
//	  Expression = e-mail to validate.
//
// Returns: Boolean
function IsEmail(Expression)
{
	if (Expression == null)
		return (false);

	if(!checkSymbol(Expression))
		{
		return (false);
	}

	var supported = 0;
	if (window.RegExp)
	{
		var tempStr = "a";
		var tempReg = new RegExp(tempStr);
		if (tempReg.test(tempStr)) supported = 1;
	}
	if (!supported)
		return (Expression.indexOf(".") > 2) && (Expression.indexOf("@") > 0);
	var r1 = new RegExp("(@.*@)|(\\.\\.)|(@\\.)|(^\\.)");
	var r2 = new RegExp("^.+\\@(\\[?)[a-zA-Z0-9\\-\\.]+\\.([a-zA-Z]{2,4}|[0-9]{1,4})(\\]?)$");
	return (!r1.test(Expression) && r2.test(Expression));
}

function checkSymbol(s)
{
	var i;
   	for(i=0;i<s.length;i++)
   	{
		if((s.charAt(i)=='<')||(s.charAt(i)=='>')||(s.charAt(i)=='"'))
	   	{
			return false;
		}
	}
	return true;
}

// Using for checkbox
function checkSelect(subName){
	var len =  document.frmMorses.elements.length
	for (i = 0; i < len; i++) {
		e = document.frmMorses.elements[i];
		if (e != null && e.name.substring(0, subName.length) == subName) {
		  e.checked = document.frmMorses.selectAll.checked;
		}
	}
	return;
}

function checkSelectAll(subName){
	var len =  document.frmMorses.elements.length;
	var size = 0;
	var index = 0;
	for (var i = 0; i < len; i++) {
		var e = document.frmMorses.elements[i];
		if (e != null && e.name.substring(0, subName.length) == subName) {
			if( e.checked == true){
				index ++;
			}
			size ++;
		}
	}
	if(size == index){
		document.frmMorses.selectAll.checked = true;
	}
	else{
		document.frmMorses.selectAll.checked = false;
	}
	return;
}

function addMultiSel(sel1, sel2) {
	var CerText;
	var CerValue;

	var position, subposition;
	position = sel1.length - 1;
	if (sel2.selectedIndex == -1) {
		return;
	}
	CerValue = sel2.options[sel2.selectedIndex].value;
	CerText = sel2.options[sel2.selectedIndex].text;

	var len;
	len = sel2.length;
	sel2.options[sel2.selectedIndex] = null;
	sel2.selectedIndex = len;

	var AddFlag;
	AddFlag = true;
	for (var j=0; j<sel1.length; j++) {
		if (sel1.options[j].value == CerValue) {
			AddFlag = false;
		}
	}
	if (AddFlag) {
		sel1.options[position + 1] = new Option(CerText, CerValue);
	}
}

function delMultiSel(sel1, sel2) {
	var CerText;
	var CerValue;

	var position,subposition;
	position = sel2.length - 1;
	if (sel1.selectedIndex == -1) {
		return;
	}
	CerValue = sel1.options[sel1.selectedIndex].value;
	CerText = sel1.options[sel1.selectedIndex].text;

	var len;
	len = sel1.length;
	sel1.options[sel1.selectedIndex] = null;
	sel1.selectedIndex = len;

	var AddFlag;
	AddFlag = true;
	for (var j=0; j<sel2.length; j++) {
		if (sel2.options[j].value == CerValue) {
			AddFlag = false;
		}
	}
	if (AddFlag) {
		sel2.options[position + 1] = new Option(CerText, CerValue);
	}
}

function formatNumber(num) {
	var pow = 100;
	return ((Math.round(num*pow)) / pow);
}

function isDate(object, time){
	var dtStr = object.value;
	if(dtStr.length <= 0) {
		return false;
	}
	var daysInMonth = DaysArray(12);
	var pos1 = dtStr.indexOf(dtCh);
	var pos2 = dtStr.indexOf(dtCh, pos1 + 1);
	var strDay = dtStr.substring(0, pos1);
	var strMonth = dtStr.substring(pos1 + 1, pos2);
	var strYear = dtStr.substring(pos2 + 1, pos2 + 5);

	strYr = strYear;
	if (strDay.charAt(0) == "0" && strDay.length > 1){ 
		strDay = strDay.substring(1);
	}
	if (strMonth.charAt(0)=="0" && strMonth.length > 1){ 
		strMonth=strMonth.substring(1);
	}
	for (var i = 1; i <= 3; i++) {
		if (strYr.charAt(0)=="0" && strYr.length>1){ 
			strYr=strYr.substring(1);
		}
	}
	
	month = parseInt(strMonth);
	day = parseInt(strDay);
	year = parseInt(strYr);
	
	if (pos1 == -1 || pos2 == -1) {
		alert("The date format should be : dd/mm/yyyy");
		return false;
	}
	if (isNaN(strMonth) || strMonth.length<1 || month<1 || month>12) {
		alert("Please enter a valid month");
		return false;
	}
	if (isNaN(strDay) || strDay.length < 1 || day < 1 || day > 31 || (month == 2 && day > daysInFebruary(year)) || day > daysInMonth[month]) {
		alert("Please enter a valid day");
		return false;
	}
	if (isNaN(strYr) || strYear.length != 4 || year==0 || year < minYear || year > maxYear) {
		alert("Please enter a valid 4 digit year between " + minYear + " and " + maxYear);
		return false;
	}
	if (time) {
		var pos3 = dtStr.indexOf(dtCh2)
		var pos4 = dtStr.indexOf(dtCh2, pos3 + 1)
		var strHour = dtStr.substring(pos3 - 2, pos3)
		var strMinute = dtStr.substring(pos3 + 1, pos4)
		var strSecond = dtStr.substring(pos4 + 1)
	
		if (strHour.charAt(0) == "0" && strHour.length > 1){
			strHour = strHour.substring(1);
		}
		if (strMinute.charAt(0) == "0" && strMinute.length > 1){
			strMinute = strMinute.substring(1);
		}
		if (strSecond.charAt(0) == "0" && strSecond.length > 1){
			strSecond = strSecond.substring(1);
		}
	
		hour = parseInt(strHour);
		minute = parseInt(strMinute);
		second = parseInt(strSecond);
			
		if (pos3 == -1 || pos4 == -1){
			alert("The date format should be : dd/mm/yyyy 00:00:00");
			return false;
		}
		
		if(strHour.length<1 || !isInteger(strHour) || hour<1 || hour>24){
			alert("Please enter a valid hour !");
			return false;
		}
	
		if(strMinute.length < 1 || !isInteger(strMinute) || minute < 0 || minute > 60){
			alert("Please enter a valid minute !");
			return false;
		}
		
		if(strSecond.length < 1 || !isInteger(strSecond) || second < 0 || second > 60){
			alert("Please enter a valid second !");
			return false;
		}
	}
	return true;
}	

function disableForm() {
	var thisForm = document.forms["frmMorses"];
	var items = thisForm.elements;
	for (i=0; i<items.length; i++) {
		items(i).disabled = true;
	}
}
// Reset all fields in page
function doReset() {
	var thisForm = document.forms["frmMorses"]; 
	thisForm.reset();
}
// Navigation Page
function doNavigation() {
	var text = '';
	text += '<a href="javascript:goFirst();">First</a>&nbsp;|&nbsp;<a href="javascript:goPrev();">Previous</a>&nbsp;|&nbsp;<a href="javascript:goNext();">Next</a>&nbsp;|&nbsp;<a href="javascript:goLast();">Last</a>&nbsp;|&nbsp;&nbsp;&nbsp;';
	text += 'Page <input type="text" name="jumpToPage" class="FieldXShort" value="">&nbsp;<a href="javascript:goPage();" class="btnormal2">Go</a>';
	document.write(text);
}

function goFirst() {
//
}

function goLast() {
//
}
function goPrev() {
//
}
function goPage() {
	//
}
function goNext() {
	//
}
function doLookupPostcode() {
	//
}
function doLookupDate() {
	//
}

// Get data from cookie
function getCookie(cookieName) {
	var arg = cookieName + "=";
	var alen = arg.length;
	var clen = document.cookie.length;
	var i = 0;
	while (i < clen) {
		var j = i + alen;
		if (document.cookie.substring(i, j) == arg) {
			return getCookieVal(j);
		}
		i = document.cookie.indexOf(" ", i) + 1;
		if (i == 0) break; 
	}
	return null;
}

// Delete data from cookie
function deleteCookie(cookieName) {
	var expires = new Date ();
	if (getCookie(cookieName)) {
		document.cookie = cookieName + "=''" + "; expires=" + expires.toGMTString();
		
	}
}

function getCookieVal(offset) {
	var endstr = document.cookie.indexOf (";", offset);
	if (endstr == -1) {
		endstr = document.cookie.length;
	}
	return unescape(document.cookie.substring(offset, endstr));
}

// Validate currency fields
function formatCurrency(object) {
	num = object.value.toString().replace(/\$|\,/g,'');
	if (Trim(num).length == 0){
		return false;
	}
	if(isNaN(num)) {
		alert(object.value + " is an invalid currency format !");
		return false;
	} else if (object.value.length > 13) {
		alert("Currency value must be less than or equal to 99,999,999.00 !");
		return false;
	}
		
	sign = (num == (num = Math.abs(num)));
	num = Math.floor(num*100+0.50000000001);
	cents = num%100;
	num = Math.floor(num/100).toString();
	if(cents<10)
		cents = "0" + cents;
	for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++)
		num = num.substring(0,num.length-(4*i+3))+','+
		num.substring(num.length-(4*i+3));
	object.value = (num + '.' + cents);
	return true;
}

function formatInteger(object) {
	num = object.value.toString().replace(/\$|\,/g,'');
	if (Trim(num).length == 0){
		return false;
	}
	if (isNaN(num)) {
		alert(object.value + " is an invalid currency format !");
		return false;
	} else if (object.value.length > 13) {
		alert("Currency value must be less than or equal to 99,999,999.00 !");
		return false;
	}
	object.value = num.toCurrency( '', '', '', '.', 1, 0, '' );
	return true;
}
function convertStringToCurrency(object) {
	if (object == null) {
	 return 0;
	}
	var money = object.toString();
	while (money.indexOf(',') > 0) {
		money = money.replace(',','');
	}	
	return money; 
}
function convertStringToDate(object) {
	var dtStr = object.value;
	var daysInMonth = DaysArray(12);
	var pos1 = dtStr.indexOf(dtCh);
	var pos2 = dtStr.indexOf(dtCh, pos1 + 1);
	var strDay = dtStr.substring(0, pos1);
	var strMonth = dtStr.substring(pos1 + 1, pos2);
	var strYear = dtStr.substring(pos2 + 1, pos2 + 5);

	strYr = strYear;
	if (strDay.charAt(0) == "0" && strDay.length > 1){ 
		strDay = strDay.substring(1);
	}
	if (strMonth.charAt(0)=="0" && strMonth.length > 1){ 
		strMonth=strMonth.substring(1);
	}
	for (var i = 1; i <= 3; i++) {
		if (strYr.charAt(0)=="0" && strYr.length>1){ 
			strYr=strYr.substring(1);
		}
	}
	
	month = parseInt(strMonth);
	day = parseInt(strDay);
	year = parseInt(strYr);
	
	var date = new Date();
	date.setYear(year);
	date.setMonth(month);
	date.setDate(day);
	return date;
}