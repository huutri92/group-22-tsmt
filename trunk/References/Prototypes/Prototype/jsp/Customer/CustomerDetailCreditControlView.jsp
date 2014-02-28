<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/menu.js"></script>	
	<script language="javascript" src="../js/common.js"></script>
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<title>Customer Detail Account</title>
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
						<col width="420">
						<col width="420">
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
									<col width="85">
									<col width="5">
									<col width="5">
									
									<col width="4">
									<col width="85">
									<col width="5">
									<col width="5">
									
									<col width="4">
									<col width="85">
									<col width="5">
									<col width="5">
									
									<col width="4">
									<col width="85">
									<col width="5">
									<col width="5">
									
									<col width="4">
									<col width="85">
									<col width="5">
									<col width="5">


									<col width="4">
									<col width="85">
									<col width="5">
									<col>
								</colgroup>
								<tr>
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif"><a href="CustomerDetailMainView.jsp"class="buttontop"><b>Main Info</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="10" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif"><a href="CustomerDetailAddressView.jsp"class="buttontop"><b>Address Info</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="10" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif"><a href="CustomerDetailAccountView.jsp"class="buttontop"><b>Account</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="10" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif"><a href="CustomerDetailHistoryView.jsp"class="buttontop"><b>History</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="10" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Credit Control</b></td>
									<td><img src="../images/tab_01_03.gif" width="10" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" ><a href="CustomerDetailEventLogView.jsp"class="buttontop"><b>Event Logs</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="10" height="21" border="0"></td>
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
									<col width="25%">
									<col width="2%">
									<col width="1px">
									<col width="23%">
									<col width="1px">
									<col width="25%">
									<col width="2%">
								</colgroup>
								<tr>
									<td class="Field">Week to Paid</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldDateR" type="text" name="weekPaid" value = "3" size="20">&nbsp;week</td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Weekly Visited Flag</td>
									<td>&nbsp;</td>
									<td class="Field"><input type="checkbox" name="weeklyVisited" class ="Checkbox"></td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Current Debit Performance</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldDateR" type="text" name="curDebPer" value = "15" size="20">&nbsp;%</td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Average Debit Performance</td>
									<td>&nbsp;</td>
									<td class="Field">
									<input type="text" name="avgDebPer" size="20" class="FieldDateR" value = "20">&nbsp;%</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Man Sale Limit</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldDateR" type="text" name="manSaleLimit" value = "150" size="20"></td>

									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Man Balance Limit</td>
									<td>&nbsp;</td>
									<td class="Field">
									<input type="text" name="manBalanceLimit" size="20" class="FieldDateR" value = "700"></td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Man Staff ID</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldDate" type="text" name="manStaffID" value = "NI003" size="20"></td>

									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Man Overriding Date</td>
									<td>&nbsp;</td>
									<td class="Field">
									<input type="text" name="manOverDate" size="20" class="FieldDate" value = "17/04/2005"></td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Agent Sale Limit</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldDateR" type="text" name="agentSaleLimit" value = "50" size="20"></td>

									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Agent Balance Limit</td>
									<td>&nbsp;</td>
									<td class="Field">
									<input type="text" name="agentBalanceLimit" size="20" class="FieldDateR" value = "200"></td>
									<td class="Field">&nbsp;</td>
								</tr>
							</table>
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
						<td colspan="2">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">&nbsp;</td>
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