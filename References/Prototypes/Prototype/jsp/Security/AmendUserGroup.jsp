<html>
<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/menu.js"></script>
	<script language="javascript" src="../js/common.js"></script>
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<title>Amend User Group</title>
</head>
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
			<td valign="top" rowspan="2" bgcolor="#E0E9F2" height="100%">
				<script language="javascript">
				<!--
					menuSystemAdmin(5);
				//-->
				</script> </td> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<!-- Left Menu End --> 
			<!-- Top Begin --> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<td valign="top" bgcolor="#E0E9F2" height="35" align="right"> 
				<script language="javascript">
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
			<td valign="top" height="600">
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
					<!-- USER GROUP INFO --> 
					<tr> 
						<td>&nbsp;</td> 
						<td colspan="2">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="5">
									<col width="150">
									<col width="5">
									<col width="5">
									
									<col width="5">
									<col width="150">
									<col width="5">
									<col width="5">

									<col width="5">
									<col width="150">
									<col width="5">

									<col width="*">
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>User Group</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" class="selected" nowrap><a href="ScreenPermission.jsp"class="buttontop">Screen Permission</a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>

									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="FieldPermission.jsp"class="buttontop">Field Permission</a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>

									<td>&nbsp;</td>
								</tr>
							</table></td> 
						<td>&nbsp;</td> 
					</tr> 
					<tr> 
						<td>&nbsp;</td> 
						<td colspan="2"> 
							<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormWithBorder"> 
								<colgroup> 
									<col width="30%"> 
									<col width="20%"> 
									<col width="20%"> 
									<col width="30%"> 
								</colgroup> 
								<tr> 
									<td height="22" class="Field">Group Name</td> 
									<td class="Field"><input type="text" name="address1" size="20" class="FieldNormal" value="G1-Manager"> </td> 
									<td class="Field">&nbsp;</td> 
									<td class="Field">
										&nbsp;</td> 
								</tr> 
								<tr> 
									<td class="Field">Staff Type</td> 
									<td class="Field">
										<select size="1" name="staffType2" class="FieldNormal">
											<option value=""></option>
											<option value="" selected>Collector (Employed)</option>
											<option value="">Agents (Self Employed)</option>
											<option value="">Other Salesforce</option>
											<option value="">Excutive</option>
											<option value="">Admin</option>
										</select>
									</td> 
									<td class="Field">&nbsp;</td> 
									<td class="Field">&nbsp;</td> 
								</tr> 
								<tr> 
									<td height="3" class="Field" colspan="4"></td> 
								</tr> 
								<tr> 
									<td height="22"class="Field">&nbsp;</td> 
									<td class="Field">Minimum Credit Multiplier</td> 
									<td class="Field">Maximum Credit Multiplier</td> 
									<td class="Field">&nbsp;</td> 
								</tr> 
								<tr> 
									<td height="22"class="Field">New Customer</td> 
									<td class="Field"><input type="text" name="address1" size="20" class="FieldShort" value="5"></td> 
									<td class="Field"><input type="text" name="address2" size="20" class="FieldShort" value="7"></td> 
									<td class="Field">&nbsp;</td> 
								</tr> 
								<tr> 
									<td height="22"class="Field">Existing Customer</td> 
									<td class="Field"><input type="text" name="address1" size="20" class="FieldShort" value="5"></td> 
									<td class="Field"><input type="text" name="address3" size="20" class="FieldShort" value="7"></td> 
									<td class="Field">&nbsp;</td> 
								</tr> 
							</table>
						</td> 
						<td>&nbsp;</td> 
					</tr> 
					<tr class=btnormal> 
						<td>&nbsp;</td> 
						<td colspan="2">
							<a href="javascript:doSave();" class="btnormal">Save</a>&nbsp;&nbsp;
							<!-- <a class=btnormal href="ListAllUserGroup.jsp">Cancel</a> -->
						</td>
						<td>&nbsp;</td> 
					</tr> 

					<!-- STAFF LIST -->
					<tr class=btnormal> 
						<td>&nbsp;</td> 
						<td colspan="2" valign=bottom><b>USER GROUP LIST</b></td> 
						<td>&nbsp;</td> 
					</tr> 
					<tr> 
						<td>&nbsp;</td> 
						<td colspan="2">
							<div id="tbl-container" style="height:250px; width:100%;">
								<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder"> 
									<colgroup> 
										<col width="2%"> 
										<col width="29%"> 
										<col width="16%"> 
										<col width="17%"> 
										<col width="14%"> 
										<col width="16%"> 
									</colgroup> 
									<THEAD>
									<tr class="Section"> 
										<th class="Title" align="center"> <input type="checkbox" class="checkbox"name="chkAll"> </th> 
										<th class="Title" align="left">Full Name</th> 
										<th class="Title" align="left">Staff Type</th> 
										<th class="Title" align="left">Status</th> 
										<th class="Title" align="left">Start Date</th> 
										<th class="Title" align="left">End Date</th> 
									</tr> 
									</THEAD>
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Live</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Leaving</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Leaving</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Leaving</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr>
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Leaving</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Leaving</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr>
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Leaving</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Live</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr>
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Live</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Live</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr>
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Live</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Live</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr>
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Live</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Leaving</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr>
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Live</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Live</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr>
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Live</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Leaving</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr>
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Live</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Live</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr>
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Live</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Live</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr>
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Live</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Live</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr>
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Live</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Live</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr>
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Live</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Leaving</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr>
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Live</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Live</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr>
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Live</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Live</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr>
									<tr> 
										<td class="Field"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field">Mr. Full Name</td> 
										<td class="Field">Collector</td> 
										<td class="Field">Live</td> 
										<td class="Field">11/01/2005</td>
										<td class="Field">01/11/2008</td>
									</tr> 
									<tr> 
										<td class="Field2"><input type="checkbox" class="checkbox" value=""></td> 
										<td class="Field2">Mr. Full Name</td> 
										<td class="Field2">Collector</td> 
										<td class="Field2">Live</td> 
										<td class="Field2">11/01/2005</td>
										<td class="Field2">01/11/2008</td>
									</tr>
								</table> 
							</div> 
						</td> 
						<td>&nbsp;</td> 
					</tr> 
					<tr class="btnormal"> 
						<td>&nbsp;</td> 
						<td colspan="2"> 
							<a href="javascript:doDelete();" class="btnormal">Delete User</a>&nbsp;&nbsp;
							<a href="javascript:openSearchStaff();" class="btnormal">Add User</a>&nbsp;
						</td> 
						<td>&nbsp;</td> 
					</tr> 
				</table></td> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<!-- Content End --> 
		</tr> 
	</table> 
</form> 
<script language="javascript">
	function openSearchStaff() {
		var width = 600;
		var height = 300;
		var newWin = window.open("../Staff/PopSearchStaff.jsp", "Create", centerWindow(width, height));
	}

	function openViewUser() {
		var width = 600;
		var height = 160;
		var newWin = window.open("../Security/ViewUser.jsp", "Create", centerWindow(width, height));
	}

	function openAmendUser() {
		var width = 600;
		var height = 200;
		var newWin = window.open("../Security/AmendUser.jsp", "Create", centerWindow(width, height));
	}

	function doSave() {
		var reply = confirm("Do you wish to process?");
		if (reply) {
		}
		return;
	}

	function doDelete() {
		var reply = confirm("Do you wish to process?");
		if (reply) {
		}
		return;
	}
</script>
</body>
</html>
