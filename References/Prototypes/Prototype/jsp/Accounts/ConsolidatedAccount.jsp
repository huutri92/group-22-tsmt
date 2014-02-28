<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/menu.js"></script>	
	<script language="javascript" src="../js/common.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">

	<title>Consolidated Account</title>
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
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
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
						<col width="4">
						<col width="130">
						<col width="5">									
						<col>
					</colgroup>
					<tr>
						<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
						<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Consolidated Account</b></td>
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
				<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder">
					<colgroup>
						<col width="2%" align="center" valign="top">
						<col width="18%" align="left" valign="top">
						<col width="10%" align="left" valign="top">
						<col width="10%" align="left" valign="top">
						<col width="20%" align="right" valign="top">
						<col width="10%" align="right" valign="top">
						<col width="15%" align="left" valign="top">
						<col width="15%" align="right" valign="top">
					</colgroup>
					<tr class="Section">
						<th class="Title"><input class="checkbox" type="checkbox" name="select1"></th>
						<th class="Title"><b>Account ID</b></th>
						<th class="Title"><b>Type</b></th>
						<th class="Title"><b>Status</b></th>
						<th class="Title"><b>Balance (&pound;)</b></th>
						<th class="Title"><b>Agree. No.</b></th>
						<th class="Title"><b>Product</b></th>
						<th class="Title"><b>Product Type</b></th>
					</tr>
					<tr class="Field">
						<td><input class="checkbox" type="checkbox" name="select" value=""></td>
						<td>0123456</td>
						<td>Credit</td>
						<td>Open</td>
						<td>1,000.00</td>
						<td>669455</td>
						<td>L22</td>
						<td>Loan</td>
					</tr>
					<tr class="Field2">
						<td><input class="checkbox" type="checkbox" name="select" value="1" checked></td>
						<td>0123457</td>
						<td>Debit</td>
						<td>Closed</td>
						<td>500.00</td>
						<td>874477</td>
						<td>CAC</td>
						<td>Consolidation</td>
					</tr>
					<tr class="Field">
						<td><input class="checkbox" type="checkbox" name="select2" value="1" checked></td>
						<td>0123458</td>
						<td>Debit</td>
						<td>Bad Debt</td>
						<td>52.00</td>
						<td>334662</td>
						<td>SHA</td>
						<td>Card</td>
					</tr>
					<tr class="Field2">
						<td><input class="checkbox" type="checkbox" name="select4" value="11" checked></td>
						<td>0123459</td>
						<td>Credit</td>
						<td>Consolidated</td>
						<td>38.00</td>
						<td>167099</td>
						<td>L22</td>
						<td>Insurance</td>
					</tr>
					<tr class="Field">
						<td><input class="checkbox" type="checkbox" name="select3" value="1"></td>
						<td>0123460</td>
						<td>Credit</td>
						<td>Live</td>
						<td>899.00</td>
						<td>577989</td>
						<td>CAC</td>
						<td>Savings</td>
					</tr>
				</table>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr class="btnormal">
			<td>&nbsp;</td>
			<td colspan="2">
				<a href="javascript:doSelect();" class="btnormal" tabindex="26">Select</a>&nbsp;&nbsp;
				<a href="javascript:doClose();" class="btnormal" tabindex="26">Close</a>
			</td>
			<td>&nbsp;</td>
		</tr>
	</table>
</form>

<script language="javascript">
	function doSelect() {
		window.close();
	}
	function doClose() {
		window.close();
	}
</script>
</body>

</html>