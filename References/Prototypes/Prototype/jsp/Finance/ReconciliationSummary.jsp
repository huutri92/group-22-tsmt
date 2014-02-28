<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>	
	<script language="javascript" src="../js/menu.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">	
	<script type="text/javascript" src="../js/calendar/calendar.js"></script>
	<script type="text/javascript" src="../js/calendar/calendar-setup.js"></script>
	<script type="text/javascript" src="../js/calendar/lang/calendar-en.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/calendar/calendar-blue.css">
	<title>Cash Reconciliation</title>
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
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="../Staff/StaffDetailsView.jsp"class="buttontop" ><b>Staff Details</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
																									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="../Staff/StaffCommSchemesView.jsp" class="buttontop"><b>Commission Schemes</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>

									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="../Staff/BusinessUnitsView.jsp"class="buttontop"><b>Business Units</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>Cash Reconciliation</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="../Staff/CommissionHistoryView.jsp"class="buttontop"><b>Commission History</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><b>Commission Statement</b></td>
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
							<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormWithBorder">
								<colgroup>
									<col width="100%">
								</colgroup>
								<tr>
									<td>
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="10%">
												<col width="30%">
												<col width="25%">
												<col width="25%">
												<col width="10%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="5"><b>AGENT DETAILS</b></th>
											</tr>
											<tr class="field220">
												<td class="highlightorange">Staff ID </td>
												<td class="highlightorange">1236646666</td>
												<td class="highlightorange">&lt;UserFirstName&gt;&nbsp; &lt;UserSurname&gt;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr height=20 class="field220">
												<td>Select Period </td>
												<td>Current Reconciliation</td>
												<td>From Date 01/09/2005 11:33:39</td>
												<td>To Date 13/09/2005 11:33:59 </td>
												<td>&nbsp;</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td height="5"></td>
								</tr>
								<tr>
									<td>
										<table border="0" width="100%" cellpadding="1" cellspacing="1">
											<colgroup>
												<col width="20%">
												<col width="25%">
												<col width="25%">
												<col width="30%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="4"><b>DAILY CASH RECONCILIATION</b></th>
											</tr>
											<tr class="field320">
												<td>&nbsp;</td>
												<td class="highlightblue"><b>Expected &pound;</b></td>
												<td class="highlightblue"><b>Actual &pound;</b></td>
												<td class="highlightblue">&nbsp;</td>
											</tr>
											<tr class="field20">
												<td>Opening Float</td>
												<td>&lt;value&gt;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr class="field20">
												<td>
												<a href="javascript:doShowTotalCollection()">
												<b>Total Collections</b></a></td>
												<td>&lt;value&gt;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
																																	
											<tr class="field20">
												<td>
												<a href="javascript:doShowATMWithdrawls()">
												<b>Total ATM Withdrawals</b></a></td>
												<td>&lt;value&gt;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
																																	
											<tr class="field20">
												<td>
												<a href="javascript:doShowLoanSales()">
												<b>Loan Sales</b></a></td>
												<td>&lt;value&gt;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
																																	
											<tr class="field20">
												<td>
												<a href="javascript:doShowRefunds()">
												<b>Refunds</b></a></td>
												<td>&lt;value&gt;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
																																	
											<tr class="field20">
												<td>
												<a href="javascript:doShowCommTaken()">
												<b>Commission Taken</b></a></td>
												<td>&lt;value&gt;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
																																	
											<tr>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
																																	
											<tr class="field220">
												<td>Cheques</td>
												<td>&lt;value&gt;</td>
												<td>
													<input class="FieldDate" type="text" name="" value="" size="20"></td>
												<td>
													&nbsp;</td>
											</tr>
																																	
											<tr class="field220">
												<td>Cash</td>
												<td>&lt;value&gt;</td>
												<td>
													<input class="FieldDate" type="text" name="" value="" size="20"></td>
												<td>
													&nbsp;</td>
											</tr>
																																	
											<tr class="field220">
												<td>Cash Held</td>
												<td><b>&lt;value&gt;</b></td>
												<td><b>&lt;value&gt;</b></td>
												<td>&nbsp;</td>
											</tr>
																																	
											<tr class="field220">
												<td>
												<a href="javascript:doShowBankDiff()">
												<b>Banking Differences</b></a></td>
												<td>&lt;value&gt;</td>
												<td><b>&lt;value&gt;</b></td>
												<td>&nbsp;</td>
											</tr>
																																	
											<tr class="field220">
												<td>
												Float C/FWD</td>
												<td>
													<input class="FieldDate" type="text" name="" value="&lt;value&gt;" size="20">&nbsp;&nbsp;</td>
												<td>
													&nbsp;&nbsp;</td>
												<td>
													&nbsp;</td>
											</tr>
																																	
											<tr class="field220">
												<td>
												&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
																																	
											<tr class="field220">
												<td>
												&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
																																	
											<tr class="field220">
												<td>
												Amount To Bank</td>
												<td>&lt;value&gt;&nbsp;&nbsp;&nbsp;<a class=btnormal href="javascript:doConfirm()">Confirm</a></td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
																																	
											<tr class="field220">
												<td>
												Banking Slip Reference</td>
												<td>
													<input class="Field100" type="text" name="" value="&lt;Reference_number&gt; " size="20"></td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
																																	
										</table>					
									</td>
								</tr>								
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2"><a class=btnormal2 href="javascript:doSave()" target="_self">Save</a>&nbsp;
						<a class=btnormal2 href="../Finance/ReconciliationSummaryView.jsp" target="_self">Cancel</a>&nbsp;
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
	function doSave() {
		window.location.href = "ReconciliationSummaryView.jsp"
	}
	function doClose() {
		window.location.href = "ReconciliationSummaryView.jsp"
	}
	function doNavigation() {
	}
	function doConfirm() {
//	var confirm = window.showModalDialog("PopConfirm.jsp", window, "dialogWidth:300px; dialogHeight:140px; center:yes; resizable:no; help: no; status:no;");
//	/*
		var width = 300;
		var height = 100;
		var request = "PopConfirm.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
//		*/
	}	
	function doShowTotalCollection() {
		var width = 700;
		var height = 450;
		var request = "PopTotalCollections.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
	}

	//
	function doShowLoanSales() {
		var width = 700;
		var height = 510;
		var request = "PopLoanSales.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
	}
	function doShowATMWithdrawls() {
		var width = 700;
		var height = 330;
		var request = "PopATMWithdrawls.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
	}
	function doShowRefunds() {
		var width = 700;
		var height = 450;
		var request = "PopRefunds.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
	}
	function doShowCommTaken() {
		var width = 700;
		var height = 330;
		var request = "PopCommTaken.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
	}
	function doShowBankDiff() {
		var width = 700;
		var height = 330;
		var request = "PopBankDiff.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
	}
	function doViewHistory() {
		var history = window.frmMorses.period;
		if (history.value == 'history') {
			var width = 300;
			var height = 200;
			var request = "ReconciliationDate.jsp";
			var newWin = window.open(request, "", centerWindow(width, height));
			newWin.opener = self;
			return;
		}
	}
</script>
</html>