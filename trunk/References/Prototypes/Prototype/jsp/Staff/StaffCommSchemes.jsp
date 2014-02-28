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
	<title>Commission Schemes</title>
</head>
<script>
function sync()
{
	var lft = document.all("dvData").scrollLeft;
	var top = document.all("dvData").scrollTop;
	
	// adjust the position of Header pane
	document.all("dvHeader").style.left = -lft;	
}
</script>

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
									<td align="center" background="../images/tab_02_02.gif"nowrap>
										<a href="StaffDetailsView.jsp"class="buttontop" ><b>Staff Details</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
																									
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>Commission Schemes</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>

									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif"nowrap>
										<a href="BusinessUnitsView.jsp"class="buttontop" ><b>Business Units</b></a></td>
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
							<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormWithBorder">
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
											<tr class="field20">
												<td nowrap>Staff ID</td>
												<td nowrap>10001</td>
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
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="FormWithBorder">
											<tr>
												<th align="center" class="title"><b>COMMISSION SCHEMES</b></th>
											</tr>
											<tr>
												<td height="5"></td>
											</tr>
											<tr>
												<td>
													<table border=0 width="100%" cellpadding=0 cellspacing=0 class="FormWithBorder">
														<tr>
															<td class=field>
																<div style="position:relative; width=100%; overflow:hidden;">
																<div id="dvHeader" style="position:relative; width:98.5%; left:0px; ">
																	<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1" id="tblHeader">
																		<colgroup>
																			<col width="3%" align=left>
																			<col width="57%" align=left>
																			<col width="20%" align=left>
																			<col width="20%" align=left>				
																		</colgroup>
																		<tr class="Section">	
																			<th class="Title"><input type="checkbox" class="checkbox" onclick="javaScript:checkSelect('selectedItemIds');" name="selectAll" value="selectAll"></th>					
																			<th class="Title">Scheme Name</th>
																			<th class="Title">Start Date</th>
																			<th class="Title" >End Date</th>
																		</tr>
																	</table>
																</div>
																</div>
															</td>
														</tr>
														<tr>
															<!-- This is table's content -->
															<td valign="top">
																<div id="dvData" style="position:relative; height: 180px; width:100%; overflow:auto" onscroll="sync()">
																	<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1"id="tblData" name="tblData">
																		<colgroup>
																			<col width="3%" align=left>
																			<col width="57%" align=left>
																			<col width="20%" align=left>
																			<col width="20%" align=left>				
																		</colgroup>
																		<tr class="field">
																			<td><input type="checkbox" class="checkbox"  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
																			<td ><a href="javascript:doViewSchemeDetails();">Sales of 30 week loans</a></td>
																			<td >11/01/2005</td>
																			<td >11/02/2005</td>
																		</tr>
																		<tr class="Field2">		
																			<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
																			<td><a href="javascript:doViewSchemeDetails();">Normal Cash</a></td>
																			<td >11/02/2005</td>
																			<td >11/03/2005</td>
																		</tr>
																		<tr class="Field">
																			<td><input type="checkbox" class="checkbox"  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
																			<td ><a href="javascript:doViewSchemeDetails();">Settlement Cash</a></td>
																			<td >11/03/2005</td>
																			<td >11/04/2005</td>
																		</tr>
																		<tr class="Field2">						
																			<td><input type="checkbox" class="checkbox"  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
																			<td ><a href="javascript:doViewSchemeDetails();">Sales of 30 week loans</a></td>
																			<td >11/04/2005</td>
																			<td >11/05/2005</td>
																		</tr>
																		<tr class="Field">						
																			<td><input type="checkbox" class="checkbox"  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
																			<td ><a href="javascript:doViewSchemeDetails();">Normal Cash</a></td>
																			<td >11/05/2005</td>
																			<td >11/06/2005</td>
																		</tr>
																		<tr class="Field2">
																			<td><input type="checkbox" class="checkbox"  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
																			<td ><a href="javascript:doViewSchemeDetails();">Settlement Cash</a></td>
																			<td >11/06/2005</td>
																			<td >11/07/2005</td>
																		</tr>	
																		<tr class="Field">
																			<td><input type="checkbox" class="checkbox"  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
																			<td height="15" >
																			<a href="javascript:doViewSchemeDetails();">Settlement Cash</a></td>
																			<td height="15" >11/06/2005</td>
																			<td height="15" >11/07/2005</td>
																		</tr>
																		<tr class="Field2">
																			<td><input type="checkbox" class="checkbox"  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
																			<td ><a href="javascript:doViewSchemeDetails();">Settlement Cash</a></td>
																			<td >11/06/2005</td>
																			<td >11/07/2005</td>
																		</tr>
																		<tr class="Field">
																			<td><input type="checkbox" class="checkbox"  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
																			<td ><a href="javascript:doViewSchemeDetails();">Settlement Cash</a></td>
																			<td >11/06/2005</td>
																			<td >11/07/2005</td>
																		</tr>					
																		<tr class="Field2">
																			<td><input type="checkbox" class="checkbox"  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
																			<td ><a href="javascript:doViewSchemeDetails();">Settlement Cash</a></td>
																			<td >11/06/2005</td>
																			<td >11/07/2005</td>
																		</tr>					
																		<tr class="Field">
																			<td><input type="checkbox" class="checkbox"  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
																			<td ><a href="javascript:doViewSchemeDetails();">Settlement Cash</a></td>
																			<td >11/06/2005</td>
																			<td >11/07/2005</td>
																		</tr>
																	</table>
																</div>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr class="btnormal">
												<td>
													<a class="btnormal" href="javascript:doUnAllocate();" target="_self">Un-Allocate</a>&nbsp;&nbsp;
													<a class="btnormal" href="javascript:doAddScheme();" target="_self">Add Scheme</a>
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
<!--
	function doAddScheme()  {
		var width = 700;
		var height = 310;
		var request = "PopCommSchemes.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
	}	
	function doViewSchemeDetails() {
		var width = 700;
		var height = 600;
		var request = "PopViewCommSchemeDetails.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
	}				
	function doUnAllocate() {
		//
	}		
	function doAmend() {
		window.location="AmendCommissionScheme.jsp";
	}	
	function doNew() {
		window.location="CreateCommissionScheme.jsp";
	}
//-->
</script>
</html>