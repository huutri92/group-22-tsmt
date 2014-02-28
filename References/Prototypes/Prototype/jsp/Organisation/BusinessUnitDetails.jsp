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
	<title>Business Unit Details</title>
</head>

<body class="body">
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
					menuOrganization(1);
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
						<td height="25" colspan=2><div id="error" class="error"><b><morses:error/>&nbsp;</b></div></td>
						<td height="25">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="4">
									<col width="150">
									<col width="5">
									<col width="5">
									
									<col width="4">
									<col width="150">
									<col width="5">
									<col width="5">

									<col width="*">
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap>Details</td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
																	
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" nowrap><a href="javascript:doViewSummary();" class="buttontop">Summary Information</a></td>
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
							<table border="0" width="100%" cellpadding="0" cellspacing="0">
								<colgroup>
									<col width="49%">
									<col width="1%">
									<col width="50%">
								</colgroup>
								<tr>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="30%">
												<col width="70%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="2"><b>BUSINESS UNIT DETAILS</b></th>
											</tr>
											<tr>
												<td height="5" colspan="2"></td>
											</tr>
											<tr class="Field20">
												<td nowrap>Unit Name <font color="#FF0000">*</font></td>
												<td nowrap>
													<input class="FieldNormal" type="text" name="" value="" size="20"></td>
											</tr>
											<tr class="Field20">
												<td nowrap>Status <font color="#FF0000">*</font></td>
												<td nowrap height="16">
													<select size="1" name="status" class="FieldWidth130">
														<option value=""></option>
														<option value="">Live</option>
														<option value="">Close</option>
													</select></td>
											</tr>
											<tr class="Field20">
												<td nowrap>Unit Type <font color="#FF0000">*</font></td>
												<td nowrap height="16">
													<select size="1" name="unitType" class="FieldWidth130">
														<option value=""></option>
														<option value="">Morses</option>
														<option value="">Division</option>
														<option value="">Network</option>
														<option value="">Branch</option>
														<option value="">Section</option>
														<option value="">Territory</option>
													</select></td>
											</tr>
											<tr class="field20">
												<td>Start Date <font color="#FF0000">*</font></td>
												<td>
													<input class="FieldDate" type="text" name="buStartDateString" size="20" value="">&nbsp;<img id="btStartdate" src="../images/calendar.gif" border="0" width="16" height="14">
													<script type="text/javascript">
														<!--
															Calendar.setup({
															  inputField: "buStartDateString",
															  button	: "btStartdate",
															  align	 : "Tr",
															  ifFormat  : "%d/%m/%Y",
															  daFormat  : "%d/%m/%Y",
															  timeFormat: "24",
															  showsTime : false,
															  singleClick: true
															});
														//-->
													</script>
												</td>
											</tr>
											<tr class="field20">
												<td>End Date</td>
												<td>
													<input class="FieldDate" type="text" name="buEndDateString" size="20" value="">&nbsp;<img id="btEndDate" src="../images/calendar.gif" border="0" width="16" height="14">
														<script type="text/javascript">
															<!--
																Calendar.setup({
																  inputField: "buEndDateString",
																  button	: "btEndDate",
																  align	 : "Tr",
																  ifFormat  : "%d/%m/%Y",
																  daFormat  : "%d/%m/%Y",
																  timeFormat: "24",
																  showsTime : false,
																  singleClick: true
																});
															//-->
														</script>
												</td>
											</tr>
											<tr class="field20">
												<td nowrap>Parent Unit</td>
												<td nowrap>
													<select size="1" name="parentUnit" class="FieldWidth130">
														<option value=""></option>
														<option value="">Unit 1</option>
														<option value="">Unit 2</option>
														<option value="">Unit 3</option>
													</select></td>
											</tr>
											<tr class="Field20">
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="Field20">
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="Field20">
												<td nowrap>&nbsp;</td>
												<td nowrap>&nbsp;</td>
											</tr>
											</table>
									</td>
									<td>&nbsp;</td>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="40%">
												<col width="60%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="2">ADDITIONAL DETAILS</th>
											</tr>
											<tr>
												<td height="5" colspan="2"></td>
											</tr>
											<tr class="Field220">
												<td nowrap>Description</td>
												<td nowrap>
													<input class="FieldNormal" type="text" name="" value="" size="20"></td>
											</tr>
											<tr class="Field220">
												<td nowrap>Address</td>
												<td nowrap>
													&nbsp;</td>
											</tr>
											<tr class="Field220">
												<td nowrap>House Name/Number <font color="#FF0000">*</font></td>
												<td nowrap>
													<input class="FieldNormal" type="text" name="" value="239 Xuan Thuy"></td>
											</tr>											
											</tr>
											<tr class="Field220">
												<td nowrap>Street</td>
												<td nowrap>
													<input class="FieldNormal" type="text" name="" value="Cau Giay" size="20"></td>
											</tr>
											<tr class=field2 valign=middle>
												<td>Town/City</td>
												<td>
													<input class="FieldNormal" type="text" name="" value="Ha Noi" size="20"></td>
											</tr>
											<tr class="Field220">
												<td>Postcode <font color="#FF0000">*</font></td>
												<td>
													<input class="FieldDate" type="text" name="" value="EC1N 2NP" size="20">&nbsp;
													<a href="javascript:openAddress();">
													<img tabindex="" src="../images/search.gif" border="0" width="15" height="15"></a>
												</td>
												
											</tr>
											<tr class="Field220">
												<td nowrap>Phone Number <font color="#FF0000">*</font></td>
												<td nowrap>
													<input class="Field20" type="text" name="" value="" size="20"></td>
											</tr>											
											<tr class="Field220">
												<td nowrap>PDA Used</td>
												<td nowrap>
													<input type="checkbox" class="checkbox"  name="C1" value="ON" checked style="padding-left:0px"></td>
											</tr>
											<tr class="Field220">
												<td nowrap>Number of Subordinate 
												Units</td>
												<td nowrap >
													&lt;count&gt;</td>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr class=btnormal>
									<td colspan="3"><a href="javascript:doNew()" class="btnormal" tabindex="26">New</a>&nbsp;
									<a href="javascript:doSave()" class="btnormal" tabindex="26">Save</a></td>
								</tr>
								<tr>
									<td colspan="3">&nbsp;</td>
								</tr>
								<tr>
									<td colspan="31">
								<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder">
											<colgroup>
												<col width="15%" align="left" valign="top">
												<col width="23%" align="left" valign="top">
												<col width="12%" align="left" valign="top">
												<col width="12%" align="right" valign="top">
												<col width="38%" align="center" valign="top">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="5" align="center">ASSIGNED STAFF</th>
											</tr>
											<tr class="Section">
												<td colspan="5" height="3"></td>
											</tr>
											<tr class="Section">
												<th class="Title">Staff I.D</th>
												<th class="Title">Staff Name</th>
												<th class="Title">Start Date</th>
												<th class="Title">End Date</th>
												<th class="Title">Main User</th>
											</tr>
											<tr class="Field20">
												<td><a href="javascript:amendStaff();">1001</a></td>
												<td>Bill Rancic</td>
												<td>11/11/2001</td>
												<td>01/11/2009</td>
												<td><input type="checkbox" class="checkbox" name="select" value="" checked disabled></td>
											</tr>
											<tr class="Field220">
												<td><a href="javascript:amendStaff();">1002</a></td>
												<td>Troy McClain</td>
												<td>11/11/2001</td>
												<td>01/11/2009</td>
												<td><input type="checkbox" class="checkbox" name="select" value="" disabled></td>
											</tr>
											<tr class="Field20">
												<td><a href="javascript:amendStaff();">1003</a></td>
												<td>Ereka Vetrini</td>
												<td>11/11/2001</td>
												<td>01/11/2009</td>
												<td><input type="checkbox" class="checkbox" name="select" value="" disabled></td>
											</tr>
											<tr class="Field220">
												<td><a href="javascript:amendStaff();">1004</a></td>
												<td>Bowie Hogg</td>
												<td>11/11/2001</td>
												<td>01/11/2009</td>
												<td><input type="checkbox" class="checkbox" name="select" value="" disabled></td>
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
							<a href="javascript:doAddStaff();" class="btnormal" tabindex="26">Add Staff</a>&nbsp;&nbsp;
						</td>
					</tr>
				</table>
			</td>
			<!-- ------------------------------------------------------------------------------------------ -->
			<!-- Content End -->
		</tr>
	</table>	
</form>
<form name="frmNavigator" method="post">
	<input type=hidden name="ACTION" value="">
</form>
<script language="javascript">
	function doNew() {
		window.location.href="CreateBusinessUnit.jsp";
	}
	function doSave() {
		window.location.href="BusinessUnitDetailsView.jsp";
	}
	function doViewSummary() {
		window.location.href = "BusinessUnitSummary.jsp";
	}
	function doViewBusinessStream() {
		window.location.href = "BusinessStream.jsp";
	}
	function amendStaff() {
		var width = 700;
		var height = 200;
		var request = "PopupAssignStaff.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
	}	
	function doAddStaff() {
		var width = 700;
		var height = 310;
		var request = "PopSearchStaff.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
	}	

	function doNavigation() {
		window.location.href = "BusinessUnitDetails.jsp";
	}
	
</script>
</body>
</html>