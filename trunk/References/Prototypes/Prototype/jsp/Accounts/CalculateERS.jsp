<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/menu.js"></script>	
	<script language="javascript" src="../js/common.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<title>Calculate ERS</title>
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
						<td height="25">&nbsp;</td>
						<td height="25" align="right">&nbsp;</td>
						<td height="25">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="4">
									<col width="180">
									<col width="5">									
									<col>
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Calculate ERS</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td align="right">&nbsp;</td>
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
									<col width="23%">
									<col width="1px">
									<col width="25%">
									<col width="2%">
									<col width="1px">
									<col width="23%">
									<col width="1px">
									<col width="25%">
									<col width="2%">
								</colgroup>
								<tr>
									<td class="Field">Customer ID</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldShort" tabindex="2" type="text" name="agreementNumber1" size="20" readonly></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">End Period</td>
									<td>
										&nbsp;</td>
									<td class="Field">
										<input class="FieldShort" tabindex="2" type="text" name="agreementNumber4" size="20" ></td>
									<td class="Field">
										&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Cash To Settle&nbsp;<font color="red">*</font></td>
									<td>
										&nbsp;</td>
									<td class="Field"><input class="FieldShort" tabindex="2" type="text" name="agreementNumber3" size="20" ></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Minimum Balance</td>
									<td>
										&nbsp;</td>
									<td class="Field">
										<input class="FieldShort" tabindex="2" type="text" name="agreementNumber5" size="20" ></td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Rebate Authorization Code&nbsp;<font color="red">*</font></td>
									<td>
										&nbsp;</td>
									<td class="Field"><input class="FieldShort" tabindex="2" type="text" name="agreementNumber7" size="20" ></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Valid Quote Period</td>
									<td>&nbsp;</td>
									<td class="Field">
										<input class="FieldShort" tabindex="2" type="text" name="agreementNumber6" size="20" ></td>
									<td class="Field">&nbsp;</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2">
							<a href="../Customer/CustomerDetailAccount.jsp" class="btnormal" tabindex="25">Settle Early</a>
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
						<td colspan="2">
							<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder">
								<colgroup>
									<col width="2%" align="center" valign="top">
									<col width="10%" align="left" valign="top">
									<col width="8%" align="left" align="left" valign="top">
									<col width="10%" align="left" valign="top">
									<col width="10%" align="left" valign="top">
									<col width="20%" align="left" valign="top">
									<col width="10%" align="left" valign="top">
									<col width="10%" align="left" valign="top">
									<col width="10%" align="left" valign="top">
									<col width="10%" align="right" valign="top">
								</colgroup>
								<tr class="Section">
									<th class="Title">#</th>
									<th class="Title">Account ID</th>
									<th class="Title">Type</th>
									<th class="Title">Status</th>
									<th class="Title">Agreement No.</th>
									<th class="Title">Customer Name</th>
									<th class="Title">Business Unit</th>
									<th class="Title">Product</th>
									<th class="Title">Product Type</th>
									<th class="Title">Balance</th>
								</tr>
								<tr class="Field">
									<td>1</td>
									<td>0123456</td>
									<td>Credit</td>
									<td>Open</td>
									<td>669455</td>
									<td><a href="../Customer/CustomerDetailMain.jsp" title="Short by Amount">Vu Hong Hai</a></td>
									<td>D2</td>
									<td>000788</td>
									<td >Software</td>
									<td>100</td>
								</tr>
								<tr class="Field2">
									<td>2</td>
									<td>0123457</td>
									<td>Debit</td>
									<td>Closed</td>
									<td>874477</td>
									<td>Nguyen Van Sang</td>
									<td>D2</td>
									<td>000789</td>
									<td>Hardware</td>
									<td>500</td>
								</tr>
								<tr class="Field">
									<td>3</td>
									<td>0123458</td>
									<td>Credit</td>
									<td>Consolidated</td>
									<td>167099</td>
									<td>Le Hong Minh</td>
									<td>D2</td>
									<td>000790</td>
									<td>Software</td>
									<td>38</td>
								</tr>
							</table>
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
</body>

</html>