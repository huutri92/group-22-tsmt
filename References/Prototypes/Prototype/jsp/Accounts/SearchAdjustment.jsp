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
	<title>Search Adjustment</title>
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
					menuAccount(2);
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
						<td height="25">&nbsp;</td>
						<td height="25" align="right">&nbsp;</td>
						<td height="25">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="4">
									<col width="180">
									<col width="5">									
									<col>
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Search Adjustment</b></td>
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
									<td class="Field">Adjustment ID</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldShort" tabindex="7" type="text" name="itemIdentifier6" size="20"></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Adjustment From Date</td>
									<td>&nbsp;</td>
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
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Account ID</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldShort" tabindex="7" type="text" name="itemIdentifier1" size="20"></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Adjustment To Date</td>
									<td>&nbsp;</td>
									<td class="Field">
										<input class="FieldDate" tabindex="5" type="text" name="agreementScannedDate" size="20">&nbsp;
										<a href="#" tabindex="6"><img id="btAgreementScannedDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
										<script type="text/javascript">
											<!--
												Calendar.setup({
												  inputField	: "agreementScannedDate",
												  button		: "btAgreementScannedDate",
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
									<td class="Field">Adjustment Type</td>
									<td>&nbsp;</td>
									<td class="Field">
										<select class="FieldLong" tabindex="1" size="1" name="product2" >
											<option>&nbsp;</option>
										</select>
									</td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">Status</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldLong" tabindex="7" type="text" name="itemIdentifier5" size="20"></td>
									<td class="Field">&nbsp;</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2">
							<a href="SearchAdjustmentResult.jsp" class="btnormal" tabindex="25">Search</a>&nbsp;&nbsp;
							<a href="javascript:doReset();" class="btnormal" tabindex="25">Reset</a>&nbsp;&nbsp;
							<a href="SetupAdjustment.jsp" class="btnormal" tabindex="25">Setup Adjustment</a>

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

</html>