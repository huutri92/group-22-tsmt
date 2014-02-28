<html>
<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>
	<script language="javascript" src="../js/menu.js"></script>
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<title>Manage System Variabbles</title>
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
			<td valign="top" rowspan="2" bgcolor="#E0E9F2" height="100%"> <script language="javascript">
					<!--
					menuSystemAdmin(4);
					//-->
				</script> </td> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<!-- Left Menu End --> 
			<!-- Top Begin --> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<td valign="top" bgcolor="#E0E9F2" height="35" align="right"> <script language="javascript">
					<!--
					menuTop('HaiVH');
					//-->
				</script> </td> 
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
						<td colspan="2"> <table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop"> 
								<colgroup> 
								<col width="5"> 
								<col width="150"> 
								<col width="5"> 
								<col width="*"> 
								</colgroup> 
								<tr> 
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td> 
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Manage System Variabbles</b></td> 
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td> 
									<td>&nbsp;</td> 
								</tr> 
							</table></td> 
						<td>&nbsp;</td> 
					</tr> 
					<tr> 
						<td>&nbsp;</td> 
						<td colspan="2">
							<table class="Form" border="0" width="100%" cellpadding="0" cellspacing="0"> 
								<colgroup> 
									<col width="45%">
									<col width="15%">
									<col width="40%"> 
								</colgroup>
								<tr class="Section">
									<th class="Title" align="left" height="18">Description</th>
									<th class="Title" align="left" height="18">ID</th>
									<th class="Title" align="left" height="18">Value</th>
								</tr>
								<tr class="Field">
									<td>Weeks for average debit performance</td>
									<td>N</td>
									<td><input type="text" class="FieldShort" name="" value="" size="20">&nbsp;week(s)</td>
								</tr>
								<tr class="Field">
									<td>Max weeks on hold</td>
									<td>A</td>
									<td><input type="text" class="FieldShort" name="" value="" size="20">&nbsp;week(s)</td>
								</tr>
								<tr class="Field">
									<td>Max weeks for interest suspended</td>
									<td>B</td>
									<td><input type="text" class="FieldShort" name="" value="" size="20">&nbsp;week(s)</td>
								</tr>
								<tr class="Field">
									<td>Max weeks for reduced payments</td>
									<td>C</td>
									<td><input type="text" class="FieldShort" name="" value="" size="20">&nbsp;week(s)</td>
								</tr>
								<tr class="Field">
									<td>Min debit performance for good closed</td>
									<td>Y</td>
									<td><input type="text" class="FieldShort" name="" value="" size="20">&nbsp;%</td>
								</tr>
								<tr class="Field">
									<td>Weeks for new customer provision exemption</td>
									<td>Z</td>
									<td><input type="text" class="FieldShort" name="" value="" size="20">&nbsp;week(s)</td>
								</tr>
								<tr class="Field">
									<td>Weeks as new customer performance (by business stream)</td>
									<td>X</td>
									<td><input type="text" class="FieldShort" name="" value="" size="20">&nbsp;week(s)</td>
								</tr>
								<tr class="Field">
									<td>Minimum weekly wage value (per hour)</td>
									<td>W</td>
									<td><input type="text" class="FieldShort" name="" value="" size="20">&nbsp;(&pound;)</td>
								</tr>
								<tr class="Field">
									<td>Normal working day (hours)</td>
									<td>NW</td>
									<td><input type="text" class="FieldShort" name="" value="" size="20">&nbsp;hour(s)</td>
								</tr>
							</table>
						</td> 
						<td>&nbsp;</td> 
					</tr> 
					<tr class="btnormal"> 
						<td>&nbsp;</td> 
						<td colspan="2">
							<a class=btnormal href="javascript:doSave();">Save</a>&nbsp;&nbsp;
							<a class=btnormal href="javascript:doCancel();">Cancel</a>
						</td>
						<td>&nbsp;</td> 
					</tr> 
				</table></td> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<!-- Content End --> 
		</tr> 
	</table> 
</form>
<script language="javascript">
<!--
	function doSave() {
		var reply = confirm("Do you wish to process?");
		if (reply) {
		}
	}
	function doCancel() {
	}
//-->
</script>
</body>
</html>
