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
	<title>New Log Entry</title>

	<script language="javascript">
	<!--
		function doShowTypeOfLog() {
			var logtype = getCookie("logtype");
			if (logtype == null) {
				document.write('N/A');
			} else if (logtype == 1) {
				document.write('<img src="../images/mailto.gif" border="0" width="15" height="12">');
			} else if (logtype == 2) {
				document.write('<img src="../images/telephone.gif" border="0" width="15" height="12">');
			} else if (logtype == 3) {
				document.write('<img src="../images/text.gif" border="0" width="15" height="12">');
			} else if (logtype == 4) {
				document.write('<img src="../images/reminder.gif" border="0" width="15" height="12">');
			}
		}

		function doShowUserName() {
			//	var user = getCookie("user");
			//	var text = '<input class="FieldShort" type="text" name="user" size="20" value="' + showUserName(user) + '">';
			var text = "HaiVH"
			document.write(text);
		}
	//-->
	</script>
</head>

<body class="body">
<form name="frmMorses" method="post">
	<table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form">
		<colgroup>
			<col width="5">
			<col width="240">
			<col width="600">
			<col width="5">
		</colgroup>
		<tr>
			<td height="25" valign="top">&nbsp;</td>
			<td height="25" colspan="2">&nbsp;</td>
			<td height="25">&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td colspan="2">
				<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
					<colgroup>
						<col width="4">
						<col width="130">
						<col width="5">									
						<col>
					</colgroup>
					<tr>
						<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
						<td align="center" background="../images/tab_01_02.gif" class="selected"><b>New Log Entry</b></td>
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
						<col width="30%">
						<col width="70%">
					</colgroup>
					<tr>
						<td class="Field">Log Type</td>
						<td class="Field">
							<select class="FieldShort" name="" size="1">
								<option>Phone call</option>
								<option>Review</option>
								<option>Visit</option>
								<option>Letter</option>
								<option>Note</option>
								<option>Service</option>
								<option>Scheduled action</option>
								<option>Other</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class="Field">Reason Type</td>
						<td class="Field">
							<select name="ListReason0" class="FieldNormal">
								<option>Reason 1</option>
								<option>Reason 2</option>
								<option>Reason 3</option>										
							</select>
						</td>
					</tr>			
					<tr>
						<td class="Field">User</td>
						<td class="Field"><input type="text" class="FieldxDate" name="" value="HaiVH" readonly></td>
					</tr>			
					<tr>
						<td class="Field">Date/Time</td>
						<td class="Field">
							<input class="FieldxDate" type="text" name="txtPSD" id="saleDate" value = "22/06/2005 00:00:00" maxlength="19">&nbsp;
							<a href="#"><img id="btsaleDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
							<script type="text/javascript">
							<!--
								Calendar.setup({
								  inputField	: "saleDate",
								  button		: "btsaleDate",
								  align		 : "Tr",
								  ifFormat	  : "%d/%m/%Y %H:%M:%S",
								  daFormat	  : "%d/%m/%Y %H:%M:%S",
								  timeFormat	: "24",
								  showsTime	 : true,
								  singleClick   : true
								});
							//-->
							</script>
						</td>
					</tr>
					<tr>
						<td class="Field" valign="top">Description</td>
						<td class="Field"><textarea class="FieldLong" name="result" cols="100" rows="5" style="width:100%;"></textarea></td>
					</tr>
					<tr>
						<td class="Field" valign="top">Log Notes</td>
						<td class="Field"><textarea class="FieldLong" name="result" cols="100" rows="5" style="width:100%;"></textarea></td>
					</tr>
				</table>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr class="btnormal">
			<td>&nbsp;</td>
			<td colspan="2">
				<a class="btnormal" href="javascript:doOK();">Save</a>&nbsp;&nbsp;
				<a class="btnormal" href="javascript:doCancel();">Close</a>&nbsp;&nbsp;
				<a class="btnormal" href="javascript:doReset();">Reset</a>
			</td>
			<td>&nbsp;</td>
		</tr>
	</table>
</form>

<script language="javascript">
<!--
	function doReset() {
		document.frmMorses.reset();
	}
	function doOK() {
		window.close();
	}
	function doCancel() {
		window.close();
	}
//-->
</script>
</body>

</html>