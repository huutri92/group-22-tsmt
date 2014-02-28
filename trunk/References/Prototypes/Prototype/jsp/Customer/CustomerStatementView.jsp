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
		
	<title>Customer Statement</title>
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
					menuCustomer(1);
					//-->
				</script>
				
				<table width="100%" height="350" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td valign="bottom" height="250">&nbsp;</td>
					</tr>
					<tr>
						<td valign="bottom" height="100">
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								<colgroup>
									<col width="10">
									<col width="*">
								</colgroup>
								<tr>
									<td height="20"><img src="images/spacer.gif" border="0" height="1" width="10"></td>
									<td height="20"><a href="CustomerStatementView.jsp"><b>NEXT</b></a></td>									
								</tr>
								<tr>
									<td height="20"><img src="images/spacer.gif" height="1" width="10" border="0"></td>
									<td height="20"><a href="CustomerStatementView.jsp"><b>PREVIOUS</b></a></td>
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
						<col width="*">
						<col width="5">
					</colgroup>
					<tr>
						<td height="25" valign="top"><img src="../images/corner.gif" border="0" width="5" height="5"></td>
						<td height="25"><!-- Error Message --></td>
						<td height="25">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
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
																		
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerDetailsView.jsp" class="buttontop">Customer Details</a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerLettersEventView.jsp"class="buttontop">Letters/Event Logs</a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" nowrap class="Selected">Statement</td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
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
						<td>
							<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
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
											<tr class="field" height = "78">
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
											</tr>
										</table>
									</td>
									<td>&nbsp;</td>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="34%">
												<col width="20%">
												<col width="22%">
												<col width="22%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="4"><b>ACCOUNT INFORMATION</b></th>
											</tr>
											</tr>
											<tr class="Field" height="20">
												<td>AB0001/100</td>
												<td colspan="3">Live</td>
											</tr>
											<tr height="20">
												<td class="Field">Agreement</td>
												<td class="Field" colspan="1">AB012</td>
												<td class="Field" colspan="1" align = "right">Date</td>
												<td class="Field" colspan="1" align = "center">29/04/1905</td>
											</tr>
											<tr height="20">
												<td class="Field">Contractual Re-Payment</td>
												<td class="Field" colspan="3">&pound;400.00</td>
											</tr>
											<tr height="20">
												<td class="Field">Negotiated Reduced Re-Payment</td>
												<td class="Field" colspan="1">&pound;100.00</td>
												<td class="Field" colspan="1" align = "right">Date</td>
												<td class="Field" colspan="1" align = "center">01/05/2005</td>										
											</tr>
											<tr height="20">
												<td class="Field">PPI Selected</td>
												<td class="Field" colspan="3"><input type="checkbox" name="" disabled checked></td>
											</tr>
											<tr height="20">
												<td class="Field"><b>Item Identifier</b></td>
												<td class="Field" colspan="3">&nbsp;</td>
											</tr>
											<tr>
												<td colspan="4">
													<div style ="overflow-y:auto;width: 100%; height: 69px;">
													<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder">
														<colgroup>
															<col width="34%">
															<col width="20%">
															<col width="22%">
															<col width="22%">
														</colgroup>
														<tr align="left" class="Section" height="10"> 
															<th class="Title">Product name</th>
															<th class="Title">1st Sale Date</th>
															<th class="Title">Prefix</th>
															<th class="Title">Identifier</th>
														</tr>
														<tr class="Field" height = "20">
															<td>Agros - Card</td>
															<td>07/10/2005</td>
															<td>L</td>
															<td>AB00023</td>
														</tr>
			
														<tr class="Field2" height = "20">
															<td>Homebase</td>
															<td>03/05/2005</td>
															<td>E</td>
															<td>AB00033</td>
														</tr>
														
														<tr class="Field" height = "20">
															<td>ATM - Card</td>
															<td>07/10/2004</td>
															<td>L</td>
															<td>AB00013</td>
														</tr>

													</table>
													</div>
												</td>
											</tr>
											
											<tr >
												<td colspan="4">&nbsp;
												</td>
											</tr>

											<tr >
												<td colspan="4">
													<table border="0" class="Form" cellpadding="0" cellspacing="0" width="100%">
														<colgroup>
															<col width="20%">
															<col width="25%">
															<col width="20%">
															<col width="35%">
														</colgroup>
														<tr class="Field">
															<td valign="top">Select Account</td>
															<td>
																<select class="FieldWidth130" size="8" name="lstIncomeAvailable1" multiple>
																	<option>Customer</option>
																	<option>AB1234/01</option>
																	<option>AB1234/02</option>
																	<option>AB1234/03</option>
																	<option>AB1234/04</option>
																	<option>AB1234/05</option>
																	<option>AB1234/06</option>
																</select>
															</td>
															<td valign="top" >&nbsp;Select Transaction</td>
															<td>
																<select class="FieldNormal" size="8" name="lstIncomeAvailable1" multiple>
																	<option>All Transaction</option>
																	<option>All Transaction & Non Payments</option>
																	<option>All Sales</option>
																	<option>All Payments</option>
																	<option>All Non Payments</option>
																	<option>All Adjustments</option>
																	<option>All Interest</option>
																</select>
															</td>
														</tr>
													</table>
													
												</td>
											</tr>

										</table>
									</td>
								</tr>
								<tr class="Section">
									<td colspan="3" height="4"></td>
								</tr>
								<tr class="Section">
									<th class="Title" colspan="3" align="center"><b>ACCOUNT STATEMENT</b></th>
								</tr>

								<tr class="Section">
									<td colspan="3" height="4"></td>
								</tr>
								<tr>
									<td colspan="3">
										<div id="tbl-container" style ="width: 100%; height: 100px;">
										<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder" id="tbl">
											<colgroup>
												<col width="10%" align="left" valign="top">
												<col width="20%" align="left" valign="top">
												<col width="34%" align="left" valign="top">
												<col width="12%" align="right" valign="top">
												<col width="12%" align="right" valign="top">
												<col width="12%" align="right" valign="top">
											</colgroup>
											<THEAD>
											<tr class="Section">
												<th class="Title">Date</th>
												<th class="Title"><b>Account(s)</b></th>
												<th class="Title">Description</th>
												<th class="Title">Debit Value(&pound;)</th>
												<th class="Title"><b>Credit Value(&pound;)</b></th>
												<th class="Title"><b>Balance(&pound;)</b></th>
											</tr>
											</THEAD>
											<tr class="Field">
												<td>02/06/2005</td>
												<td>AB1234/01</td>
												<td>Sales – 50 week loan</td>
												<td>100.00</td>
												<td></td>
												<td>100.00</td>
												
											</tr>
											<tr class="Field2">
												<td>01/06/2005</td>
												<td>AB1234/01</td>
												<td>Finance Charge</td>
												<td>60.00</td>
												<td></td>
												<td>160.00</td>
											</tr>
											<tr class="Field">
												<td>24/05/2005</td>
												<td>AB1234/02</td>
												<td> Sale – Argos Card</td>
												<td>100.00</td>
												<td></td>
												<td>260.00</td>
											</tr>
											<tr class="Field2">
												<td>20/05/2005</td>
												<td>AB1234/02</td>
												<td> Administration Fee</td>
												<td>5.00</td>
												<td></td>
												<td>265.00</td>
											</tr>
											<tr class="Field">
												<td>15/04/2005</td>
												<td>AB1234/02</td>
												<td>Cash</td>
												<td></td>
												<td>15.00</td>
												<td>250.00</td>
											</tr>
											<tr class="Field2">
												<td>08/04/2005</td>
												<td>AB1234/02</td>
												<td>Cash</td>
												<td></td>
												<td>10.00</td>
												<td>240.00</td>
											</tr>
											<tr class="Field">
												<td>01/03/2005</td>
												<td>AB1234/01</td>
												<td>Cash</td>
												<td></td>
												<td>10.00</td>
												<td>230.00</td>
											</tr>
										</table>
										</div>									</td>
								</tr>
							</table>
						</td>
						
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td colspan ="2">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							<a href="CustomerStatement.jsp" class="btnormal" tabindex="26">Amend</a>&nbsp;&nbsp;
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
<!--
	function doViewAccountTransaction() {
		var width = 700;
		var height = 200;
		var newWin = window.open("../Accounts/AccountTransaction.jsp", "History", centerWindow(width, height));	
	}
	function doViewAccountHistory() {
		var width = 700;
		var height = 500;
		var newWin = window.open("../Accounts/AccountHistory.jsp", "History", centerWindow(width, height));	
	}
	function doRefesh() {
		window.location.reload(true);
	}
//-->
	function doCreditControl() {
		var width = 700;
		var height = 260;
		var newWin = window.open("../Customer/CustomerCreditLimit.jsp", "CreditControl", centerWindow(width, height));	
	}
</script>
</body>

</html>