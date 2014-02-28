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
	<title>Add Week Number</title>
</head>

<body class="body" onload="init()">
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
						<td height="25">&nbsp;</td>
						<td height="25" align="right"></td>
						<td height="25">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="5">
									<col width="150">
									<col width="5">									
									<col width="*">
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>
									Working hours Record</b></td>
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
									<col width="80%">
								</colgroup>						
								<tr>
									<td class="Field">Week Number</td>
									<td class="Field">
													<input class="Field" type="text" name="maidenName5" size="20" value="<week_number>" readonly></td>
								</tr>
								<tr>
									<td class="Field">Start Date</td>
									<td class="Field">
													<input class="FieldDate" type="text" name="StartDate" value="<start_date>" readonly>
													<a href="#"><img id="btStartDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
													<script type="text/javascript">
														<!--
															Calendar.setup({
															  inputField	: "StartDate",
															  button		: "btStartDate",
															  align		 : "Tr",
															  ifFormat	  : "%d/%m/%Y",
															  daFormat	  : "%d/%m/%Y",
															  timeFormat	: "24",
															  showsTime	 : false,
															  singleClick   : true,
															  position 		: ["200", "0"]
															});
														//-->
													</script>
												&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Hours worked</td>
									<td class="Field">
													<input class="Field" type="text" name="houseWorked" size="20" value="8"></td>
								</tr>
								<tr>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
								</table>
						</td>
						<td>&nbsp;</td>
					</tr>					
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2">
							<a href="javascript:doSave()" class="btnormal">Save</a>&nbsp;
							<a href="javascript:doClose()" class="btnormal">Close</a>&nbsp;
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
&nbsp;</td>
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
	function doSave() {
//		window.location.href="../Security/PopConfirm.jsp"
//		var width = 450;
//		var height = 100;
//		var newWin = window.open("../Security/PopConfirm.jsp", "WeekNumberDetails", centerWindow(width, height));		
		window.close();
		return;		
	}
	function doClose() {
		window.close();
		return;
	}
	function init() {
		document.frmMorses.houseWorked.focus();
	}
</script>
</body>
</html>