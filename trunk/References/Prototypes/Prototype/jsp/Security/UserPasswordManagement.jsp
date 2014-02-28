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

	<title>User Identification</title>
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
					menuSystemAdmin(8);
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
			<td valign="top" height="550">
				<table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form"> 
					<colgroup> 
						<col width="5"> 
						<col width="240"> 
						<col width="600"> 
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
									<col width="5"> 
									<col width="150"> 
									<col width="5"> 
									<col width="*"> 
								</colgroup> 
								<tr> 
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td> 
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>User Identification</b></td> 
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
									<col width="15%" align="left">
									<col width="85%" align="left">
								</colgroup>
								<tr class="Field">
									<td>User Name</td>
									<td><input class="FieldShort" type="text" name="FromDate" value=""></td>
								</tr>
								<tr class="Field">
									<td>House Name/Number</td>
									<td><input class="FieldNormal" type="text" name="" value=""></td>
								</tr>
								<tr class="Field">
									<td>Postcode</td>
									<td><input class="FieldDate" type="text" name="" value="">&nbsp;</td>
								</tr>
							</table>
						</td> 
						<td>&nbsp;</td> 
					</tr> 
					<tr class="btnormal"> 
						<td>&nbsp;</td> 
						<td colspan="2">
							<a class=btnormal href="javascript:doVerify();">Verify</a>&nbsp;&nbsp;
							<a class=btnormal href="javascript:doReset();">Clear Search</a>
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
		document.frmMorses.reset();
	}
	function doVerify() {
		var width = 600;
		var height = 240;
		var request = "UserPassword.jsp";
		var newWin = window.open(request, "LetterScheduler", centerWindow(width, height));
		newWin.opener = self;
		return;
	}
//-->
</script>
</body>
</html>
