<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/menu.js"></script>	
	<script language="javascript" src="../js/common.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">

	<script type="text/javascript" src="../js/calendar/calendar.js"></script>
	<script type="text/javascript" src="../js/calendar/calendar-setup.js"></script>
	<script type="text/javascript" src="../js/calendar/lang/calendar-en.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/calendar/calendar-blue.css">
	<title>New Sale</title>
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
						<td align="center" background="../images/tab_01_02.gif" class="selected"><b>New Sale</b></td>
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
						<col width="30%">
						<col width="1px">
						<col width="1px" align="right">
						<col width="70%">
					</colgroup>
					<tr>
						<td class="Field">Sale Amount <font color="#FF0000">*</font></td>
						<td>&nbsp;</td>
						<td class="Field">&pound;</td>
						<td class="Field"><input class="FieldDR" tabindex="" type="text" name="" size="20" value="1,000.00"></td>
					</tr>															
					<tr>
						<td class="Field">Sale Date <font color="#FF0000">*</font></td>
						<td>&nbsp;</td>
						<td class="Field">&nbsp;</td>
						<td class="Field">
							<input class="FieldDate" type="text" name="txtPSD" id="saleDate" value = "11/06/2005" size="20">&nbsp;
							   <a href="#"><img id="btsaleDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
								<script type="text/javascript">
											<!--
														Calendar.setup({
														  inputField	: "saleDate",
														  button		: "btsaleDate",
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
					</tr>			
					<tr>
						<td class="Field">Product Identifier <font color="#FF0000">*</font></td>
						<td>&nbsp;</td>
						<td class="Field">&nbsp;</td>
						<td class="Field">
							<select class="FieldShort" tabindex="1" size="1" name="product">
								<option value="0"></option>
								<option value="2">CAC</option>
								<option value="3">SHA</option>
							</select>
						</td>
					</tr>			
				</table>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr class="btnormal">
			<td>&nbsp;</td>
			<td colspan="2">
				<a href="javascript:doSave();" class="btnormal" tabindex="26">Save</a>&nbsp;&nbsp;
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