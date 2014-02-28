<html><head><title>AddressSearchWebService Web Service</title>
<style type="text/css">A:link { font-family: Arial, Helvetica, sans-serif; color:#663300; background-color : #FFFFFF;}A:active { font-family: Arial, Helvetica, sans-serif; color:#ff6600; background-color : #FFFFFF;}A:visited { font-family: Arial, Helvetica, sans-serif; color:#996633; background-color : #FFFFFF;}A.navigation:link{font-family: Arial, Helvetica, sans-serif;font-size:65%;color:#996633;background-color : #FFFFFF;}A.navigation:active{ font-family: Arial, Helvetica, sans-serif; font-size:65%; color:#996633; background-color : #FFFFFF;}A.navigation:visited{ font-family: Arial, Helvetica, sans-serif; font-size:65%; color:#996633; background-color : #FFFFFF;}BODY, P, LI, UL, OL { font-family: Arial, Helvetica, sans-serif; font-size:11pt; color:#000000; background-color : #FFFFFF;}H1 { font-family: Arial, Helvetica, sans-serif; font-size:170%; color:#336699; background-color : #FFFFFF; border : solid #CCCC99; border-width : 0px 0px 2px 0px; width : 100%;}H2 {font-family: Arial, Helvetica, sans-serif; font-size:130%; color:#336699; background-color : #FFFFFF; border : solid #cccc99; border-width : 0px 0px 2px 0px; width : 100%;}H3 {font-family: Arial, Helvetica, sans-serif;font-size:110%;color:#336699;background-color : #FFFFFF;width : 100%;}H4 {font-family: Arial, Helvetica, sans-serif;font-size:11pt;color:#000000;background-color : #FFFFFF;font-weight: bold;width : 100%;}P.indent {text-indent: 9%;}table.borders {border : 1% solid #BDB76B;}TR {text-align : left;vertical-align : top;}TH {font-family: Arial, Helvetica, sans-serif;font-size: 11pt;color:#000000;font-weight: bold;}TD {font-family: Arial, Helvetica, sans-serif;font-size: 11pt%;color:#000000;}.mediumtext {font-size:80%;}.smalltext {font-size:75%;}.tinytext {font-size:70%;}p.warning {color:#ff0000;display: block;font-family: Arial, Helvetica, Geneva, sans-serif;font-size: 95%;}p.doc {font-size: 95%;}pre {font-family: "Courier New", Courier, mono;font-size: 95%;}ul {list-style: outside;}ol {list-style: outside;}.GUITag {font-family: Arial, Helvetica, Geneva, sans-serif;font-size: 95%;font-weight: bold;font-style: normal;}</style>
</head><body>
<p>Click <a href="index.jsp">here</a> for a complete list of operations.</p>
<h2>GetFullAddress</h2>
<h2>Test</h2>
To test the operation using the HTTP GET protocol, click the 'Invoke' button.
<form target="_blank" action='index.jsp' method="GET">
<input type="hidden" name="invoke" value="getPicklistAddresses">
<table cellspacing="0" cellpadding="4" frame="box" bordercolor="#dcdcdc" rules="none" style="border-collapse: collapse;">
<tr>
<th class="frmHeader" BGCOLOR="#dcdcdc" style="border-right: 2px solid white;">Parameter</th>
<th class="frmHeader" BGCOLOR="#dcdcdc" style="border-right: 2px solid white;">Type</th>
<th class="frmHeader" BGCOLOR="#dcdcdc" >Value</th>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">staffID</td>
<td class="frmText" style="color: #000000; font-weight:normal;">string</td>
<td><input class="frmInput" type="text" size="50" name="staffID"></td>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">
houseNumberOrName</td>
<td class="frmText" style="color: #000000; font-weight:normal;">string</td>
<td><input class="frmInput" type="text" size="50" name="houseNumberOrName"></td>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">street</td>
<td class="frmText" style="color: #000000; font-weight:normal;">string</td>
<td><input class="frmInput" type="text" size="50" name="street"></td>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">locality</td>
<td class="frmText" style="color: #000000; font-weight:normal;">string</td>
<td><input class="frmInput" type="text" size="50" name="locality"></td>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">qasStatus</td>
<td class="frmText" style="color: #000000; font-weight:normal;">string</td>
<td><input class="frmInput" type="text" size="50" name="qasStatus"></td>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">address1</td>
<td class="frmText" style="color: #000000; font-weight:normal;">string</td>
<td><input class="frmInput" type="text" size="50" name="address1"></td>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">address2</td>
<td class="frmText" style="color: #000000; font-weight:normal;">string</td>
<td><input class="frmInput" type="text" size="50" name="address2"></td>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">town</td>
<td class="frmText" style="color: #000000; font-weight:normal;">string</td>
<td><input class="frmInput" type="text" size="50" name="town"></td>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">county</td>
<td class="frmText" style="color: #000000; font-weight:normal;">string</td>
<td><input class="frmInput" type="text" size="50" name="county"></td>
	</tr>
	<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">postcode</td>
<td class="frmText" style="color: #000000; font-weight:normal;">string</td>
<td><input class="frmInput" type="text" size="50" name="postcode"></td>
	</tr>
<tr><td></td><td></td>
<td align="right"><input type="submit" value="Invoke" class="button"></td>
</tr></table></form>
<h2>&nbsp;</h2>
<table cellspacing="0" cellpadding="4" frame="box" bordercolor="#dcdcdc" rules="none" style="border-collapse: collapse;" width=100%>
	<colgroup>
		<col width=10%>		
		<col width=10%>
		<col width=10%>
		<col width=10%>
		<col width=10%>
		<col width=10%>
		<col width=10%>
		<col width=10%>
		<col width=10%>
		<col width="10%">
	</colgroup>
<tr>
<th class="frmHeader" BGCOLOR="#dcdcdc" style="border-right: 2px solid white;">
organisation</th>
<th class="frmHeader" BGCOLOR="#dcdcdc" style="border-right: 2px solid white;">
houseNumber</th>
<th class="frmHeader" BGCOLOR="#dcdcdc"  style="border-right: 2px solid white;">houseName</th>
<th class="frmHeader" BGCOLOR="#dcdcdc"  style="border-right: 2px solid white;">flatNumber</th>
<th class="frmHeader" BGCOLOR="#dcdcdc"  style="border-right: 2px solid white;">street</th>
<th class="frmHeader" BGCOLOR="#dcdcdc"  style="border-right: 2px solid white;">locality</th>
<th class="frmHeader" BGCOLOR="#dcdcdc"  style="border-right: 2px solid white;">town</th>
<th class="frmHeader" BGCOLOR="#dcdcdc"  style="border-right: 2px solid white;">county</th>
<th class="frmHeader" BGCOLOR="#dcdcdc"  style="border-right: 2px solid white;">postCode</th>
<th class="frmHeader" BGCOLOR="#dcdcdc" style="border-right: 2px solid white;" >qasStatus</th>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">
&nbsp;</td>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td class="frmText" style="color: #000000; font-weight:normal;">&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr><td></td><td></td>
<td align="right">&nbsp;</td>
<td align="right">&nbsp;</td>
<td align="right">&nbsp;</td>
<td align="right">&nbsp;</td>
<td align="right">&nbsp;</td>
<td align="right">&nbsp;</td>
<td align="right">&nbsp;</td>
<td align="right">&nbsp;</td>
</tr></table>
</body></html>