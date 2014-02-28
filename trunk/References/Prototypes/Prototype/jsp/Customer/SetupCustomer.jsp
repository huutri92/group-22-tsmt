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
	<title>Setup Customer</title>
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
					menuCustomer(2);
				//-->
				</script>
				<table width="100%" border="0" cellspacing="0" cellpadding="0" height="200">
					<tr>
						<td valign="bottom" height="200">&nbsp;</td>
					</tr>
				</table>
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
			<td valign="top" height="*">
				<table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form">
					<colgroup>
						<col width="5">
						<col width="420">
						<col width="420">
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
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>Setup Customer</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table border="0" width="100%" cellpadding="0" cellspacing="0">
								<colgroup>
									<col width="37%">
									<col width="1%">
									<col width="62%">
								</colgroup>
								<tr>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="40%">
												<col width="1px">
												<col width="60%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="3"><b>PERSONAL DETAILS</b></th>
											</tr>
											<tr>
												<td height="5" colspan="2"></td>
											</tr>
											<tr class="Field" height ="20">
												<td class="Field">Status <font color="red">*</font></td>
												<td>&nbsp;</td>
												<td class="Field">
													<select size="1" name="status" class = "FieldDate">
														<option value="Live">Live</option>
														<option value="New" selected>New</option>
														<option value="Fraud">Fraud</option>
														<option value="Deceased">Deceased</option>
														<option value="Onhold">Onhold</option>
													</select>
												</td>
											</tr>
											<tr class="Field">
												<td>Territory&nbsp;<font color="red">*</font></td>
												<td>&nbsp;</td>
												<td class="Field">
													<select size="1" name="businessUnit" class="FieldShort">
														<option value="Liverpool">Liverpool</option>
														<option value="Paris">Paris</option>
														<option value="London">London</option>
														<option value="Manchester">Manchester</option>
													</select>
												</td>
											</tr>
											<tr class="Field">
												<td class="Field">Title&nbsp;<font color="red">*</font></td>
												<td>&nbsp;</td>
												<td class="Field">
													<select size="1" name="salutation" class = "FieldDate">
														<option value="Mr">Mr</option>
														<option value="Mrs">Mrs</option>
														<option value="Miss">Miss</option>
														<option value="Ms">Ms</option>
													</select>
												</td>
											</tr>
											<tr class="field">
												<td class="Field">Firstname&nbsp;<font color="red">*</font></td>
												<td>&nbsp;</td>
												<td class="Field"><input class="FieldNormal" type="text" name="firstName" size="20"></td>	
											</tr>
											<tr class="field">
												<td class="Field">Surname&nbsp;<font color="red">*</font></td>
												<td>&nbsp;</td>
												<td class="Field"><input class="FieldNormal" type="text" name="surname" size="20"></td>
											</tr>
											<tr class="field">
												<td class="Field">Initials</td>
												<td>&nbsp;</td>
												<td class="Field">
													<input class="FieldxShort" type="text" name="initials" size="20"></td>
											<tr class="field">
												<td class="Field">NI Number</td>
												<td>&nbsp;</td>
												<td class="Field"><input class="FieldNormal" type="text" name="niNumber" size="20"></td>
											</tr>
											</tr>
											<tr class="field">
												<td colspan ="3"><b>Home Address&nbsp;<font color="red">*</font></b></td>
											</tr>
											<tr class="field">
												<td class="Field">House Name/Number&nbsp;<font color="red">*</font></td>
												<td>&nbsp;</td>
												<td class="Field">
													<input class="FieldNormal" type="text" name="lastName8" size="20"></td>													</tr>
											<tr class="field">
												<td class="Field">Street Name&nbsp;<font color="red">*</font></td>
												<td>&nbsp;</td>
												<td class="Field">
													<input class="FieldNormal" type="text" name="lastName12" size="20"></td>	
											</tr>
											<tr class="field">
												<td class="Field">Town/City</td>
												<td>&nbsp;</td>
												<td class="Field">
													<input class="FieldNormal" type="text" name="townCity1" size="20"></td>											</tr>
											<tr class="field">
												<td class="Field">County</td>
												<td>&nbsp;</td>
												<td class="Field">
													<input class="FieldNormal" type="text" name="townCity1" size="20"></td>												</tr>
											<tr class="field">
												<td class="Field">Postcode&nbsp;<font color="red">*</font></td>
												<td>&nbsp;</td>
												<td class="Field" nowrap>
													<input class="FieldShort" type="text" name="postCode">&nbsp;
													<a href="javascript:openAddress();"><img tabindex="" src="../images/search.gif" border="0" width="15" height="15">
												</td>
											</tr>
											<tr class="field">
												<td class="Field">Home Telephone</td>
												<td>&nbsp;</td>
												<td class="Field">
													<input class="FieldNormal" type="text" name="homePhone" size="20"></td>	
											<tr class="field">
												<td class="Field">Mobile Telephone</td>
												<td>&nbsp;</td>
												<td class="Field">
													<input class="FieldNormal" type="text" name="mobilPhone" size="20"></td>	
											<tr class="field">
												<td colspan ="3"><b>Collection Address&nbsp;<font color="red">*</font></b></td>
											</tr>
											<tr class="field">
												<td class="Field">House Name/Number&nbsp;<font color="red">*</font></td>
												<td>&nbsp;</td>
												<td class="Field">
													<input class="FieldNormal" type="text" name="lastName8" size="20"></td>													</tr>
											<tr class="field">
												<td class="Field">Street Name&nbsp;<font color="red">*</font></td>
												<td>&nbsp;</td>
												<td class="Field">
													<input class="FieldNormal" type="text" name="lastName12" size="20"></td>	
											</tr>
											<tr class="field">
												<td class="Field">Town/City</td>
												<td>&nbsp;</td>
												<td class="Field">
													<input class="FieldNormal" type="text" name="townCity1" size="20"></td>											</tr>
											<tr class="field">
												<td class="Field">County</td>
												<td>&nbsp;</td>
												<td class="Field">
													<input class="FieldNormal" type="text" name="townCity1" size="20"></td>												</tr>
											<tr class="field">
												<td class="Field">Postcode&nbsp;<font color="red">*</font></td>
												<td>&nbsp;</td>
												<td class="Field" nowrap>
													<input class="FieldShort" type="text" name="postCode">&nbsp;
													<a href="javascript:openAddress();"><img tabindex="" src="../images/search.gif" border="0" width="15" height="15">
												</td>
											</tr>
											
											<tr class="field">
												<td colspan ="3"><b>Previous Address</b></td>
											</tr>
											<tr class="field">
												<td class="Field">House Name/Number&nbsp;<font color="red">*</font></td>
												<td>&nbsp;</td>
												<td class="Field">
													<input class="FieldNormal" type="text" name="lastName8" size="20"></td>
											</tr>
											<tr class="field" height ="21">
												<td class="Field">Postcode&nbsp;<font color="red">*</font></td>
												<td>&nbsp;</td>
												<td class="Field"><input class="FieldShort" type="text" name="postCode" size="20"></td>
											</tr>
										</table>
									</td>
									<td>&nbsp;</td>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="30%">
												<col width="15%">
												<col width="10%" align=right>
												<col width="20%" align=right>
												<col width="18%" align=right>
												<col width="7%" align=center>
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="6">AGREEMENT DETAILS</th>
											</tr>
											<tr>
												<td height="5" colspan="6"></td>
											</tr>
											<tr class="field2">
												<td nowrap>Home Visit Form</td>
												<td nowrap colspan="5">
													<input type="checkbox" disabled class="checkbox"  name="C1" value="ON" style="padding-left:0px"></td>
											</tr>
											<tr class="field2">
												<td nowrap>Application Form</td>
												<td nowrap>Completed&nbsp;&nbsp;&nbsp;</td>
												<td nowrap><input type="checkbox" class="checkbox" name="C2" value="ON" disabled ></td>
												<td nowrap colspan="2" >Scanned&nbsp;&nbsp;&nbsp;<input type="checkbox" disabled  class="checkbox"  name="C3" value="ON" ></td>
												<td nowrap>&nbsp;</td>
											</tr>
											<tr class="field2">
												<td class="Field">Application Form Date&nbsp;<font color="red">*</font></td>
												<td class="Field">
													<input class="FieldDate" disabled type="text" id = "txtappFormDate" name="appFormDate" size="20">&nbsp;</td>
												<td nowrap colspan ="5">&nbsp;</td>				
											</tr>
											<tr class="field2">
												<td nowrap>Proof of Address</td>
												<td nowrap>
													<input type="checkbox" disabled  class="checkbox" name="C4" value="ON" ></td>
												<td nowrap colspan="3">Proof of Identification&nbsp;&nbsp;&nbsp;<input type="checkbox"  class="checkbox" name="C6" value="ON" disabled></td>
												<td nowrap>&nbsp;</td>				
											</tr>											
											</tr>
											<tr class="field2">
												<td nowrap>Business Stream&nbsp;<font color="red">*</font></td>
												<td nowrap colspan="3">
													<select size="1" name="BusinessStream" class ="FieldShort" disabled>
														<option value="0">BusinessStream 1</option>
														<option value="1">BusinessStream 2</option>
														<option value="2">BusinessStream 3</option>
														<option value="3">BusinessStream 4</option>
													</select>
												</td>
												<td colspan="2">
												&nbsp;</td>
											</tr>
											<tr class="field2">
												<td>Payment Method</td>
												<td colspan="2">
													<select size="1" name="paymentMethod0" class ="FieldShort" disabled>
														<option value=""></option>
														<option value="Home collect">Home collect</option>
														<option value="Payment card">Payment card</option>
														<option value="Bank Giro">Bank Giro</option>
														<option value="Direct Debit">Direct Debit</option>
													</select>
												</td>
												<td nowrap>Ref No&nbsp;</td>
												<td><input class="FieldDate" type="text" name="RefNo" value = "" size="20" disabled>&nbsp;</td>					
												<td>&nbsp;</td>
											</tr>
											<tr class="field2">
												<td nowrap>Collected On</td>
												<td nowrap colspan="5">
													<select size="1" name="callingDay" class="FieldShort" disabled>
														<option value=""></option>
														<option value="Monday">Monday</option>
														<option value="Tuesday">Tuesday</option>
														<option value="Wednesday">Wednesday</option>
														<option value="Thursday">Thursday</option>
														<option value="Friday">Friday</option>
														<option value="Saturday">Saturday</option>
														<option value="Sunday">Sunday</option>
													</select>&nbsp;of week
												</td>
											</tr>
											<tr class="field2">
												<td nowrap>Collection Frequency</td>
												<td nowrap colspan="5">
													<input class="FieldDR" type="text" name="lastName3" value = "" size="20" disabled>
												</td>
											</tr>
											<tr class="field2">
												<td nowrap>Statement Frequency</td>
												<td nowrap colspan="5">
													<input class="FieldDR" type="text" name="lastName4" value = "" size="20" disabled>
												</td>
											</tr>
											<tr class="field2"  rowspan ="3">
												<td nowrap >Memo - Calling</td>
												<td nowrap colspan="5">
													<textarea disabled class="FieldLong" name="" cols="30" rows="5"></textarea></td>

											</tr>
										</table>
										<br>
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="30%">
												<col width="70%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="2">MARKETING INFORMATION</th>
											</tr>
											<tr>
												<td height="7" colspan="2"></td>
											</tr>
											<tr class="field3">
												<td class="Field">Marital Status</th>
												<td class="Field">
													<select size="1" name="maritalStatus" class ="FieldDate" disabled>
														<option value=""></option>
														<option value="Married">Married</option>
														<option value="Single">Single</option>
														<option value="Seperated">Seperated</option>
														<option value="Widowed">Widowed</option>
													</select>
												</td>
											</tr>
											<tr class="field3">
												<td class="Field">No. of Children</td>
												<td class="Field"><input type="text" name="noOfChildren" size="20" class="FieldDR" disabled></td>
											</tr>
											<tr class="field3">
												<td nowrap>Source of Customer&nbsp;<font color="red">*</font></td>
												<td nowrap>
													<select size="1" name="saleSource" class ="FieldShort" disabled>
														<option value="Agent">Agent</option>
														<option value="Mailing – Argos Card">Mailing – Argos Card</option>
														<option value="Mailing – Other">Mailing – Other</option>
														<option value="Customer Introduction">Customer Introduction</option>
														<option value="Canvass">Canvass</option>
														<option value="LSF">LSF</option>
													</select></td>
												</td>
											</tr>
											</tr>
											<tr class="field3">
												<td nowrap>Accepts; Promotional 
												Literature</td>
												<td nowrap>
													<input type="checkbox" class="checkbox"  name="C8" value="ON" disabled style="padding-left:0px">
												</td>
											</tr>
											<tr class="field3">
												<td nowrap>Promotional Calls</td>
												<td nowrap>
													<input type="checkbox" class="checkbox"  name="C9" value="ON" disabled style="padding-left:0px">
												</td>
											</tr>
											<tr class="field3" height ="60">
												<td nowrap colspan ="3"> </td>
											</tr>
										</table>
									</td>
								</tr>
								<!--								
								<tr>
									<td colspan="3">&nbsp;</td>
								</tr>-->
							</table>	
					</td>
						<td>&nbsp;</td>
					</tr>
					<tr class=btnormal>
						<td>&nbsp;</td>
						<td colspan="2">
							<a href="CustomerSummary.jsp" class="btnormal" >Continue</a>&nbsp;&nbsp;&nbsp;&nbsp;(In case Customer existed)
						</td>
						<td width="6">&nbsp;</td>
					</tr>
					<tr class=btnormal>
						<td>&nbsp;</td>
						<td colspan="2">
							<a href="javascript:FindAddress();" class="btnormal" >Continue</a>&nbsp;&nbsp;&nbsp;&nbsp;(In case address existed)
						</td>
						<td width="6">&nbsp;</td>
					</tr>
					<tr class=btnormal>
						<td>&nbsp;</td>
						<td colspan="2">
							<a href="SetupCustomerNext.jsp" class="btnormal" >Continue</a>&nbsp;&nbsp;&nbsp;&nbsp;(In case customer/address do not exist)
						</td>
						<td width="6">&nbsp;</td>
					</tr>
				</table>
			</td>
			<!-- ------------------------------------------------------------------------------------------ -->
			<!-- Content End -->
		</tr>
	</table>
</form>
</body>
<script language="javascript">
	
	function openAddress()
	{
		var width = 600;
		var height = 200;
		var newWin = window.open("../Customer/FindAddressResultPopup.jsp", "Create", centerWindow(width, height));
	}	
	function FindAddress()
	{
		var width = 750;
		var height = 250;
		var newWin = window.open("../Customer/FindCustomerMatchedPopup.jsp", "Create", centerWindow(width, height));
	}
	
	function openPopup()
	{
		var width = 500;
		var height = 280;
		var newWin = window.open("../Customer/CustomerContactPopup.jsp", "Create", centerWindow(width, height));
	}	

</script>
</html>