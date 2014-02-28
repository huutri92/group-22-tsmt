<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>	
	<script language="javascript" src="../js/menu.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">	
	<title>Manage Reason Codes</title>
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
					menuSystemAdmin(3);
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
						<col width="*">
						<col width="5">
					</colgroup>
					<tr>
						<td height="25" valign="top"><img src="../images/corner.gif" border="0" width="5" height="5"></td>
						<td height="25">&nbsp;</td>
						<td height="25">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="5">
									<col width="150">
									<col width="5">
									<col width="*">
								</colgroup>
								<tr>	
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>Manage Reason Codes</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							<table border="0" width="100%" cellpadding="0" cellspacing="0">
								<colgroup>
									<col width="50%">
									<col width="1%">
									<col width="50%">
								</colgroup>
								<tr>
									<td valign="top">
										<table border="0" cellpadding="0" cellspacing="0" width="100%" class="FormWithBorder">
											<tr>
												<th align="center" class="title"><b>MAINTAIN ADJUSTMENT REASON CODE</b></th>
											</tr>
											<tr>
												<td height="3"></td>
											</tr>
											<tr>
												<td>
													<div style="position:relative; width=100%; overflow:hidden;">
													<div id="dvHeader1" style="position:relative; width:96.5%; left:0px; ">
														<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1"id="tblData" name="tblData">
															<colgroup>
																<col width="60%" align="left">
																<col width="40%" align="left">
															</colgroup>
															<tr class="Section">	
																<th class="Title">Description</th>
																<th class="Title">Status</th>
															</tr>
														</table>
													</div>
													</div>
													<div id="dvData1" style="position:relative; height: 300px; width:100%; overflow:auto" onscroll="sync1()">
														<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1" id="tblData" name="tblData">
															<colgroup>
																<col width="60%" align="left">
																<col width="40%" align="left">
															</colgroup>
															<tr class="field">
																<td ><a href="javascript:doAmendAdjustmentReason();">Manual finance charge</a></td>
																<td >Live</td>
															</tr>
															<tr class="Field2">		
																<td><a href="javascript:doAmendAdjustmentReason();">Manual PPI premium</a></td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field">
																<td ><a href="javascript:doAmendAdjustmentReason();">Product admin fee</a></td>
																<td >Live</td>
															</tr>
															<tr class="Field2">						
																<td ><a href="javascript:doAmendAdjustmentReason();">Bounced cheque</a></td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field">						
																<td ><a href="javascript:doAmendAdjustmentReason();">Handling fee (bounced cheque)</a></td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendAdjustmentReason();">Cash adjustment</a></td>
																<td >Withdrawn</td>
															</tr>	
															<tr class="Field">
																<td height="15" >
																<a href="javascript:doAmendAdjustmentReason();">Sales adjustment</a></td>
																<td height="15" >Live</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendAdjustmentReason();">Debt purchase</a></td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field">
																<td ><a href="javascript:doAmendAdjustmentReason();">Reverse voucher</a></td>
																<td >Withdrawn</td>
															</tr>					
															<tr class="Field2">
																<td ><a href="javascript:doAmendAdjustmentReason();">Reverse discount</a></td>
																<td >Withdrawn</td>
															</tr>					
															<tr class="Field">
																<td ><a href="javascript:doAmendAdjustmentReason();">Reverse PPI settlement</a></td>
																<td >Live</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendAdjustmentReason();">Reverse sale cancellation</a></td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field">
																<td ><a href="javascript:doAmendAdjustmentReason();">Promotional voucher</a></td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendAdjustmentReason();">Into discount</a></td>
																<td >Live</td>
															</tr>
															<tr class="Field">
																<td ><a href="javascript:doAmendAdjustmentReason();">Product discount</a></td>
																<td >Live</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendAdjustmentReason();">PPI settlement</a></td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field">
																<td ><a href="javascript:doAmendAdjustmentReason();">Cash adjustment</a></td>
																<td >Live</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendAdjustmentReason();">Sale adjustment</a></td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field">
																<td ><a href="javascript:doAmendAdjustmentReason();">Sale cancellation</a></td>
																<td >Live</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendAdjustmentReason();">Finance charge rebate</a></td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field">
																<td ><a href="javascript:doAmendAdjustmentReason();">PPI premium rebate</a></td>
																<td >Live</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendAdjustmentReason();">Reverse admin fee</a></td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field">
																<td ><a href="javascript:doAmendAdjustmentReason();">Reverse handling fee</a></td>
																<td >Live</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendAdjustmentReason();">Reverse debt purchase</a></td>
																<td >Live</td>
															</tr>
															<tr class="Field">
																<td ><a href="javascript:doAmendAdjustmentReason();">Other</a></td>
																<td >Withdrawn</td>
															</tr>
														</table>
													</div>
												</td>
											</tr>
											<tr class="btnormal">
												<td>
													<a class="btnormal" href="javascript:doAddAdjustmnentReason();" target="_self">New</a>
												</td>
											</tr>
										</table>
									</td>
									<td>&nbsp;</td>
									<td valign="top">
										<table border="0" cellpadding="0" cellspacing="0" width="100%" class="FormWithBorder">
											<tr>
												<th align="center" class="title"><b>MAINTAIN EVENT LOG REASON CODE</b></th>
											</tr>
											<tr>
												<td height="3"></td>
											</tr>
											<tr>
												<td>
													<div style="position:relative; width=100%; overflow:hidden;">
													<div id="dvHeader2" style="position:relative; width:96.5%; left:0px; ">
														<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1"id="tblData" name="tblData">
															<colgroup>
																<col width="50%" align="left">
																<col width="35%" align="left">
																<col width="15%" align="left">				
															</colgroup>
															<tr class="Section">	
																<th class="Title">Log Reason</th>
																<th class="Title">Log Type</th>
																<th class="Title">Status</th>
															</tr>
														</table>
													</div>
													</div>
													<div id="dvData2" style="position:relative; height: 300px; width:100%; overflow:auto" onscroll="sync2()">
														<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1"id="tblData" name="tblData">
															<colgroup>
																<col width="50%" align="left">
																<col width="35%" align="left">
																<col width="15%" align="left">				
															</colgroup>
															<tr class="field">
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 1</a></td>
																<td >Phone call</td>
																<td >Live</td>
															</tr>
															<tr class="Field2">		
																<td><a href="javascript:doAmendEventLogReason();">Log Reason 2</a></td>
																<td >Review</td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field">
																<td ><a href="javascript:doAmendEventLogReason();"> Log Reason 3</a></td>
																<td >Visit</td>
																<td >Live</td>
															</tr>
															<tr class="Field2">						
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 4</a></td>
																<td >Letter</td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field">						
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 5</a></td>
																<td >Note</td>
																<td >Live</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 6</a></td>
																<td >Service</td>
																<td >Withdrawn</td>
															</tr>	
															<tr class="Field">
																<td height="15" >
																<a href="javascript:doAmendEventLogReason();">Log Reason 7</a></td>
																<td height="15" > Scheduled action</td>
																<td height="15" >Live</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 8</a></td>
																<td >Other</td>
																<td >Withdrawn</td>
															</tr>
															<tr class="field">
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 8</a></td>
																<td >Phone call</td>
																<td >Live</td>
															</tr>
															<tr class="Field2">		
																<td><a href="javascript:doAmendEventLogReason();">Log Reason 9</a></td>
																<td >Phone call</td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field">
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 10</a></td>
																<td >Phone call</td>
																<td >Live</td>
															</tr>
															<tr class="Field2">						
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 11</a></td>
																<td >Log Reason 4</td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field">						
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 12</a></td>
																<td >Service</td>
																<td >Live</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 13</a></td>
																<td >Log Reason 6</td>
																<td >Withdrawn</td>
															</tr>	
															<tr class="Field">
																<td height="15" >
																<a href="javascript:doAmendEventLogReason();">Log Reason 14</a></td>
																<td height="15" >Letter</td>
																<td height="15" >Live</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 15</a></td>
																<td >Letter</td>
																<td >Withdrawn</td>
															</tr>
															<tr class="field">
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 16</a></td>
																<td >Log Reason 1</td>
																<td >Live</td>
															</tr>
															<tr class="Field2">		
																<td><a href="javascript:doAmendEventLogReason();">Log Reason 17</a></td>
																<td >Letter</td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field">
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 18</a></td>
																<td >Letter</td>
																<td >Live</td>
															</tr>
															<tr class="Field2">						
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 19</a></td>
																<td >Letter</td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field">						
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 20</a></td>
																<td >Visit</td>
																<td >Live</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 21</a></td>
																<td >Service</td>
																<td >Withdrawn</td>
															</tr>	
															<tr class="Field">
																<td height="15" >
																<a href="javascript:doAmendEventLogReason();">Log Reason 22</a></td>
																<td height="15" >Phone call</td>
																<td height="15" >Live</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 23</a></td>
																<td >Visit</td>
																<td >Withdrawn</td>
															</tr>
															<tr class="field">
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 24</a></td>
																<td >Note</td>
																<td >Live</td>
															</tr>
															<tr class="Field2">		
																<td><a href="javascript:doAmendEventLogReason();">Log Reason 25</a></td>
																<td >Note</td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field">
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 26</a></td>
																<td >Note</td>
																<td >Live</td>
															</tr>
															<tr class="Field2">						
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 27</a></td>
																<td >Note</td>
																<td >Withdrawn</td>
															</tr>
															<tr class="Field">						
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 28</a></td>
																<td >Note</td>
																<td >Live</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 29</a></td>
																<td >Phone call</td>
																<td >Withdrawn</td>
															</tr>	
															<tr class="Field">
																<td height="15" >
																<a href="javascript:doAmendEventLogReason();">Log Reason 30</a></td>
																<td height="15" >Schedule action</td>
																<td height="15" >Live</td>
															</tr>
															<tr class="Field2">
																<td ><a href="javascript:doAmendEventLogReason();">Log Reason 15</a></td>
																<td >Phone call</td>
																<td >Withdrawn</td>
															</tr>
														</table>
													</div>
													</span>
												</td>
											</tr>
											<tr class="btnormal">
												<td>
													<a class="btnormal" href="javascript:doAddEventLogReason();" target="_self">New</a>
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
	function sync1() {
		var lft = document.all("dvData1").scrollLeft;
		var top = document.all("dvData1").scrollTop;
		// adjust the position of Header pane
		document.all("dvHeader1").style.left = -lft;
	}
	function sync2() {
		var lft = document.all("dvData2").scrollLeft;
		var top = document.all("dvData2").scrollTop;
		// adjust the position of Header pane
		document.all("dvHeader2").style.left = -lft;
	}
	function doAddAdjustmnentReason()  {
		var width = 700;
		var height = 320;
		var request = "AddAdjustmentReasonCode.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
	}
	function doAmendAdjustmentReason() {
		var width = 700;
		var height = 320;
		var request = "AmendAdjustmentReasonCode.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
	}
	function doAddEventLogReason() {
		var width = 700;
		var height = 250;
		var request = "AddEventReasonCode.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
	}
	function doAmendEventLogReason() {
		var width = 700;
		var height = 250;
		var request = "AmendEventReasonCode.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
	}
//-->
</script>
</html>