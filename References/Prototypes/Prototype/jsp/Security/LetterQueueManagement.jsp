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

	<title>Letter Queue Management</title>
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
					menuSystemAdmin(7);
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
									<col width="150"> 
									<col width="5"> 
									<col width="*"> 
								</colgroup> 
								<tr> 
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td> 
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Letter Queue Management</b></td> 
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
									<col width="15%" align="left">
									<col width="15%" align="left">
									<col width="70%" align="left">
								</colgroup>
								<tr class="Field">
									<td>&nbsp;</td>
									<td>From

									</td>
									<td>To</td>
								</tr>
								<tr class="Field">
									<td>Period</td>
									<td>
										<input class="FieldDate" type="text" name="FromDate" value="">&nbsp;
										<a href="#"><img id="btFromDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
										<script type="text/javascript">
											<!--
												Calendar.setup({
												  inputField	: "FromDate",
												  button		: "btFromDate",
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
									<td>
										<input class="FieldDate" type="text" name="ToDate" value="">&nbsp;
										<a href="#"><img id="btToDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
										<script type="text/javascript">
											<!--
												Calendar.setup({
												  inputField	: "ToDate",
												  button		: "btToDate",
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
								<tr class="Field">
									<td>Status</td>
									<td colspan="2">
										<select size="1" name="Status" class="FieldShort">
											<option value="">&nbsp;</option>
											<option value="">Sent</option>
											<option value="">Not Sent</option>
										</select>
									</td>
								</tr>
								<tr class="Field">
									<td>Letter Type</td>
									<td colspan="2">
										<select size="1" name="Status" class="FieldWidth300">
											<option value="">&nbsp;</option>
											<option value="TL1">TL1 - Non Payment of Terms</option>
											<option value="NP1">NP1 - Non Payment of Accounts</option>
											<option value="NP2">NP2 - Notice of Court Proceedings</option>
											<option value="NEWLN">NEWLN - New Loan</option>
											<option value="REFLN">REFLN - Refinance Loan</option>
											<option value="ECTU">ECTU - Argos – Extra Card Top Up</option>
											<option value="NEWEC">NEWEC - Argos Extra Card New</option>
											<option value="ESRQ1">ESRQ1 - Early Settlement Rebate Quote pre 31.05.05</option>
											<option value="ESR1">ESR1 - Early Settlement Rebate Letter pre 31.05.05</option>
											<option value="ESRQ2">ESRQ2 - Early Settlement Rebate Quote post 31.05.05</option>
											<option value="ESR2">ESR2 - Early Settlement Rebate Quote post 31.05.05</option>
											<option value="CR1">CR1 - Cancellation Rights</option>
											<option value="STA">STA - Statement of Account</option>
											<option value="DEF">DEF - Default Notice</option>
											<option value="REM1">REM1 - Service - Remote</option>
											<option value="RMNP1">RMNP1 - Non Payment of Account - Remote</option>
											<option value="RMNP2">RMNP2 - Notice of Court Proceedings - Remote</option>
											<option value="RMDEF">RMDEF - Notice of Court proceedings Reminder - Remote</option>
										</select>
									</td>
								</tr>
								</table>
						</td> 
						<td>&nbsp;</td> 
					</tr> 
					<tr class="btnormal"> 
						<td>&nbsp;</td> 
						<td colspan="2">
							<a class=btnormal href="LetterQueueManagementResults.jsp">Search</a>&nbsp;&nbsp;
							<a class=btnormal href="javascript:doReset();">Clear Search</a>&nbsp;&nbsp;
							<a class=btnormal href="javascript:doScheduler();">Scheduler</a>
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
<!--
	function doSearch() {
	}
	function doReset() {
		document.frmMorses.reset();
	}
	function doScheduler() {
		var width = 600;
		var height = 140;
		var request = "LetterScheduler.jsp";
		var newWin = window.open(request, "LetterScheduler", centerWindow(width, height));
		newWin.opener = self;
		return;
	}
//-->
</script>
</body>
</html>
