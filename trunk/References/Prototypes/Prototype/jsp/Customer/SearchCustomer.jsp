<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/menu.js"></script>	
	<script language="javascript" src="../js/common.js"></script>
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<title>Search Customer</title>
</head>

<body class="body" onload="javascript:init();">
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
					menuCustomer(1);
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
						<col width="420">
						<col width="420">
						<col width="5">
					</colgroup>
					<tr>
						<td height="25" valign="top"><img src="../images/corner.gif" border="0" width="5" height="5"></td>
						<td height="25">&nbsp;</td>
						<td height="25" align="right">&nbsp;</td>
						<td height="25">&nbsp;</td>
					</tr>	
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="5">
									<col width="150">
									<col width="5">
									<col width="*">
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Search Customer</b></td>
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
									<col width="25%">
									<col width="25%">
									<col width="1px">
									<col width="25%">
									<col width="25%">
								</colgroup>
								<tr>
									<td class="Field" colspan="2"><b>Customer</b></td>
									<td> &nbsp;</td>
									<td class="Field" colspan="2"><b>Home / Collection Address</b></td>
								</tr>
								<tr>
									<td class="Field">Customer ID</td>
									<td class="Field"><input tabindex=1 type="text" class="FieldxShort" maxLength="20" name="customerID" size="20" maxlength="10"></td>
									<td>&nbsp;</td>
									<td class="Field">House Name/Number</td>
									<td class="Field"><input class="FieldNormal" tabindex=5 type="text" name="collectionAddress9" size="20"></td>
								</tr>
								<tr>
									<td class="Field">Surname</td>
									<td class="Field"><input class="FieldNormal" tabindex=2  type="text" name="firstName0" size="20"></td>
									<td>&nbsp;</td>
									<td class="Field">Street Name</td>
									<td class="Field"><input class="FieldNormal" tabindex=5 type="text" name="collectionAddress6" size="20"></td>
								</tr>
								<tr>
									<td class="Field">Postcode</td>
									<td class="Field"><input type="text" tabindex=3 class="FieldxShort" maxLength="20" name="collectionPostCode9" size="20"></td>
									<td>&nbsp;</td>
									<td class="Field">Town/City</td>
									<td class="Field"><input type="text" tabindex=5 class="FieldShort" maxLength="20" name="collectionPostCode3" size="20"></td>
								</tr>
								<tr>
									<td class="Field">Agreement Number</td>
									<td class="Field"><input class="FieldShort" tabindex=4 type="text" name="agreementNo" size="20"></td>	
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
						<a href="CustomerResult.jsp" class="btnormal">Search</a>&nbsp;&nbsp;
						<a href="javascript:doClear();" class="btnormal" tabindex="26">Clear Search</a>&nbsp;&nbsp;
						<a href="SetupCustomer.jsp" class="btnormal">New Customer</a></td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</td>
			<!-- ------------------------------------------------------------------------------------------ -->
			<!-- Content End -->
		</tr>
	</table>
<script language="javascript">
	function doClear() {		
		window.location.reload(true);

	}
	function init() {
		document.frmMorses.customerID.focus();
	}
</script>
</form>

</body>

</html>