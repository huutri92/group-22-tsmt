<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">	
	<link type="text/css" rel="stylesheet" href="../style/common.css">	
	<script type="text/javascript" src="../js/calendar/calendar.js"></script>
	<script type="text/javascript" src="../js/calendar/calendar-setup.js"></script>
	<script type="text/javascript" src="../js/calendar/lang/calendar-en.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/calendar/calendar-blue.css">
	
	<title>Amend Credit Control Band</title>	
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
			<td height="25" valign="top"><img src="../images/corner.gif" border="0" width="5" height="5"></td>
			<td height="25"><b><br><br></b></td>
			<td height="25" align="right">&nbsp;</td>
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
						<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Credit Control Band</b></td>
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
				<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
					<colgroup>
						<col width="50%">						
						<col width="50%">
					</colgroup>
					<tr>
						<td class="Field">Name <font color="red">*</font></td>						
						<td class="Field"><input class="FieldNormal" type="text" name="bandName" value="Band 3"></td>
					</tr>
					<tr>
						<td class="Field">Debit Performance From <font color="red">*</font></td>						
						<td class="Field"><input class="FieldShort" type="text" name="dpFrom" value="75"> %</td>
					</tr>
					<tr>
						<td class="Field" disabled>Debit Performance To</td>
						<td class="Field" disabled><input class="FieldShort" type="text" name="dpTo" value="90" disabled> %</td>
					</tr>					
					<tr>
						<td class="Field">Max Sales Allowed <font color="red">*</font></td>						
						<td class="Field">&pound; <input class="FieldShort" type="text" name="maxSalesAllowed" value="100.00"></td>
					</tr>
					<tr>
						<td class="Field">Max Balance Aftersale Allowed <font color="red">*</font></td>						
						<td class="Field">&pound; <input class="FieldShort" type="text" name="maxBalanceAftersale" value="500.00"></td>
					</tr>		
				</table>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td colspan="4">&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td colspan="2" align="left">
				<a class="btnormal" href="javascript:doOK();">Save</a>&nbsp;
				<a class="btnormal" href="javascript:doCancel();">Close</a>
			</td>
			<td>&nbsp;</td>
		</tr>
	</table>				
</form>
<script language="javascript">
	function doOK() {
		window.close();
	}

	function doCancel() {
		window.close();
	}
</script>
</body>
</html>