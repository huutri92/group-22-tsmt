<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>	
	<script language="javascript" src="../js/menu.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">	
	<title>Staff Search</title>
</head>

<body class="body">
<form name="frmMorses" method="post">
	<table class="Form" border="0" width="100%" height="100%" cellpadding="0" cellspacing="0">		
		<tr>
			<!-- Content Begin -->
			<!-- ------------------------------------------------------------------------------------------ -->
			<td valign="top" height="100%">
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
						<td colspan="2">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="4">
									<col width="150">
									<col width="5">
									<col width="*">
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>STAFF SEARCH</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormWithBorder">
								<colgroup>
									<col width="20%">
									<col width="30%">
									<col width="1px">
									<col width="24%">
									<col width="26%">
								</colgroup>
								<tr>
									<td class="Field">Staff ID</td>
									<td class="Field"><input class="FieldNormal" type="text" name="maidenName5" size="20"></td>
									<td>&nbsp;</td>
									<td class="Field">First Name</td>
									<td class="Field"><input class="FieldNormal" type="text" name="t23" size="20"></td>
								</tr>
								<tr>
									<td class="Field">Payroll Number</td>
									<td class="Field"><input class="FieldNormal" type="text" name="maidenName6" size="20"></td>
									<td>&nbsp;</td>
									<td class="Field">Surname</td>
									<td class="Field"><input class="FieldNormal" type="text" name="t22" size="20"></td>
								</tr>
								<tr>
									<td class="Field">National Insurance Number</td>
									<td class="Field"><input class="FieldNormal" type="text" name="surname" size="20"></td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Staff Type</td>
									<td class="Field">
										<select size="1" name="t2" class="FieldNormal">
											<option value="0"></option>
											<option value="Employees">Employees</option>
											<option value="Agents">Agents</option>
										</select>
									</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">User Group</td>
									<td class="Field">
										<select size="1" name="t1"class="FieldNormal">
											<option value="0"></option>
											<option value="0">User Group 1</option>
											<option value="0">User Group 2</option>
										</select></td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Status</td>
									<td class="Field">
										<select size="1" name="t3"class="FieldNormal">
											<option value="0"></option>
											<option value="Starter">Starter</option>
											<option value="Live">Live</option>
											<option value="Leaving">Leaving</option>
											<option value="Leaver">Leaver</option>
										</select>
									</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2">
							<a href="javascript:doSearch()" class="btnormal">Search</a>&nbsp;&nbsp;
							<a href="javascript:doClearSearch()" class="btnormal">Clear Search</a>&nbsp;
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</td>
			<!-- ------------------------------------------------------------------------------------------ -->
			<!-- Content End -->
		</tr>
	</table>
</form>
<script language="javascript">
	var frmMe = window.frmMorses;
	function doSearch() {
		window.location="PopResultSearchStaff.jsp";
	}
	function doClearSearch() {
		frmMe.reset();
	}
</script>
</body>
</html>