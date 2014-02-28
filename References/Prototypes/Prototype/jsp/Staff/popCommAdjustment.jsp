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
						<td height="25"><b>&nbsp;</b></td>
						<td height="25" align="right"></td>
						<td height="25">&nbsp;</td>
					</tr>			
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="4">
									<col width="300">
									<col width="5">									
									<col width="80%">
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>COMMISSION ADJUSTMENT</b></td>
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
						<table border=0 width="100%" cellpadding=0 cellspacing=0 class="FormWithBorder">																	

<tr>
<!-- This is table's content -->
<td valign="top">
<div id="dvData" style="position:relative; height: 211px; width:100%; overflow:auto" onscroll="sync()">
					<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
					<colgroup>
					<col width="20%" align="left">
					<col width="10%" align="right">
					<col width="15%" align="left">
					<col width="15%" align="left">
					<col width="30%" align="left">
					</colgroup>					
					<tr class="Section">
						<th class="Title">Reason Code</th>
						<th class="Title">Value (£)&nbsp;&nbsp;</th>
						<th class="Title">Increase/Decrease to commissions</th>
						<th class="Title">Notes</th>
					</tr>	
						
					<tr class=field>
						<td>Reason Code 1</td>
						<td>-100.0&nbsp;&nbsp;</td>
						<td>Decrease</td>
						<td>&nbsp;</td>
					</tr>
					<tr class=field2>
						<td>Reason Code 2</td>
						<td>
						-20.0&nbsp;&nbsp;</td>
						<td>Decrease</td>
						<td>&nbsp;</td>
					</tr>
					<tr class=field>
						<td>Reason Code 3</td>
						<td>
						-20.0&nbsp;&nbsp;</td>
						<td>Decrease</td>
						<td>&nbsp;</td>
					</tr>					
					<tr class=field2>
						<td>Reason Code 8</td>
						<td>
						5.0&nbsp;&nbsp;</td>
						<td>Increase</td>
						<td>&nbsp;</td>
					</tr>
					<tr class=field>
						<td>Reason Code 9</td>
						<td>
						12.0&nbsp;&nbsp;</td>
						<td>Increase</td>
						<td>&nbsp;</td>
					</tr>
					
					</table>
</div>
</td>
</tr>
</table>

						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2">
							<input type = button class = btnormal onclick ="javascript:doAdd();" value = "Add">
							&nbsp;
							<input type = button class = btnormal onclick ="javascript:doCancel();" value = "Close">																					
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
</body>
<script language="javascript">
	function doAdd() {		
		var request = "popAddCommAdjustment.jsp";
		showModelessDialog(request,window,"status:false;dialogWidth:700px;dialogHeight:380px;center:yes");
	}	
	function doCancel() {
		window.close();
	}		
</script>
</html>