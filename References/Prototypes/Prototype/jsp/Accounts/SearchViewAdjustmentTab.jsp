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
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>View Adjustment</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>									
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
							<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder" id="table1">
								<colgroup>
									<col width="20%" align="left" valign="top">
									<col width="20%" align="right" valign="top">
									<col width="20%" align="left" valign="top">
									<col width="20%" align="left" valign="top">
									<col width="20%" align="right" valign="top">
								</colgroup>
								<tr>
									<th class="Title"><b>Adjustment ID</b></th>
									<th class="Title"><b>Adjustment Date</b></th>
									<th class="Title"><b>Adjustment Status</b></th>
									<th class="Title"><b>Adjustment Type</b></th>
									<th class="Title"><b>Amount (&pound;)</b></th>
								</tr>
								<tr class="Field">
									<td><a href="javascript:doViewDetail();">00001234</a></td>
									<td>19/05/2004</td>
									<td>New</td>
									<td>Credit</td>
									<td>669,455.00</td>
								</tr>
								<tr class="Field2">
									<td><a href="javascript:doViewDetail();">00001235</a></td>
									<td>20/05/2004</td>
									<td>Amended</td>
									<td>Debit</td>
									<td>874,477.00</td>
								</tr>
								<tr class="Field">
									<td><a href="javascript:doViewDetail();">00001236</a></td>
									<td>21/05/2004</td>
									<td>Archived</td>
									<td>Credit</td>
									<td>167,099.00</td>
								</tr>
								<tr class="Field2">
									<td><a href="javascript:doViewDetail();">00001237</a></td>
									<td>10/05/2000</td>
									<td>Amended</td>
									<td>Debit</td>
									<td>78,123.00</td>
								</tr>
								<tr class="Field">
									<td><a href="javascript:doViewDetail();">00001238</a></td>
									<td>20/10/2004</td>
									<td>New</td>
									<td>Credit</td>
									<td>245,236.00</td>
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