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
	<title>View Account</title>
</head>

<body class="body" onload="javascript:disableForm();doDisabled();">
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
					menuCustomer(3);
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
									<col width="5">
									<col width="4">
									<col width="130">
									<col width="5">
									<col width="5">
									<col width="4">
									<col width="130">
									<col width="5">
									<col>
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>View Account</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" class="selected"><a href="../Accounts/SearchViewAdjustmentTab.jsp" class="buttontop"><b>View Adjustment</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>									
									<td>&nbsp;</td>
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" class="selected"><a href="../Accounts/SearchViewTransactionTab.jsp" class="buttontop"><b>View Transactions</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
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
									<col width="23%">
									<col width="1px">
									<col width="1px">
									<col width="27%">
									<col width="1px">
									<col width="23%">
									<col width="1px">
									<col width="1px">
									<col width="27%">
								</colgroup>
								<tr>
									<td class="Field">Customer ID</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field"><input class="FieldShort" tabindex="27" type="text" name="custID" size="20" value="123456789" readonly></td>
									<td>&nbsp;</td>
									<td class="Field">ESR</td>
									<td>&nbsp;</td>
									<td class="Field">&pound;</td>
									<td class="Field"><input class="FieldDR" tabindex="" type="text" name="" size="20" value="1,000.00"></td>
								</tr>
								<tr>
									<td class="Field">Product&nbsp;<font color=#FF0000>*</font></td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">
										<select class="FieldShort" tabindex="1" size="1" name="product">
											<option value="0"></option>
											<option value="1" selected>Loan</option>
											<option value="2">Consolidation</option>
											<option value="3">Card</option>
											<option value="4">Insurance</option>
											<option value="5">Hamper</option>
											<option value="6">Special Loan</option>
										</select>
									</td>
									<td>&nbsp;</td>
									<td class="Field">ESR End Period</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field"><input class="FieldDateR" tabindex="" type="text" name="" size="20" value="2">&nbsp;(weeks)</td>
								</tr>
								<tr>
									<td class="Field">Agreement No.&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field"><input class="FieldShort" tabindex="2" type="text" name="agreementNumber" size="20" value="45668789" ></td>
									<td>&nbsp;</td>
									<td class="Field">ESR Min Balance</td>
									<td>&nbsp;</td>
									<td class="Field">&pound;</td>
									<td class="Field"><input class="FieldDR" tabindex="" type="text" name="" size="20" value="500.00"></td>
								</tr>
								<tr>
									<td class="Field">Agreement Date&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">
										<input class="FieldDate" tabindex="3" type="text" name="agreementDate" size="20" value="10/05/2005">&nbsp;
										<a href="javascript:doDisabled();" tabindex="4"><img id="btAgreementDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
										<script type="text/javascript">
											<!--
												Calendar.setup({
												  inputField	: "agreementDate",
												  button		: "btAgreementDate",
												  align		 : "Tr",
												  ifFormat	  : "%d/%m/%Y",
												  daFormat	  : "%d/%m/%Y",
												  timeFormat	: "24",
												  showsTime	 : false,
												  singleClick   : true
												});
											//-->
										</script>
									</td>
									<td>&nbsp;</td>
									<td class="Field">ESR Valid Quote Period</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field"><input class="FieldDateR" tabindex="" type="text" name="" size="20" value="1">&nbsp;(weeks)</td>
								</tr>
								<tr>
									<td class="Field">Agreement Scanned Date</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">
										<input class="FieldDate" tabindex="5" type="text" name="agreementScannedDate" size="20" value="20/05/2005">&nbsp;
										<a href="javascript:doDisabled();" tabindex="6"><img id="btAgreementScannedDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
										<script type="text/javascript">
											<!--
												Calendar.setup({
												  inputField	: "agreementScannedDate",
												  button		: "btAgreementScannedDate",
												  align		 : "Tr",
												  ifFormat	  : "%d/%m/%Y",
												  daFormat	  : "%d/%m/%Y",
												  timeFormat	: "24",
												  showsTime	 : false,
												  singleClick   : true
												});
											//-->
										</script>
									</td>
									<td>&nbsp;</td>
									<td class="Field">Interest Start Date&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">
										<input class="FieldDate" tabindex="19" type="text" name="interestStartDate" size="20" value="22/02/2005">&nbsp;
										<a href="javascript:doDisabled();" tabindex="20"><img id="btInterestStartDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
										<script type="text/javascript">
											<!--
												Calendar.setup({
												  inputField	: "interestStartDate",
												  button		: "btInterestStartDate",
												  align		 : "Tr",
												  ifFormat	  : "%d/%m/%Y",
												  daFormat	  : "%d/%m/%Y",
												  timeFormat	: "24",
												  showsTime	 : false,
												  singleClick   : true
												});
											//-->
										</script>
									</td>
								</tr>
								<tr>
									<td class="Field">Item Identifier</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field"><input class="FieldShort" tabindex="7" type="text" name="itemIdentifier" size="20" value="Hamper"></td>
									<td>&nbsp;</td>
									<td class="Field">Accumulated Income&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">&pound;</td>
									<td class="Field"><input class="FieldDR" tabindex="" type="text" name="" size="20" value="15,000.00"></td>
								</tr>
								<tr>
									<td class="Field">Weekly Repayment&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">&pound;</td>
									<td class="Field"><input class="FieldDR" tabindex="" type="text" name="" size="20" value="12,888.00"></td>
									<td>&nbsp;</td>
									<td class="Field">Accumulated Arrears</td>
									<td>&nbsp;</td>
									<td class="Field">&pound;</td>
									<td class="Field"><input class="FieldDR" tabindex="" type="text" name="" size="20" value="156.00"></td>
								</tr>
								<tr>
									<td class="Field">Reduced Repayment</td>
									<td>&nbsp;</td>
									<td class="Field">&pound;</td>
									<td class="Field"><input class="FieldDR" tabindex="" type="text" name="" size="20" value="255,992.00"></td>
									<td>&nbsp;</td>
									<td class="Field">Memo 1</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field" rowspan="2"><textarea class="FieldLong" tabindex="23" name="memo1" cols="20" rows="3">Memo 1</textarea></td>
								</tr>
								<tr>
									<td class="Field">Reduced Rep. Review Date</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">
										<input class="FieldDate" tabindex="10" type="text" name="repReviewDate" size="20" value="22/05/2005">&nbsp;
										<a href="javascript:doDisabled();" tabindex="11"><img id="btRepReviewDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
										<script type="text/javascript">
											<!--
												Calendar.setup({
												  inputField	: "repReviewDate",
												  button		: "btRepReviewDate",
												  align		 : "Tr",
												  ifFormat	  : "%d/%m/%Y",
												  daFormat	  : "%d/%m/%Y",
												  timeFormat	: "24",
												  showsTime	 : false,
												  singleClick   : true
												});
											//-->
										</script>
									</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td rowspan="2">&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Balance&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">&pound;</td>
									<td class="Field"><input class="FieldDR" tabindex="" type="text" name="" size="20" value="44,000.00"></td>
									<td>&nbsp;</td>
									<td class="Field">Memo 2</td>
									<td class="Field">&nbsp;</td>
									<td class="Field" rowspan="3"><textarea class="FieldLong" tabindex="24" name="memo2" cols="20" rows="4">Memo 2</textarea></td>
								</tr>
								<tr>
									<td class="Field">Status&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">
										<select class="FieldShort" tabindex="13" name="accountStatus" size="1">
											<option>&nbsp;</option>
											<option selected>Live</option>
											<option>Closed</option>
											<option>Bad Debt</option>
											<option>Consolidated</option>
											<option>Cancelled</option>
										</select>
									</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td rowspan="2">&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">PPI Flag</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field"><input class="checkbox" type="checkbox" name="" value=""></td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
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
<script language="javascript">
	function doDisabled() {
		var thisForm = document.forms["frmMorses"];
		thisForm.btAgreementDate.disabled = true;
		thisForm.btAgreementScannedDate.disabled = true;
		thisForm.btInterestStartDate.disabled = true;
		thisForm.btRepReviewDate.disabled = true;
	}
</script>
</body>

</html>