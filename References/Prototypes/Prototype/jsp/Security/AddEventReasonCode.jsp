<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<script language="javascript" src="../js/menu.js"></script>
	<script language="javascript" src="../js/common.js"></script>
	<title>Event Log Reason Code</title>
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
			<td height="25" valign="top">&nbsp;</td>
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
						<td align="center" background="../images/tab_01_02.gif" class="selected"><b><div id="title">Event Log Reason Code</div></b></td>
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
						<col width="40%">
						<col width="10%">
						<col width="50%">
					</colgroup>
					<tr class="Field">
						<td>Log Type</td>
						<td colspan="2">
							&nbsp;<select class="FieldShort" name="" size="1">
								<option></option>
								<option>Phone call</option>
								<option>Review</option>
								<option>Visit</option>
								<option>Letter</option>
								<option>Note</option>
								<option>Service</option>
								<option>Scheduled action</option>
								<option>Other</option>
							</select>
						</td>
					</tr>
					<tr class="Field">
						<td>Log Reason</td>
						<td colspan="2">&nbsp;<input type="text" class="FieldLong" name="" value="" size="20"></td>
					</tr>
					<tr class="Field">
						<td>Status</td>
						<td><input type="radio" class="checkbox" name="a" value="" checked> Live</td>
						<td><input type="radio" class="checkbox" name="a" value="1"> Withdrawn</td>
					</tr>
					<tr class="Field">
						<td valign="top">Description</td>
						<td colspan="2"><textarea name="desc" cols="100%" rows="5"></textarea></td>
					</tr>
					</table>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr class="btnormal">
			<td>&nbsp;</td>
			<td colspan="2">
				<div id="buttons">
					<a href="javascript:doSave();" class="btnormal" tabindex="26">Save</a>&nbsp;&nbsp;
					<a href="javascript:doClose();" class="btnormal" tabindex="26">Cancel</a>
				</div>
			</td>
			<td></td>
		</tr>
	</table>
</form>

<script language="javascript">
<!--
	function doSave() {
		var reply = confirm("Do you wish to process?");
		if (reply) {
			window.close();
		}
	}
	function doClose() {
		window.close();
	}
//-->
</script></body>

</html>