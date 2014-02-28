<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/menu.js"></script>	
	<script language="javascript" src="../js/common.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<title>Setup Customer Payment</title>
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
						<td height="25" colspan="2">&nbsp;</td>
						<td height="25">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="4">
									<col width="130">
									<col width="5">									
									<col>
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Customer Payment</b></td>
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
									<col width="1px">
									<col width="27%">
									<col width="1px">
									<col width="23%">
									<col width="1px">
									<col width="27%">
								</colgroup>
								<tr>
									<td class="Field">Customer ID</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field"><input class="FieldShort" tabindex="2" type="text" name="agreementNumber1" size="20" value="0123456" readonly></td>
									<td>&nbsp;</td>
									<td class="Field">Cash Type&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<select class="FieldShort" tabindex="1" size="1" name="product2">
											<option>&nbsp;</option>
											<option>Normal Cash</option>
											<option>Cancelled Cash</option>
											<option>Settlement Cash</option>
											<option>Cheque Cash</option>
										</select></td>
								</tr>
								<tr>
									<td class="Field">Amount&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">&pound;</td>
									<td class="Field">
										<input class="FieldDR" tabindex="2" type="text" name="agreementNumber4" size="20" value="935,049.00"></td>
									<td>&nbsp;</td>
									<td class="Field">Cheque ID</td>
									<td>&nbsp;</td>
									<td class="Field">
										<input class="FieldShort" tabindex="2" type="text" name="agreementNumber7" size="20" ></td>
								</tr>
								</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td colspan="4" height="5">&nbsp;</td>
					</tr>					
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder">
								<colgroup>
									<col width="20%" align="left" valign="top">
									<col width="10%" align="left" valign="top">
									<col width="10%" align="left" valign="top">
									<col width="10%" align="right" valign="top">
									<col width="10%" align="right" valign="top">
									<col width="10%" align="right" valign="top">
									<col width="15%" align="left" valign="top">
									<col width="15%" align="left" valign="top">
								</colgroup>
								<tr class="Section">
									<th class="Title"><b>Account ID</b></th>
									<th class="Title"><b>Type</b></th>
									<th class="Title"><b>Status</b></th>
									<th class="Title"><b>Amount (&pound;)</b></th>
									<th class="Title"><b>Balance (&pound;)</b></th>
									<th class="Title"><b>Agree. No.</b></th>
									<th class="Title"><b>Product</b></th>
									<th class="Title"><b>Product Type</b></th>
								</tr>
								<tr class="Field">
									<td>0123456</td>
									<td>Credit</td>
									<td>Open</td>
									<td><input class="FieldDR" tabindex="2" type="text" name="agreementNumber8" size="20" value="1,336.00"></td>
									<td>1,000.00</td>
									<td>669455</td>
									<td>L22</td>
									<td>Loan</td>
								</tr>
								<tr class="Field2">
									<td>0123459</td>
									<td>Credit</td>
									<td>Consolidated</td>
									<td><input class="FieldDR" tabindex="2" type="text" name="agreementNumber9" size="20" value="25.00"></td>
									<td>38.00</td>
									<td>167099</td>
									<td>L22</td>
									<td>Insurance</td>
								</tr>
								<tr class="Field">
									<td>0123460</td>
									<td>Credit</td>
									<td>Live</td>
									<td><input class="FieldDR" tabindex="2" type="text" name="agreementNumber10" size="20" value="789,787.00"></td>
									<td>899.00</td>
									<td>577989</td>
									<td>CAC</td>
									<td>Savings</td>
								</tr>
								<tr class="Field2">
									<td>0123457</td>
									<td>Debit</td>
									<td>Closed</td>
									<td><input class="FieldDR" tabindex="2" type="text" name="agreementNumber8" size="20" value="55,235.00"></td>
									<td>500.00</td>
									<td>874477</td>
									<td>CAC</td>
									<td>Consolidation</td>
								</tr>
								<tr class="Field">
									<td>0123458</td>
									<td>Debit</td>
									<td>Bad Debt</td>
									<td><input class="FieldDR" tabindex="2" type="text" name="agreementNumber8" size="20" value="88,666.00"></td>
									<td>52.00</td>
									<td>334662</td>
									<td>SHA</td>
									<td>Card</td>
								</tr>
								</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2"><a href="../Customer/CustomerSaleTransaction.jsp" class="btnormal" tabindex="25">Save</a></td>
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