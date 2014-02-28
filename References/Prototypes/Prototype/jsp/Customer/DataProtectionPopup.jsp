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
	<title>Data Protection</title>
</head>

<body class="body" >
<form name="frmMorses" method="post">
	<table border="0" width="80%" cellpadding="0" cellspacing="0" class="Form" align="center">
		<colgroup>
			<col width="5">
			<col width="240">
			<col width="600">
			<col width="5">
		</colgroup>
		<tr>
			<td height="25" colspan="4"></td>
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
						<td align="center" background="../images/tab_01_02.gif" class="selected">Data Protection Act</td>
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
				<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
					<colgroup>
						<col width="38%">
						<col width="30%">
						<col width="32%" align="center">
					</colgroup>
					<tr>
						<td class="Field" colspan="3"><b>Customer on phone</b></td>
					</tr>
					<tr>
						<td class="Field" colspan="3">&nbsp;</td>
					</tr>
					<tr>
						<td class="Field">Date Of Birth</td>
						<td class="Field"><input class="FieldDate" type="text" id ="txtLogEntries" name="dob" size="20">&nbsp;dd/mm/yyyy</td>
						<td class="Field"><a href="javascript:verify();" class="btnormal">Verify</a></td>
					</tr>
					<tr>
						<td class="Field">Memorable Data</td>
						<td class="Field"><b>What is your cat's name?</b></td>
						<td class="Field">&nbsp;</td>
					</tr>
					<tr>
						<td class="Field">&nbsp;</td>
						<td class="Field"><input type="textbox" class="FieldLong" /></td>
						<td class="Field"><a href="javascript:verify();" class="btnormal">Verify</a></td>
					</tr>
					<tr>
						<td class="Field" colspan="3">&nbsp;</td>
					</tr>
				</table>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr class="btnormal">
			<td>&nbsp;</td>
			<td colspan="2"><a href="javascript:doClose()" class="btnormal">Close&nbsp;</a>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</table>
</form>

<script language="javascript">
	function doClose() {
		window.close();
	}
	function verify(){
		window.opener.location.href = "CustomerSummaryView.jsp";
		window.close();
	}
</script>
</body>

</html>