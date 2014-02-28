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

	<title>Customer Detail Event Log</title>
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
									<col width="4">
									<col width="85">
									<col width="5">
									<col width="5">
									
									<col width="4">
									<col width="85">
									<col width="5">
									<col width="5">
									
									<col width="4">
									<col width="85">
									<col width="5">
									<col width="5">
									
									<col width="4">
									<col width="85">
									<col width="5">
									<col>
								</colgroup>
								<tr>
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif"><a href="CustomerDetailMain.jsp"class="buttontop"><b>Main Info</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="10" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif"><a href="CustomerDetailAddress.jsp"class="buttontop"><b>Address Info</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="10" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif"><a href="CustomerDetailAccount.jsp"class="buttontop"><b>Accounts</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="10" height="21" border="0"></td>
									<td>&nbsp;</td>
									
								
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class=selected><b>Event Logs</b></td>
									<td><img src="../images/tab_01_03.gif" width="10" height="21" border="0"></td>
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
									<col width="23%">
									<col width="1px">
									<col width="25%">
									<col width="2%">
									<col width="1px">
									<col width="23%">
									<col width="1px">
									<col width="25%">
									<col width="2%">
								</colgroup>
								<tr>
									<td class="Field">Event Date</td>
									<td>&nbsp;</td>
									<td class="Field">From
										<input class="FieldDate" type="text" id="from" name="fromEvent" size="20" value = "25/05/2005">&nbsp;
										<a href="#"><img id="btFrom" src="../images/calendar.gif" border="0" width="16" height="14"></a>
										<script type="text/javascript">
											<!--
												Calendar.setup({
												  inputField	: "from",
												  button		: "btFrom",
												  align		 : "Tr",
												  ifFormat	  : "%d/%m/%Y",
												  daFormat	  : "%d/%m/%Y",
												  timeFormat	: "24",
												  showsTime	 : false,
												  singleClick   : true
												});
											//-->
										</script>

									</td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Reason</td>
									<td>&nbsp;</td>
									<td class="Field">
										<select name="reason" class="FieldLong" tabindex="1" size="1">
											<option value="Reason 1">Reason 1</option>
											<option value="Reason 2">Reason 2</option>
											<option value="Reason 3">Reason 3</option>
											<option value="Reason 4">Reason 4</option>
											<option value="Reason 5">Reason 5</option>
											<option value="Reason 6">Reason 6</option>
										</select></td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">To&nbsp;&nbsp;&nbsp;&nbsp;
										<input class="FieldDate" type="text" id="to" name="toEvent" size="20" value = "01/05/2005">&nbsp;
										<a href="#"><img id="btTo" src="../images/calendar.gif" border="0" width="16" height="14"></a>
										<script type="text/javascript">
											<!--
												Calendar.setup({
												  inputField	: "to",
												  button		: "btFrom",
												  align		 : "Tr",
												  ifFormat	  : "%d/%m/%Y",
												  daFormat	  : "%d/%m/%Y",
												  timeFormat	: "24",
												  showsTime	 : false,
												  singleClick   : true
												});
											//-->
										</script>
									</td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>

							</table>	
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2"><a href="CustomerDetailEventLog.jsp" class="btnormal" tabindex="26">Filter</a></td>
						<td>&nbsp;</td>
					</tr>
					
					
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							 <table class="FormWithBorder" border="0" width="100%" cellpadding="1" cellspacing="1">
								<colgroup>
									<col width="3%">
									<col width="12%" align="left">
									<col width="12%" align="right">
									<col width="12%" align="left">
									<col width="61%"  align =left>
								</colgroup>
								<tr class="Section">
									<th class="Title" height="20"></th>
									<th class="Title"><b>Event ID</b></th>
									<th class="Title"><b>Created on</b></th>
									<th class="Title" ><b>Type</b></th>
									<th class="Title" ><b>Reason</b></th>
								</tr>
								<tr class="Field">
									<td ><input type="checkbox" class="checkbox" onclick="" name="SelectedId" value=""></td>
									<td ><a class="" href="javascript:doView();" target="_self">12</a></td>
									<td  nowrap >1/1/2005</td>
									<td  nowrap>Normal</td>
									<td  nowrap>Fifth</td>
								</tr>
								<tr class="Field2">
									<td ><input type="checkbox" class="checkbox" onclick="" name="SelectedId" value=""></td>
									<td ><a class="" href="javascript:doView();" target="_self">15</a></td>
									<td  nowrap >1/1/2005</td>
									<td  nowrap>Normal</td>
									<td  nowrap>Fifth</td>
								</tr>
								<tr class="Field">
									<td ><input type="checkbox" class="checkbox" onclick="" name="SelectedId" value=""></td>
									<td ><a class="" href="javascript:doView();" target="_self">16</a></td>
									<td  nowrap >1/1/2005</td>
									<td  nowrap>Normal</td>
									<td  nowrap>Second</td>
								</tr>
								<tr class="Field2">
									<td ><input type="checkbox" class="checkbox" onclick="" name="SelectedId" value=""></td>
									<td ><a class="" href="javascript:doView();" target="_self">160</a></td>
									<td  nowrap >1/1/2005</td>
									<td  nowrap>Normal</td>
									<td  nowrap>Second</td>
								</tr>
								<tr class="Field">
									<td ><input type="checkbox" class="checkbox" onclick="" name="SelectedId" value=""></td>
									<td ><a class="" href="javascript:doView();" target="_self">168</a></td>
									<td  nowrap >1/1/2005</td>
									<td  nowrap>Normal</td>
									<td  nowrap>Second</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2">
							<a href="javascript:doUpdate();" class="btnormal" tabindex="26">Amend</a>&nbsp;&nbsp;
							<a href="javascript:doAddNew();" class="btnormal" tabindex="25">Add New</a>
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

	//-->
</script>
</body>


</html>