<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>	
	<script language="javascript" src="../js/menu.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">		
	<title>Staff Details View</title>
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
					menuStaff(1);
					//-->
				</script>
				<table width="100%" border="0" cellspacing="0" cellpadding="0" height="350">
					<tr>
						<td valign="bottom" height="250">&nbsp;</td>
					</tr>
					<tr>
						<td valign="bottom" height="100">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<colgroup>
								<col width="10">
								<col width="">
								</colgroup>
								<tr>
									<td height="20"><img src="images/spacer.gif" height="1" width="10" border="0"></td>
									<td height="20"><a href="javascript:doNavigation()"><b>PREVIOUS</b></a></td>
								</tr>									
								<tr>
									<td height="20"><img src="images/spacer.gif" height="1" width="10" border="0"></td>
									<td height="20"><a href="javascript:doNavigation()"><b>NEXT</b></a></td>
								</tr>
								<tr>
									<td height="20"><img src="images/spacer.gif" height="1" width="10" border="0"></td>
									<td height="20"><a href="javascript:doRefesh();"><b>REFESH</b></a></td>
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
			<td valign="top" height="550">
				<table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form">
					<colgroup>
						<col width="5">
						<col width="240">
						<col width="600">
						<col width="5">
					</colgroup>
					<tr>
						<td height="25" valign="top"><img src="../images/corner.gif" border="0" width="5" height="5"></td>
						<td height="25"><b>&nbsp;</b></td>
						<td height="25" align="right"></td>
						<td height="25">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="5">
									<col width="100">
									<col width="5">
									<col width="5">

									<col width="5">
									<col width="130">
									<col width="5">
									<col width="5">

									<col width="5">
									<col width="100">
									<col width="5">
									<col width="5">

									<col width="5">
									<col width="110">
									<col width="5">
									<col width="5">

									<col width="5">
									<col width="120">
									<col width="5">
									<col width="5">

									<col width="5">
									<col width="150">
									<col width="5">
									<col width="5">

									<col width="5">
									<col width="100">
									<col width="5">

									<col width="*">
								</colgroup>
								<tr>	
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>Staff Details</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
																									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="StaffCommSchemesView.jsp" class="buttontop"><b>Commission Schemes</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>

									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="BusinessUnitsView.jsp"class="buttontop"><b>Business Units</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>

									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="../Finance/ReconciliationSummaryView.jsp"class="buttontop" ><b>Cash Reconciliation</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>

									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CommissionHistoryView.jsp"class="buttontop"><b>Commission History</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><b>Commission Statement</b></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>

									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="AdditionalDataView.jsp"class="buttontop"><b>Additional Data</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>

									<td>&nbsp;</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
								<colgroup>
									<col width="25%">
									<col width="1%">
									<col width="39%">
									<col width="1%">
									<col width="34%">
								</colgroup>
								<tr>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="40%">
												<col width="60%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="2"><b>PERSONAL DETAILS</b></th>
											</tr>
											<tr>
												<td height="5" colspan="2"></td>
											</tr>
											<tr class="field20">
												<td nowrap>Staff ID</td>
												<td nowrap><input class="FieldShort" type="text" name="" value="1236646666"></td>
											</tr>
											<tr class="field20">
												<td nowrap>Salutation</td>
												<td nowrap>Mr.</td>
											</tr>
											<tr class="field20">
												<td nowrap>First Name</td>
												<td nowrap>Quang Hung</td>
											</tr>
											<tr class="field20">
												<td nowrap>Surname</td>
												<td nowrap>Vu</td>
											</tr>
											<tr>
												<td height="3" colspan="2"></td>
											</tr>											
											<tr class="field20">
												<td colspan="2">Address</td>
											</tr>
											<tr class="field20">
												<td nowrap>01B</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field20">
												<td nowrap>Maitland House</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field20">
												<td nowrap>Southend-On-Sea</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field20">
												<td nowrap>SS1 2JY</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field20">
												<td height="3" colspan="2"></td>
											</tr>
											<tr class="field20">
												<td nowrap>01702 125 126</td>
												<td nowrap>07977 11 44 55</td>
											</tr>
											<tr>
												<td height="3" colspan="2"></td>
											</tr>
										</table>
									</td>
									<td>&nbsp;</td>
									<td valign="top" colspan="3">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="20%">
												<col width="1px">
												<col width="30%">
												<col width="1px">
												<col width="25%">
												<col width="1px">
												<col width="25%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="7"><b>EMPLOYMENT DETAILS</b></th>
											</tr>
											<tr>
												<td height="5" colspan="7"></td>
											</tr>
											<tr class="field220">
												<td>Start Date <font color="#FF0000"></font></td>
												<td>&nbsp;</td>
												<td>
													20/10/2001
												</td>
												<td>&nbsp;</td>
												<td>Job Title <font color="#FF0000"></font></td>
												<td>&nbsp;</td>
												<td>
													Collector
												</td>
											</tr>
											<tr class="field220">
												<td>Finish Date</td>
												<td>&nbsp;</td>
												<td>
													20/01/2009</td>
												<td>&nbsp;</td>
												<td>N.I Number</td>
												<td>&nbsp;</td>
												<td>1002101210</td>
											</tr>
											<tr class="field220">
												<td>Status <font color="#FF0000"></font></td>
												<td>&nbsp;</td>
												<td>
													Live
												</td>
												<td>&nbsp;</td>
												<td>Payment Method <font color="#FF0000"></font></td>
												<td>&nbsp;</td>
												<td>Cheque</td>
											</tr>
											<tr class="field220">
												<td>User Group <font color="#FF0000"></font></td>
												<td>&nbsp;</td>
												<td>
													Employee
												</td>
												<td>&nbsp;</td>
												<td>Payroll Number <font color="#FF0000"></font></td>
												<td>&nbsp;</td>
												<td>124578447554</td>
											</tr>
											<tr class="field220">
												<td>Staff Type <font color="#FF0000"></font></td>
												<td>&nbsp;</td>
												<td>
													Collector
												</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
										</table>
									</td>
								</tr>
								
								<tr>
									<td colspan="5">&nbsp;</td>
								</tr>
								
								<tr>
									<td colspan="3">
										<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormWithBorder">
											<colgroup>
												<col width="30%" align="left">
												<col width="1px">
												<col width="20%" align="left">
												<col width="1px">
												<col width="25%" align="left">
												<col width="1px">
												<col width="25%" align="left">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="7" align="center"><b>CREDIT DETAILS</b></th>
											</tr>
											<tr class="Section">
												<td colspan="7" height="5"></td>
											</tr>
											<tr class="field220">
												<td>&nbsp;</td>
												<td colspan="2">&nbsp;</td>
												<td>&nbsp;</td>
												<td>New Customer <br>Credit Multiplier</td>
												<td>&nbsp;</td>
												<td>Existing Customer <br>Credit Multiplier</td>
											</tr>
											<tr class="field220">
												<td rowspan="2" valign="top" nowrap>Range Available</td>
												<td colspan="2">Min</td>
												<td>&nbsp;</td>
												<td>4</td>
												<td>&nbsp;</td>
												<td>5</td>
											</tr>
											<tr class="field220">
												<td colspan="2">Max</td>
												<td>&nbsp;</td>
												<td>6</td>
												<td>&nbsp;</td>
												<td>7</td>
											</tr>
											<tr class="field220">
												<td nowrap>Assigned Multipliers</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>5</td>
												<td>&nbsp;</td>
												<td>6</td>
											</tr>
											<tr>
												<td colspan="6" height="3"></td>
											</tr>
											<tr class="field220">
												<td>ATM Number</td>
												<td>&nbsp;</td>
												<td colspan="5">1200 1214 2111</td>
											</tr>
											<tr class="field220">
												<td>ATM Limit</td>
												<td>&pound;</td>
												<td>1000</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr class="field220">
												<td>Float Limit</td>
												<td>&pound;</td>
												<td>20.25</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
										</table>
									</td>
									<td>&nbsp;</td>
									<td valign="top" align="right">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="40%">
												<col width="1px">
												<col width="60%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="3"><b>SYSTEM DETAILS</b></th>
											</tr>
											<tr>
												<td height="5" colspan="3"></td>
											</tr>
											<tr class="field20">
												<td>User Name</td>
												<td>&nbsp;</td>
												<td>HaiVH</td>
											</tr>
											<tr class="field20">
												<td>Password</td>
												<td>&nbsp;</td>
												<td>**********</td>
											</tr>
											<tr class="field20">
												<td>Confirm Password</td>
												<td>&nbsp;</td>
												<td>**********</td>
											</tr>
										</table>
									</td>
								</tr>								
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class=btnormal>
						<td ></td>
						<td colspan=2><a href="CreateStaff.jsp" class="btnormal">Setup Staff</a>&nbsp;&nbsp;
										<a href="StaffDetails.jsp" class="btnormal">Amend Staff</a>&nbsp;&nbsp;</td></td>
						<td ></td>
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
function doNavigation() {
	//
}
//-->
</script>
</body>

</html>