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
	<title>Adjustment Result</title>
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
					//menuAccount(2);
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
						<col width="420">
						<col width="420">
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
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Adjustment Result</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td align="right" class="buttontop">Page <b>1</b> of <b>1</b> (from <b>1</b> to <b>3</b> of <b>3</b> records)</td>
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
									<col width="2%" align="center" valign="top">
									<col width="10%" align="left" valign="top">
									<col width="10%" align="left" valign="top">
									<col width="10%" align="right" valign="top">
									<col width="10%" align="left" valign="top">
									<col width="10%" align="left" valign="top">
									<col width="10%" align="left" valign="top">
									<col width="10%" align="left" valign="top">
									<col width="48%" align="left" valign="top">
								</colgroup>
								<tr>
									<th class="Title"><input type="checkbox" name="select1" style="font-weight: 700"></th>
									<th class="Title"><a href="#" title="Short by Adjustment ID"><b>Adjustment ID</b></a></th>
									<th class="Title"><a href="#" title="Short by Account ID</"><b>Account ID</b></a></th>
									<th class="Title"><a href="#" title="Short by Date"><b>Date</b></a></th>
									<th class="Title"><a href="#" title="Short by Type"><b>Type</b></a></th>
									<th class="Title"><a href="#" title="Short by Status"><b>Status</b></a></th>
									<th class="Title"><a href="#" title="Short by Credit Amount"><b>Credit Amount</b></a></th>
									<th class="Title"><a href="#" title="Short by Debit Amount"><b>Debit <br>Amount</b></a></th>
									<th class="Title"><a href="#" title="Short by Memo"><b>Memo</b></a></th>
								</tr>
								<tr class="Field">
									<td><input type="checkbox" name="select2" value=""></td>
									<td><a href="ViewAdjustment.jsp">00001234</a></td>
									<td>123456</td>
									<td>19/05/2004</td>
									<td>Credit</td>
									<td>New</td>
									<td>123456</td>
									<td>669455</td>
									<td>&nbsp;</td>
								</tr>
								<tr class="Field2">
									<td><input type="checkbox" name="select3" value="1"></td>
									<td><a href="ViewAdjustment.jsp">00001235</a></td>
									<td>123457</td>
									<td>20/05/2004</td>
									<td>Debit</td>
									<td>Amended</td>
									<td>123457</td>
									<td>874477</td>
									<td>&nbsp;</td>
								</tr>
								<tr class="Field">
									<td><input type="checkbox" name="select" value="11"></td>
									<td><a href="ViewAdjustment.jsp">00001236</a></td>
									<td>123458</td>
									<td>21/05/2004</td>
									<td>Credit</td>
									<td>Archived</td>
									<td>123458</td>
									<td>167099</td>
									<td>&nbsp;</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td>
							<a href="AmendAdjustment.jsp" class="btnormal" tabindex="25">Update</a>&nbsp;&nbsp;
							<a href="SearchAdjustmentResult.jsp" class="btnormal" tabindex="26">Delete</a>&nbsp;&nbsp;
							<a href="SetupAdjustment.jsp" class="btnormal" tabindex="25">Setup Adjustment</a>&nbsp;&nbsp;
							<a href="SearchAdjustment.jsp" class="btnormal" tabindex="26">New Search</a>
						</td>
						<td align="right">
							<script language="javascript">
								<!--
								doNavigation();
								//-->
							</script>
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