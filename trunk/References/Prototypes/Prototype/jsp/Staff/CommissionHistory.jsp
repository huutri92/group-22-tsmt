<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/menu.js"></script>
	<script language="javascript" src="../js/common.js"></script>
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<title>Commission History</title>
</head>

<body class="body" onload="javascript:init();">
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
								<col width="*">
								</colgroup>
								<tr>
									<td height="20"><img src="images/spacer.gif" height="1" width="10" border="0"></td>
									<td height="20"><a href="CommissionHistory.jsp"><b>PREVIOUS</b></a></td>
								</tr>								
								<tr>
									<td height="20"><img src="images/spacer.gif" height="1" width="10" border="0"></td>
									<td height="20"><a href="CommissionHistory.jsp"><b>NEXT</b></a></td>
								</tr>
								<tr>
									<td height="20"><img src="images/spacer.gif" height="1" width="10" border="0"></td>
									<td height="20"><a href="CommissionHistory.jsp"><b>REFESH</b></a></td>
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
						<td height="25" colspan="2">&nbsp;</td>
						<td height="25">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>									
									<col width="5">
									<col width="75">
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
									<col width="100">
									<col width="5">
									
									<col width="*">
								</colgroup>
								<tr>
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="StaffDetailsView.jsp"class="buttontop"><b>Staff Details</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>

									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="StaffCommSchemesView.jsp" class="buttontop"><b>Commission Schemes</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>

									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="BusinessUnitsView.jsp"class="buttontop" ><b>Business Units</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="../Finance/ReconciliationSummaryView.jsp"class="buttontop" ><b>Cash Reconciliation</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>Commission History</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>

									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap>
										<b>Commission Statement</b></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									
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
									<col width="100%">
								</colgroup>
								<tr>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="15%">
												<col width="85%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="2"><b>STAFF COMMISSION</b></th>
											</tr>
											<tr>
												<td height="5" colspan="2"></td>
											</tr>
											<tr class="Field">
												<td>Staff ID</td>
												<td><input class="FieldShort" type="text" name="staffID" value="1236646666"></td>
											</tr>
											<tr class=field>
												<td>Name</td>
												<td>Mr Hong Hai Vu</td>
											</tr>
											<tr>
												<td colspan="2" height="5"></td>
											</tr>
											<tr>
												<td class="Field" colspan="2">
													<table class="FormWithBorder" border="0" width="100%" cellpadding="1" cellspacing="1">
														<colgroup>
															<col width="10%" align="left">
															<col width="10%" align="left">
															<col width="10%" align="right">
															<col width="10%" align="right">
															<col width="10%" align="right">
															<col width="10%" align="right">
															<col width="10%" align="right">
															<col width="10%" align="right">
															<col width="10%" align="right">
															<col width="10%" align="right">
														</colgroup>
														<tr class="Section">
															<th class="Title">Week Start</th>
															<th class="Title">Week End</th>
															<th class="Title">B/FWD&nbsp;(&pound;)</th>
															<th class="Title">Adjustments&nbsp;(&pound;)</th>
															<th class="Title">Cash&nbsp;(&pound;)</th>
															<th class="Title">Sales&nbsp;(&pound;)</th>
															<th class="Title">Additional&nbsp;(&pound;)</th>
															<th class="Title">Total Payable&nbsp;(&pound;)</th>
															<th class="Title">Paid&nbsp;(&pound;)</th>
															<th class="Title">C/FWD&nbsp;(&pound;)</th>
														</tr>
														<tr class="Field">
															<td >
															<a href="javascript:viewCommissionStatement()">07/02/2005</a></td>
															<td >13/02/2005</td>
															<td >200.0</td>
															<td >170.0</td>
															<td >20.0</td>
															<td >342.0</td>
															<td>295.0</td>
															<td>827.0</td>
															<td>1811.0</td>
															<td>-1184.0</td>
														</tr>
														<tr class="Field2">
															<td >
															<a href="javascript:viewCommissionStatement()">31/01/2005</a></td>
															<td >06/02/2005</td>
															<td >200.0</td>
															<td >250.0</td>
															<td >2550.0</td>
															<td >150.0</td>
															<td>300.0</td>
															<td>3250.0</td>
															<td>2000.0</td>
															<td>1050.0</td>
														</tr>
														<tr class="Field">
															<td >
															<a href="javascript:viewCommissionStatement()">24/01/2005</a></td>
															<td >30/01/2005</td>
															<td >200.0</td>
															<td >250.0</td>
															<td >2550.0</td>
															<td >150.0</td>
															<td>300.0</td>
															<td>3250.0</td>
															<td>2000.0</td>
															<td>1050.0</td>
														</tr>
														<tr class="Field2">
															<td >
															<a href="javascript:viewCommissionStatement()">17/01/2005</a></td>
															<td >23/01/2005</td>
															<td >200.0</td>
															<td >250.0</td>
															<td >2550.0</td>
															<td >150.0</td>
															<td>300.0</td>
															<td>3250.0</td>
															<td>2000.0</td>
															<td>1050.0</td>
														</tr>
														<tr class="Field">
															<td >
															<a href="javascript:viewCommissionStatement()">10/01/2005</a></td>
															<td >16/01/2005</td>
															<td >200.0</td>
															<td >250.0</td>
															<td >2550.0</td>
															<td >150.0</td>
															<td>300.0</td>
															<td>3250.0</td>
															<td>2000.0</td>
															<td>1050.0</td>
														</tr>
														<tr class="Field2">
															<td >
															<a href="javascript:viewCommissionStatement()">03/01/2005</a></td>
															<td >09/01/2005</td>
															<td >200.0</td>
															<td >250.0</td>
															<td >2550.0</td>
															<td >150.0</td>
															<td>300.0</td>
															<td>3250.0</td>
															<td>2000.0</td>
															<td>1050.0</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
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
</body>
<script language="javascript">
	function init() {
		disableForm();
		document.frmMorses.staffID.disabled = false;
		
	}
<!--
	function viewCommissionStatement() {
		window.location.href="CommStatements.jsp";
	}
//-->
</script>
</html>