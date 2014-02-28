<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>	
	<script language="javascript" src="../js/menu.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">	
	<title>ATM Withdrawals</title>
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
						<td height="25" colspan="4">&nbsp;</td>
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
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>ATM Withdrawals</b></td>
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
									<col width="2%" align="left">
									<col width="28%" align="left">
									<col width="70%" align="left">
								</colgroup>
							<tr>
								<th class="Title">&nbsp;</th>
								<th class="Title">ATM Card Number</th>
								<th class="Title">Value (&pound;)</th>
							</tr>
							<tr class="Field">
								<td>
								<input type=radio name=custid value=012 class=checkbox></td>
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>
								&lt;ATM Withdrawals Value&gt;</td>
							</tr>
							<tr class="Field2">
								<td nowrap>
								<input type=radio name=custid value=013 class=checkbox checked></td>
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>
								&lt;ATM 
								Withdrawals Value&gt;</td>
							</tr>
							<tr class="Field">
								<td nowrap>
								<input type=radio name=custid value=014 class=checkbox></td>
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>
								&lt;ATM 
								Withdrawals Value&gt;</td>
							</tr>											
							<tr class="Field2">
								<td nowrap>
								<input type=radio name=custid value=015 class=checkbox></td>
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>
								&lt;ATM 
								Withdrawals Value&gt;</td>
							</tr>
							<tr class="Field">
								<td>
								<input type=radio name=custid value=016 class=checkbox></td>
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>
								&lt;ATM 
								Withdrawals Value&gt;</td>
							</tr>
							<tr class="Field2">
								<td nowrap>
								<input type=radio name=custid value=017 class=checkbox></td>
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>
								&lt;ATM 
								Withdrawals Value&gt;</td>
							</tr>
							<tr class="Field">
								<td>
								<input type=radio name=custid value=018 class=checkbox></td>
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>
								&lt;ATM 
								Withdrawals Value&gt;</td>
							</tr>							
							<tr class="Field2">
								<td nowrap>
								<input type=radio name=custid value=019 class=checkbox></td>
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>
								&lt;ATM 
								Withdrawals Value&gt;</td>
							</tr>
							<tr class="Field">
								<td>
								<input type=radio name=custid value=020 class=checkbox></td>
								<td nowrap>&lt;ATM Card Number&gt;</td>
								<td nowrap>
								&lt;ATM 
								Withdrawals Value&gt;</td>
							</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>					
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2">
							<a href="javascript:doAddATMWithdrawals()" class="btnormal">Add ATM withdrawals</a>&nbsp;
							<a href="javascript:doAmendATMWithdrawals()" class="btnormal">Amend ATM withdrawals</a>&nbsp;
							<a href="javascript:doClose()" class="btnormal">Close</a>&nbsp;
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
						<td colspan="2">&nbsp;</td>
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
	function doAddATMWithdrawals() {
		window.location.href="PopAddATMWithdrawls.jsp";
	}
	function doAmendATMWithdrawals() {
		window.location.href="PopAmendATMWithdrawls.jsp";
	}
	function doViewTransaction() {
		//
	}
	function doClose() {
		window.close();
	}
</script>
</body>
</html>