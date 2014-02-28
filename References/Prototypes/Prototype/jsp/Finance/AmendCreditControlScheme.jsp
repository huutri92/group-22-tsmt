<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">	
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<script language="javascript" src="../js/menu.js"></script>
	<script language="javascript" src="../js/common.js"></script>
	<title>Amend Credit Control Scheme</title>
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
					menuFinance(1);
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
						<td height="25"><b></b></td>
						<td height="25" align="right"></td>
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
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Credit Control Scheme</b></td>
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
									<col width="15%">
									<col width="85%">
								</colgroup>
								<tr>
									<td class="Field">Name <font color="red">*</font></td>
									<td class="Field"><input class="FieldLong" type="text" name="schemeName" size="20" value="Scheme 1"></td>												
								</tr>
								<tr>
									<td class="Field" valign="top">Description</td>									
									<td class="Field"><textarea class="FieldLong" name="schemeDesc" cols="20" rows="4">This credit control scheme is used for testing only</textarea></td>												
								</tr>
							</table>								
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td colspan="4" height="5"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder">
								<colgroup>
									<col width="20%" align="center">
									<col width="40%" align="center">
									<col width="40%" align="center">
								</colgroup>								
								<tr>
									<th class="Title">Debit Performance Band (%)</th>
									<th class="Title">Max Sales Allowed (&pound;)</th>
									<th class="Title">Max Balance Aftersale Allowed (&pound;)</th>
								</tr>
								<tr class=field3>
									<td colspan=3 align=left class=titlelightyellow style="padding-left:2px"><b>Existing Customers</b></td>
								</tr>																
								<tr class="Field">
									<th class="titleyellow">
									Up to 30 % 
									</th>
									<td><input class="FieldShortR" type="text" name="maxSale" size="20" value="0.00"></td>
									<td><input class="FieldShortR" type="text" name="maxBalance" size="20" value="0.00"></td>
								</tr>
								<tr class="Field2">
									<th class="titleyellow">
									<input type="text" name="debit1" class="FieldCellShort" value="30">&nbsp;% &amp; Above
									</th>
									<td><input class="FieldShortR" type="text" name="maxSale" size="20" value="100.00"></td>
									<td><input class="FieldShortR" type="text" name="maxBalance" size="20" value="150.00"></td>
								</tr>
								<tr class="Field">
									<th class="titleyellow">
									<input type="text" name="debit1" class="FieldCellShort" value="50">&nbsp;% &amp; Above
									</th>
									<td><input class="FieldShortR" type="text" name="maxSale" size="20" value="200.00"></td>
									<td><input class="FieldShortR" type="text" name="maxBalance" size="20" value="500.00"></td>									
								</tr>
								<tr class="Field2">
									<th class="titleyellow">
									<input type="text" name="debit1" class="FieldCellShort" value="80">&nbsp;% &amp; Above
									</th>
									<td><input class="FieldShortR" type="text" name="maxSale" size="20" value="300.00"></td>
									<td><input class="FieldShortR" type="text" name="maxBalance" size="20" value="750.00"></td>									
								</tr>
								<tr class="Field">
									<th class="titleyellow">
									<input type="text" name="debit1" class="FieldCellShort" value="100">&nbsp;% &amp; Above
									</th>
									<td><input class="FieldShortR" type="text" name="maxSale" size="20" value="500.00"></td>
									<td><input class="FieldShortR" type="text" name="maxBalance" size="20" value="1500.00"></td>									
								</tr>		
								<tr class=field3>
									<td colspan=3 align=left class=titlelightyellow style="padding-left:2px"><b>New Customers</b></td>
								</tr>																
								<tr class="Field2">
									<th class="titleyellow">
									All
									</th>
									<td><input class="FieldShortR" type="text" name="maxSale" size="20" value="150.00"></td>
									<td><input class="FieldShortR" type="text" name="maxBalance" size="20" value="200.00"></td>									
								</tr>		
														
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2"><a href="../Finance/CreditControlSchemes.jsp" class="btnormal">Save</a></td>
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
	function doAddNew() 
	{
		var width = 450;
		var height = 200;
		var newWin = window.open("PopupAddCreditBand.jsp", "Create", centerWindow(width, height));
	}
	
	function doUpdate() 
	{
		var width = 450;
		var height = 200;
		var newWin = window.open("PopupAmendCreditBand.jsp", "Update", centerWindow(width, height));
	}
</script>

</body>

</html>