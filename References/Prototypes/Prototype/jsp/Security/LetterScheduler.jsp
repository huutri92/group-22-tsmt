<html>
<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>
	<script language="javascript" src="../js/menu.js"></script>
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<title>Letter Scheduler</title>
</head>

<body class="body"> 
<form name="frmMorses" method="post"> 
	<table class="Form" border="0" width="100%" cellpadding="0" cellspacing="0"> 
		<colgroup> 
			<col width="100%"> 
		</colgroup> 
		<tr> 
			<!-- Content Begin --> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<td valign="top">
				<table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form"> 
					<colgroup> 
						<col width="5"> 
						<col width="*"> 
						<col width="5"> 
					</colgroup> 
					<tr> 
						<td height="25">&nbsp;</td> 
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
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Letter Scheduler</b></td> 
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
							<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormWithBorder">
								<colgroup>
									<col width="25%" align="left">
									<col width="15%" align="left">
									<col width="60%" align="left">
								</colgroup>
								<tr class="Field">
									<td>&nbsp;</td>
									<td>Hour</td>
									<td>Minute</td>
								</tr>
								<tr class="Field">
									<td>Current Batch Issue Time</td>
									<td><input type="text" class="FieldDate" name="hour" value=""></td>
									<td><input type="text" class="FieldDate" name="minute" value=""></td>
								</tr>
								<tr class="Field">
									<td>Last Modified On</td>
									<td colspan="2">10/10/2005 01:01:00</td>
								</tr>
							</table>
						</td> 
						<td>&nbsp;</td> 
					</tr> 
					<tr class="btnormal"> 
						<td>&nbsp;</td> 
						<td>
							<a class=btnormal href="javascript:doApply();">Apply</a>&nbsp;&nbsp;
							<a class=btnormal href="javascript:window.close();">Close</a>
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
	function doApply() {
		var reply = confirm("Do you wish to process?");
		if (reply) {
		}
	}
//-->
</script>
</body>
</html>
