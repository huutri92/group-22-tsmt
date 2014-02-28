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
			<td valign="top" rowspan="2" bgcolor="#E0E9F2" height="100%">
				<script language="javascript">
				<!--
					menuSystemAdmin(6);
				//-->
				</script>
			</td> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<!-- Left Menu End --> 
			
			<!-- Top Begin --> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<td valign="top" bgcolor="#E0E9F2" height="35" align="right">
				<script language="javascript">
				<!--
					menuTop('HaiVH');
				//-->
				</script>
			</td> 
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
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Enable/Disable Letters </b></td> 
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
							<div id="tbl-container" style="height:300px; width:100%;">
								<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder">
									<colgroup>
										<col width="20%" align="left">
										<col width="50%" align="left">
										<col width="30%" align="left">
									</colgroup>
									<THEAD>
									<tr class="Section">
										<th class="title" align="left">Document Reference</th>
										<th class="title" align="left">Document Name</th>
										<th class="title" align="left"><input type="checkbox" class="checkbox" onclick="javaScript:checkSelect('selectedItemIds');" name="selectAll" value="selectAll">&nbsp;Enable Document</th>
									</tr>
									</THEAD>
									<tr class="Field">
										<td>TL1</td>
										<td>Non Payment of Terms</td>
										<td><input type="checkbox" class="checkbox"  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
									</tr>
									<tr class="Field2">
										<td>NP1</td>
										<td>Non Payment of Accounts</td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
									</tr>
									<tr class="Field">
										<td>NP2</td>
										<td>Notice of Court Proceedings</td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value="" checked></td>
									</tr>
									<tr class="Field2">
										<td>NEWLN</td>
										<td>New Loan</td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value="" checked></td>
									</tr>
									<tr class="Field">
										<td>REFLN</td>
										<td>Refinance Loan</td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value="" checked></td>
									</tr>
									<tr class="Field2">
										<td>ECTU</td>
										<td>Argos – Extra Card Top Up</td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
									</tr>
									<tr class="Field">
										<td>NEWEC</td>
										<td>Argos Extra Card New</td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
									</tr>
									<tr class="Field2">
										<td>ESRQ1</td>
										<td>Early Settlement Rebate Quote pre 31.05.05</td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
									</tr>
									<tr class="Field">
										<td>ESR1</td>
										<td>Early Settlement Rebate Letter pre 31.05.05</td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
									</tr>
									<tr class="Field2">
										<td>ESRQ2</td>
										<td>Early Settlement Rebate Quote post 31.05.05</td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
									</tr>
									<tr class="Field">
										<td>ESR2</td>
										<td>Early Settlement Rebate Quote post 31.05.05</td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
									</tr>
									<tr class="Field2">
										<td>CR1</td>
										<td>Cancellation Rights</td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
									</tr>
									<tr class="Field">
										<td>STA</td>
										<td>Statement of Account</td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value="" checked></td>
									</tr>
									<tr class="Field2">
										<td>DEF</td>
										<td>Default Notice</td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
									</tr>
									<tr class="Field">
										<td>REM1</td>
										<td>Service - Remote </td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
									</tr>
									<tr class="Field2">
										<td>RMNP1</td>
										<td>Non Payment of Account - Remote</td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value="" checked></td>
									</tr>
									<tr class="Field">
										<td>RMNP2</td>
										<td>Notice of Court Proceedings - Remote </td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
									</tr>
									<tr class="Field2">
										<td>RMDEF</td>
										<td>Notice of Court proceedings Reminder - Remote</td>
										<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
									</tr>
								</table>
							</div>
						</td> 
						<td>&nbsp;</td> 
					</tr> 
					<tr class="btnormal"> 
						<td>&nbsp;</td> 
						<td colspan="2">
							<a class=btnormal href="javascript:doApply();">Apply</a>&nbsp;&nbsp;
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
	function doApply() {
		var reply = confirm("Do you wish to process?");
		if (reply) {
		}
	}
	function doCancel() {
		window.location.reload(true);
	}
//-->
</script>
</body>
</html>
