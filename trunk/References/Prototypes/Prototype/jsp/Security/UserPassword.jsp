<html>
<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>
	<script language="javascript" src="../js/menu.js"></script>
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<title>User Verification</title>
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
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>User Verification</b></td> 
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
									<col width="75%" align="left">
								</colgroup>
								<tr class="Field">
									<td>Home Phone Number</td>
									<td><input class="FieldShort" type="text" name="FromDate" value="04 55 67 8"></td>
								</tr>
								<tr class="Field">
									<td>Mobile Phone Number</td>
									<td><input class="FieldShort" type="text" name="FromDate" value="091 2210 727"></td>
								</tr>
								</table>
							</td> 
						<td>&nbsp;</td>
				</tr>
				<tr class="btnormal"> 
					<td>&nbsp;</td> 
					<td>
						<a class=btnormal href="javascript:doVerify();">Verify</a>&nbsp;&nbsp;
					</td>
					<td>&nbsp;</td> 
				</tr>
					<tr> 
						<td>&nbsp;</td> 
						<td>
							<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormWithBorder">
								<colgroup>
									<col width="25%" align="left">
									<col width="75%" align="left">
								</colgroup>
								<tr class="Field">
									<td>New Password</td>
									<td><input type="password" class="FieldNormal" name="hour0" value=""></td>
								</tr>
								<tr class="Field">
									<td>Confirm Password</td>
									<td><input type="password" class="FieldNormal" name="hour" value=""></td>
								</tr>
							</table>
						</td> 
						<td>&nbsp;</td> 
					</tr> 
					<tr class="btnormal"> 
						<td>&nbsp;</td> 
						<td>
							<a class=btnormal href="javascript:doReset();">Re-Set</a>&nbsp;&nbsp;
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
	function doReset() {
		var reply = confirm("Do you wish to process?");
		if (reply) {
		}
	}
	function doVerify() {
		
	}
	
//-->
</script>
</body>
</html>