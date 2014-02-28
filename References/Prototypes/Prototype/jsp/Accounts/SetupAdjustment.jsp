<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/menu.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	
	<script type="text/javascript" src="../js/calendar/calendar.js"></script>
	<script type="text/javascript" src="../js/calendar/calendar-setup.js"></script>
	<script type="text/javascript" src="../js/calendar/lang/calendar-en.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/calendar/calendar-blue.css">
	<title>Setup Adjustment</title>
</head>

<body class="body">
<form name="frmMorses" method="post">
	<table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form">
		<colgroup>
			<col width="5">
			<col width="100%">
			<col width="5">
		</colgroup>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
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
						<col width="4">
						<col width="130">
						<col width="5">									
						<col>
					</colgroup>
					<tr>
						<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
						<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Setup Adjustment</b></td>
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
						<col width="23%">
						<col width="1px">
						<col width="1px">
						<col width="27%">
						<col width="1px">
						<col width="23%">
						<col width="1px">
						<col width="27%">
					</colgroup>
					<tr>
						<td class="Field">Account ID</td>
						<td>&nbsp;</td>
						<td class="Field">&nbsp;</td>
						<td class="Field"><input class="FieldShort" tabindex="7" type="text" name="itemIdentifier1" size="20" value="121342445" readonly></td>
						<td>&nbsp;</td>
						<td class="Field">Memo</td>
						<td>&nbsp;</td>
						<td class="Field" rowspan="5"><textarea class="FieldLong" cols="50" rows="7"></textarea></td>
					</tr>
					<tr>
						<td class="Field">Adjustment Date&nbsp;<font color=#FF0000>*</font></td>
						<td>&nbsp;</td>
						<td class="Field">&nbsp;</td>
						<td class="Field">
							<input class="FieldDate" tabindex="3" type="text" name="agreementDate" size="20">&nbsp;
							<a href="#" tabindex="4"><img id="btAgreementDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
							<script type="text/javascript">
								<!--
									Calendar.setup({
									  inputField	: "agreementDate",
									  button		: "btAgreementDate",
									  align		 : "Tr",
									  ifFormat	  : "%d/%m/%Y",
									  daFormat	  : "%d/%m/%Y",
									  timeFormat	: "24",
									  showsTime	 : false,
									  singleClick   : true
									});
								//-->
							</script>
						</td>
						<td>&nbsp;</td>
						<td class="Field">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td class="Field">Adjustment Status&nbsp;<font color=#FF0000>*</font></td>
						<td>&nbsp;</td>
						<td class="Field">&nbsp;</td>
						<td class="Field">
							<select class="FieldDate" tabindex="1" size="1" name="product3">
								<option>&nbsp;</option>
								<option>New</option>
								<option>Amended</option>
								<option>Archived</option>
							</select>
						</td>
						<td>&nbsp;</td>
						<td class="Field">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td class="Field">Adjustment Type&nbsp;<font color=#FF0000>*</font></td>
						<td>&nbsp;</td>
						<td class="Field">&nbsp;</td>
						<td class="Field">
							<select class="FieldDate" tabindex="1" size="1" name="product2" >
								<option>Credit</option>
								<option>Debit</option>
							</select>
						</td>
						<td>&nbsp;</td>
						<td class="Field">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td class="Field">Amount</td>
						<td>&nbsp;</td>
						<td class="Field">&pound;</td>
						<td class="Field"><input class="FieldDR" tabindex="7" type="text" name="itemIdentifier3" size="20"></td>
						<td>&nbsp;</td>
						<td class="Field">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr class="btnormal">
			<td>&nbsp;</td>
			<td>
				<a href="javascript:doSave();" class="btnormal" tabindex="25">Save</a>&nbsp;&nbsp;
				<a href="javascript:doClose();" class="btnormal" tabindex="26">Close</a>
			</td>
			<td>&nbsp;</td>
		</tr>
	</table>
</form>

<script language="javascript">
	function doSave() {
		window.close();
	}
	
	function doClose() {
		window.close();
	}
</script>
</body>

</html>