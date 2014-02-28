<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>	
	<script language="javascript" src="../js/menu.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">	
	<title>Search Staff</title>
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
					menuStaff(1);
					//-->
				</script>
			</td>
			<!-- ------------------------------------------------------------------------------------------ -->
			<!-- Left Menu End -->

			<!-- Top Begin -->
			<!-- ------------------------------------------------------------------------------------------ -->
			<td valign="top" bgcolor="#E0E9F2" height="35" align="right">
				<script language="javascript">
					<!--
					menuTop('HaiVH');
					//-->
				</script>
			</td>
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
						<col width="*">
						<col width="5">
					</colgroup>
					<tr>
						<td height="25" valign="top"><img src="../images/corner.gif" border="0" width="5" height="5"></td>
						<td height="25"><!-- Error Message -->&nbsp;</td>
						<td height="25">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="5">
									<col width="150">
									<col width="5">
									<col width="*">
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Search Staff</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormWithBorder">
								<colgroup>
									<col width="20%">
									<col width="1px">
									<col width="30%">
									<col width="1px">
									<col width="24%">
									<col width="1px">
									<col width="26%">
								</colgroup>						
								<tr>
									<td class="Field">Staff ID</td>
									<td>&nbsp;</td>
									<td class="Field">
										<input class="FieldNormal" type="text" name="staffId" size="20" value="" maxlength=10></td>
									<td>&nbsp;</td>
									<td class="Field">Staff Type</td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="staffType" class="Field">
											<option value=""></option>																		
											<option value="" >Collector (Employed)</option>
											<option value="">Agents (Self Employed)</option>
											<option value="">Other Salesforce</option>
											<option value="">Excutive</option>
											<option value="">Admin</option>											
										</select>
									</td>
								</tr>
								<tr>
									<td class="Field">First Name</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldNormal" type="text" name="firstName" size="20" value="" maxlength=30></td>
									<td>&nbsp;</td>
									<td class="Field">User Group</td>
									<td>&nbsp;</td>
									<td class="Field">										
										<select size="1" name="userGroupId" class="Field" tabindex="1">									
  											<option value="" selected></option>
											<option>Employee</option>
														<option>Agents</option>
										</select></td>
								</tr>
								<tr>
									<td class="Field">Surname</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldNormal" type="text" name="lastName" size="20" value="" maxlength=30></td>
									<td>&nbsp;</td>
									<td class="Field">Status</td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="status"class="Field">
											<option value=""></option>
											<option value="0"></option>
											<option value="Starter">Starter</option>
											<option value="Live">Live</option>
											<option value="Leaving">Leaving</option>
											<option value="Leaver">Leaver</option>
										</select>										
									</td>
								</tr>
								<tr>
									<td class="Field">Payroll Number</td>
									<td>&nbsp;</td>
									<td class="Field">
										<input class="FieldNormal" type="text" name="payrollID" size="20" value="" maxlength=10>
									</td>
									<td>&nbsp;</td>
									<td class="Field">ATM Number</td>
									<td>&nbsp;</td>
									<td class="Field">										
										<input class="FieldNormal" type="text" name="atmNumber" size="20" value="" maxlength=30>	
									</td>
								</tr>
								<tr>
									<td class="Field">National Insurance Number</td>
									<td>&nbsp;</td>
									<td class="Field">										
										<input class="FieldNormal" type="text" name="niNo" size="20" value="" maxlength=30></td>
									<td>&nbsp;</td>
									<td class="Field">Business Unit</td>
									<td>&nbsp;</td>
									<td class="Field">										
										<select size="1" name="businessUnitId" class="Field" tabindex="1">											
  											<option value="" ></option>
  											<option value="">Territory 1</option>
  											<option value="">Territory 2</option>
  											<option value="" >Territory 3</option>
										</select></td>
								</tr>
								</table>
						</td>
						<td>&nbsp;</td>
					</tr>					
								
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td>
							<a href="ResultSearchStaff.jsp" class="btnormal">Search</a>&nbsp;&nbsp;
							<a href="javascript:Reset()" class="btnormal">Clear Search</a>
						</td>
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
	function doNew() {
		window.location="CreateStaff.jsp";
	}
	function Reset() {
		document.frmMorses.reset();
	}
</script>
</body>
</html>