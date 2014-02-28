<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/menu.js"></script>	
	<script language="javascript" src="../js/common.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<title>View Accounts History</title>
</head>

<body class="body">
<form name="frmMorses" method="post">
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
						<col width="180">
						<col width="5">
						<col>
					</colgroup>
					<tr>
						<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
						<td align="center" background="../images/tab_01_02.gif" class="selected"><b>View Accounts History</b></td>
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
						<col width="23%">
						<col width="1px">
						<col width="27%">
						<col width="1px">
						<col width="23%">
						<col width="1px">
						<col width="1px">
						<col width="27%">
					</colgroup>
					<tr>
						<td class="Field">Account Date</td>
						<td>&nbsp;</td>
						<td class="Field">From: 
							<input class="FieldDate" tabindex="3" type="text" name="agreementDate" size="20" value="10/05/2005">&nbsp;
							<a href="#" tabindex="4"><img id="btAgreementDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
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
						<td class="Field">Adjustment Type</td>
						<td>&nbsp;</td>
						<td class="Field">
							&nbsp;</td>
						<td class="Field">
							<select class="FieldDate" tabindex="1" size="1" name="product2" >
								<option>Credit</option>
								<option>Debit</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class="Field">&nbsp;</td>
						<td>&nbsp;</td>
						<td class="Field">To:&nbsp;&nbsp;&nbsp;&nbsp;
							<input class="FieldDate" tabindex="5" type="text" name="agreementScannedDate" size="20" value="20/05/2005">&nbsp;
							<a href="#" tabindex="6"><img id="btAgreementScannedDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
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
						<td class="Field">Amount</td>
						<td>&nbsp;</td>
						<td class="Field">&pound;</td>
						<td class="Field"><input class="FieldDR" tabindex="7" type="text" name="itemIdentifier3" size="20" value=""></td>
					</tr>
					<tr>
						<td class="Field">&nbsp;</td>
						<td>&nbsp;</td>
						<td class="Field">&nbsp;</td>
						<td>&nbsp;</td>
						<td class="Field">Balance</td>
						<td>&nbsp;</td>
						<td class="Field">&pound;</td>
						<td class="Field"><input class="FieldDR" tabindex="7" type="text" name="itemIdentifier4" size="20" value=""></td>
					</tr>
					</table>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr class="btnormal">
			<td>&nbsp;</td>
			<td colspan="2">
				<a href="../Accounts/AccountHistory.jsp" class="btnormal" tabindex="25">Search</a>&nbsp;&nbsp;
				<a href="javascript:doClose();" class="btnormal" tabindex="26">Close</a>
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
						<col width="15%" align="left" valign="top">
						<col width="10%" align="left" valign="top">
						<col width="10%" align="left" valign="top">
						<col width="15%" align="right" valign="top">
						<col width="20%" align="right" valign="top">
						<col width="10%" align="right" valign="top">
						<col width="10%" align="right" valign="top">						
						<col width="10%" align="left" valign="top">
					</colgroup>
					<tr class="Section">
						<th class="Title" nowrap><b>Account ID</b></th>
						<th class="Title" nowrap><b>Account Status</b></th>
						<th class="Title" nowrap><b>Transaction ID</b></th>
						<th class="Title" nowrap><b>Transaction Type</b></th>
						<th class="Title" nowrap><b>Amount (&pound;)</b></th>
						<th class="Title" nowrap><b>Balance (&pound;)</b></th>
						<th class="Title" nowrap><b>Commission (%)</b></th>
						<th class="Title" nowrap><b>Check ID</b></th>
					</tr>
					<tr class="Field2">
						<td>123456</td>
						<td>Live</td>
						<td>324253463435</td>
						<td>Re-Financed</td>
						<td>669,455.00</td>
						<td>45.00</td>
						<td>10</td>
						<td>15</td>
					</tr>
					<tr class="Field">
						<td>123457</td>
						<td>Consolidated</td>
						<td>242356343457</td>
						<td>Re-Financed</td>
						<td>87,477.00</td>
						<td>789.00</td>
						<td>0.5</td>
						<td>10</td>
					</tr>
					<tr class="Field2">
						<td>123456</td>
						<td>Closed</td>
						<td>534634524234</td>
						<td>Cancelled</td>
						<td>334,662.00</td>
						<td>7,564.00</td>
						<td>5.2</td>
						<td>5</td>
					</tr>
					<tr class="Field">
						<td>123456</td>
						<td>Live</td>
						<td>345464645645</td>
						<td>Consolidated</td>
						<td>167,099.00</td>
						<td>5.00</td>
						<td>3</td>
						<td>88</td>
					</tr>
					<tr class="Field2">
						<td>123458</td>
						<td>Live</td>
						<td>345464545646</td>
						<td>Re-Financed</td>
						<td>5,779.00</td>
						<td>789.00</td>
						<td>9</td>
						<td>8</td>
					</tr>
					<tr class="Field">
						<td>123456</td>
						<td>Live</td>
						<td>324253463435</td>
						<td>Re-Financed</td>
						<td>669,455.00</td>
						<td>45.00</td>
						<td>10</td>
						<td>15</td>
					</tr>
					<tr class="Field2">
						<td>123457</td>
						<td>Consolidated</td>
						<td>242356343457</td>
						<td>Re-Financed</td>
						<td>87,477.00</td>
						<td>789.00</td>
						<td>0.5</td>
						<td>10</td>
					</tr>
					<tr class="Field">
						<td>123456</td>
						<td>Closed</td>
						<td>534634524234</td>
						<td>Cancelled</td>
						<td>334,662.00</td>
						<td>7,564.00</td>
						<td>5.2</td>
						<td>5</td>
					</tr>
					<tr class="Field2">
						<td>123456</td>
						<td>Live</td>
						<td>345464645645</td>
						<td>Consolidated</td>
						<td>167,099.00</td>
						<td>5.00</td>
						<td>3</td>
						<td>88</td>
					</tr>
					<tr class="Field">
						<td>123458</td>
						<td>Live</td>
						<td>345464545646</td>
						<td>Re-Financed</td>
						<td>5,779.00</td>
						<td>789.00</td>
						<td>9</td>
						<td>8</td>
					</tr>
					<tr class="Field2">
						<td>123456</td>
						<td>Live</td>
						<td>324253463435</td>
						<td>Re-Financed</td>
						<td>669,455.00</td>
						<td>45.00</td>
						<td>10</td>
						<td>15</td>
					</tr>
					<tr class="Field">
						<td>123457</td>
						<td>Consolidated</td>
						<td>242356343457</td>
						<td>Re-Financed</td>
						<td>87,477.00</td>
						<td>789.00</td>
						<td>0.5</td>
						<td>10</td>
					</tr>
					<tr class="Field2">
						<td>123456</td>
						<td>Closed</td>
						<td>534634524234</td>
						<td>Cancelled</td>
						<td>334,662.00</td>
						<td>7,564.00</td>
						<td>5.2</td>
						<td>5</td>
					</tr>
					<tr class="Field">
						<td>123456</td>
						<td>Live</td>
						<td>345464645645</td>
						<td>Consolidated</td>
						<td>167,099.00</td>
						<td>5.00</td>
						<td>3</td>
						<td>88</td>
					</tr>
					<tr class="Field2">
						<td>123458</td>
						<td>Live</td>
						<td>345464545646</td>
						<td>Re-Financed</td>
						<td>5,779.00</td>
						<td>789.00</td>
						<td>9</td>
						<td>8</td>
					</tr>
					<tr class="Field">
						<td>123456</td>
						<td>Live</td>
						<td>324253463435</td>
						<td>Re-Financed</td>
						<td>669,455.00</td>
						<td>45.00</td>
						<td>10</td>
						<td>15</td>
					</tr>
					<tr class="Field2">
						<td>123457</td>
						<td>Consolidated</td>
						<td>242356343457</td>
						<td>Re-Financed</td>
						<td>87,477.00</td>
						<td>789.00</td>
						<td>0.5</td>
						<td>10</td>
					</tr>
					<tr class="Field">
						<td>123456</td>
						<td>Closed</td>
						<td>534634524234</td>
						<td>Cancelled</td>
						<td>334,662.00</td>
						<td>7,564.00</td>
						<td>5.2</td>
						<td>5</td>
					</tr>
					<tr class="Field2">
						<td>123456</td>
						<td>Live</td>
						<td>345464645645</td>
						<td>Consolidated</td>
						<td>167,099.00</td>
						<td>5.00</td>
						<td>3</td>
						<td>88</td>
					</tr>
					<tr class="Field">
						<td>123458</td>
						<td>Live</td>
						<td>345464545646</td>
						<td>Re-Financed</td>
						<td>5,779.00</td>
						<td>789.00</td>
						<td>9</td>
						<td>8</td>
					</tr>
				</table>
			</td>
			<td>&nbsp;</td>
		</tr>
	</table>
</form>

<script language="javascript">
	function doClose() {
		window.close();
	}
</script>
</body>

</html>