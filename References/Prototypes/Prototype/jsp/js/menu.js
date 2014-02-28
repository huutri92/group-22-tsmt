// Write menu top
function menuTop(userName) {
	var text = '';
	text += '<table border="0" width="100%" height="35" cellpadding="0" cellspacing="0" class="FormMenu">';
	text += '	<tr>';
	text += '		<td background="../images/morsesclub.gif" width="400" height="35" valign="top" align="right">&nbsp;</td>';
	text += '		<td align="right" valign="top">Welcome, ' + userName + '<br>[<a href="../Index.jsp">Logout</a>]</td>';
	text += '	</tr>';
	text += '</table>';
	document.write(text);
}
// Write menu top for page index
function menuTopIndex(userName) {
	var text = '';
	text += '<table border="0" width="100%" height="35" cellpadding="0" cellspacing="0" class="FormMenu">';
	text += '	<tr>';
	text += '		<td background="images/morsesclub.gif" width="400" height="35" valign="top" align="right">&nbsp;</td>';
	text += '		<td align="right" valign="top">Welcome, ' + userName + '<br>[<a href="Index.jsp">Logout</a>]</td>';
	text += '	</tr>';
	text += '</table>';
	document.write(text);
}
// Write logo Morses
function menuLogo() {
	var text = '';
	text += '	<colgroup>';
	text += '		<col width="5">';
	text += '		<col width="100%">';
	text += '	</colgroup>';
	text += '	<tr align=center height=45 valign="middle">';
	text += '		<td colspan="2" nowrap><img border="0" src="../images/LSB.gif"></td>';
	text += '	</tr>';
	text += '	<tr align=center>';
	text += '		<td>&nbsp;</td>';
	text += '		<td><img border="0" src="../images/CAP.gif"></td>';
	text += '	</tr>';
	text += '	<tr>';
	text += '		<td colspan="2">&nbsp;</td>';
	text += '	</tr>';	
	return text;
}
// Write Menu List
function menuList() {
	var text = '';
	text += '<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormMenu">';
	text += '	<colgroup>';
	text += '		<col width="5">';
	text += '		<col width="100%">';
	text += '	</colgroup>';
	text += '	<tr align="center" height="45" valign="middle">';
	text += '		<td colspan="2" nowrap><img border="0" src="images/LSB.gif"></td>';
	text += '	</tr>';
	text += '	<tr align=center>';
	text += '		<td colspan="2"><img border="0" src="images/CAP.gif"></td>';
	text += '	</tr>';
	text += '	<tr>';
	text += '		<td colspan="2">&nbsp;</td>';
	text += '	</tr>';	
	text += '	<tr >';
	text += '		<th>&nbsp;</th>';
	text += '		<th align="left"><b><a href="Customer/SearchCustomer.jsp"class="menu">Customer</a></th>';
	text += '	</tr>';
	text += '	<tr >';
	text += '		<th>&nbsp;</th>';
	text += '		<th align="left"><a href="Staff/SearchStaff.jsp"class="menu">Staff</a></th>';
	text += '	</tr>';
	text += '	<tr >';
	text += '		<th>&nbsp;</th>';
	text += '		<th align="left"><a href="Product/ProductList.jsp"class="menu">Product</a></th>';
	text += '	</tr >';
	text += '	<tr >';
	text += '		<th>&nbsp;</th>';
	text += '		<th align="left"><a href="Finance/CreditControlSchemes.jsp"class="menu">Finance</a></th>';
	text += '	</tr >';	
	text += '	<tr >';
	text += '		<th>&nbsp;</th>';
	text += '		<th align="left"><a href="Organisation/SearchBusinessUnit.jsp"class="menu">Organization</a></th>';
	text += '	</tr>';
	text += '	<tr >';
	text += '		<th>&nbsp;</th>';
	text += '		<th align="left"><a href="Security/WeekNumbers.jsp"class="menu">Business Administration</a></th>';
	text += '	</tr>';
	text += '</table>';
	document.write(text);
}
// Write Menu Organization
function menuOrganization(num) {
	var text = '';
	text += '<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormMenu">';
	text += menuLogo();
	text += customer(0);
	text += staff(0);
	text += product(0);
	text += finance(0);
	text += organization(num);
	text += systemAdmin(0);
	text += '</table>';
	document.write(text);
}
// Write Menu Staff
function menuStaff(num) {
	var text = '';
	text += '<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormMenu">';
	text += menuLogo();
	text += customer(0);
	text += staff(num);
	text += product(0);
	text += finance(0);
	text += organization(0);
	text += systemAdmin(0);
	text += '</table>';
	document.write(text);
}
// Write Menu Customer
function menuCustomer(num) {
	var text = '';
	text += '<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormMenu">';
	text += menuLogo();
	text += customer(num);
	text += staff(0);
	text += product(0);
	text += finance(0);
	text += organization(0);
	text += systemAdmin(0);
	text += '</table>';
	document.write(text);
}
function menuProduct(num) {
	var text = '';
	text += '<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormMenu">';
	text += menuLogo();
	text += customer(0);
	text += staff(0);
	text += product(num);
	text += finance(0);
	text += organization(0);
	text += systemAdmin(0);
	text += '</table>';
	document.write(text);
}
function menuFinance(num) {
	var text = '';
	text += '<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormMenu">';
	text += menuLogo();
	text += customer(0);
	text += staff(0);
	text += product(0);
	text += finance(num);
	text += organization(0);
	text += systemAdmin(0);
	text += '</table>';
	document.write(text);
}
function menuSystemAdmin(num) {
	var text = '';
	text += '<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormMenu">';
	text += menuLogo();
	text += customer(0);
	text += staff(0);
	text += product(0);
	text += finance(0);
	text += organization(0);
	text += systemAdmin(num);
	text += '</table>';
	document.write(text);
}
// Menu for Organization
function organization(num) {
	var text = '';
	text += '	<tr >';
	text += '		<th align="left">&nbsp;</th>';
	text += '		<th align="left"><a href="../Organisation/SearchBusinessUnit.jsp" class="menu">Organization</a></th>';
	text += '	</tr>';
	if (num == 1) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF" ><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Organisation/SearchBusinessUnit.jsp" class="menu">Search Business Unit</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Organisation/CreateBusinessUnit.jsp" class="menu">Setup Business Unit</a></td>';
		text += '	</tr>';
	} else if (num == 2) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Organisation/SearchBusinessUnit.jsp" class="menu">Search Business Unit</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF" ><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Organisation/CreateBusinessUnit.jsp" class="menu">Setup Business Unit</a></td>';
		text += '	</tr>';
	} else if (num == 3) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Organisation/SearchBusinessUnit.jsp" class="menu">Search Business Unit</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Organisation/CreateBusinessUnit.jsp" class="menu">Setup Business Unit</a></td>';
		text += '	</tr>';
	}
	return text;
}
// Menu for Staff
function staff(num) {
	var text = '';
	text += '	<tr >';
	text += '		<th align="left">&nbsp;</th>';
	text += '		<th align="left"><a href="../Staff/SearchStaff.jsp" class="menu">Staff</a></th>';
	text += '	</tr>';
	if (num == 1) {		
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF" ><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Staff/SearchStaff.jsp" class="menu">Search Staff</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Staff/CreateStaff.jsp" class="menu">Setup Staff</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Staff/CommSchemes.jsp" class="menu">Commission Schemes</a></td>';
		text += '	</tr>';			
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Staff/CreateCommissionScheme.jsp" class="menu">Setup Commission</a></td>';
		text += '	</tr>';
	} else if (num == 2) {	
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Staff/SearchStaff.jsp" class="menu">Search Staff</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF" ><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Staff/CreateStaff.jsp" class="menu">Setup Staff</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Staff/CommSchemes.jsp" class="menu">Commission Schemes</a></td>';
		text += '	</tr>';			
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Staff/CreateCommissionScheme.jsp" class="menu">Setup Commission</a></td>';
		text += '	</tr>';
	} else if (num == 3) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Staff/SearchStaff.jsp" class="menu">Search Staff</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Staff/CreateStaff.jsp" class="menu">Setup Staff</a></td>';
		text += '	</tr>';					
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF" ><img src="images/spacer.gif" border="0" height="1" width="10" class="menu"><a href="../Staff/CommSchemes.jsp" class="menu">Commission Schemes</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Staff/CreateCommissionScheme.jsp" class="menu">Setup Commission</a></td>';
		text += '	</tr>';
	} else if (num == 4) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Staff/SearchStaff.jsp" class="menu">Search Staff</a></td>';
		text += '	</tr>';			
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Staff/CreateStaff.jsp" class="menu">Setup Staff</a></td>';
		text += '	</tr>';			
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Staff/CommSchemes.jsp" class="menu">Commission Schemes</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF" ><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Staff/CreateCommissionScheme.jsp" class="menu">Setup Commission</a></td>';
		text += '	</tr>';
	}
	return text;
}
// Menu for Customer
function customer(num) {
	var text = '';
	text += '	<tr >';
	text += '		<th align="left">&nbsp;</th>';
	text += '		<th align="left"><a href="../Customer/SearchCustomer.jsp" class="menu">Customer</a></th>';
	text += '	</tr>';
	if (num == 1) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF" ><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Customer/SearchCustomer.jsp"class="menu">Search Customer</a></td>';
		text += '	</tr>';		
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Customer/SetupCustomer.jsp" class="menu">Setup Customer</td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Customer/LetterManagement.jsp" class="menu">Letter Management</a></td>';
		text += '	</tr>';
	} else if (num == 2) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Customer/SearchCustomer.jsp"class="menu">Search Customer</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF" ><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Customer/SetupCustomer.jsp" class="menu">Setup Customer</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Customer/LetterManagement.jsp" class="menu">Letter Management</a></td>';
		text += '	</tr>';
	} else if (num == 3) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Customer/SearchCustomer.jsp"class="menu">Search Customer</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td ><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Customer/SetupCustomer.jsp" class="menu">Setup Customer</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF" ><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Customer/LetterManagement.jsp" class="menu">Letter Management</a></td>';
		text += '	</tr>';
	}
	return text;
}
// Menu for Product
function product(num) {
	var text = '';
	text += '	<tr >';
	text += '		<th align="left">&nbsp;</th>';
	text += '		<th align="left"><a href="../Product/ProductList.jsp" class="menu">Product</a></th>';
	text += '	</tr>';
	if (num == 1) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF" ><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Product/ProductList.jsp" class="menu">List Products</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Product/SetupProduct.jsp" class="menu">Setup Product</a></td>';
		text += '	</tr>';
	} else 	if (num == 2) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Product/ProductList.jsp" class="menu">List Products</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF" ><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Product/SetupProduct.jsp" class="menu">Setup Product</a></td>';
		text += '	</tr>';
	}
	return text;
}
// Menu for Finance
function finance(num) {
	var text = '';
	text += '	<tr >';
	text += '		<th align="left">&nbsp;</th>';
	text += '		<th align="left"><a href="../Finance/CreditControlSchemes.jsp" class="menu">Finance</a></th>';
	text += '	</tr>';
	if (num == 1) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF" ><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Finance/CreditControlSchemes.jsp" class="menu">Credit Control Schemes</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Finance/CreateCreditControlScheme.jsp" class="menu">Setup Scheme</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Finance/ExportCommission.jsp" class="menu">Export Commissions</a></td>';
		text += '	</tr>';
	} else if (num == 2) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Finance/CreditControlSchemes.jsp" class="menu">Credit Control Schemes</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF" ><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Finance/CreateCreditControlScheme.jsp" class="menu">Setup Scheme</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Finance/ExportCommission.jsp" class="menu">Export Commissions</a></td>';
		text += '	</tr>';
	} else if (num == 3) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Finance/CreditControlSchemes.jsp" class="menu">Credit Control Schemes</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Finance/CreateCreditControlScheme.jsp" class="menu">Setup Scheme</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF"><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Finance/ExportCommission.jsp" class="menu">Export Commissions</a></td>';
		text += '	</tr>';
	}
	return text;
}
// Menu for System Admin
function systemAdmin(num) {
	var text = '';
	text += '	<tr>';
	text += '		<th align="left">&nbsp;</th>';
	text += '		<th align="left"><a href="../Security/WeekNumbers.jsp" class="menu">Business Administration</a></th>';
	text += '	</tr>';
	if (num == 1) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF" ><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/WeekNumbers.jsp" class="menu">Week Numbering</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Organisation/BusinessStream.jsp" class="menu">Manage Business Streams</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ManageReasonCodes.jsp" class="menu">Manage Reason Codes</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ManageSystemVariables.jsp" class="menu">Manage System Variables</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ListAllUserGroup.jsp" class="menu">Manage User Groups</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/LetterManagement.jsp" class="menu">Letter Management</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/LetterQueueManagement.jsp" class="menu">Letter Queue Management</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/UserPasswordManagement.jsp" class="menu">User Password Management</a></td>';
		text += '	</tr>';
	} else if (num == 2) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/WeekNumbers.jsp" class="menu">Week Numbering</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF"><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Organisation/BusinessStream.jsp" class="menu">Manage Business Streams</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ManageReasonCodes.jsp" class="menu">Manage Reason Codes</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ManageSystemVariables.jsp" class="menu">Manage System Varables</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ListAllUserGroup.jsp" class="menu">Manage User Groups</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/LetterManagement.jsp" class="menu">Letter Management</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/LetterQueueManagement.jsp" class="menu">Letter Queue Management</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/UserPasswordManagement.jsp" class="menu">User Password Management</a></td>';
		text += '	</tr>';
	} else if (num == 3) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/WeekNumbers.jsp" class="menu">Week Numbering</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Organisation/BusinessStream.jsp" class="menu">Manage Business Streams</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF"><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ManageReasonCodes.jsp" class="menu">Manage Reason Codes</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ManageSystemVariables.jsp" class="menu">Manage System Variables</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ListAllUserGroup.jsp" class="menu">Manage User Groups</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/LetterManagement.jsp" class="menu">Letter Management</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/LetterQueueManagement.jsp" class="menu">Letter Queue Management</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/UserPasswordManagement.jsp" class="menu">User Password Management</a></td>';
		text += '	</tr>';
	} else if (num == 4) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/WeekNumbers.jsp" class="menu">Week Numbering</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Organisation/BusinessStream.jsp" class="menu">Manage Business Streams</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ManageReasonCodes.jsp" class="menu">Manage Reason Codes</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF"><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ManageSystemVariables.jsp" class="menu">Manage System Variables</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ListAllUserGroup.jsp" class="menu">Manage User Groups</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/LetterManagement.jsp" class="menu">Letter Management</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/LetterQueueManagement.jsp" class="menu">Letter Queue Management</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/UserPasswordManagement.jsp" class="menu">User Password Management</a></td>';
		text += '	</tr>';
	} else if (num == 5) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/WeekNumbers.jsp" class="menu">Week Numbering</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Organisation/BusinessStream.jsp" class="menu">Manage Business Streams</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ManageReasonCodes.jsp" class="menu">Manage Reason Codes</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ManageSystemVariables.jsp" class="menu">Manage System Variables</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF"><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ListAllUserGroup.jsp" class="menu">Manage User Groups</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/LetterManagement.jsp" class="menu">Letter Management</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/LetterQueueManagement.jsp" class="menu">Letter Queue Management</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/UserPasswordManagement.jsp" class="menu">User Password Management</a></td>';
		text += '	</tr>';
	} else if (num == 6) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/WeekNumbers.jsp" class="menu">Week Numbering</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Organisation/BusinessStream.jsp" class="menu">Manage Business Streams</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ManageReasonCodes.jsp" class="menu">Manage Reason Codes</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ManageSystemVariables.jsp" class="menu">Manage System Variables</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ListAllUserGroup.jsp" class="menu">Manage User Groups</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF"><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/LetterManagement.jsp" class="menu">Letter Management</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/LetterQueueManagement.jsp" class="menu">Letter Queue Management</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/UserPasswordManagement.jsp" class="menu">User Password Management</a></td>';
		text += '	</tr>';
	} else if (num == 7) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/WeekNumbers.jsp" class="menu">Week Numbering</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Organisation/BusinessStream.jsp" class="menu">Manage Business Streams</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ManageReasonCodes.jsp" class="menu">Manage Reason Codes</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ManageSystemVariables.jsp" class="menu">Manage System Variables</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ListAllUserGroup.jsp" class="menu">Manage User Groups</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/LetterManagement.jsp" class="menu">Letter Management</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF"><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/LetterQueueManagement.jsp" class="menu">Letter Queue Management</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/UserPasswordManagement.jsp" class="menu">User Password Management</a></td>';
		text += '	</tr>';
	} else if (num == 8) {
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/WeekNumbers.jsp" class="menu">Week Numbering</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Organisation/BusinessStream.jsp" class="menu">Manage Business Streams</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ManageReasonCodes.jsp" class="menu">Manage Reason Codes</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ManageSystemVariables.jsp" class="menu">Manage System Variables</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/ListAllUserGroup.jsp" class="menu">Manage User Groups</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/LetterManagement.jsp" class="menu">Letter Management</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/LetterQueueManagement.jsp" class="menu">Letter Queue Management</a></td>';
		text += '	</tr>';
		text += '	<tr >';
		text += '		<td>&nbsp;</td>';
		text += '		<td bgcolor="#FFFFFF"><img src="images/spacer.gif" border="0" height="1" width="10"><a href="../Security/UserPasswordManagement.jsp" class="menu">User Password Management</a></td>';
		text += '	</tr>';
	}
	return text;
}
