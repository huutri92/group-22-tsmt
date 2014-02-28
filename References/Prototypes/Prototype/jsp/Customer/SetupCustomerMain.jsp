<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/menu.js"></script>
	<script language="javascript" src="../js/common.js"></script>
	<link type="text/css" rel="stylesheet" href="../style/common.css">

	<script type="text/javascript" src="../js/calendar/calendar.js"></script>
	<script type="text/javascript" src="../js/calendar/calendar-setup.js"></script>
	<script type="text/javascript" src="../js/calendar/lang/calendar-en.js"></script>
	<link type="text/css" rel="stylesheet" href="../style/calendar/calendar-blue.css">
	<title>Setup Customer</title>
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
					menuCustomer(2);
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
			<td valign="top" height="*">
				<table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form">
					<colgroup>
						<col width="5">
						<col width="240">
						<col width="600">
						<col width="5">
					</colgroup>
					<tr>
						<td height="25" valign="top"><img src="../images/corner.gif" border="0" width="5" height="5"></td>
						<td height="25" colspan="2">&nbsp;</td>
						<td height="25" width="6">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="4">
									<col width="85">
									<col width="5">
									<col width="5">

									<col width="4">
									<col width="85">
									<col width="5">
									<col>
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td  align="center" background="../images/tab_01_02.gif" class="selected">
									<b>Main Info</b></td>
									<td><img src="../images/tab_01_03.gif" width="10" height="21" border="0"></td>
									<td>&nbsp;</td>
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td  align="center" background="../images/tab_02_02.gif" class="buttontop">
									<b>Detail Info</b></a>
									</td>
									<td><img src="../images/tab_02_03.gif" width="10" height="21" border="0"></td>
									<td>&nbsp;</td>
								</tr>
							</table>
						</td>
						<td width="6">&nbsp;</td>
					</tr>
					<tr>
							<td>&nbsp;</td>
							<td colspan="2">
								<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormWithBorder">
									<colgroup>
										<col width="24%">
										<col width="1px">
										<col width="25%">
										<col width="2px">										
										<col width="24%">
										<col width="1px">
										<col width="25%">
										<col width="2%">
									</colgroup>
									<tr>
										<td class="Field">Title&nbsp;<font color="red">*</font></td>
										<td>&nbsp;</td>
										<td class="Field">
											<select size="1" name="salutation" class = "FieldDate">
												<option value="Mr">Mr</option>
												<option value="Mrs">Mrs</option>
												<option value="Miss">Miss</option>
												<option value="Ms">Ms</option>
											</select>
										</td>
										<td>&nbsp;</td>
										<td class="Field"></td>
										<td>&nbsp;</td>
										<td class="Field">&nbsp;</td>
										<td class="Field">&nbsp;</td>
									</tr>
									<tr>
										<td class="Field">Firstname&nbsp;<font color="red">*</font></td>
										<td>&nbsp;</td>
										<td class="Field">
											<input class="FieldNormal" type="text" name="firstName" size="20"></td>																				
										<td>&nbsp;</td>
										<td class="Field">NI Number&nbsp;<font color="red">*</font></td>
										<td>&nbsp;</td>
										<td class="Field">
											<input class="FieldNormal" type="text" name="niNumber" size="20"></td>
										<td class="Field">&nbsp;</td>
									</tr>
									<tr>
										<td class="Field">Surname&nbsp;<font color="red">*</font></td>
										<td>&nbsp;</td>
										<td class="Field">
											<input class="FieldNormal" type="text" name="surname" size="20"></td>
										<td>&nbsp;</td>
										<td class="Field">Home Telephone</td>
										<td>&nbsp;</td>
										<td class="Field">
											<input class="FieldShort" type="text" name="homePhone" size="20"></td>
										<td class="Field">&nbsp;</td>
									</tr>
									<tr>
										<td class="Field">Initials</td>
										<td>&nbsp;</td>
										<td class="Field">
											<input class="FieldNormal" type="text" name="initials" size="20"></td>																				
										<td>&nbsp;</td>
										<td class="Field">Mobile Telephone</td>
										<td>&nbsp;</td>
										<td class="Field">
											<input class="FieldShort" type="text" name="mobilePhone" size="20"></td>
										<td class="Field">&nbsp;</td>
									</tr>
									<tr>
										<td colspan="3" height="20"><b>Correspondence Address&nbsp;<font color="red">*</font></b></td>
										<td>&nbsp;</td>
										<td colspan="4"><b>&nbsp;Collection Address&nbsp;<font color="red">*</font></b></b></td>
									</tr>
									<tr>
										<td class="Field">House Name/Number&nbsp;<font color="red">*</font></td>
										<td>&nbsp;</td>
										<td class="Field">
											<input class="FieldNormal" type="text" name="lastName8" size="20"></td>																				
										<td>&nbsp;</td>
										<td class="Field">House Name/Number&nbsp;<font color="red">*</font></td>
										<td>&nbsp;</td>
										<td class="Field">
											<input class="FieldNormal" type="text" name="lastName2" size="20"></td>
										<td class="Field">&nbsp;</td>
									</tr>
									<tr>
										<td class="Field">Street Name&nbsp;<font color="red">*</font></td>
										<td>&nbsp;</td>
										<td class="Field">
											<input class="FieldNormal" type="text" name="lastName12" size="20"></td>																				
										<td>&nbsp;</td>
										<td class="Field">Street Name&nbsp;<font color="red">*</font></td>
										<td>&nbsp;</td>
										<td class="Field">
											<input class="FieldNormal" type="text" name="lastName9" size="20">
										<td class="Field">&nbsp;</td>
									</tr>
									<tr>
										<td class="Field">Town/City</td>
										<td>&nbsp;</td>
										<td class="Field">
											<input class="FieldNormal" type="text" name="townCity1" size="20">
										</td>																				
										<td>&nbsp;</td>
										<td class="Field">Town/City</td>
										<td>&nbsp;</td>
										<td class="Field">
											<input class="FieldNormal" type="text" name="townCity2" size="20">
										<td class="Field">&nbsp;</td>
									</tr>
									<tr>
										<td class="Field">County</td>
										<td>&nbsp;</td>
										<td class="Field">
											<input class="FieldNormal" type="text" name="townCity1" size="20">
										</td>																				
										<td>&nbsp;</td>
										<td class="Field">County</td>
										<td>&nbsp;</td>
										<td class="Field">
											<input class="FieldNormal" type="text" name="townCity2" size="20">
										<td class="Field">&nbsp;</td>
									</tr>
									<tr>
										<td class="Field">Postcode&nbsp;<font color="red">*</font></td>
										<td>&nbsp;</td>
										<td class="Field"><input class="FieldxShort" type="text" name="postCode" size="20">&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="javascript:openAddress();"  class="btnormal">Get Address</a></td>
										<td>&nbsp;</td>									
										<td class="Field">Postcode&nbsp;<font color="red">*</font></td>
										<td>&nbsp;</td>
										<td class="Field"><input class="FieldxShort" type="text" name="postCode" size="20">&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="javascript:openAddress();"  class="btnormal">Get Address</a></td>
										<td class="Field">&nbsp;</td>
									</tr>
									<tr>
										<td colspan="8" height="20"><b>Previous Address</b></td>
									</tr>
									<tr>
										<td class="Field">House Name/Number</td>
										<td>&nbsp;</td>
										<td class="Field">
											<input class="FieldNormal" type="text" name="lastName8" size="20"></td>																				
										<td>&nbsp;</td>
										<td class="Field" colspan="4">&nbsp;</td>
									</tr>
									<tr>
										<td class="Field">Postcode</td>
										<td>&nbsp;</td>
										<td class="Field"><input class="FieldxShort" type="text" name="postCode" size="20"></td>
										<td>&nbsp;</td>									
										<td class="Field" colspan="4">&nbsp;</td>
									</tr>
								</table>
							</td>
							<td width="6">&nbsp;</td>				
					</tr>
					
					<tr class=btnormal>
						<td>&nbsp;</td>
						<td colspan="2">
							<a href="SetupCustomerDetail.jsp" class="btnormal" >Continue</a>
						</td>
						<td width="6">&nbsp;</td>
					</tr>
				</table>
			</td>
			<!-- ------------------------------------------------------------------------------------------ -->
			<!-- Content End -->
		</tr>
	</table>
</form>
</body>
<script language="javascript">
	
	function openAddress()
	{
		var width = 600;
		var height = 200;
		var newWin = window.open("../Customer/FindAddressResultPopup.jsp", "Create", centerWindow(width, height));
	}	
	function FindAddress()
	{
		var width = 750;
		var height = 250;
		var newWin = window.open("../Customer/FindCustomerMatchedPopup.jsp", "Create", centerWindow(width, height));
	}	
</script>

</html>