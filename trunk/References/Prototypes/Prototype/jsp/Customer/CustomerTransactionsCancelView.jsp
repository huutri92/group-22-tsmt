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
	<title>Customer Transaction Cancel</title>
</head>
<body class="body" onload="javascript:initForm();">
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
				<table width="100%" height="350" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td valign="bottom" height="250">&nbsp;</td>
					</tr>
					<tr>
						<td valign="bottom" height="100">
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								<colgroup>
									<col width="10">
									<col width="*">
								</colgroup>
								<tr>
									<td height="20"><img src="images/spacer.gif" border="0" height="1" width="10"></td>
									<td height="20"><a href="CustomerTransactionsSaleView.jsp"><b>NEXT</b></a></td>									
								</tr>
								<tr>
									<td height="20"><img src="images/spacer.gif" height="1" width="10" border="0"></td>
									<td height="20"><a href="CustomerTransactionsSaleView.jsp"><b>PREVIOUS</b></a></td>
								</tr>
								<tr>
									<td height="20"><img src="images/spacer.gif" border="0" height="1" width="10"></td>
									<td height="20"><a href="javascript:doCreditControl();"><b>CREDIT CONTROL</b></a></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
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
						<col width="*">
						<col width="5">
					</colgroup>
					<tr>
						<td height="25" valign="top"><img src="../images/corner.gif" border="0" width="5" height="5"></td>
						<td height="25"><!-- Error Message --></td>
						<td height="25">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="4">
									<col width="80">
									<col width="5">
									<col width="5">
									
									<col width="4">
									<col width="100">
									<col width="5">
									<col width="5">
									
									<col width="4">
									<col width="100">
									<col width="5">
									<col width="5">
									
									<col width="4">
									<col width="100">
									<col width="5">
									<col width="5">

									<col width="4">
									<col width="100">
									<col width="5">
									<col width="5">

									<col width="4">
									<col width="100">
									<col width="5">
									<col width="5">
									
									<col width="4">
									<col width="100">
									<col width="5">
									<col width="*">
								</colgroup>
								<tr>
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerSummary.jsp" class="buttontop">Summary</a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerDetails.jsp" class="buttontop">Details Info</a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerLettersEvent.jsp"class="buttontop">Letters/Event Log</a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerStatement.jsp"class="buttontop">Statement</a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" nowrap class="Selected">Transactions</td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>

									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerHistory.jsp"class="buttontop">History</a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>

									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerBusinessUnit.jsp"class="buttontop">Business Unit</a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>								
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
								<colgroup>
									<col width="29%">
									<col width="1%">
									<col width="70%">
								</colgroup>
								<tr>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="30%">
												<col width="70%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="2"><b>PERSONAL DETAILS</b></th>
											</tr>
											<tr>
												<td height="5" colspan="2"></td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>AB0001</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>Live</td>
												<td nowrap>Territory Morses</td>
											</tr>
											<tr class="field" height ="16">
												<td nowrap>Mr. Hung Quang Vu</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr>
												<td height="3" colspan="2"></td>
											</tr>											
											<tr class="field">
												<td colspan="2">Home Address</td>
											</tr>
											<tr class="field" height ="16">
												<td nowrap>01B</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height ="16">
												<td nowrap>Maitland House</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height ="16">
												<td nowrap>Southend-On-Sea</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>LonDon</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td height="3" colspan="2"></td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>GU11 1EJ</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>0904256909&nbsp;&nbsp;045798334</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr>
												<td height="3" colspan="2"></td>
											</tr>
											<tr class="field" height = "16">
												<td colspan="2">Collection Address</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>02B</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>Maitland House</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>Southend-On-Sea</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>LonDon</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>GU11 1EJ</td>
												<td nowrap>&nbsp;</td>
											</tr>										
										</table>
									</td>
									<td>&nbsp;</td>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="25%">
												<col width="25%">
												<col width="1px">
												<col width="24%">
												<col width="26%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="5"><b>ACCOUNT OVERVIEW</b></th>
											</tr>
											<tr>
												<td height="5" colspan="5"></td>
											</tr>
											<tr>
												<td valign="top" class="Field" rowspan="3">Transaction Type</td>
												<td class="Field" rowspan="3">
													<select class="ListWidth160" size="8" name="lstTransactionType" onchange="javascript:doSelectTransactionType();">
														<option value="0">Sale</option>
														<option value="1" selected>Cancellation</option>
														<option value="2">Cash Collection</option>
														<option value="3">Account Adjustment</option>
													</select></td>
												<td>&nbsp;</td>
												<td class="Field">Date</td>
												<td class="Field">
													<input class="FieldDate" type="text" id ="txtTransactionDate" name="transactionDate" size="20">&nbsp;
													<a href="#"><img id="btTransactionDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
													<script type="text/javascript">
														<!--
															Calendar.setup({
															  inputField	: "txtTransactionDate",
															  button		: "btTransactionDate",
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
												<td>&nbsp;</td>
												<td class="Field">&nbsp;</td>
												<td class="Field">&nbsp;</td>
											</tr>

											<tr>
												<td>&nbsp;</td>
												<td class="Field">&nbsp;</td>
												<td class="Field">&nbsp;</td>
											</tr>
											<tr height ="193">
												<td class="Field" colspan ="2">&nbsp;</td>
												<td>&nbsp;</td>
												<td class="Field" colspan ="2">&nbsp;</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td colspan ="5">&nbsp;</td>
								</tr>
								<tr>
									<td colspan="3">
										<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder">
											<colgroup>
												<col width="4%" align="left">
												<col width="12%" align="left">
												<col width="6%" align="left">
												<col width="15%" align="left">
												<col width="5%" align="right">
												<col width="8%" align="right">
												<col width="10%" align="right">
												<col width="12%" align="right">
												<col width="8%" align="right">
												<col width="10%" align="right">
												<col width="6%" align="right">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="11" align="center"><b>RECORD TRANSACTIONS - CANCELLATION</b></th>											</tr>
											<tr class="Section">
												<td colspan="11" height="4"></td>
											</tr>
											<tr class="Section">
												<th class="Title"></th>
												<th class="Title">Account Number</th>
												<th class="Title">Status</th>
												<th class="Title">Product Description</th>
												<th class="Title">Term</th>
												<th class="Title">Agreement Number</th>
												<th class="Title">Expected Re-Payment(&pound;)</th>
												<th class="Title"><b>Ave Debit Performance(%)</b></th>
												<th class="Title"><b>Balance(&pound;)</b></th>
												<th class="Title"><b>Percentage Collected(%)</b></th>
												<th class="Title"><b>ESR</b>(&pound;)</th>
			
											</tr>

											<tr class="Field">
												<td><input type="checkbox" class="checkbox" name=""/></td>
												<td>AB1234/01</td>
												<td>LIVE</td>
												<td>34 weeks fixed term loan</td>
												<td>6</td>
												<td>6</td>
												<td>100.00</td>
												<td>100.00</td>
												<td>10.00</td>
												<td>20</td>
												<td>100.00</td>
											</tr>
											<tr class="Field2">
												<td><input type="checkbox" class="checkbox" name=""/></td>
												<td>AB1234/02</td>
												<td>LIVE</td>
												<td>50 weeks fixed term loan</td>
												<td>7</td>
												<td>6</td>
												<td>15.00</td>
												<td>160.00</td>
												<td>253.00</td>
												<td>30</td>
												<td>100.00</td>
			
											</tr>
											<tr class="Field">
												<td><input type="checkbox" class="checkbox" name=""/></td>
												<td>AB1234/03</td>
												<td>LIVE</td>
												<td>34 weeks fixed term loan</td>
												<td>4</td>
												<td>6</td>
												<td>2.00</td>
												<td>260.00</td>
												<td>1,530.00</td>
												<td>18</td>
												<td>100.00</td>
											</tr>
											<tr class="Field2">
												<td><input type="checkbox" class="checkbox" name=""/></td>
												<td>AB1234/04</td>
												<td>LIVE</td>
												<td> 50 weeks fixed term loan</td>
												<td>15</td>
												<td>6</td>
												<td>8.00</td>
												<td>265.00</td>
												<td>30.00</td>
												<td>47</td>
												<td>100.00</td>
											</tr>
											<tr class="Field">
												<td><input type="checkbox" class="checkbox" name=""/></td>
												<td>AB1234/05</td>
												<td>LIVE</td>
												<td>22 weeks fixed term loan</td>
												<td>25</td>
												<td>6</td>
												<td>10.00</td>
												<td>250.00</td>
												<td>100.00</td>
												<td>85</td>
												<td>100.00</td>
											</tr>
											

										</table>
									</td>
								</tr>
								<tr class="Section">
									<td colspan="3" height="4">	</td>
								</tr>
								
								<tr>
									<td colspan="3">
										<a href="CustomerTransactionsCancel.jsp" class="btnormal" id="btnSave" >Save</a>
									</td>
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
	<!--
	var thisForm = document.frmMorses;
	function initForm() {
		var currentDate = new Date();
		window.frmMorses.lstTransactionType.focus();
		thisForm.transactionDate.value = currentDate.getDate() + "/" + currentDate.getMonth() + "/" + currentDate.getYear();

	}	
	function doSelectTransactionType() {
		var index = thisForm .lstTransactionType.selectedIndex;
		if (index == 2) {
			window.location.href = "CustomerTransactionsPayment.jsp";
		} else if (index == 0) {
			window.location.href = "CustomerTransactionsSale.jsp";
		}else if (index == 3) {
			window.location.href = "CustomerTransactionsAdjustment.jsp";
		}

	}
	//-->
		function doCreditControl() {
		var width = 700;
		var height = 260;
		var newWin = window.open("../Customer/CustomerCreditLimit.jsp", "CreditControl", centerWindow(width, height));	
	}
	
</script>
</body>

</html>