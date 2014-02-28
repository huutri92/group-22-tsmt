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
	<title>View Adjustment Detail</title>
</head>

<body class="body" onload="javascript:disableForm();">
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
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" class="selected"><a href="../Accounts/SearchViewAccountTab.jsp" class="buttontop"><b>View Account</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" class="selected"><a href="../Accounts/SearchViewAdjustmentTab.jsp" class="buttontop"><b>View Adjustment</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>									
									<td>&nbsp;</td>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>View Transactions</b></td>
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
							<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder">
								<colgroup>
									<col width="25%" align="left" valign="top">
									<col width="20%" align="left" valign="top">
									<col width="10%" align="right" valign="top">
									<col width="15%" align="right" valign="top">
									<col width="10%" align="left" valign="top">						
									<col width="20%" align="left" valign="top">
								</colgroup>
								<tr class="Section">
									<th class="Title"><b>Transaction ID</b></th>
									<th class="Title"><b>Transaction Type</b></th>
									<th class="Title"><b>Amount (&pound;)</b></th>
									<th class="Title"><b>Commission (%)</b></th>
									<th class="Title"><b>Check ID</b></th>
									<th class="Title"><b>Account Status</b></th>
								</tr>
								<tr class="Field">
									<td>324253463435</td>
									<td>Re-Financed</td>
									<td>669,455.00</td>
									<td>10</td>
									<td>15</td>
									<td>Live</td>
								</tr>
								<tr class="Field2">
									<td>242356343457</td>
									<td>Re-Financed</td>
									<td>87,477.00</td>
									<td>0.5</td>
									<td>10</td>
									<td>Consolidated</td>
								</tr>
								<tr class="Field">
									<td>534634524234</td>
									<td>Cancelled</td>
									<td>334,662.00</td>
									<td>5.2</td>
									<td>5</td>
									<td>Closed</td>
								</tr>
								<tr class="Field2">
									<td>345464645645</td>
									<td>Consolidated</td>
									<td>167,099.00</td>
									<td>3</td>
									<td>88</td>
									<td>Live</td>
								</tr>
								<tr class="Field">
									<td>345464545646</td>
									<td>Re-Financed</td>
									<td>5,779.00</td>
									<td>9</td>
									<td>8</td>
									<td>Live</td>
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
	function doViewDetail() {
		var width = 700;
		var height = 200;
		var newWin = window.open("ViewAdjustment.jsp", "Adjustment", centerWindow(width, height));	
	}
</script>
</body>

</html>