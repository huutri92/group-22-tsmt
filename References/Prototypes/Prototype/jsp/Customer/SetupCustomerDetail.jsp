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
									<col width="4">
									<col width="85">
									<col width="5">
									<col width="5">

									<col width="4">
									<col width="85">
									<col width="5">
									<col>
								</colgroup>
								<tr>
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" class="buttontop"><b>Main Info</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="10" height="21" border="0"></td>
									<td>&nbsp;</td>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected">
									<b>Detail Info</b></td>
									<td><img src="../images/tab_01_03.gif" width="10" height="21" border="0"></td>
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
									<col width="23%">
									<col width="1px">
									<col width="25%">
									<col width="2%">
									<col width="1px">
									<col width="23%">
									<col width="1px">
									<col width="25%">
									<col width="2%">
								</colgroup>
								<tr>
									<th colspan="9" align = "center" class="Title">AGREEMENT DETAILS</td>
								</tr>
								<tr height ="20">
									<td class="Field">Customer ID</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;AA0001</td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Status</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;New</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Payment Method&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="paymentMethod" class ="FieldShort">
											<option value="Debt">Debt</option>
											<option value="Direct">Direct</option>
											<option value="Cheque">Cheque</option>
										</select></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Home Visit Form</td>
									<td>&nbsp;</td>
									<td class="Field">
										<input type="checkbox" name="proofOfAddressFlag0" value=""><td class="Field"></td>
								</tr>
								<tr>
									<td class="Field">Ref No</td>
									<td>&nbsp;</td>
									<td class="Field">
										<input class="FieldDR" type="text" name="paymentID" size="20"></td>
									<td class="Field">
									<td>&nbsp;</td>
									<td class="Field">Application Form Scanned</td>
									<td>&nbsp;</td>
									<td class="Field">
									<input type="checkbox" name="proofOfAddressFlag1" value=""></td>
									<td class="Field"></td>
								</tr>
								<tr>
									<td class="Field">Business Stream&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="businessStream" class="FieldShort">
											<option value="HSB">HSB</option>
											<option value="FullCredit">FullCredit</option>
											<option value="No Option">No Option</option>
											<option value="Sell">Sell</option>
										</select>
									</td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Application Form Completed</td>
									<td>&nbsp;</td>
									<td class="Field"><input type="checkbox" name="homeVisitRequest"></td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Territory&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="businessUnit" class="FieldShort">
											<option value="Liverpool">Liverpool</option>
											<option value="Paris">Paris</option>
											<option value="London">London</option>
											<option value="Manchester">Manchester</option>
										</select>
									</td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Application Form Date&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<input class="FieldDate" type="text" id = "txtappFormDate" name="appFormDate" size="20">&nbsp;
										<a href="#"><img id="btAFD" src="../images/calendar.gif" border="0" width="16" height="14"></a>
										<script type="text/javascript">
											<!--
												Calendar.setup({
												  inputField	: "txtappFormDate",
												  button		: "btAFD",
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
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Proof of Identification</td>
									<td>&nbsp;</td>
									<td class="Field"><input type="checkbox" name="proofOfIdentityFlag" value=""></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Collection On</td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="callingDay" class="FieldShort" >
											<option value=""></option>
											<option value="Monday">Monday</option>
											<option value="Tuesday">Tuesday</option>
											<option value="Wednesday">Wednesday</option>
											<option value="Thursday">Thursday</option>
											<option value="Friday">Friday</option>
											<option value="Saturday">Saturday</option>
											<option value="Sunday">Sunday</option>
										</select>&nbsp;of week</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Proof of Identification</td>
									<td>&nbsp;</td>
									<td class="Field"><input type="checkbox" name="proofOfIdentityFlag" value=""></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Interest Suspended</td>
									<td>&nbsp;</td>
									<td class="Field"><input type="checkbox" name="interestSuspendedFlag"></td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field" rowspan ="3">Memo - Calling</td>
									<td rowspan ="3">&nbsp;</td>
									<td class="Field"  rowspan ="3">
										<textarea class="FieldLong" name="" cols="30" rows="5"></textarea></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Until</td>
									<td>&nbsp;</td>
									<td class="Field">
										<input class="FieldDate" type="text" id = "txtintSusRevDate" name="intSusRevDate" size="20">&nbsp;
										<a href="#"><img id="btISRD" src="../images/calendar.gif" border="0" width="16" height="14"></a>
										<script type="text/javascript">
											<!--
												Calendar.setup({
												  inputField	: "txtintSusRevDate",
												  button		: "btISRD",
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
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Collection Frequency</td>
									<td>&nbsp;</td>
									<td class="Field">
										<input type="text" name="collFrequency" size="20" class="FieldDR">&nbsp;weeks</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Statement Frequency</td>
									<td>&nbsp;</td>
									<td class="Field">
										<input type="text" name="StatFrequency" size="20" class="FieldDR">&nbsp;weeks</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td colspan="8">&nbsp;</td>
								</tr>
								<tr >
									<th colspan="9" align = "center" class="Title">MARKETING INFORMATION</th>
								</tr>
								<tr>
									<td class="Field">Marital Status&nbsp;<font color="red">*</font></th>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="maritalStatus" class ="FieldDate">
											<option value="Married">Married</option>
											<option value="Single">Single</option>
											<option value="Seperated">Seperated</option>
											<option value="Widowed">Widowed</option>
										</select>
									</td>
									<td class="Field">
									<td>&nbsp;</td>
									<td class="Field">No. of Children</td>
									<td>&nbsp;</td>
									<td class="Field"><input type="text" name="noOfChildren" size="20" class="FieldDR"></td>
									<td class="Field"></td>
								</tr>
								<tr>
									<td class="Field">Promotional Calls</td>
									<td>&nbsp;</td>
									<td class="Field">
										<input type="checkbox" name="phonedFlag" value=""></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Sale Source&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="saleSource" class ="FieldShort">
											<option value="Agent">Agent</option>
											<option value="Mailing – Argos Card">Mailing – Argos Card</option>
											<option value="Mailing – Other">Mailing – Other</option>
											<option value="Customer Introduction">Customer Introduction</option>
											<option value="Canvass">Canvass</option>
											<option value="LSF">LSF</option>
										</select></td>

									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Accepts; Promotional 
									Literature</td>
									<td>&nbsp;</td>
									<td class="Field">
									<input type="checkbox" name="mailingFlag0" value=""></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2">
							<a href="SetupCustomerMain.jsp" class="btnormal" >Previous</a>&nbsp;&nbsp;
							<a href="javascript:openPopup();" class="btnormal" >Save</a>&nbsp;&nbsp;
						</td>
						<td>&nbsp;</td>
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
	
	function openPopup()
	{
		var width = 500;
		var height = 280;
		
		var newWin = window.open("../Customer/CustomerContactPopup.jsp", "Create", centerWindow(width, height));
	}	

</script>
</html>