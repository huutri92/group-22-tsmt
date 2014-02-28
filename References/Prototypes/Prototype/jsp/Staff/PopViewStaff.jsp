<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>	
	<script language="javascript" src="../js/menu.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">	
	<title>CAP System</title>
</head>

<body class="body" onload="javascript:disableForm();">
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
						<td height="25"><b>&nbsp;</b></td>
						<td height="25" align="right"></td>
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
									<col width="80%">
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>Staff Information Details</b></td>
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
									<col width="20%">
									<col width="1px">
									<col width="30%">
									<col width="1px">
									<col width="24%">
									<col width="1px">
									<col width="26%">
								</colgroup>						
								<tr>
									<td class="Field">Staff ID</td>
									<td>&nbsp;</td>
									<td class="Field">
										123456</td>
									<td>&nbsp;</td>
									<td class="Field">Payroll Number&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<input class="FieldNormal" type="text" name="payrollNumber" size="20" value="00010 001 558 888 999"></td>
								</tr>
								<tr>
									<td class="Field">Salutation&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="title" class="FieldDR">											
  											<option value="Ms">Lord</option>
  											<option value="Ms">Doctor</option>
											<option value="Mr">Mr</option>
											<option value="Mrs">Mrs</option>
											<option value="Miss">Miss</option>
											<option value="Ms">Ms</option>
										</select>
									</td>
									<td>&nbsp;</td>
									<td class="Field">ATM Number&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<input class="FieldNormal" type="text" name="atmNumber" size="20" value="111 0000 22 2222 22222 "></td>
								</tr>
								<tr>
									<td class="Field">Surname&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field"><input class="surname" type="text" name="firstName" size="20" value="John"></td>
									<td>&nbsp;</td>
									<td class="Field">New Cust. Credit 
									Multiplier&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
									<input class="FieldDR" type="text" name="newCustCreditMulti" size="20" value=2></td>
								</tr>
								<tr>
									<td class="Field">Forename&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldNormal" type="text" name="forename" size="20" value="McCarthy"></td>
									<td>&nbsp;</td>
									<td class="Field">Existing Cust. Credit 
									Multiplier&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<input class="FieldDR" type="text" name="existCustCreditMulti1" size="20" value=4></td>
								</tr>
								<tr>
									<td class="Field">Maiden Name</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldNormal" type="text" name="maidenName" size="20"></td>
									<td>&nbsp;</td>
									<td class="Field">Float Limit&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<input class="FieldDR" type="text" name="existCustCreditMulti" size="20" value=2></td>
								</tr>
								<tr>
									<td class="Field">Job Title&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="JobTitle" class="FieldDR">
											<option value="Collector">Collector</option>
											<option value="SL">SL</option>
											<option value="SNM">GM</option>
											<option value="Admin">Admin</option>
										</select></td>
									<td>&nbsp;</td>
									<td class="Field"><b>ADDRESS</b></td>
									<td>&nbsp;</td>
									<td class="Field">
										&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Staff Type&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="staffType" class="FieldDR">
											<option value="Employees">Employees</option>
											<option value="Agents">Agents</option>
										</select></td>
									<td>&nbsp;</td>
									<td class="Field">Postal Code&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
									<input class="FieldDate" type="text" name="postcode" size="20" value="SS1 2JY">&nbsp;<a href="javascript:doLookupPostcode()"><img id="btFinishDate0" src="../images/search.gif" border="0" width="15" height="15"></a></td>
								</tr>
								<tr>
									<td class="Field">Business Unit&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="Territory" class="FieldDR">
											<option value="Territory">Territory</option>
										</select></td>
									<td>&nbsp;</td>
									<td class="Field">Address&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
									<input class="FieldLong" type="text" name="AddressLine1" value="Maitland House"></td>
								</tr>
								<tr>
									<td class="Field">NI Number&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
									<input class="FieldNormal" type="text" name="niNumber" size="20" value="MOS-09039"></td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">
									<input class="FieldLong" type="text" name="AddressLine2" value="Warrior Square"></td>
								</tr>
								<tr>
									<td class="Field">Start Date&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<input class="FieldDate" type="text" name="StartDate" size="20" value="11/01/2005">&nbsp;
										<img id="btStartDate" src="../images/calendar.gif" border="0" width="16" height="14" style="cursor:hand">										
									</td>
									<td>&nbsp;</td>
									<td class="Field">Town&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
									<input class="FieldLong" type="text" name="Town" value="Southend-On-Sea"></td>
								</tr>
								<tr>
									<td class="Field">Finish Date&nbsp;<font color="red">*</font> </td>
									<td>&nbsp;</td>
									<td class="Field">
										<input class="FieldDate" type="text" name="FinishDate" size="20" value="11/01/2008">&nbsp;
										<img id="btFinishDate" src="../images/calendar.gif" border="0" width="16" height="14"  style="cursor:hand">										
									</td>
									<td>&nbsp;</td>
									<td class="Field">County</td>
									<td>&nbsp;</td>
									<td class="Field">
									<input class="FieldLong" type="text" name="County" value="Essex"></td>
								</tr>
								<tr>
									<td class="Field">Status&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="StaffStatus" class="FieldDR">
											<option value="Starter">Starter</option>
											<option value="Live">Live</option>
											<option value="Leaving">Leaving</option>
											<option value="Leaver">Leaver</option>
										</select></td>
									<td>&nbsp;</td>
									<td class="Field">Checked by QAS</td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="CheckQAS" class="FieldDR">
											<option value="QAS">QAS</option>
											<option value="Non-QAS">Non-QAS</option>
											<option value="No-QAS">No-QAS</option>
										</select></td>
								</tr>
								<tr>
									<td class="Field">Payment Method&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="PaymentMethod" class="FieldDR">
											<option value="Payroll">Payroll</option>
											<option value="Cheque">Cheque</option>
											<option value="Fromreceipts">From 
											receipts</option>
										</select></td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">
										&nbsp;</td>
								</tr>
								</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
						
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2"><b><a href="javascript:doClose()" class="btnormal">Close</a>&nbsp;<a href="javascript:history.go(-1)" class="btnormal">Back</a>&nbsp;</b></td>
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
	function doClose() {
		window.close();
	}	
</script>
</body>

</html>