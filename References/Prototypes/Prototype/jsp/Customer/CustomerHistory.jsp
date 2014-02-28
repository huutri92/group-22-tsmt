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
	<title>Customer History</title>
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
							<td height="20"><a href="CustomerHistoryView.jsp"><b>NEXT</b></a></td>									
						</tr>
						<tr>
							<td height="20"><img src="images/spacer.gif" height="1" width="10" border="0"></td>
							<td height="20"><a href="CustomerHistoryView.jsp"><b>PREVIOUS</b></a></td>
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
										<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerSummary.jsp" class="buttontop">Summary</a></td>
										<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
										<td>&nbsp;</td>
										
										<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
										<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerDetails.jsp" class="buttontop">Customer Details</a></td>
										<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
										<td>&nbsp;</td>
										
										<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
										<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerLettersEvent.jsp"class="buttontop">Letters/Event Logs</a></td>
										<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
										<td>&nbsp;</td>
										
										<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
										<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerStatement.jsp"class="buttontop">Statement</a></td>
										<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
										<td>&nbsp;</td>
										
										<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
										<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerTransactionsSale.jsp"class="buttontop">Transactions</a></td>
										<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
										<td>&nbsp;</td>
										
										<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
										<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap>History</td>
										<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
										<td>&nbsp;</td>
										
										<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
										<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CustomerBusinessUnit.jsp"class="buttontop">Business Unit</a></td>
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
								<table class="Form" border="0" width="100%" cellpadding="0" cellspacing="0">
									<colgroup>
										<col width="39%">
										<col width="1%">
										<col width="60%">
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
											<tr class="field" height = "18">
												<td nowrap>GU11 1EJ</td>
												<td nowrap>&nbsp;</td>
											</tr>
										</table>
										</td>
										<td>&nbsp;</td>
										<td valign="top">
											<table class="" border="0" cellpadding="1" cellspacing="1" width="100%">
												<tr class="Section">
													<th class="Title">ADDRESS CHANGES</th>
												</tr>
												<tr>
													<td>
													<div id="tbl-container" style ="width: 100%; height: 246px;">
														<table class="FormWithBorder" border="0" width="100%" cellpadding="1" cellspacing="1" id="tbl">
															<colgroup>
																<col width="45%">
																<col width="20%" align ="center">
																<col width="15%">
																<col width="20%">
															</colgroup>
															<THEAD>
															<tr class="Section">
																<th class="Title"><b>Address Change</b></th>
																<th class="Title"><b>Home or Collection</b></th>
																<th class="Title"><b>Changed</b></th>
																<th class="Title"><b>By</b></th>
															</tr>
															</THEAD>
															<tr class="Field">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field2">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field2">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field2">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field2">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field2">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
	
															<tr class="Field2">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field2">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field2">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field2">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field2">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field2">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
															<tr class="Field2">
																<td  nowrap>12,St Paul,Pul Merson,75</td>
																<td  align="left" nowrap>C</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>David Alan</td>
															</tr>
														</table>
													</div>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr class="Section">
										<th height="4" colspan="3"></th>
									</tr>
									<tr>
										<td valign ="top">
											<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
												<tr class="Section">
													<th class="Title">BUSINESS UNIT</th>
												</tr>
												<tr>
													<td>
														<table class="FormWithBorder" border="0" width="100%" cellpadding="1" cellspacing="1">
															<colgroup>
																<col width="20%" align = "center">
																<col width="30%" align="left">
																<col width="50%" align="left">
															</colgroup>
															
															<tr class="Section">
																<th align="left" class="Title"><b>Unit</b></th>
														   		<th class="Title"><b>Changed</b></th>
														   		<th class="Title"><b>By</b></th>
														   	</tr>
														</table>
														<table class="FormWithBorder" border="0" width="100%" cellpadding="1" cellspacing="1">
															<colgroup>
																<col width="20%" align = "center">
																<col width="30%">
																<col width="50%">
															</colgroup>
														   	<tr class="Field">
																<td align="left" >11</td>
																<td>23/05/2005</td>
																<td>Paul Merson</td>
															</tr>
															<tr class="Field2">
																<td align="left">23</td>
																<td>23/07/2004</td>
																<td>David Alan</td>
															</tr>
															<tr class="Field">
																<td align="left">17</td>
																<td>23/10/2002</td>
																<td>Peter Mark</td>
															</tr>
															<tr class="Field2">
																<td align="left">45</td>
																<td>15/02/2002</td>
																<td>David Alan</td>
															</tr>
															<tr class="Field">
																<td align="left">21</td>
																<td>19/03/1999</td>
																<td>John Martin</td>
															</tr>
															<tr class="Field2">
																<td align="left">15</td>
																<td>19/03/1997</td>
																<td>John Peter</td>
															</tr>

														</table>
													</td>
												</tr>
											</table>
										</td>
										<td>&nbsp;</td>
										<td valign = top >
											<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
												 <tr class="Section">
													<th class="Title" colspan="5">CUSTOMER NAME CHANGES</th>
												</tr>
												<tr>
													<td>
														<table class="FormWithBorder" border="0" width="100%" cellpadding="1" cellspacing="1">
															<colgroup>
																<col width="65%" align="left">
																<col width="15%" align="left">
																<col width="20%" align="left">
															</colgroup>
															
															<tr class="Section">
																<th class="Title"><b>Name Change</b></th>
														   		<th class="Title"><b>Changed</b></th>
														   		<th class="Title"><b>By</b></th>
														   	</tr>
														   	<tr class="Field">
																<td  nowrap>Miss Paul Michel</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>Pul Merson</td>
															</tr>
															<tr class="Field2">
																<td  nowrap>Mrs Paul Michel</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>Pul Merson</td>															
															</tr>
															<tr class="Field">
																<td  nowrap>Miss Paul Michel</td>
																<td  nowrap>23/05/2003</td>
																<td  nowrap>Pul Merson</td>															
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
<script language="javascript">
	<!--
	var thisForm = document.frmMorses;
	function doAddNew()	{
		var width = 400;
		var height = 180;
		var newWin = window.open("EventLogAddNew.jsp", "AddNew", centerWindow(width, height));
	}
	
	function doUpdate() {
		var bool = false;
		for (i=0;i<thisForm.SelectedId.length;i++)
		{
			if (thisForm.SelectedId[i].checked)
			{
				bool = true;
				
			}
		}
		if (bool) {
			var width = 400;
			var height = 190;
			var newWin = window.open("EventLogAmend.jsp", "Update",centerWindow(width, height));
		} else {
			alert("Please check an item!");	
		}
	}

	function doView() {
		var width = 400;
		var height = 190;
		var newWin = window.open("EventLogView.jsp", "Update", centerWindow(width, height));
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