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
	<title>CAP System</title>
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
								<col width="*">
								</colgroup>				
								<tr>
									<td height="20"><img src="images/spacer.gif" height="1" width="10" border="0"></td>
									<td height="20"><a href="CommStatements.jsp"><b>NEXT</b></a></td>
								</tr>
								<tr>
									<td height="20"><img src="images/spacer.gif" height="1" width="10" border="0"></td>
									<td height="20"><a href="CommStatements.jsp"><b>PREVIOUS</b></a></td>
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
									<col width="85">
									<col width="5">
									<col width="5">
									
									<col width="5">
									<col width="110">
									<col width="5">
									<col width="5">

									<col width="5">
									<col width="115">
									<col width="5">
									<col width="5">

									<col width="5">
									<col width="135">
									<col width="5">
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

									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif"nowrap>
										<a href="StaffCommSchemesView.jsp"class="buttontop" ><b>Commission Schemes</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif"nowrap>
										<a href="BusinessUnitsView.jsp"class="buttontop" ><b>Business Unit</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="../Finance/ReconciliationSummaryView.jsp"class="buttontop" ><b>Cash Reconciliation</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap>
										<a href="CommissionHistoryView.jsp"class="buttontop" ><b>Commission History</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
																									
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>Commission Statement</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
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
							<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormWithBorder">
								<colgroup>
									<col width="29%">
									<col width="1%">
									<col width="70%">
								</colgroup>
								<tr>
									<td>
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="30%">
												<col width="30%">
												<col width="40%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="3"><b>PERSONAL DETAILS</b></th>
											</tr>
											<tr class="highlightorange" height=20>
												<td nowrap align = "center">1236646666</td>
												<td nowrap>Mr. Hong Hai Vu </td>
												<td nowrap>01B Maitland House Southend-On-Sea SS1 2JY</td>
											</tr>
											<tr>
												<td height="3" colspan="3"></td>
											</tr>
										</table>									
									</td>
								</tr>
								<tr>
									<td colspan=3 align=center>									   	
										<table border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="20%">
												<col width="25%">
												<col width="25%">
												<col width="5%" align=right>
												<col width="10%" align=right>
												<col width="5%" align=right>
												<col width="10%" align=right>
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="7"><b>COMMISSION STATEMENT</b></th>
											</tr>
											<tr class="field">
												<td nowrap>For period&nbsp; 2 </td>
												<td nowrap>from (03/07/2005 to 
												30/07/2005)</td>
												<td nowrap>&nbsp;</td>
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap colspan="2" class="highlightblue">&pound;</td>
											</tr>
											<tr class="field">
												<td nowrap colspan="3" class="highlightblue">Balance from Previous Statement</td>
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap class="highlightblue" colspan="2">&lt;value&gt;</td>
											</tr>
											<tr class="field">
												<td nowrap>
												<a href="javascript:doViewCommAdjustList()">Commission Adjustments</a></td>
												<td nowrap>&lt;reasoncode&gt;</td>
												<td nowrap>&lt;description&gt;</td>
												<td nowrap colspan="2">&lt;value&gt;</td>
												<td nowrap colspan="2">&nbsp;</td>
											</tr>
											<tr class="field">
												<td nowrap>&nbsp;</td>
												<td nowrap>&lt;reasoncode&gt;</td>
												<td nowrap>&lt;description&gt;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap class=DataOutlineField>&lt;value&gt;</td>
												<td nowrap colspan="2">&nbsp;</td>
											</tr>
											<tr class="field">
												<td nowrap colspan="3" rowspan="15">
<table border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="30%">
												<col width="14%">
												<col width="14%">
												<col width="14%">
												<col width="14%" align=right>
												<col width="14%" align=right>
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="6" align=left><b>Commission Due this Week</b></th>
											</tr>
											<tr class="field">
												<td height="3" colspan="6"></td>
											</tr>														
											<tr class=field2>
												<td nowrap class=field2><b></b></td>
												<td nowrap colspan="5" rowspan="9" valign=top>
												<table  width="100%" cellpadding="1" cellspacing="2" class=FormWidthBorder>
											<colgroup>
												<col width="15%" align=left>
												<col width="22%">
												<col width="23%" align=right>
												<col width="15%" align=right>
												<col width="25%" align=right>
											</colgroup>
											<tr class="section">
												<td nowrap colspan="2" class="title">Cash Commission</th>
												<td nowrap class="title">Cash Collected &pound;</td>
												<td nowrap class="title">Rate %</td>
												<td nowrap class="title">Commissions &pound;</td>
											</tr>											
											<tr class="field3">
												<td nowrap>Territory</td>
												<td nowrap>&lt;territory&gt;</td>
												<td nowrap>&lt;value&gt;</td>
												<td nowrap>&lt;%&gt;</td>
												<td nowrap>&lt;value&gt;</td>
											</tr>
											<tr class="field3">
												<td nowrap>Territory</td>
												<td nowrap>&lt;territory&gt;</td>
												<td nowrap>&lt;value&gt;</td>
												<td nowrap>&lt;%&gt;</td>
												<td nowrap>&lt;value&gt;</td>
											</tr>
												
											<tr class="field3">
												<td nowrap>RD Cheques</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&lt;value&gt;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap class="DataOutlineField">-&lt;value&gt;</td>
											</tr>
											<tr class="field3">
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
											</tr>
										</table>	
										</td>
											</tr>
											<tr class="field2">
												<td nowrap>Commission Scheme</td>
											</tr>
											<tr class="field2">
												<td nowrap>&lt;schemei.d&gt;</td>
											</tr>
											<tr class="field2">
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field2">
												<td>&nbsp;</td>
											</tr>
											<tr class="field2">
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field2">
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field2">
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field2">
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field2">
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field2">
												<td nowrap></td>
												<td nowrap  class="title" colspan="2">Sales 
												Commission</td>
												<td nowrap></td>
												<td nowrap class="title">Number of 
												Customers</td>
												<td nowrap class="title">Rate &pound;</td>
											</tr>
											<tr class="field2">
												<td nowrap>&nbsp;</td>
												<td nowrap>1st Sale:</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap align = "left">&lt;value&gt;</td>
												<td nowrap>&lt;value&gt;</td>
											</tr>
											<tr class="field2">
												<td nowrap>&nbsp;</td>
												<td nowrap>2nd Sale:</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap align = "left">&lt;value&gt;</td>
												<td nowrap>&lt;value&gt;</td>
											</tr>
											<tr class="field2">
												<td nowrap><b>Total Standard 
												Commission</b></td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr>
												<td height="3" colspan="6"></td>
											</tr>
											<tr class="field2">
												<td nowrap>
												<a href="javascript:doViewCommBonusList()">Additional Commissions</a></td>
												<td nowrap>&lt;description&gt;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field2">
												<td nowrap>&nbsp;</td>
												<td nowrap>&lt;description&gt;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field2">
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr>
												<td height="3" colspan="6"></td>
											</tr>											
										</table>												
												</td>
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap colspan="2">&lt;value&gt;</td>
											</tr>
											<tr class="field">
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap colspan="2">&nbsp;</td>
											</tr>
											<tr class="field">
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap colspan="2">&nbsp;</td>
											</tr>
											<tr class="field">
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap colspan="2">&nbsp;</td>
											</tr>
											<tr class="field">
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap colspan="2">&nbsp;</td>
											</tr>
											<tr class="field">
												<td nowrap colspan="2">&lt;value&gt;</td>
												<td nowrap colspan="2">&nbsp;</td>
											</tr>
											<tr class="field">
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap colspan="2">&nbsp;</td>
											</tr>
											<tr class="field">
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap colspan="2">&nbsp;</td>
											</tr>
											<tr class="field">
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap colspan="2">&nbsp;</td>
											</tr>
											<tr class="field">
												<td nowrap colspan="2">&lt;value&gt;</td>
												<td nowrap colspan="2">&nbsp;</td>
											</tr>
											
											<tr class="field">
												<td nowrap >&nbsp;</td>
												<td nowrap class="DataOutlineField">&lt;value&gt;</td>
												<td nowrap colspan="2">&nbsp;</td>
											</tr>
											<tr class="field">
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap colspan="2">&lt;value&gt;&nbsp;</td>
											</tr>											
											<tr class="field">
												<td nowrap colspan="2">&lt;value&gt;</td>
												<td nowrap colspan="2">&nbsp;</td>
											</tr>
											<tr class="field">
												<td nowrap>&nbsp;</td>
												<td nowrap class="DataOutlineField">&lt;value&gt;</td>
												<td nowrap colspan="2">&nbsp;</td>
											</tr>
											<tr class="field">
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap colspan="2">&lt;value&gt;</td>
											</tr>											
											<tr class="field">
												<td nowrap class="highlightblue" colspan=3>
												Commission Due</td>
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap class="OutlineField">&lt;value&gt;</td>
											</tr>
											<tr class="field">
												<td nowrap>
												<a href="javascript:doPaymentTakenList();">Payments Taken</a></td>
												<td nowrap colspan="2">&lt;date&gt;</td>
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap colspan="2">-&lt;value&gt;</td>
											</tr>
											<tr class="field">
												<td nowrap>&nbsp;</td>
												<td nowrap colspan="2">&lt;date&gt;</td>
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap colspan="2">-&lt;value&gt;</td>
											</tr>
											<tr class="field">
												<td nowrap class="highlightblue">Balance 
												to C/FWD</td>
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap colspan="2">&nbsp;</td>
												<td nowrap>&nbsp;</td>
												<td nowrap class="DataOutline">&lt;value&gt;</td>
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
						<td colspan="2">
						<a class=btnormal2 href="javascript:doPrint()" target="_self">Print</a>&nbsp;
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
	function doPrint() {
	//	
	}
	function doViewCommAdjustList() {
		var request = "popCommAdjustment.jsp";
		showModelessDialog(request,window,"status:false;dialogWidth:700px;dialogHeight:380px");
		return;
	}
	function doViewCommBonusList() {
		var request = "popCommBonus.jsp";
		showModelessDialog(request,window,"status:false;dialogWidth:700px;dialogHeight:380px");
		return;
	}
	function doPaymentTakenList() {
		var width = 700;
		var height = 330;
		var request = "popPaymentTaken.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
	}		
	function doView() {
		window.location="ViewCommSchemeDetails.jsp";
	}		
	function doAmend() {
		window.location="AmendCommissionScheme.jsp";
	}	
	function doNew() {
		window.location="CreateCommissionScheme.jsp";
	}
</script>
</html>