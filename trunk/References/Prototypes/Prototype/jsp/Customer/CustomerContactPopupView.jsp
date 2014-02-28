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
	<table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form" align="center">
		<colgroup>
			<col width="5">
			<col width="240">
			<col width="600">
			<col width="5">
		</colgroup>
		<tr>
			<td height="25" valign="top"><img src="../images/corner.gif" border="0" width="5" height="5"></td>
			<td height="25">&nbsp;</td>
			<td height="25" align="right">&nbsp;</td>
			<td height="25">&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td colspan="2">
				<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
					<colgroup>
						<col width="1%">
						<col width="98%">
						<col width="1%">									
						<col>
					</colgroup>
					<tr>
						<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
						<td colspan = "2" align="center" background="../images/tab_01_02.gif" class="selected">
						Data Protection Act</td>
						<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
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
						<col width="30%">
						<col width="1%">
						<col width="60%">						
						<col width="9%">						
					</colgroup>
					<tr>
						<td class="Field">Memorable Data Prompt&nbsp;<font color="red">*</font></td>
						<td >&nbsp;</td>
						<td class="Field"><input class="FieldNormal" maxlength ="30"  type="text" name="firstName" size="20" value="What is your father name" disabled></td>						
						<td class="Field">&nbsp;</td>
					</tr>
					<tr>
						<td class="Field" valign="top">Memorable Data&nbsp;<font color="red">*</font></td>
						<td>&nbsp;</td>
						<td class="Field"><input class="FieldNormal" maxlength ="30"  type="text" name="firstName" size="20" value="Hung" disabled></td>
						<td class="Field"></td>
					</tr>
				</table>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr class=btnormal>
			<td>&nbsp; </td>
			<td>
				<a href="javascript:doSave();" class="btnormal" >Save</a>
				<a href="javascript:doClose();" class="btnormal" >Close</a>
			</td>
		</tr>		
	</table>
</form>
<script language="javascript">
	
	function doClose()
	{
		window.close(); 
	}	
	
	function doSave() {
		window.close(); 
		opener.location.href = "SetupCustomer.jsp";
	}		
</script>
</body>

</html>