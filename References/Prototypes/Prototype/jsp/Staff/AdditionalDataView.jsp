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
	<title>Additional Data</title>
</head>
<script>
function sync()
{
	var lft = document.all("dvData").scrollLeft;
	var top = document.all("dvData").scrollTop;
	
	// adjust the position of Header pane
	document.all("dvHeader").style.left = -lft;

}
function sync1()
{
	var lft = document.all("dvData1").scrollLeft;
	var top = document.all("dvData1").scrollTop;
	
	// adjust the position of Header pane
	document.all("dvHeader1").style.left = -lft;

}
function sync2()
{
	var lft = document.all("dvData2").scrollLeft;
	var top = document.all("dvData2").scrollTop;
	
	// adjust the position of Header pane
	document.all("dvHeader2").style.left = -lft;

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
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="StaffDetailsView.jsp" class="buttontop"><b>Staff Details</b></a></td>
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
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="CommissionHistoryView.jsp"class="buttontop"><b>Commission History</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><b>Commission Statement</b></td>
									<td><img src="../images/tab_02_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>

									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>Additional Data</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
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
									<col width="25%">
									<col width="1%">
									<col width="39%">
									<col width="1%">
									<col width="34%">
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
									<td valign="top" colspan="3">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="20%">
											</colgroup>
											<tr class="Section">
												<th class="Title"><b>WORKING HOURS RECORD</b></th>
											</tr>
											<tr>
												<td height="2"></td>
											</tr>
											<tr>
									<!-- This is table's content -->
									<td valign="top">
										<div style="position:relative; width=100%; overflow:hidden;">
										<div id="dvHeader" style="position:relative; width:97.5%; left:0px; ">
											<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
												<colgroup>
													<col width="30%" align="left">
													<col width="30%" align="left">
													<col width="40%" align="left">
												</colgroup>
												<tr class="Section">
													<th class="Title">Week Number</th>
													<th class="Title">Start Date</th>
													<th class="Title">Hours Worked</th>
												</tr>
												</table>
												</div>
												</div>
												<div id="dvData" style="position:relative; height: 195px; width:100%; overflow:auto" onscroll="sync()">
												<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
												<colgroup>
													<col width="30%" align="left">
													<col width="30%" align="left">
													<col width="40%" align="left">
												</colgroup>
												<tr class=field>
													<td>
													<a href="javascript:doViewWorkHour()">&lt;week_number&gt;</a></td>
													<td>&lt;start_date&gt;</td>
													<td>&lt;hours_worked&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewWorkHour()">&lt;week_number&gt;</a></td>
													<td>&lt;start_date&gt;</td>
													<td>
													&lt;hours_worked&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewWorkHour()">&lt;week_number&gt;</a></td>
													<td>&lt;start_date&gt;</td>
													<td>&lt;hours_worked&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewWorkHour()">&lt;week_number&gt;</a></td>
													<td>&lt;start_date&gt;</td>
													<td>
													&lt;hours_worked&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewWorkHour()">&lt;week_number&gt;</a></td>
													<td>&lt;start_date&gt;</td>
													<td>&lt;hours_worked&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewWorkHour()">&lt;week_number&gt;</a></td>
													<td>&lt;start_date&gt;</td>
													<td>
													&lt;hours_worked&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewWorkHour()">&lt;week_number&gt;</a></td>
													<td>&lt;start_date&gt;</td>
													<td>&lt;hours_worked&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewWorkHour()">&lt;week_number&gt;</a></td>
													<td>&lt;start_date&gt;</td>
													<td>
													&lt;hours_worked&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewWorkHour()">&lt;week_number&gt;</a></td>
													<td>&lt;start_date&gt;</td>
													<td>&lt;hours_worked&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewWorkHour()">&lt;week_number&gt;</a></td>
													<td>&lt;start_date&gt;</td>
													<td>
													&lt;hours_worked&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewWorkHour()">&lt;week_number&gt;</a></td>
													<td>&lt;start_date&gt;</td>
													<td>&lt;hours_worked&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewWorkHour()">&lt;week_number&gt;</a></td>
													<td>&lt;start_date&gt;</td>
													<td>
													&lt;hours_worked&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewWorkHour()">&lt;week_number&gt;</a></td>
													<td>&lt;start_date&gt;</td>
													<td>&lt;hours_worked&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewWorkHour()">&lt;week_number&gt;</a></td>
													<td>&lt;start_date&gt;</td>
													<td>
													&lt;hours_worked&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewWorkHour()">&lt;week_number&gt;</a></td>
													<td>&lt;start_date&gt;</td>
													<td>&lt;hours_worked&gt;</td>
												</tr>																																																																								
												</table>
												</div>
									</td>
								</tr>
								<!--<tr class=btlist style="vertical-align: bottom;">
									<td>
										<a class="btnormal" href="javascript:doViewWorkHour()" target="_self">New</a>
									</td>
								</tr>-->
										</table>
									</td>
								</tr>
								
								<tr>
									<td colspan="5">&nbsp;</td>
								</tr>								
								<tr>
									<td colspan="3">																			
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
										<colgroup>
											<col width=100%>
										</colgroup>
											<tr class="Section">
												<th class="Title"><b>HOLIDAY RECORD</b></th>
											</tr>
											<tr>
												<td height="2"></td>
											</tr>
											<tr>
									<!-- This is table's content -->
									<td valign="top">
										<div style="position:relative; width=100%; overflow:hidden;">
											<div id="dvHeader1" style="position:relative; width:96.5%; left:0px; ">
											<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
												<colgroup>
													<col width="30%" align="left">
													<col width="30%" align="left">
													<col width="40%" align="left">
												</colgroup>
												<tr class="Section">
													<th class="Title">Start Date</th>
													<th class="Title">End Date</th>
													<th class="Title">Total Working Days</th>
												</tr>
												</table>
												</div>
												</div>
												<div id="dvData1" style="position:relative; height: 165px; width:100%; overflow:auto" onscroll="sync1()">
												<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
												<colgroup>
													<col width="30%" align="left">
													<col width="30%" align="left">
													<col width="40%" align="left">
												</colgroup>
												<tr class=field>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;total_working_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>
													&lt;total_working_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;total_working_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>
													&lt;total_working_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;total_working_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>
													&lt;total_working_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;total_working_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>
													&lt;total_working_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;total_working_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>
													&lt;total_working_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;total_working_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>
													&lt;total_working_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;total_working_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>
													&lt;total_working_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;total_working_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>
													&lt;total_working_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewHoliday()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;total_working_days&gt;</td>
												</tr>																																																																																				
												</table>
												</div>
									</td>
								</tr>
								<tr class=btlist style="vertical-align: bottom;">
									<td>
										<a class="btnormal" target="_self" href="javascript:doViewHoliday()">New</a>
									</td>
								</tr>
										</table>
									</td>
									<td>&nbsp;</td>
									<td valign="top" align="right" >
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<tr class="Section">
												<th class="Title">ABSENCE RECORD</th>
											</tr>
											<tr>
												<td height="2"></td>
											</tr>
											<tr>
									<!-- This is table's content -->
									<td valign="top">
											<div style="position:relative; width=100%; overflow:hidden;">
											<div id="dvHeader2" style="position:relative; width:96.5%; left:0px; ">									
											<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
												<colgroup>
													<col width="30%" align="left">
													<col width="30%" align="left">
													<col width="40%" align="left">
												</colgroup>
												<tr class="Section">
													<th class="Title">Start Date</th>
													<th class="Title">End Date</th>
													<th class="Title">Total Sick Days</th>
												</tr>
											</table>
											</div>
											</div>
											<div id="dvData2" style="position:relative; height: 165px; width:100%; overflow:auto" onscroll="sync()">
											<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
												<colgroup>
													<col width="30%" align="left">
													<col width="30%" align="left">
													<col width="40%" align="left">
												</colgroup>												
												<tr class=field>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field2>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>
												<tr class=field>
													<td>
													<a href="javascript:doViewAbsence()">&lt;start_date&gt;</a></td>
													<td>&lt;end_date&gt;</td>
													<td>&lt;Total_sick_days&gt;</td>
												</tr>																																																																																																																								
												</table>
												</div>
									</td>
								</tr>
								<tr class=btlist style="vertical-align: bottom;">
									<td>
										<a class="btnormal" target="_self" href="javascript:doViewAbsence()">New</a>
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
	function doViewWorkHour() {
		var width = 600;
		var height = 180;
		var newWin = window.open("../Staff/PopHourWorkDetails.jsp", "Details1", centerWindow(width, height));
	}
	function doViewHoliday() {
		var width = 600;
		var height = 180;
		var newWin = window.open("../Staff/PopHolidayDetails.jsp", "Details2", centerWindow(width, height));
	}
	function doViewAbsence() {
		var width = 600;
		var height = 180;
		var newWin = window.open("../Staff/PopAbsenceDetails.jsp", "Details3", centerWindow(width, height));
	}
	
	
	function doNavigation() {
		//
	}
	
//-->
</script>
</body>

</html>