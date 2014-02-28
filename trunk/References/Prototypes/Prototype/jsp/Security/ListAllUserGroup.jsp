<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script language="javascript" src="../js/common.js"></script>
<script language="javascript" src="../js/menu.js"></script>
<link type="text/css" rel="stylesheet" href="../style/common.css">
<title>Manage User Groups</title>
</head>
<script language="JavaScript">
function checkClearAll()
{
	if (document.forms[0].chkAll.checked == 1) 	{
		for (var i=0;i<document.forms[0].elements.length;i++) {
			if (!document.forms[0].elements[i].disabled) {
				var e = document.forms[0].elements[i];
				e.checked = 1;
			}
		}
	} else {
		for (var i=0;i<document.forms[0].elements.length;i++) {
			var e = document.forms[0].elements[i];
			e.checked = 0;
		}
	}
}
</script>
<body class="body"> 
<form name="frmMorses" method="post"> 
	<table class="Form" border="0" width="100%" height="100%" cellpadding="0" cellspacing="0"> 
		<colgroup> 
		<col width="154"> 
		<col width="850"> 
		</colgroup> 
		<tr> 
			<!-- Left Menu Begin --> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<td valign="top" rowspan="2" bgcolor="#E0E9F2" height="100%"> <script language="javascript">
					<!--
					menuSystemAdmin(5);
					//-->
				</script> </td> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<!-- Left Menu End --> 
			<!-- Top Begin --> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<td valign="top" bgcolor="#E0E9F2" height="35" align="right"> <script language="javascript">
					<!--
					menuTop('HaiVH');
					//-->
				</script> </td> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<!-- Top End --> 
		</tr> 
		<tr> 
			<!-- Content Begin --> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<td valign="top" height="550">
				<table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form"> 
					<colgroup> 
					<col width="5"> 
					<col width="240"> 
					<col width="600"> 
					<col width="5"> 
					</colgroup> 
					<tr> 
						<td height="25" valign="top"><img src="../images/corner.gif" border="0" width="5" height="5"></td> 
						<td height="25">&nbsp;</td> 
						<td height="25" align="right"></td> 
						<td height="25">&nbsp;</td> 
					</tr> 
					<tr> 
						<td>&nbsp;</td> 
						<td colspan="2"> <table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop"> 
								<colgroup> 
								<col width="5"> 
								<col width="150"> 
								<col width="5"> 
								<col width="*"> 
								</colgroup> 
								<tr> 
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td> 
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Manage User Groups</b></td> 
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td> 
									<td>&nbsp;</td> 
								</tr> 
							</table></td> 
						<td>&nbsp;</td> 
					</tr> 
					<tr> 
						<td>&nbsp;</td> 
						<td colspan="2"> <table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormWithBorder"> 
								<colgroup> 
								<col width="20%"> 
								</colgroup> 
								<tr> 
									<td> 
										<div id="tbl-container" style ="width: 100%; height: 300px;">
											<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1"> 
												<colgroup> 
													<col width="2%"> 
													<col width="30%"> 
													<col width="20%"> 
													<col width="12%"> 
													<col width="12%"> 
													<col width="12%"> 
													<col width="12%"> 
												</colgroup> 
												<THEAD>
												<tr class="Section"> 
													<th class="Title" rowspan="2" align="center"><input type="checkbox" name="chkAll" class="checkbox" onclick="checkClearAll()" value="ON"> </th> 
													<th class="Title" rowspan="2" align="left"><a href="ListAllUserGroup.jsp" title="Sort by User Group Name" class="title"><img border="0" src="../images/down1.gif"> <b>User Group Name</b></a></th> 
													<th class="Title" rowspan="2" align="left">Staff Type</th>
													<th class="Title" colspan="2">Minimum Credit Multiplier</th>
													<th class="Title" colspan="2">Maximum Credit Multiplier</th>
												</tr>
												<tr class="Section"> 
													<th class="Title">New Customer</th>
													<th class="Title">Existing Customer</th>
													<th class="Title">New Customer</th>
													<th class="Title">Existing Customer</th>
												</tr>
												</THEAD>
												<tr> 
													<td class="Field" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
													<td class="Field"><a href="AmendUserGroup.jsp">FIST</a></td> 
													<td class="Field">Collector (Employed)</td> 
													<td class="Field">5</td> 
													<td class="Field">6</td> 
													<td class="Field">7</td> 
													<td class="Field">8</td> 
												</tr> 
												<tr> 
													<td class="Field2" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
													<td class="Field2"><a href="AmendUserGroup.jsp">TMG</a></td> 
													<td class="Field2">Agents (Self Employed)</td> 
													<td class="Field2">5</td> 
													<td class="Field2">6</td> 
													<td class="Field2">7</td> 
													<td class="Field2">8</td> 
												</tr> 
												<tr> 
													<td class="Field" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
													<td class="Field"><a href="AmendUserGroup.jsp">SEPG</a></td> 
													<td class="Field">Other Salesforce</td> 
													<td class="Field">5</td> 
													<td class="Field">6</td> 
													<td class="Field">7</td> 
													<td class="Field">8</td> 
												</tr> 
												<tr> 
													<td class="Field2" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
													<td class="Field2"><a href="AmendUserGroup.jsp">FWB</a></td> 
													<td class="Field2">Excutive</td> 
													<td class="Field2">5</td> 
													<td class="Field2">6</td> 
													<td class="Field2">7</td> 
													<td class="Field2">8</td> 
												</tr> 
												<tr> 
													<td class="Field" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
													<td class="Field"><a href="AmendUserGroup.jsp">G1-Manager</a></td> 
													<td class="Field">Admin</td> 
													<td class="Field">5</td> 
													<td class="Field">6</td> 
													<td class="Field">7</td> 
													<td class="Field">8</td> 
												</tr> 
												<tr> 
													<td class="Field2" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
													<td class="Field2"><a href="AmendUserGroup.jsp">G2-Manager</a></td> 
													<td class="Field2">Collector (Employed)</td> 
													<td class="Field2">5</td> 
													<td class="Field2">6</td> 
													<td class="Field2">7</td> 
													<td class="Field2">8</td> 
												</tr> 
												<tr> 
													<td class="Field" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
													<td class="Field"><a href="AmendUserGroup.jsp">G3-Manager</a></td> 
													<td class="Field">Agents (Self Employed)</td> 
													<td class="Field">5</td> 
													<td class="Field">6</td> 
													<td class="Field">7</td> 
													<td class="Field">8</td> 
												</tr> 
												<tr> 
													<td class="Field2" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
													<td class="Field2"><a href="AmendUserGroup.jsp">G5-Manager</a></td> 
													<td class="Field2">Other Salesforce</td> 
													<td class="Field2">5</td> 
													<td class="Field2">6</td> 
													<td class="Field2">7</td> 
													<td class="Field2">8</td> 
												</tr> 
												<tr> 
													<td class="Field" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
													<td class="Field"><a href="AmendUserGroup.jsp">G7-Manager</a></td> 
													<td class="Field">Excutive</td> 
													<td class="Field">5</td> 
													<td class="Field">6</td> 
													<td class="Field">7</td> 
													<td class="Field">8</td> 
												</tr> 
												<tr> 
													<td class="Field2" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
													<td class="Field2"><a href="AmendUserGroup.jsp">G8-Manager</a></td> 
													<td class="Field2">Admin</td> 
													<td class="Field2">5</td> 
													<td class="Field2">6</td> 
													<td class="Field2">7</td> 
													<td class="Field2">8</td> 
												</tr> 
												<tr> 
													<td class="Field" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
													<td class="Field"><a href="AmendUserGroup.jsp">G1-Manager</a></td> 
													<td class="Field">Collector (Employed)</td> 
													<td class="Field">5</td> 
													<td class="Field">6</td> 
													<td class="Field">7</td> 
													<td class="Field">8</td> 
												</tr> 
												<tr> 
													<td class="Field2" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
													<td class="Field2"><a href="AmendUserGroup.jsp">G2-Manager</a></td> 
													<td class="Field2">Agents (Self Employed)</td> 
													<td class="Field2">5</td> 
													<td class="Field2">6</td> 
													<td class="Field2">7</td> 
													<td class="Field2">8</td> 
												</tr> 
												<tr> 
													<td class="Field" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
													<td class="Field"><a href="AmendUserGroup.jsp">G3-Manager</a></td> 
													<td class="Field">Other Salesforce</td> 
													<td class="Field">5</td> 
													<td class="Field">6</td> 
													<td class="Field">7</td> 
													<td class="Field">8</td> 
												</tr> 
												<tr> 
													<td class="Field2" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
													<td class="Field2"><a href="AmendUserGroup.jsp">G5-Manager</a></td> 
													<td class="Field2">Excutive</td> 
													<td class="Field2">5</td> 
													<td class="Field2">6</td> 
													<td class="Field2">7</td> 
													<td class="Field2">8</td> 
												</tr> 
												<tr> 
													<td class="Field" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
													<td class="Field"><a href="AmendUserGroup.jsp">G7-Manager</a></td> 
													<td class="Field">Admin</td> 
													<td class="Field">5</td> 
													<td class="Field">6</td> 
													<td class="Field">7</td> 
													<td class="Field">8</td> 
												</tr> 
												<tr> 
													<td class="Field2" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
													<td class="Field2"><a href="AmendUserGroup.jsp">G8-Manager</a></td> 
													<td class="Field2">Collector (Employed)</td> 
													<td class="Field2">5</td> 
													<td class="Field2">6</td> 
													<td class="Field2">7</td> 
													<td class="Field2">8</td> 
												</tr> 
											</table>
										</div>
									</td> 
								</tr> 
							</table>
						</td> 
						<td>&nbsp;</td> 
					</tr> 
					<tr class="btnormal"> 
						<td>&nbsp;</td> 
						<td>
							<a class=btnormal href="javascript:doDelete();">Delete</a>&nbsp;&nbsp;
							<!-- <a class=btnormal href="AmendUserGroup.jsp">Amend</a>&nbsp;&nbsp; -->
							<a class=btnormal href="javascript:doAddNew();">Add New</a>
						</td>
						<td>&nbsp;</td> 
					</tr> 
				</table></td> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<!-- Content End --> 
		</tr> 
	</table> 
</form> 
<script language="JavaScript">
<!--
	function doAddNew() {
		var width = 600;
		var height = 230;
		var request = "CreateUserGroup.jsp";
		var newWin = window.open(request, "CreateUserGroup", centerWindow(width, height));
		newWin.opener = self;
		return;
	}
	function doDelete() {
		var reply = confirm("Do you wish to process?");
		if (reply) {
		}
		return;
	}
//-->
</script>
</body>
</html>
