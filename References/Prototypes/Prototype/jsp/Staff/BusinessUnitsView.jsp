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
	<title>Business Units</title>
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
			<td valign="top" height="650">
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
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="StaffDetailsView.jsp"class="buttontop" ><b>Staff Details</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
																									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="StaffCommSchemesView.jsp" class="buttontop"><b>Commission Schemes</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>

									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>Business Units</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
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
									<col width="39%">
									<col width="1%">
									<col width="60%">
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
												<td nowrap>1236646666</td>
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
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<tr class="Section">
												<th class="Title"><b>ASSIGNED BUSINESS UNITS</b></th>
											</tr>
											<tr>
												<td height="3"></td>
											</tr>
											<tr>
												<td>
													<table border="0" width="100%" cellpadding="1" cellspacing="1">
														<colgroup>
															<col width="2%" align="left" valign="top">
															<col width="53%" align="left" valign="top">
															<col width="15%" align="left" valign="top">
															<col width="15%" align="left" valign="top">
															<col width="15%" align="left" valign="top">
														</colgroup>
														<tr class="Section">
															<th class="Title" nowrap>&nbsp;<input type="checkbox" class="checkbox" name="" value=""></th>
															<th class="Title" nowrap><b>Unit Name</b></th>
															<th class="Title" nowrap><b>Unit Type</b></th>
															<th class="Title" nowrap><b>Start Date</b></th>
															<th class="Title" nowrap><b>End Date</b></th>
														</tr>
													</table>
													<div style="overflow:auto; width:100%; height:170px; ">
														<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder">
															<colgroup>
																<col width="2%" align="left" valign="top">
																<col width="53%" align="left" valign="top">
																<col width="15%" align="left" valign="top">
																<col width="15%" align="left" valign="top">
																<col width="15%" align="left" valign="top">
															</colgroup>
															<tr class="Field">
																<td><input type="checkbox" class="checkbox" name="" value=""></td>
																<td><b>New York Branch</b></td>
																<td><b>Division</b></td>
																<td><b>12/01/2004</b></td>
																<td><b>12/01/2006</b></td>
															</tr>
															<tr class="Field2">
																<td><input type="checkbox" class="checkbox" name="" value=""></td>
																<td>Non payment of terms</td>
																<td>Division</td>
																<td>12/01/2004</td>
																<td>12/01/2005</td>
															</tr>
															<tr class="Field">
																<td><input type="checkbox" class="checkbox" name="" value=""></td>
																<td>Non payment of terms</td>
																<td>Division</td>
																<td>12/01/2004</td>
																<td>12/01/2005</td>
															</tr>
															<tr class="Field2">
																<td><input type="checkbox" class="checkbox" name="" value=""></td>
																<td>Non payment of terms</td>
																<td>Division</td>
																<td>12/01/2004</td>
																<td>12/01/2005</td>
															</tr>
															<tr class="Field">
																<td><input type="checkbox" class="checkbox" name="" value=""></td>
																<td>Non payment of terms</td>
																<td>Division</td>
																<td>12/01/2004</td>
																<td>12/01/2005</td>
															</tr>
															<tr class="Field2">
																<td><input type="checkbox" class="checkbox" name="" value=""></td>
																<td>Non payment of terms</td>
																<td>Division</td>
																<td>12/01/2004</td>
																<td>12/01/2005</td>
															</tr>
															<tr class="Field">
																<td><input type="checkbox" class="checkbox" name="" value=""></td>
																<td>Non payment of terms</td>
																<td>Division</td>
																<td>12/01/2004</td>
																<td>12/01/2005</td>
															</tr>
														</table>
													</div>
												</td>												
											</tr>
											<tr>
												<td height="3"></td>
											</tr>
											<tr class="btnormal">
												<td>
													<a href="javascript:doAddUnit();" class="btnormal" tabindex="26">Add Unit</a>&nbsp;&nbsp;
													<a href="javascript:doAmendUnit();" class="btnormal" tabindex="26">Amend Unit</a>&nbsp;&nbsp;
													<a href="BusinessUnits.jsp" class="btnormal" tabindex="26">Delete Unit</a>
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
	function doAddUnit() {
		var width = 600;
		var height = 400;
		var newWin = window.open("../Staff/PopBusinessUnit.jsp", "AddUnit", centerWindow(width, height));
	}
	
	function doAmendUnit() {
		var width = 400;
		var height = 200;
		var newWin = window.open("../Staff/PopAmendBusinessUnit.jsp", "AmendUnit", centerWindow(width, height));
	}
	
//-->
</script>
</body>

</html>