<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<script language="javascript" src="../js/menu.js"></script>
	<script language="javascript" src="../js/common.js"></script>
	<title>Adjustment Reason Code</title>
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
						<td align="center" background="../images/tab_01_02.gif" class="selected"><b><div id="title">Adjustment Reason Code</div></b></td>
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
						<col width="1px">
						<col width="6%">
						<col width="4%">
						<col width="60%">
					</colgroup>
					<tr class="Field">
						<td>Description</td>
						<td>&nbsp;</td>
						<td colspan="3">&nbsp;<input type="text" class="FieldLong" name="" value="Manual finance charge"></td>
					</tr>
					<tr class="Field">
						<td>Balance</td>
						<td>&nbsp;</td>
						<td><input type="radio" class="checkbox" name="a" value="" checked> Increase</td>
						<td colspan="2"><input type="radio" class="checkbox" name="a" value="1"> Decrease</td>
					</tr>
					<tr class="Field">
						<td>Admin Fee Type</td>
						<td>&nbsp;</td>
						<td colspan="3">&nbsp;<input type="text" class="FieldShort" name="" value=""></td>
					</tr>
					<tr class="Field">
						<td>Admin Fee</td>
						<td align="right">&pound;</td>
						<td colspan="2">&nbsp;<input type="text" class="FieldShortR" name="" value="25.00"></td>
						<td><input type="text" class="FieldXShort" name="" value="15"> %</td>
					</tr>
					<tr class="Field">
						<td>Auth Level</td>
						<td>&nbsp;</td>
						<td colspan="3">
							&nbsp;<select size="1" name="staffType" class="Field">
								<option value=""></option>
								<option value="" >Collector (Employed)</option>
								<option value="">Agents (Self Employed)</option>
								<option value="">Other Salesforce</option>
								<option value="">Excutive</option>
								<option value="" selected>Admin</option>
							</select>
						</td>
					</tr>
					<tr class="Field">
						<td>Affect Commission</td>
						<td>&nbsp;</td>
						<td><input type="checkbox" class="checkbox" name="c" value="1" checked></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="Field">
						<td>Link To Transaction</td>
						<td>&nbsp;</td>
						<td><input type="checkbox" class="checkbox" name="d" value="1" checked></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="Field">
						<td>Letter ID</td>
						<td>&nbsp;</td>
						<td colspan="3">
							&nbsp;<select size="1" name="staffType" class="FieldLong">
								<option value=""></option>
								<option value="" selected>Non payment of terms</option>
								<option value="">Non payment of terms</option>
								<option value="">Non payment of terms</option>
								<option value="">Non payment of terms</option>
								<option value="">Non payment of terms</option>
							</select>
						</td>
					</tr>
					<tr class="Field">
						<td>Event Log</td>
						<td>&nbsp;</td>
						<td colspan="3">
							&nbsp;<select class="FieldShort" name="" size="1">
								<option></option>
								<option>Log Reason 1</option>
								<option selected>Log Reason 2</option>
								<option>Log Reason 3</option>
								<option>Log Reason 4</option>
								<option>Log Reason 5</option>
								<option>Log Reason 6</option>
								<option>Log Reason 7</option>
								<option>Log Reason 8</option>
							</select>
						</td>
					</tr>
					<tr class="Field">
						<td>Ledger Codes </td>
						<td>&nbsp;</td>
						<td colspan="3">&nbsp;<input type="text" class="FieldShortR" name="" value="5022" size="20"></td>
					</tr>
					<tr class="Field">
						<td>Status</td>
						<td>&nbsp;</td>
						<td><input type="radio" class="checkbox" name="b" value="1"> Live</td>
						<td colspan="2"><input type="radio" class="checkbox" name="b" value="11" checked> Withdrawn</td>
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