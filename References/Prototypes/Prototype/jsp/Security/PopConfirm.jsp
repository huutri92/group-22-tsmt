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

<body class="body" bgcolor="#FFFBEC">
<form name="frmMorses" method="post">
	<table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form">
		<colgroup>
			<col width="20%">
			<col width="30%" align=center>
			<col width="30%" align=center>
			<col width="20%">
		</colgroup>
		<tr class="field2">
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr class="field2">
			<td>&nbsp;</td>
			<td colspan="2"><img src="../images/question.gif" border="0" width="30" height="30">&nbsp;&nbsp;&nbsp;<b>Do you wish to proceed?</b></td>
			<td>&nbsp;</td>
		</tr>
		<tr class="field2">
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr class="field2">
			<td>&nbsp;</td>
			<td><a href="javascript:doYes();" class="btyellow">Yes</a>&nbsp;</td>
			<td><a href="javascript:doNo()" class="btyellow">No</a></td>
			<td>&nbsp;</td>
		</tr>
		<tr class="field2">
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</table>
</form>
<script language="javascript">
	frmMe = window.frmMorses;
	function doYes() {
		window.close();
	}
	function doNo() {
		window.close();
	}	
	function doCancel() {
		window.close();
	}	
</script>
</body>
</html>