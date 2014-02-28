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

	<title>Setup Product</title>
</head>
<script language='javascript'>
<!--
function isPIAProduct() {
	if (document.frmMorses.piaProduct.checked) {
		document.frmMorses.piaSaleDate.disabled = true;
	} else {
		document.frmMorses.piaSaleDate.disabled = false;
		document.frmMorses.piaSaleDate.value = "";
	}
}
function isThirdPartyRequired() {
	if (document.frmMorses.thirdPartyRequired.checked) {
		document.frmMorses.thirdPartyIdPrefix.disabled = true;
		document.frmMorses.checkDigitAlgorithm.disabled = true;		
	} else {
		document.frmMorses.thirdPartyIdPrefix.disabled = false;
		document.frmMorses.thirdPartyIdPrefix.value = "";
		document.frmMorses.checkDigitAlgorithm.disabled = false;
		document.frmMorses.checkDigitAlgorithm.value = ""
	}
}
function doSort() {
	//
}
function doSave() {
	window.location.href="ViewProductDetails.jsp";
}
function doAmend() {
	var len =  document.frmMorses.elements.length;
	var count = 0;	
	var select = 0;
	for (i = 0; i < len; i++) {
		e = document.frmMorses.elements[i];
		if (e != null && e.type == 'checkbox' && e.name == 'select' && e.checked) {	
			if (count == 0) {
				select = e.value;
			}
			count = count + 1;		
		}
	}
	
	if (count == 0) {
		alert("Please select a product to amend");
		return;
	}			
	
	if (count > 1) {
		alert("Please select only one product to amend");
		return;	
	}
	
	if (select > 0) {
		document.frmMorses.action = "../Product/AmendProduct" + select + ".jsp";
		document.frmMorses.submit();	
	}		
	return;
}
//-->
</script>

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
					menuProduct(2);
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
					menuTop('HaiVT');
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
						<col width="300">
						<col width="600">
						<col width="5">
					</colgroup>
					<tr>
						<td height="25" valign="top" colspan="4"><img src="../images/corner.gif" border="0" width="5" height="5"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="4">
									<col width="150">
									<col width="5">									
									<col width="*">
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Setup Product</b></td>
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
							<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
								<colgroup>
									<col width="25%">
									<col width="1%">
									<col width="39%">
									<col width="1%">
									<col width="34%">
								</colgroup>
								<tr>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="40%">
												<col width="60%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="2"><b>KEY PRODUCT DETAILS</b></th>
											</tr>
											<tr>
												<td height="5" colspan="2"></td>
											</tr>
											<tr>
												<td class="Field">Product Identifier<font color="red">&nbsp;*</font></td>
												<td class="Field"><input type="text" name="T2" size="20"></td>
											</tr>
											<tr>
												<td class="Field">Product Type<font color="red">&nbsp;*</font></td>
												<td class="Field">
										  	<select size="1" name="D1" class = "FieldShort">
										  		<option value=0>Loan</option>
										  		<option value=0>...</option>										  		
											</select></td>
											</tr>											
											<tr>
												<td class="Field">Product Status<font color="red">&nbsp;*</font></td>
												<td class="Field">
										  	<select size="1" name="D2"  class = "FieldDate">
										  		<option value=0>Live</option>
										  		<option value=1>Not to be sold</option>
										  		<option value=2>Withdrawn</option>
											</select></td>
											</tr>
											<tr>
												<td class="Field">Term<font color="red">&nbsp;*</font></td>
												<td class="Field"><input class="FieldWidth90" type="text" name="T3" size="20">&nbsp;weeks</td>
											</tr>
											<tr>
												<td class="Field">Term Type<font color="red">&nbsp;*</font></td>
												<td class="Field">
										  	<select size="1" name="D3"  class = "FieldDate">
										  		<option value=0>Fixed</option>
										  		<option value=1>Variable</option>
											</select></td>
											</tr>
											</table>
									</td>
									<td>&nbsp;</td>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="20%">
												<col width="30%">
												<col width="30%" align=right>
												<col width="20%" align=right>
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="4"><b>PRODUCT INTEREST</b></th>
											</tr>
											<tr>
												<td height="5" colspan="4"></td>
											</tr>
											<tr>
												<td class="Field">Interest Rate<font color="red">&nbsp;*</font></td>
												<td class="Field">
													<input type="text" name="T23" size="20"> %</td>
												<td class="Field">&nbsp;</td>
												<td class="Field">
													&nbsp;</td>
											</tr>
											<tr>
												<td class="Field">Interest Calculated Frequency<font color="red">&nbsp;*</font></td>
												<td class="Field">
													<select size="1" name="D4" class = "FieldDate">
												<option value="0">Daily</option>
												<option value="1">Weekly</option>
												<option value="2">Monthly</option>
												<option value="3">Yearly</option>
											</select></td>												
												<td class="Field">Interest Added Frequency<font color="red">&nbsp;*</font></td>
												<td class="Field">
										  	<select size="1" name="D5" class = "FieldDate">
												<option value="0">Daily</option>
												<option value="1">Weekly</option>
												<option value="2">Monthly</option>
												<option value="3">Yearly</option>
											</select></td>
											</tr>
											<tr>
												<td class="Field">APR</td>
												<td class="Field"><input type="text" name="T24" size="20"> %</td>
												<td class="Field">&nbsp;</td>
												<td class="Field">&nbsp;</td>
											</tr>
											<tr>
												<td class="Field">PPI</td>
												<td class="Field">
												<input type="text" name="T30" size="20"> %</td>
												<td class="Field">&nbsp;</td>
												<td class="Field">&nbsp;</td>
											</tr>
											<tr height=18>
												<td class="Field">&nbsp;</td>
												<td class="Field">&nbsp;</td>
												<td class="Field">&nbsp;</td>
												<td class="Field">&nbsp;</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>									
									<td>
								&nbsp;</td>
									<td>&nbsp;</td>
									<td>
&nbsp;</td>
								</tr>															
								<tr>									
									<td valign=top>
								<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="40%">
												<col width="60%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="2"><b>PRODUCT ESR</b></th>
											</tr>
											<tr>
												<td height="5" colspan="2"></td>
											</tr>
											<tr>
												<td class="Field">ESR Sample 1/4 Term</td>
												<td class="Field">&pound;&nbsp;<input class="FieldWidth90" type="text" name="T4" size="15"></td>
											</tr>
											<tr>
												<td class="Field">ESR Sample 1/2 Term</td>
												<td class="Field">&pound;&nbsp;<input class="FieldWidth90" type="text" name="T25" size="15"> </td>
											</tr>
											<tr>
												<td class="Field">ESR Sample 3/4 Term</td>
												<td class="Field">&pound;&nbsp;<input class="FieldWidth90" type="text" name="T26" size="15"></td>
											</tr>
											<tr>
												<td class="Field">ESR End Period</td>
												<td class="Field">&nbsp;&nbsp;&nbsp;<input class="FieldWidth90" type="text" name="T27" size="15">&nbsp;days</td>
											</tr>
											<tr>
												<td class="Field">ESR Minimum Balance</td>
												<td class="Field">&pound;&nbsp;<input class="FieldWidth90" type="text" name="T28" size="15"></td>
											</tr>
											<tr>
												<td class="Field">ESR Valid Quote Period</td>
												<td class="Field">&nbsp;&nbsp;&nbsp;<input class="FieldWidth90" type="text" name="T29" size="15">&nbsp;days</td>
											</tr>
											</table>									
									</td>
									<td>&nbsp;</td>
									<td rowspan="4" valign=top>
									<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="20%">
												<col width="30%">
												<col width="1px">
												<col width="25%">
												<col width="25%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="5">ADDITIONAL DETAILS </th>
											</tr>
											<tr>
												<td height="5" colspan="5"></td>
											</tr>
											<tr>
												<td class="Field">Granularity</td>
												<td class="Field">&nbsp;&nbsp;&nbsp;<input type="text" name="T13" size="20"></td>
												<td>&nbsp;</td>
												<td class="Field">Required Credit History</td>
												<td class="Field">&nbsp;&nbsp;&nbsp;<input class="FieldWidth90" type="text" name="C2" value="">&nbsp;weeks
												</td>
											</tr>
											<tr>
												<td class="Field">Balance % for Min Payment</td>
												<td class="Field">&nbsp;&nbsp;&nbsp;<input type="text" name="T14" size="20">&nbsp;%</td>
												<td>&nbsp;</td>
												<td class="Field">Refinance Maximum</td>
												<td class="Field"><input  class="FieldWidth90" type="text" name="T19" size="20">%</td>
											</tr>
											<tr>
												<td class="Field">Admin Fee</td>
												<td class="Field">&pound;&nbsp;<input type="text" name="T15" size="20"></td>
												<td>&nbsp;</td>
												<td class="Field">Refinance Minimum</td>
												<td class="Field"><input  class="FieldWidth90" type="text" name="T20" size="20">%</td>
											</tr>
											<tr>
												<td class="Field">Admin Fee Type</td>
												<td class="Field">&nbsp;&nbsp;
													<select size="1" name="D7" class = "FieldDate">
														<option value="0">%</option>
														<option value="1">£</option>
													</select>
												</td>
												<td>&nbsp;</td>
												<td class="Field">&nbsp;</td>
												<td class="Field">&nbsp;</td>
											</tr>
											<tr>
												<td class="Field">Cancellation Period</td>
												<td class="Field">&nbsp;&nbsp;&nbsp;<input type="text" name="T16" size="20" class=fieldwidth30r> days</td>
												<td>&nbsp;</td>
												<td class="Field">PIA Product</td>
												<td class="Field">&nbsp;&nbsp;<input type="checkbox" name="piaProduct" size="20" class=checkbox onclick="javascript:isPIAProduct()"></td>
											</tr>
											<tr>
												<td class="Field">Confirmation Letter</td>
												<td class="Field">&nbsp;&nbsp;
										  	<select size="1" name="D8" class="FieldShort">
											  	<option value=0>&nbsp;</option>
										  		<option value=1>Letter1</option>
										  		<option value=2>Letter2</option>
											</select></td>
												<td>&nbsp;</td>
												<td class="Field">PIA Sale Date</td>
												<td class="Field">&nbsp;&nbsp;
													<input class="FieldDate" type="text" name="piaSaleDate" value="">
													<a href="#"><img id="btSaleDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
													<script type="text/javascript">
														<!--
															Calendar.setup({
															  inputField	: "piaSaleDate",
															  button		: "btSaleDate",
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
												<td class="Field">Detail Statement</td>
												<td class="Field">&nbsp;&nbsp;<input type="checkBox" name="T17" size="20" class=checkbox></td>
												<td>&nbsp;</td>
												<td class="Field">Consolidation Product</td>
												<td class="Field">&nbsp;&nbsp;<input type="checkBox" name="T32" size="20" class=checkbox></td>
											</tr>
											<tr>
												<td class="Field">Ledger Account Code</td>
												<td class="Field">&nbsp;&nbsp;&nbsp;<input type="text" name="T18" size="20"></td>
												<td>&nbsp;</td>
												<td class="Field">Cash Product</td>
												<td class="Field">&nbsp;&nbsp;<input type="checkBox" name="T33" size="20" class=checkbox></td>
											</tr>
											<tr>
												<td class="Field">Business Stream<font color="red">&nbsp;*</font></td>
												<td class="Field">&nbsp;&nbsp;
										  	<select size="1" name="D9" class="FieldShort">
											  	<option value=0>All</option>
											  	<option value=0>Business Stream1</option>
										  		<option value=1>Business Stream2</option>
											</select></td>
												<td>&nbsp;</td>
												<td class="Field">&nbsp;</td>
												<td class="Field">
													&nbsp;</td>
											</tr>
											<tr height="10">
												<td class="Field">&nbsp;</td>
												<td class="Field">
													&nbsp;</td>
												<td>&nbsp;</td>
												<td class="Field">&nbsp;</td>
												<td class="Field">&nbsp;</td>
											</tr>
											<tr height="10">
												<td class="Field">&nbsp;</td>
												<td class="Field">
													&nbsp;</td>
												<td>&nbsp;</td>
												<td class="Field">&nbsp;</td>
												<td class="Field">&nbsp;</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td valign=top>
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="40%">
												<col width="60%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="2"><b>PRODUCT PARTNERS</b></th>
											</tr>
											<tr>
												<td height="5" colspan="2"></td>
											</tr>
											<tr>
												<td class="Field">Product Partner<font color="red">&nbsp;*</font></td>
												<td class="Field">
													<select size="1" name="D6" class="FieldShort">
										  		<option value=0>Product Partner1</option>
										  		<option value=1>Product Partner2</option>
											</select></td>
											</tr>
											<tr>
												<td class="Field">3rd Party I.D. 
												Required</td>
												<td class="Field">
												<input type="checkbox" name="thirdPartyRequired" value="ON" class=checkbox onchange="javascript:isThirdPartyRequired()"></td>
											</tr>
											<tr>
												<td class="Field">3rd Party Identifier Prefix</td>
												<td class="Field">
										  	<input type="text" name="thirdPartyIdPrefix" size="20"> </td>
											</tr>											
											<tr>
												<td class="Field">Check Digit Algorithm</td>
												<td class="Field">
										  	<input type="text" name="checkDigitAlgorithm" size="20"></td>
											</tr>
										</table>
									</td>
									<td>&nbsp;</td>
								</tr>															
								<!--
								<tr>									
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>-->
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td nowrap><a href="javascript:doSave();" class="btnormal">Save</a>&nbsp;</td>						
						<td align="right">&nbsp;</td>
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