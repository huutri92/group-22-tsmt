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
	<title>Customer Details</title>
</head>
<body class="body" onload="disableForm()">
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
	  <table width="100%" border="0" cellspacing="0" cellpadding="0" height="200">
	<tr>
		<td valign="bottom" height="200">&nbsp;</td>
	</tr>
	<tr>
		<td valign="bottom" height="100">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<colgroup>
				<col width="10">
				<col width="*">
				</colgroup>
				<tr>
					<td height="20"><img src="images/spacer.gif" border="0" height="1" width="10"></td>
					<td height="20"><a href="CustomerDetailsView.jsp"><b>NEXT</b></a></td>									
				</tr>
				<tr>
					<td height="20"><img src="images/spacer.gif" height="1" width="10" border="0"></td>
					<td height="20"><a href="CustomerDetailsView.jsp"><b>PREVIOUS</b></a></td>
				</tr>
				<tr>
					<td height="20"><img src="images/spacer.gif" border="0" height="1" width="10"></td>
					<td height="20"><a href="javascript:doCreditControl();"><b>CREDIT CONTROL</b></a></td>
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
									<col width="5">
									<col width="100">
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
									<col width="100">
									<col width="5">
									<col width="5">

									<col width="5">
									<col width="100">
									<col width="5">
									<col width="5">

									<col width="5">
									<col width="100">
									<col width="5">
									<col width="5">

									<col width="5">
									<col width="100">
									<col width="5">
									<col width="*">
								</colgroup>
								<tr>
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerSummaryView.jsp" class="buttontop">Summary</a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
																	
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap>Customer Details</td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerLettersEventView.jsp"class="buttontop">Letters/Event Logs</a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerStatementView.jsp"class="buttontop">Statement</a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerTransactionsSaleView.jsp"class="buttontop">Transactions</a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerHistoryView.jsp"class="buttontop">History</a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>

									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerBusinessUnitView.jsp"class="buttontop">Business Unit</a></td>
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
							<table border="0" width="100%" cellpadding="0" cellspacing="0">
								<colgroup>
									<col width="29%">
									<col width="1%">
									<col width="70%">
								</colgroup>
								<tr>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="30%">
												<col width="70%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="2"><b>PERSONAL DETAILS</b></th>
											</tr>
											<tr>
												<td height="5" colspan="2"></td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>AB0001</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>Live</td>
												<td nowrap>Territory Morses</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>Mr. Hung Quang Vu</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr>
												<td height="3" colspan="2"></td>
											</tr>											
											<tr class="field" height = "16">
												<td colspan="2">Home Address</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>01B</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>Maitland House</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>Southend-On-Sea</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td height="3" colspan="2"></td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>GU11 1EJ</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16" >
												<td nowrap>0904256909&nbsp;&nbsp;045798334</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr>
												<td height="3" colspan="2"></td>
											</tr>
											<tr class="field" height = "16">
												<td colspan="2">Collection Address</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>02B</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>Maitland House</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>Southend-On-Sea</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>GU11 1EJ</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height ="16">
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height ="16">
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
											</tr>
										</table>
									</td>
									<td>&nbsp;</td>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="100%">
											</colgroup>
											<tr>	
												<td>
													<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
														<colgroup>
															<col width="30%">
															<col width="15%">
															<col width="10%">
															<col width="10%">
															<col width="16%">
															<col width="15%">
															<col width="4%">
														</colgroup>
														<tr class="Section">
															<th class="Title" colspan="7">AGREEMENT DETAILS</th>
														</tr>
														<tr>
															<td height="5" colspan="7"></td>
														</tr>
														<tr class="field2" height = "20">
															<td nowrap>Home Visit Form</td>
															<td nowrap colspan="6">
																<input type="checkbox" class="checkbox"  name="C1" value="ON" checked style="padding-left:0px"></td>
														</tr>
														<tr class="field2" height = "20">
															<td nowrap>Application Form</td>
															<td nowrap>Completed</td>
															<td nowrap><input type="checkbox" class="checkbox" name="C2" value="ON" checked></td>
															<td nowrap>&nbsp;</td>
															<td nowrap>Scanned </td>
															<td nowrap><input type="checkbox" class="checkbox"  name="C3" value="ON" checked disabled ></td>
															<td nowrap>&nbsp;</td>
														</tr>
														<tr class="field2" height = "20">
															<td nowrap>Application Form Date</td>
															<td nowrap colspan="3">&nbsp;22/08/2005															</td>
															<td colspan="3">&nbsp;</td>
														</tr>
														<tr class="field2" height = "20">
															<td nowrap>Proof of Address</td>
															<td nowrap>
																<input type="checkbox"  class="checkbox" name="C4" value="ON" checked></td>
															<td nowrap colspan = 2>&nbsp;</td>				
															<td nowrap>Proof of Identification
															<td nowrap>
																<input type="checkbox"  class="checkbox" name="C6" value="ON" checked></td>
															<td nowrap>&nbsp;</td>				
														</tr>											
														</tr>
														<tr class="field2" height = "20">
															<td nowrap>Business Stream</td>
															<td nowrap colspan="3">&nbsp;BusinessStream 1</td>
															<td colspan="3">&nbsp;</td>
														</tr>
														<tr class=field2 valign=middle height = "20">
															<td>Interest Suspended</td>
															<td colspan="3">
																<input type="checkbox" class="checkbox"  name="C7" value="ON" checked>
															</td>
															<td>Until&nbsp;</td>
															<td>08/08/2005</td>
															<td></td>
														</tr>
														<tr class="field2" height = "20">
															<td>Payment Method</td>
															<td colspan="3">&nbsp;Payment card</td>
															<td nowrap>Ref No</td>
															<td nowrap>&nbsp;12</td>
															<td nowrap>&nbsp;</td>
														</tr>											
														<tr class="field2" height = "20">
															<td nowrap>Collected On</td>
															<td nowrap colspan="6">&nbsp;Monday&nbsp;of week
															</td>
														</tr>
														<tr class="field2" height = "20">
															<td nowrap>Collection Frequency</td>
															<td nowrap colspan="6">&nbsp;1</td>
														</tr>
														<tr class="field2" height = "20">
															<td nowrap>Statement Frequency</td>
															<td nowrap colspan="6">&nbsp;1</td>
														</tr>
														<tr class="field2" height = "20">
															<td nowrap>Date of Birth</td>
															<td nowrap colspan="6">&nbsp;20/07/1975</td>
														</tr>
														<tr class="field2" height = "20">
															<td>Memorable Data Prompt</td>
															<td colspan="6">&nbsp;What is your cat's name</td>
														</tr>
														<tr class="field2" height = "20">
															<td>Memorable Data</td>
															<td colspan="6">&nbsp;Lion</td>
														</tr>
														<tr class="field2" height = "20">
															<td height="6" colspan="6"> </td>
														</tr>	
													</table>
												</td>
											<tr>
											<tr>
												<td>&nbsp;&nbsp;</td>
											</tr>
											<tr>
												<td>
													<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
														<colgroup>
															<col width="30%">
															<col width="70%">
														</colgroup>
														<tr class="Section">
															<th class="Title" colspan="2">MARKETING INFORMATION</th>
														</tr>
														<tr>
															<td height="5" colspan="2"></td>
														</tr>
														<tr class="field3" height = "20">
															<td nowrap>Marital Status</td>
															<td nowrap>&nbsp;</td>
														</tr>
														<tr class="field3" height = "20">
															<td nowrap>No. of Children</td>
															<td nowrap>&nbsp;</td>
														</tr>
														<tr class="field3" height = "20">
															<td nowrap>Source of Customer</td>
															<td nowrap>&nbsp;Agent</td>
														</tr>
														</tr>
														<tr class="field3" height = "20">
															<td nowrap>Accepts; Promotional 
															Literature</td>
															<td nowrap>
																<input type="checkbox" class="checkbox"  name="C8" value="ON" checked style="padding-left:0px">
															</td>
														</tr>
														<tr class="field3" height = "20">
															<td nowrap>Promotional Calls</td>
															<td nowrap>
																<input type="checkbox" class="checkbox"  name="C9" value="ON" checked style="padding-left:0px">
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<!--								
								<tr>
									<td colspan="3">&nbsp;</td>
								</tr>-->
							</table>	
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td >
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href= "CustomerDetails.jsp" class="btnormal" tabindex="26">Amend</a>&nbsp;&nbsp;
						</td>
					</tr>
				</table>
			</td>
			<!-- ------------------------------------------------------------------------------------------ -->
			<!-- Content End -->
		</tr>
	</table>
</form>
<script language="javascript">
	function doRerfesh() {
		window.location.reload(true);
	}
	function doCreditControl() {
		var width = 700;
		var height = 260;
		var newWin = window.open("../Customer/CustomerCreditLimit.jsp", "CreditControl", centerWindow(width, height));	
	}

</script>
</body>
</html>