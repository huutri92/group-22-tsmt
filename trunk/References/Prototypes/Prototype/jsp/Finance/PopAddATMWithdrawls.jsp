<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>	
	<script language="javascript" src="../js/menu.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">	
	<title>Add ATM Withdrawals</title>
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
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>Add ATM Withdrawals</b></td>
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
									<col width="60%" align="Left">
									<col width="40%" align="left">
								</colgroup>
							<tr>
								<th class="Title">ATM Card Number</th>
								<th class="Title">Value (&pound;)</th>
							</tr>
							<tr class="Field">
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>&lt;ATM Withdrawals Value&gt;</td>
							</tr>
							<tr class="Field2">
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>&lt;ATM Withdrawals Value&gt;</td>
							</tr>
							<tr class="Field">
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>&lt;ATM Withdrawals Value&gt;</td>
							</tr>											
							<tr class="Field2">
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>&lt;ATM Withdrawals Value&gt;</td>
							</tr>
							<tr class="Field">
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>&lt;ATM Withdrawals Value&gt;</td>
							</tr>
							<tr class="Field2">
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>&lt;ATM Withdrawals Value&gt;</td>
							</tr>
							<tr class="Field">
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>&lt;ATM Withdrawals Value&gt;</td>
							</tr>							
							<tr class="Field2">
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>&lt;ATM Withdrawals Value&gt;</td>
							</tr>
							<tr class="Field">
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>&lt;ATM Withdrawals Value&gt;</td>
							</tr>
							<tr class="Field2">
								<td nowrap>
									<select class="FieldShort" name="auto" size="1" onChange="javascript:doCheck();">
										<option value="0">&nbsp;</option>
										<option value="1">&lt;ATM Card Number&gt;</option>
										<option value="1">&lt;ATM Card Number&gt;</option>
										<option value="1">&lt;ATM Card Number&gt;</option>
										<option value="1">&lt;ATM Card Number&gt;</option>
										<option value="1">&lt;ATM Card Number&gt;</option>
										<option value="1">&lt;ATM Card Number&gt;</option>
									</select>
									<input type="text" class="FieldShort" name="manual" onChange="javascript:doCheck();">
								</td>
								<td nowrap><input type="text" class="FieldShort"></td>
							</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>					
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2">
							<a href="javascript:doSave()" class="btnormal">Save</a>&nbsp;&nbsp;
							<a href="javascript:doCancel()" class="btnormal">Cancel</a>&nbsp;
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
	function doSave() {
		window.location.href = "PopATMWithdrawls.jsp";
	}
	function doViewTransaCancel() {
//		window.location.href="../Customer/CustomerTransactionsSale.jsp";
		document.parentWindow.opener.location.href="../Staff/CommStatements.jsp";
		window.close();
	}
	function doCancel() {
		window.location.href = "PopATMWithdrawls.jsp";
	}
	function doCheck() {
		var manual = frmMe.manual.value;
		var auto   = frmMe.auto.value;
		if (auto != 0) {
			frmMe.manual.value = "";
			frmMe.auto.value = auto;
		}
		if (manual.length != 0) {
			frmMe.auto.value = 0;
		}
	}
</script>
</body>
</html>