<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/menu.js"></script>	
	<script language="javascript" src="../js/common.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">

	<title>Select Product</title>
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
						<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Select Product</b></td>
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
						<col width="2%" align="center">
						<col width="12%" align="left">
						<col width="17%" align="left">
						<col width="15%" align="left">
						<col width="15%" align="left">
						<col width="10%" align="left">
						<col width="17%" align="left">
						<col width="12%" align="right">									
					</colgroup>
					<tr class="Section">
						<th class="Title">&nbsp;</th>
						<th class="Title"><b>Product ID</b></th>
						<th class="Title"><b>Product Name</b></th>
						<th class="Title"><b>Product Type</b></th>
						<th class="Title"><b>Status</b></th>
						<th class="Title"><b>Term Type</b></th>
						<th class="Title"><b>Product Partner</b></th>
						<th class="Title"><b>Interest Rate (%)</b></th>
					</tr>
					<tr class="Field">
						<td align="center"><input class="radio" type="radio" name="select" value="1"></td>
						<td>1</td>
						<td>L22</td>
						<td>Loan</td>
						<td>Live</td>
						<td>Fixed</td>
						<td>&nbsp;</td>
						<td align="right">50</td>					
					</tr>															
					<tr class="Field2">
						<td align="center"><input class="radio" type="radio" name="select" value="2"></td>
						<td>2</td>
						<td>CAC</td>
						<td>Card</td>
						<td>Live</td>
						<td>Variable</td>
						<td>Argos</td>
						<td align="right">50</td>
					</tr>			
					<tr class="Field">
						<td align="center"><input class="radio" type="radio" name="select" value="3"></td>
						<td>3</td>
						<td>SHA</td>
						<td>Savings</td>
						<td>Not to be sold</td>
						<td>Variable</td>
						<td>Family Hampers</td>
						<td align="right">50</td>
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