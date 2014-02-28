<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>	
	<script language="javascript" src="../js/menu.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">	
	<title>Business Streams</title>
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
						<col width="420">
						<col width="420">
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
									<col width="4">
									<col width="150">
									<col width="5">
									<col width="*">
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td style="padding-left:20px" align="left" background="../images/tab_01_02.gif" class="selected"><b>Business Streams</b></td>
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
									<col width="30%">
									<col width="30%">
									<col width="40%">
								</colgroup>
								<tr>
									<td class="Field">Name <font color="#FF0000">*</font></td>
									<td class="Field"><input class="FieldNormal" type="text" name="name" value="Ronaldinho"></td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Description</td>
									<td class="Field"><input class="FieldNormal" type="text" name="name0" value="Ronaldinho"></td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Credit Control Scheme <font color="#FF0000">*</font></td>
									<td class="Field">
										<select name="creditControl" class="FieldNormal" tabindex="1" size="1">
											<option value=""></option>
											<option value="Scheme 1">Scheme 1</option>
											<option value="Scheme 2">Scheme 2</option>
											<option value="Scheme 3" selected>Scheme 3</option>
											<option value="Scheme 4">Scheme 4</option>
											<option value="Scheme 5">Scheme 5</option>
										</select>
									</td>
									<td class="Field">
										&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Statement Frequency</td>
									<td class="Field"><input class="FieldDR" type="text" name="lastName4" value="3">&nbsp; weeks</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">New Customer Definition</td>
									<td class="Field"><input class="FieldDR" type="text" name="lastName14" value="5">&nbsp; weeks</td>
									<td class="Field">&nbsp;</td>
								</tr>
							</table>
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
							<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
								<colgroup>
									<col width="30%">
									<col width="30%">
									<col width="40%">
								</colgroup>
								<tr class="Section">
									<th class="Title" colspan="3"><b>MANAGE PROVISION RATE</b></th>
								</tr>
								<tr class="field20">
									<td colspan="2"><b>Debit Performance</b></td>
									<td><b>Provision Rate</b></td>
								</tr>
								<tr class="field20">
									<td>Up To</td>
									<td><input class="FieldDR" type="text" name="lastName12" value="10"> %</td>
									<td><input class="FieldDR" type="text" name="lastName12" value="30"> %</td>
								</tr>
								<tr class="field20">
									<td>To</td>
									<td><input class="FieldDR" type="text" name="lastName6" value="20"> %</td>
									<td><input class="FieldDR" type="text" name="lastName12" value="50"> %</td>
								</tr>
								<tr class="field20">
									<td>To</td>
									<td><input class="FieldDR" type="text" name="lastName7" value=""> %</td>
									<td><input class="FieldDR" type="text" name="lastName8" value=""> %</td>
								</tr>
								<tr class="field20">
									<td>To</td>
									<td><input class="FieldDR" type="text" name="lastName8" value="80" onblur="javascript:doChange(this);"> %</td>
									<td><input class="FieldDR" type="text" name="lastName8" value=""> %</td>
								</tr>
								<tr class="field20">
									<td>Above</td>
									<td><span class="FieldDR" id="above">80</span>&nbsp;%</td>
									<td><input class="FieldDR" type="text" name="lastName10" value=""> %</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2">
							<a href="javascript:doSave();" class="btnormal">Save</a>&nbsp;&nbsp;
							<a href="javascript:doClose();" class="btnormal">Close</a>
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
	var frmMe = window.frmMorses;
	function doSave() {
		var reply = confirm("Do you wish to process?");
		if (reply) {
			window.close();
		}
	}
	function doClose() {
		window.close();
	}
	function doChange(object) {
		document.getElementById('above').innerHTML   = object.value;
	}
//-->
</script>
</body>
</html>