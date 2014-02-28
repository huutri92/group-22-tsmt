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

<body class="body">
<form name="frmMorses" method="post">
	<table class="Form" border="0" width="100%" height="100%" cellpadding="0" cellspacing="0">	
		<tr>
			<!-- Content Begin -->
			<!-- ------------------------------------------------------------------------------------------ -->
			<td valign="top" height="100%">
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
									<col width="4">
									<col width="300">
									<col width="5">									
									<col>
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected">
									Allocate Commission Schemes</td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
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
									<col width="20%">
								</colgroup>						
								<tr>
									<td>
<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
					<colgroup>
						<col width="2%">
						<col width="48%">
						<col width="25%" align=right>
						<col width="25%" align=right>
					</colgroup>
					<tr class="Section">
						<th class="Title" align="center"><input type="checkbox" class=checkbox  class=checkbox  onclick="javaScript:checkSelect('selectedItemIds');" name="selectAll" value="selectAll"></td>
						<th class="Title" align="left">Scheme Name</th>
						<th class="Title">Start Date</th>
						<th class="Title">End Date</th>
					</tr>
					<tr>
						<td class="Field"><input type="checkbox" class=checkbox  class=checkbox  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
						<td class="Field"><a href="javascript:doView()";>Sales 
						of 30 week loans</a></td>
						<td class="Field">
							<input id="fromDate" type="text" class="FieldxD" name="fromDate" value="01/03/2005" maxlength="10">&nbsp;
							<img id="btFrom" src="../images/calendar.gif" border="0" width="16" height="14">
							<script type="text/javascript">
								Calendar.setup({
								  inputField	: "fromDate",
								  button		: "btFrom",
								  align		 : "Tr",
								  ifFormat	  : "%d/%m/%Y",
								  daFormat	  : "%d/%m/%Y",
								  timeFormat	: "24",
								  showsTime	 : false,
								  singleClick   : true
								});
							</script>
						</td>
						<td class="Field">
							<input id="endDate" type="text" class="FieldxD" name="endDate" value="01/03/2005" maxlength="10">&nbsp;
							<img id="btEndDate" src="../images/calendar.gif" border="0" width="16" height="14"> 
							<script type="text/javascript">
								Calendar.setup({
								  inputField	: "endDate",
								  button		: "btEndDate",
								  align		 : "Tr",
								  ifFormat	  : "%d/%m/%Y",
								  daFormat	  : "%d/%m/%Y",
								  timeFormat	: "24",
								  showsTime	 : false,
								  singleClick   : true
								});
							</script>
						</td>
					</tr>
					<tr>
						<td class="Field">
						<input type="checkbox" class=checkbox  class=checkbox  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')1" value=""></td>
						<td class="Field"><a href="javascript:doView()";>Normal 
						Cash</a></td>
						<td class="Field">
							<input id="fromDate0" type="text" class="FieldxD" name="fromDate0" value="01/03/2005" maxlength="10">&nbsp;
							<img id="btFrom0" src="../images/calendar.gif" border="0" width="16" height="14"> 
							<script type="text/javascript">
								Calendar.setup({
								  inputField	: "fromDate0",
								  button		: "btFrom0",
								  align		 : "Tr",
								  ifFormat	  : "%d/%m/%Y",
								  daFormat	  : "%d/%m/%Y",
								  timeFormat	: "24",
								  showsTime	 : false,
								  singleClick   : true
								});
							</script>
						</td>
						<td class="Field">
							<input id="endDate0" type="text" class="FieldxD" name="endDate0" value="01/03/2005" maxlength="10">&nbsp;
							<img id="btEndDate0" src="../images/calendar.gif" border="0" width="16" height="14"> 
							<script type="text/javascript">
								Calendar.setup({
								  inputField	: "endDate0",
								  button		: "btEndDate0",
								  align		 : "Tr",
								  ifFormat	  : "%d/%m/%Y",
								  daFormat	  : "%d/%m/%Y",
								  timeFormat	: "24",
								  showsTime	 : false,
								  singleClick   : true
								});
							</script>
						</td>
					</tr>
					<tr>
						<td class="Field">
						<input type="checkbox" class=checkbox  class=checkbox  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')2" value=""></td>
						<td class="Field"><a href="javascript:doView()";>
						Settlement Cash</a></td>
						<td class="Field">
							<input id="fromDate1" type="text" class="FieldxD" name="fromDate1" value="01/03/2005" maxlength="10">&nbsp;
							<img id="btFrom1" src="../images/calendar.gif" border="0" width="16" height="14"> 
							<script type="text/javascript">
								Calendar.setup({
								  inputField	: "fromDate1",
								  button		: "btFrom1",
								  align		 : "Tr",
								  ifFormat	  : "%d/%m/%Y",
								  daFormat	  : "%d/%m/%Y",
								  timeFormat	: "24",
								  showsTime	 : false,
								  singleClick   : true
								});
							</script>
						</td>
						<td class="Field">
							<input id="endDate1" type="text" class="FieldxD" name="endDate1" value="01/03/2005" maxlength="10">&nbsp;
							<img id="btEndDate1" src="../images/calendar.gif" border="0" width="16" height="14"> 
							<script type="text/javascript">
								Calendar.setup({
								  inputField	: "endDate1",
								  button		: "btEndDate1",
								  align		 : "Tr",
								  ifFormat	  : "%d/%m/%Y",
								  daFormat	  : "%d/%m/%Y",
								  timeFormat	: "24",
								  showsTime	 : false,
								  singleClick   : true
								});
							</script>
						</td>
					</tr>
					<tr>
						<td class="Field">
						<input type="checkbox" class=checkbox  class=checkbox  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')3" value=""></td>
						<td class="Field"><a href="javascript:doView()";>Sales 
						of 30 week loans</a></td>
						<td class="Field">
							<input id="fromDate2" type="text" class="FieldxD" name="fromDate2" value="01/03/2005" maxlength="10">&nbsp;
							<img id="btFrom2" src="../images/calendar.gif" border="0" width="16" height="14"> 
							<script type="text/javascript">
								Calendar.setup({
								  inputField	: "fromDate2",
								  button		: "btFrom2",
								  align		 : "Tr",
								  ifFormat	  : "%d/%m/%Y",
								  daFormat	  : "%d/%m/%Y",
								  timeFormat	: "24",
								  showsTime	 : false,
								  singleClick   : true
								});
							</script>
						</td>
						<td class="Field">
							<input id="endDate2" type="text" class="FieldxD" name="endDate2" value="01/03/2005" maxlength="10">&nbsp;
							<img id="btEndDate2" src="../images/calendar.gif" border="0" width="16" height="14"> 
							<script type="text/javascript">
								Calendar.setup({
								  inputField	: "endDate2",
								  button		: "btEndDate2",
								  align		 : "Tr",
								  ifFormat	  : "%d/%m/%Y",
								  daFormat	  : "%d/%m/%Y",
								  timeFormat	: "24",
								  showsTime	 : false,
								  singleClick   : true
								});
							</script>
						</td>
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
							<a class=btnormal href="javascript:doSelect();" target="_self">Save</a>&nbsp;
							<a class=btnormal href="javascript:doClose();" target="_self">
							Close</a>&nbsp;
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
	function doSelect() {
		window.close();
	}	
	function doClose() {
		window.close();
	}		
</script>
</html>