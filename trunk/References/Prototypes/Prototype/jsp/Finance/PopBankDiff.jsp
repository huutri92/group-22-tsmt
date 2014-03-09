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
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>BANKING DIFFERENCES</b></td>
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
							<table class="FormWithBorder" border="0" width="100%" cellpadding="1" cellspacing="1">
								<colgroup>
									<col width="30%" align=right>
									<col width="30%" align=right>
									<col width="40%" align=left>
								</colgroup>
							<tr>
								<th class="Title">Reason Code</th>
								<th class="Title">Value (&pound;)</th>
								<th class="Title">Notes</th>
							</tr>
							<tr class="Field">
								<td>
								&lt;Reason Code&gt;</td>
								<td nowrap>&lt;value&gt;</td>
								<td nowrap>&lt;Notes Description&gt;</td>
							</tr>
							<tr class="Field2">
								<td nowrap>
								&lt;Reason Code&gt;</td>
								<td nowrap>&lt;value&gt;</td>
								<td nowrap>&lt;Notes Description&gt;</td>
							</tr>
							<tr class="Field">
								<td nowrap>&lt;Reason Code&gt;</td>
								<td nowrap>&lt;value&gt;</td>
								<td nowrap>&lt;Notes Description&gt;</td>
							</tr>											
							<tr class="Field2">
								<td nowrap>&lt;Reason Code&gt;</td>
								<td nowrap>&lt;value&gt;</td>
								<td nowrap>&lt;Notes Description&gt;</td>
							</tr>
							<tr class="Field">
								<td>&lt;Reason Code&gt;</td>
								<td nowrap>&lt;value&gt;</td>
								<td nowrap>&lt;Notes Description&gt;</td>
							</tr>
							<tr class="Field2">
								<td nowrap>&lt;Reason Code&gt;</td>
								<td nowrap>&lt;value&gt;</td>
								<td nowrap>&lt;Notes Description&gt;</td>
							</tr>
							<tr class="Field">
								<td>&lt;Reason Code&gt;</td>
								<td nowrap>&lt;value&gt;</td>
								<td nowrap>&lt;Notes Description&gt;</td>
							</tr>
							<tr class="Field2">
								<td nowrap>&lt;Reason Code&gt;</td>
								<td nowrap>&lt;value&gt;</td>
								<td nowrap>&lt;Notes Description&gt;</td>
							</tr>
							<tr class="Field">
								<td>&lt;Reason Code&gt;</td>
								<td nowrap>&lt;value&gt;</td>
								<td nowrap>&lt;Notes Description&gt;</td>
							</tr>
							<tr class="Field2">
								<td nowrap>&lt;Reason Code&gt;</td>
								<td nowrap>&lt;value&gt;</td>
								<td nowrap>&lt;Notes Description&gt;</td>
							</tr>
							<tr class="Field">
								<td>&lt;Reason Code&gt;</td>
								<td nowrap>&lt;value&gt;</td>
								<td nowrap>&lt;Notes Description&gt;</td>
							</tr>
							<tr class="Field2">
								<td nowrap>&lt;Reason Code&gt;</td>
								<td nowrap>&lt;value&gt;</td>
								<td nowrap>&lt;Notes Description&gt;</td>
							</tr>
							<tr class="Field">
								<td>&lt;Reason Code&gt;</td>
								<td nowrap>&lt;value&gt;</td>
								<td nowrap>&lt;Notes Description&gt;</td>
							</tr>																												
							<tr class="Field2">
								<td nowrap>
													&nbsp;</td>
								<td nowrap>
									&nbsp;</td>
								<td nowrap>
									&nbsp;</td>
							</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>					
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2">
							<a href="javascript:doAddValue()" class="btnormal">Add Value</a>&nbsp;&nbsp;
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
	frmMe = window.frmMorses;
	function doAddValue() {
		window.location.href="PopAddBankDiff.jsp";
	}
	function doOK() {
		window.close();
	}
	function doClose() {
		window.close();
	}	
</script>
</body>
</html>