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
	<title>Customer Transaction Payment</title>
</head>

<body class="body">
<form name="frmMorses" method="post">
	<table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form">
					<colgroup>
						<col width="5">
						<col width="*">
						<col width="5">
					</colgroup>
					<tr>
						<td height="25" colspan="3">&nbsp;</td>
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
									<td align="center" background="../images/tab_01_02.gif" nowrap class="Selected">Transactions</td>
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
							<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
								<colgroup>
									<col width="100%">
								</colgroup>
								<tr>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="20%">
												<col width="10%">
												<col width="70%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="5"><b>PERSONAL DETAILS</b></th>
											</tr>
											<tr class="field220">
												<td>Customer ID</td>
												<td class="highlightorange">AB0001</td>
												<td class="highlightorange">Mr. Vu Hong Hai</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td height="5"></td>
								</tr>
								<tr>
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
												<td class="Field">Transaction Type</td>
												<td class="Field">Cash Collection</td>
												<td>&nbsp;</td>
												<td class="Field">Payment Value <font color="#FF0000">*</font></td>
												<td class="Field">
													<input type="textbox" name="paymentValue" value="" class="FieldDR" onblur="javascript:formatCurrency(this);"></td>
											</tr>
											<tr>
												<td valign="top" class="Field">Payment Type</td>
												<td class="Field">Cash</td>
												<td>&nbsp;</td>
												<td valign="top" class="Field">Payment Date <font color="#FF0000">*</font></td>
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
										</table>
									</td>
								</tr>
								<tr class="Section">
									<td height="4"></td>
								</tr>
								<tr>
									<td>
										<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder">
											<colgroup>
												<col width="10%" align="left">
												<col width="16%" align="left">
												<col width="5%" align="center">
												<col width="9%" align="right">
												<col width="6%" align="center">
												<col width="10%" align="right">
												<col width="12%" align="right">
												<col width="8%" align="right">
												<col width="10%" align="right">
												<col width="6%" align="right">
												<col width="8%" align="right">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="11" align="center"><b>RECORD TRANSACTIONS - PAYMENT</b></th>											</tr>
											</tr>
											<tr class="Section">
												<th class="Title" valign="top">Account Number</th>
												<th class="Title" valign="top">Product Description</th>
												<th class="Title" valign="top">Term</th>
												<th class="Title" valign="top">Agreement Number</th>
												<th class="Title" valign="top">Status</th>
												<th class="Title" valign="top">Expected Re-Payment(£)</th>
												<th class="Title" valign="top"><b>Ave Debit Performance(%)</b></th>
												<th class="Title" valign="top"><b>Balance(£)</b></th>
												<th class="Title" valign="top"><b>Percentage Collected(%)</b></th>
												<th class="Title" valign="top"><b>ESR</b></th>
												<th class="Title" valign="top"><b>Payments (£)</b></th>
											</tr>
											<tr class="Field">
												<td>AB1234/01</td>
												<td>34 weeks fixed term loan</td>
												<td>6</td>
												<td>6</td>
												<td>LIVE</td>
												<td>100.00</td>
												<td>100.00</td>
												<td>10.00</td>
												<td>20</td>
												<td>100.00</td>
												<td><input type="textbox" name="payment0" value="" class="FieldDR"></td>
			
											</tr>
											<tr class="Field2">
												<td>AB1234/02</td>
												<td>Agros - Extra Card</td>
												<td>7</td>
												<td>6</td>
												<td>LIVE</td>
												<td>15.00</td>
												<td>160.00</td>
												<td>253.00</td>
												<td>30</td>
												<td>100.00</td>
												<td><input type="textbox" name="payment1" value="" class="FieldDR"></td>
			
											</tr>
											<tr class="Field">
												<td>AB1234/03</td>
												<td>22 weeks fixed term loan</td>
												<td>4</td>
												<td>6</td>
												<td>LIVE</td>
												<td>2.00</td>
												<td>260.00</td>
												<td>1,530.00</td>
												<td>18</td>
												<td>100.00</td>
												<td><input type="textbox" name="payment2" value="" class="FieldDR"></td>
			
											</tr>
											<tr class="Field2">
												<td>AB1234/04</td>
												<td> 34 weeks fixed term loan</td>
												<td>15</td>
												<td>6</td>
												<td>LIVE</td>
												<td>8.00</td>
												<td>265.00</td>
												<td>30.00</td>
												<td>47</td>
												<td>100.00</td>
												<td><input type="textbox" name="payment3" value="" class="FieldDR"></td>
			
											</tr>
											<tr class="Field">
												<td>AB1234/05</td>
												<td>Agros - Extra Card</td>
												<td>25</td>
												<td>6</td>
												<td>LIVE</td>
												<td>10.00</td>
												<td>250.00</td>
												<td>100.00</td>
												<td>85</td>
												<td>100.00</td>
												<td><input type="textbox" name="payment4" value="" class="FieldDR"></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr class="Section">
									<td height="4"></td>
								</tr>
								<tr>
									<td align="right">Total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="textbox" name="total" value="" class="FieldDR" disabled>&nbsp;</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td>
							<a href="PopTotalCollections_ViewDetails.jsp" class="btnormal">Save</a>&nbsp;&nbsp;
							<a href="PopTotalCollections_ViewDetails.jsp" class="btnormal">Cancel</a>
						</td>
						<td>&nbsp;</td>
					</tr>
				</table>	
</form>
<script language="javascript">
<!--
	var thisForm = document.frmMorses;
	function doCalculateTotal() {
	}
//-->
</body>
</html>