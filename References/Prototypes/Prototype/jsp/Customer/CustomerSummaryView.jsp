<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/menu.js"></script>
	<script language="javascript" src="../js/common.js"></script>
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<title>Customer Summary</title>
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
									<td height="20"><a href="CustomerSummaryView.jsp"><b>NEXT</b></a></td>									
								</tr>
								<tr>
									<td height="20"><img src="images/spacer.gif" height="1" width="10" border="0"></td>
									<td height="20"><a href="CustomerSummaryView.jsp"><b>PREVIOUS</b></a></td>
								</tr>
								<tr>
									<td height="20"><img src="images/spacer.gif" border="0" height="1" width="10"></td>
									<td height="20"><a href="javascript:doRefresh();"><b>REFRESH</b></td>
								</tr>
								<!-- tr>
									<td height="20"><img src="images/spacer.gif" border="0" height="1" width="10"></td>
									<td height="20"><a href="CustomerSummary.jsp"><b>AMEND CUSTOMER</b></a></td>
								</tr -->
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
						<td height="25" width="4">&nbsp;</td>
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
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap>Summary</td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerDetailsView.jsp" class="buttontop">Customer Details</a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
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
						<td width="4">&nbsp;</td>
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
											<tr class="field">
												<td nowrap>Customer ID</td>
												<td nowrap><input class="FieldDate" type="text" name="firstName" size="20" value="AA0001"></td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>Live</td>
												<td nowrap>Territory Morses</td>
											</tr>
											<tr class="field" height ="16">
												<td nowrap>Mr. Hung Quang Vu</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr>
												<td height="3" colspan="2"></td>
											</tr>											
											<tr class="field">
												<td colspan="2">Home Address</td>
											</tr>
											<tr class="field" height ="16">
												<td nowrap>01B</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height ="16">
												<td nowrap>Maitland House</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height ="16">
												<td nowrap>Southend-On-Sea</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>LonDon</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td height="3" colspan="2"></td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>GU11 1EJ</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
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
												<td nowrap>LonDon</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field" height = "16">
												<td nowrap>GU11 1EJ</td>
												<td nowrap>&nbsp;</td>
											</tr>
										</table>
									</td>
									<td>&nbsp;</td>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="20%">
												<col width="20%">
												<col width="1px">
												<col width="30%">
												<col width="30%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="5"><b>ACCOUNT OVERVIEW</b></th>
											</tr>
											<tr>
												<td height="5" colspan="5"></td>
											</tr>
											<tr>
												<td class="Field" nowrap>Start Date</td>
												<td class="Field" nowrap>
												14/06/2005</td>
												<td>&nbsp;</td>
												<td colspan="2" rowspan="10" valign="top">
													<table border="0" cellpadding="1" cellspacing="1" width="100%">
														<colgroup>
															<col width="30%" align="left">
															<col width="40%" align="right">
															<col width="30%" align="right">
														</colgroup>
														<tr>
															<th class="titleyellow" colspan="3" align=center><b>Last 10 Weeks Payments</b></th>
														</tr>
														<tr>
															<td colspan="3" height="3"></td>
														</tr>
														<tr class="section">
															<th nowrap class=title><b>Date</b></th>
															<th nowrap class=title><b>Value (&pound;)</b></th>
															<th nowrap class=title><b>Ex Value &pound;</b></th>
														</tr>
														<tr class="Field">
															<td nowrap>14/07/2005</td>
															<td nowrap>123,566.00</td>
															<td nowrap>45.00</td>
														</tr>
														<tr class="Field2">
															<td>14/07/2005</td>
															<td>123,566.00</td>
															<td>45.00</td>
														</tr>
														<tr class="Field">
															<td>14/07/2005</td>
															<td>123,566.00</td>
															<td>45.00</td>
														</tr>
														<tr class="Field2">
															<td>14/07/2005</td>
															<td>123,566.00</td>
															<td>45.00</td>
														</tr>
														<tr class="Field">
															<td>14/07/2005</td>
															<td>123,566.00</td>
															<td>45.00</td>
														</tr>
														<tr class="Field2">
															<td>14/07/2005</td>
															<td>123,566.00</td>
															<td>45.00</td>
														</tr>
														<tr class="Field">
															<td>14/07/2005</td>
															<td>123,566.00</td>
															<td>45.00</td>
														</tr>
														<tr class="Field2">
															<td>14/07/2005</td>
															<td>123,566.00</td>
															<td>45.00</td>
														</tr>
														<tr class="Field">
															<td>14/07/2005</td>
															<td>123,566.00</td>
															<td>45.00</td>
														</tr>
														<tr class="Field2">
															<td>14/07/2005</td>
															<td>123,566.00</td>
															<td>45.00</td>
														</tr>
														<tr>
															<td colspan="3" height="3"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr height = "18">
												<td class="Field" nowrap>&nbsp;</td>
												<td class="Field" nowrap>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr height = "18">
												<td class="Field" nowrap>Balance</td>
												<td class="Field" nowrap>&pound; 586,123.00</td>
												<td>&nbsp;</td>
											</tr>
											<tr height = "18">
												<td class="Field" nowrap>&nbsp;</td>
												<td class="Field" nowrap>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr height = "18">
												<td class="Field" nowrap>Av Debit Performance</td>
												<td class="Field" nowrap>50 %</td>
												<td>&nbsp;</td>
											</tr>
											<tr height = "18">
												<td class="Field" nowrap>&nbsp;</td>
												<td class="Field" nowrap>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr height = "18">
												<td class="Field" nowrap>Last Sale</td>
												<td class="Field" nowrap>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr height = "18">
												<td class="Field" nowrap>01/07/2005</td>
												<td class="Field" nowrap>&pound; 586,123.00</td>
												<td>&nbsp;</td>
											</tr>
											<tr height = "18">
												<td class="Field" nowrap colspan="2">22 week fixed term loan</td>
												<td>&nbsp;</td>
											</tr>
											<tr height = "18">
												<td class="Field" nowrap>&nbsp;</td>
												<td class="Field" nowrap>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr height = "18">
												<td class="Field" nowrap>Sale Potential</td>
												<td class="Field" nowrap>&nbsp;</td>
												<td>&nbsp;</td>
												<td class="Field" nowrap>Last Payment</td>
												<td class="Field" nowrap>&nbsp;</td>
											</tr>
											<tr height = "18">
												<td class="Field" nowrap colspan="2">&pound;100</td>
												<td>&nbsp;</td>
												<td class="Field" nowrap>01/07/2005</td>
												<td class="Field" nowrap>&pound; 586,123.00</td>
											</tr>
											<tr height="26">
												<td class="Field" colspan ="2">&nbsp;</td>
												<td>&nbsp;</td>
												<td class="Field" colspan ="2">&nbsp;</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr class="btnormal">
									<td>
					   				 	<a href="SearchCustomer.jsp" class="btnormal2">New Search</a>&nbsp;&nbsp;&nbsp;
					   				 	<a href="CustomerSummary.jsp" class="btnormal2">Amend</a>
					   				 </td>
								</tr>
								<tr>
									<td colspan="3">
										<div id="tbl-container" style ="width: 100%; height: 150px;">
										<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder" id="tbl">
											<colgroup>
												<col width="15%" align="left">
												<col width="23%" align="left">
												<col width="12%" align="left">
												<col width="12%" align="right">
												<col width="10%" align="right">
												<col width="10%" align="right">
												<col width="10%" align="right">
												<col width="8%" align="center">
											</colgroup>
											<THEAD>
											<tr class="Section">
												<th class="Title"><b>Account Number</b></th>
												<th class="Title"><b>Product</b></th>
												<th class="Title"><b>Agreement No</b></th>
												<th class="Title"><b>Expected <br>Re-payment (&pound;)</b></th>
												<th class="Title"><b>Debit <br>Performance</b> (%)</th>
												<th class="Title"><b>Balance (&pound;)</b></th>
												<th class="Title"><b>Arrears (&pound;)</b></th>
												<th class="Title"><b>Interest <br>Suspended</b></th>
											</tr>
											</THEAD>
											
											<tr class="Field">
												<td><a href="CustomerStatementView.jsp">AB1234/01</a></td>
												<td>L22</td>
												<td>12345678</td>
												<td>15</td>
												<td>48</td>
												<td>300.00</td>
												<td>150.00</td>
												<td><input class="checkbox" type="checkbox" name="" checked disabled ></td>
											</tr>
											<tr class="Field2">
												<td><a href="CustomerStatementView.jsp">AB1234/02</a></td>
												<td>L23</td>
												<td>12345678</td>
												<td>15</td>
												<td>48</td>
												<td>300.00</td>
												<td>150.00</td>
												<td><input class="checkbox" type="checkbox" name="" checked disabled ></td>
											</tr>
											<tr class="Field">
												<td><a href="CustomerStatementView.jsp">AB1234/03</a></td>
												<td>L24</td>
												<td>12345678</td>
												<td>15</td>
												<td>48</td>
												<td>300.00</td>
												<td>150.00</td>
												<td><input class="checkbox" type="checkbox" name="" checked disabled ></td>
											</tr>
											<tr class="Field2">
												<td><a href="CustomerStatementView.jsp">AB1234/04</a></td>
												<td>L25</td>
												<td>12345678</td>
												<td>15</td>
												<td>48</td>
												<td>300.00</td>
												<td>150.00</td>
												<td><input class="checkbox" type="checkbox" name="" checked disabled ></td>
											</tr>
											<tr class="Field">
												<td><a href="CustomerStatementView.jsp">AB1234/05</a></td>
												<td>L26</td>
												<td>12345678</td>
												<td>15</td>
												<td>48</td>
												<td>300.00</td>
												<td>150.00</td>
												<td><input class="checkbox" type="checkbox" name="" checked disabled ></td>
											</tr>
											<tr class="Field2">
												<td><a href="CustomerStatementView.jsp">AB1234/06</a></td>
												<td>L27</td>
												<td>12445678</td>
												<td>15</td>
												<td>48</td>
												<td>300.00</td>
												<td>150.00</td>
												<td><input class="checkbox" type="checkbox" name="" checked disabled ></td>
											</tr>
										</table>
									</div>									</td>
								</tr>
							</table>
						</td>
						<td width="4">&nbsp;</td>
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
	function getAddress() {
		var width = 500;
		var height = 150;
		var newWin = window.open("FindAddressPopup.jsp", "FindAddress", centerWindow(width, height));
	}
	function doViewStatement() {
		var width = 700;
		var height = 200;
		var newWin = window.open("CustomerStatementView.jsp", "History", centerWindow(width, height));	
	}
	function doViewAccountHistory() {
		var width = 700;
		var height = 500;
		var newWin = window.open("../Accounts/AccountHistory.jsp", "History", centerWindow(width, height));	
	}
	function doRefresh() {
		window.location.reload(true);
	}
	function doCreditControl() {
		var width = 700;
		var height = 260;
		var newWin = window.open("../Customer/CustomerCreditLimit.jsp", "CreditControl", centerWindow(width, height));	
	}
//-->
</script>
</body>

</html>