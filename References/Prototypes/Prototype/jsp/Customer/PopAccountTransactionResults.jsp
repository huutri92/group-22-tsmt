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
	<title>Account Transaction Payments</title>
</head>

<body class="body" >
<form name="frmMorses" method="post">
	<table border="0" width="80%" cellpadding="0" cellspacing="0" class="Form" align="center">
		<colgroup>
			<col width="5">
			<col width="240">
			<col width="600">
			<col width="5">
		</colgroup>
		<tr>
			<td height="25" colspan="4"></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td colspan="2">
				<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
					<colgroup>
						<col width="5">
						<col width="180">
						<col width="5">
						<col width="*">
					</colgroup>
					<tr>
						<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
						<td align="center" background="../images/tab_01_02.gif" class="selected">Account Transaction Payments</td>
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
				<table class="Form" border="0" width="100%" cellpadding="0" cellspacing="0">
					<colgroup>
						<col width="38%">
						<col width="30%">
						<col width="32%" align="center">
					</colgroup>
					<tr>
						<td colspan="3">
							<div style ="overflow-y:auto;width: 100%; height: 200px;">
								<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder">
									<colgroup>
										<col width="5%">
										<col width="18%">
										<col width="38%">
										<col width="18%">
										<col width="19%" align="right">
									</colgroup>
									<tr class="Section" height="10">
										<th class="Title" align="center"></th>
										<th class="Title" align="left">Account Number</th>
										<th class="Title" align="left">Cheque No</th>
										<th class="Title" align="left">Payment Date</th>
										<th class="Title">Amount</th>
									</tr>
									<tr class="Field" height = "20">
										<td><input type="checkbox" class="checkbox" name="selectedAccount"/></td>
										<td>AB1234/01</td>
										<td>091234593-8989123453</td>
										<td>07/10/2005</td>
										<td>40.00</td>
									</tr>
									<tr class="Field2" height = "20">
										<td><input type="checkbox" class="checkbox" name="selectedAccount"/></td>
										<td>AB1234/01</td>
										<td>091234593-8989123453</td>
										<td>03/05/2005</td>
										<td>45.00</td>
									</tr>
									<tr class="Field" height = "20">
										<td><input type="checkbox" class="checkbox" name="selectedAccount"/></td>
										<td>AB1234/02</td>
										<td>091234593-8989123454</td>
										<td>07/10/2004</td>
										<td>100.05</td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
					
				</table>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr class="btnormal">
			<td>&nbsp;</td>
			<td colspan="2"><a href="javascript:doClose()" class="btnormal">Close&nbsp;</a>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</table>
</form>

<script language="javascript">
	function doClose() {
		window.close();
	}
	function verify(){
		window.opener.location.href = "CustomerSummaryView.jsp";
		window.close();
	}
</script>
</body>

</html>