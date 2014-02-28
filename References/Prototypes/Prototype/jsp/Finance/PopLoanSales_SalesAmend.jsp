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
	<title>Customer Transaction Payment</title>
</head>

<body class="body">
<form name="frmMorses" method="post">
	<table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form">
					<colgroup>
						<col width="5">
						<col width="*">
						<col width="5">
					</colgroup>
					<tr>
						<td height="25" colspan="3">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="5">
									<col width="150">
									<col width="5">
									<col width="*">
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" nowrap class="Selected">Transactions</td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
								<colgroup>
									<col width="100%">
								</colgroup>
								<tr>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="20%">
												<col width="10%">
												<col width="70%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="5"><b>PERSONAL DETAILS</b></th>
											</tr>
											<tr class="field220">
												<td>Customer ID</td>
												<td class="highlightorange">AB0001</td>
												<td class="highlightorange">Mr. Vu Hong Hai</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td height="5"></td>
								</tr>
								<tr>
									<td valign="top">
										<table class="FormWithBorder" border="0" width="100%" cellpadding="0" cellspacing="0">
											<colgroup>
												<col width="25%">
												<col width="25%">
												<col width="1px">
												<col width="24%">
												<col width="26%">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="5"><b>ACCOUNT OVERVIEW</b></th>
											</tr>
											<tr>
												<td height="5" colspan="5"></td>
											</tr>
											<tr>
												<td class="Field">Transaction Type</td>
												<td class="Field"><input type="textbox" name="paymentValue0" value="Sales" class="FieldShort"></td>
												<td>&nbsp;</td>
												<td class="Field">Sale value <font color="#FF0000">*</font></td>
												<td class="Field"><input type="textbox" name="saleValue" value="" class="FieldDR"></td>
											</tr>
											<tr>
												<td valign="top" class="Field">&nbsp;</td>
												<td class="Field">&nbsp;</td>
												<td>&nbsp;</td>
												<td class="Field">Agreement Number<font color="#FF0000">*</font></td>
												<td class="Field"><span id="spanAgreementNumber">
													<select class="FieldDate" name="lstAgreementNumber">
														<option></option>
														<option>AN001234</option>
														<option>AN001235</option>
														<option>AN001236</option>
														<option>AN001237</option>
													</select>
													<input type="textbox" name="agreementNo" value="" class="FieldDate">
													</span>
												</td>
											</tr>
											<tr>
												<td valign="top" class="Field">&nbsp;</td>
												<td class="Field">&nbsp;</td>
												<td>&nbsp;</td>
												<td class="Field">Sale Date<font color="#FF0000">*</font></td>
												<td class="Field">
													<input class="FieldDate" type="text" id ="txtTransactionDate" name="transactionDate" size="20">&nbsp;
													<a href="#"><img id="btTransactionDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
													<script type="text/javascript">
														<!--
															Calendar.setup({
															  inputField	: "txtTransactionDate",
															  button		: "btTransactionDate",
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
												<td height="5" colspan="5"></td>
											</tr>
											<tr>
												<td class="Field">Product Type</td>
												<td class="Field">
													<select class="ListWidth160" name="lstIncomeAvailable2">
														<option></option>
														<option>Loan</option>
														<option>Card</option>
														<option>Insurance</option>
														<option>Staff loan</option>
													</select></td>
												<td>&nbsp;</td>
												<td class="Field">Refinance</td>
												<td class="Field"><input type="checkbox" class="checkbox" name="chkRefinance" onclick="javascript:switchCheckRefinance(this);"/></td>											
											</tr>
											<tr>
												<td class="Field">Product</td>
												<td class="Field">
													<select class="ListWidth160" name="lstProduct" onchange="javascript:doSelectProduct();">
														<option value="">22 weeks fixed term loan</option>
														<option value="">34 weeks fixed term loan</option>
														<option value="">50 weeks fixed term loan</option>
														<option value="CONSOL">Consolidation loan</option>
														<option value="II">Agros - Extra Card</option>
														<option value="">PPI</option>
														<option value="">Home Insurance</option>
														<option value="">Hamper</option>
														<option value="">Merchandise</option>
														<option value="">Balance</option>
													</select>
												</td>
												<td>&nbsp;</td>
												<td class="Field">New Account</td>
												<td class="Field">
												<input type="checkbox" name="chkNewAccount" class="checkbox" onclick="javascript:switchCheckNewAccount(this);" value="ON"/></td>
											</tr>
											<tr>
												<td class="Field">&nbsp;</td>
												<td class="Field">
													&nbsp;</td>
												<td>&nbsp;</td>
												<td class="Field">Item Identifier&nbsp;&nbsp;091234586<span id="spanItem0"> </td>
												<td class="Field"><span id="spanItem">
													<select class="fieldDate" name="lstItemIdentifier" disabled>
														<option></option>
														<option>AB0012340000000001</option>
														<option>AB0012340000000002</option>
													</select></span><input type="textbox" name="itemIdentifier" value="1234567891" class="fieldDate" disabled>&nbsp;									
													</span>
												</td>
											</tr>
											
										</table>
									</td>
								</tr>
								<tr class="Section">
									<td height="5"></td>
								</tr>
								<tr>
									<td>
										<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder">
											<colgroup>
												<col width="3%" align="left">
												<col width="8%" align="left">
												<col width="15%" align="left">
												<col width="4%" align="center">
												<col width="8%" align="right">
												<col width="5%" align="center">
												<col width="10%" align="right">
												<col width="12%" align="right">
												<col width="7%" align="right">
												<col width="9%" align="right">
												<col width="6%" align="right">
												<col width="9%" align="right">
											</colgroup>
											<tr class="Section">
												<th class="Title" colspan="12" align="center"><b>RECORD TRANSACTIONS - SALE</b></th>											</tr>
											<tr class="Section">
												<th class="Title"></th>
												<th class="Title">Account Number</th>
												<th class="Title">Product Description</th>
												<th class="Title">Term</th>
												<th class="Title">Agreement Number</th>
												<th class="Title">Status</th>
												<th class="Title">Expected Re-Payment(&pound;)</th>
												<th class="Title"><b>Ave Debit Performance(%)</b></th>
												<th class="Title"><b>Balance(&pound;)</b></th>
												<th class="Title"><b>Percentage Collected(%)</b></th>
												<th class="Title"><b>ESR</b></th>
												<th class="Title"><b>Refinance</b></th>			
											</tr>

											<tr class="Field">
												<td><input type="checkbox" class="checkbox" name="select0" onclick="javascript:doChecked(this);"/></td>
												<td>AB1234/01</td>
												<td>34 weeks fixed term loan</td>
												<td>6</td>
												<td>6</td>
												<td>LIVE</td>
												<td>100.00</td>
												<td>100.00</td>
												<td>10.00</td>
												<td>20</td>
												<td>100.00</td>
												<td><input type="textbox" name="payment0" value="" class="FieldDR" onchange="javascript:doCalculateTotal();" onblur="javascript:formatCurrency(this);"></td>

											</tr>
											<tr class="Field2">
												<td><input type="checkbox" name="select5" class="checkbox" onclick="javascript:doChecked(this);"/></td>
												<td>AB1234/02</td>
												<td>Agros - Extra Card</td>
												<td>7</td>
												<td>6</td>
												<td>LIVE</td>
												<td>15.00</td>
												<td>160.00</td>
												<td>253.00</td>
												<td>30</td>
												<td>100.00</td>
												<td><input type="textbox" name="payment1" value="" class="FieldDR" onchange="javascript:doCalculateTotal();" onblur="javascript:formatCurrency(this);"></td>
			
											</tr>
											<tr class="Field">
												<td><input type="checkbox" name="select1" class="checkbox" onclick="javascript:doChecked(this);"/></td>
												<td>AB1234/03</td>
												<td>22 weeks fixed term loan</td>
												<td>4</td>
												<td>6</td>
												<td>LIVE</td>
												<td>2.00</td>
												<td>260.00</td>
												<td>1,530.00</td>
												<td>18</td>
												<td>100.00</td>
												<td><input type="textbox" name="payment2" value="" class="FieldDR" onchange="javascript:doCalculateTotal();" onblur="javascript:formatCurrency(this);"></td>
											</tr>
											<tr class="Field2">
												<td><input type="checkbox" name="select2" class="checkbox" onclick="javascript:doChecked(this);" /></td>
												<td>AB1234/04</td>
												<td>34 weeks fixed term loan</td>
												<td>15</td>
												<td>6</td>
												<td>LIVE</td>
												<td>8.00</td>
												<td>265.00</td>
												<td>30.00</td>
												<td>47</td>
												<td>100.00</td>
												<td><input type="textbox" name="payment3" value="" class="FieldDR" onchange="javascript:doCalculateTotal();" onblur="javascript:formatCurrency(this);"></td>
											</tr>
											</table>
									</td>
								</tr>
								<tr class="Section">
									<td height="4"></td>
								</tr>
								<tr>
									<td align="right">Total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="textbox" name="total" value="" class="FieldDR" disabled>&nbsp;</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td>
							<span id="spanButton"><a href="javascript:doConfirmSale();" class="btnormal" id="btnCredit" >Confirm Sale</a></span>&nbsp;&nbsp;
							<a href="PopLoanSales.jsp" class="btnormal">Cancel</a>
						</td>
						<td>&nbsp;</td>
					</tr>
				</table>	
</form>
<script language="javascript">
<!--
	var thisForm = document.frmMorses;
	function initForm() {
		var currentDate = new Date();
		window.frmMorses.lstTransactionType.focus();
		thisForm.transactionDate.value = currentDate.getDate() + "/" + currentDate.getMonth() + "/" + currentDate.getYear();
		var subPayment = "payment";
		for (i=0;i<thisForm.elements.length;i++)
		{
			var e = thisForm.elements[i];
			if (e != null && e.name.substring(0, 7) == subPayment ) {
				e.disabled = true;
			}

		}


	}
	function doSelectProduct() {
		if (thisForm.lstProduct.value != 'II') {
			thisForm.lstItemIdentifier.disabled = true;
			thisForm.itemIdentifier.disabled = true;
		} else {	
			doSelectItemIdentifier();
			thisForm.lstItemIdentifier.disabled = false;
			thisForm.itemIdentifier.disabled = false;

		}
		thisForm.saleValue.value = '';
		if (thisForm.lstProduct.value == 'CONSOL') {
			thisForm.saleValue.value = '700.00';
		}

	}
	
	function doSelectTransactionType() {
		var index = thisForm .lstTransactionType.selectedIndex;
		if (index == 2) {
			window.location.href = "CustomerTransactionsPayment.jsp";
		} else if (index == 1) {
			window.location.href = "CustomerTransactionsCancel.jsp";
		}else if (index == 3) {
			window.location.href = "CustomerTransactionsAdjustment.jsp";
		}

	}
	
	function switchCheckNewAccount(obj) {
		var subName = "select";
		var subPayment = "payment";
		for (i=0;i<thisForm.elements.length;i++)
		{
			var e = thisForm.elements[i];
			if (e != null && e.name.substring(0, 6) == subName) {
				e.checked = false;
				e.disabled = obj.checked;
			}
			
			if (e != null && e.name.substring(0, 7) == subPayment ) {
				e.disabled = false;
			}

		}
		if (thisForm.lstProduct.value != 'II') {
			thisForm.lstItemIdentifier.disabled = true;
			thisForm.itemIdentifier.disabled = true;
		} else {
			thisForm.lstItemIdentifier.disabled = false;
			thisForm.itemIdentifier.disabled = false;
			
		}
		thisForm.agreementNo.disabled = !obj.checked;
	   	thisForm.lstAgreementNumber.disabled = !obj.checked;
	}
	function switchCheckRefinance(obj) {
		var subName = "select";
		var subPayment = "payment";

		for (i=0;i<thisForm.elements.length;i++)
		{
			var e = thisForm.elements[i];
			
			if (e != null && e.name.substring(0, 7) == subPayment ) {
				e.disabled = !obj.checked;
			}

		}
		if (thisForm.lstProduct.value != 'II') {
			thisForm.lstItemIdentifier.disabled = true;
			thisForm.itemIdentifier.disabled = true;
		} else {
			thisForm.lstItemIdentifier.disabled = false;
			thisForm.itemIdentifier.disabled = false;
			thisForm.agreementNo.disabled = true;
	   		thisForm.lstAgreementNumber.disabled = true;


		}
	}
	
	function doExistAgreementNumber() {
		document.getElementById("spanAgreementNumber").innerHTML = "<select class='FieldDate' name='lstAgreementNumber'>" + 
														"<option>AN001234</option>" + 
														"<option selected>AN001235</option>" +
														"<option>AN001236</option>" +
														"<option>AN001237</option>" +
														"</select>" + 
														"<input type='textbox' name='agreementNo' value='' class='FieldDR'/>";
	}
	function doAgreementNumber() {
				document.getElementById("spanAgreementNumber").innerHTML = "<select class='FieldDate' name='lstAgreementNumber'>" + 
														"<option></option>" + 
														"<option>AN001234</option>" + 
														"<option>AN001235</option>" +
														"<option>AN001236</option>" +
														"<option>AN001237</option>" +
														"</select>" + 
														"<input type='textbox' name='agreementNo' value='' class='FieldDR'/>";
	}
	
	function doConfirmSale() {
		document.frmMorses.saleValue.disabled = true;
		document.frmMorses.lstAgreementNumber.disabled = true;
		document.frmMorses.agreementNo.disabled = true;
		document.frmMorses.transactionDate.disabled = true;
		document.frmMorses.chkRefinance.disabled = true;
		document.frmMorses.chkNewAccount.disabled = true;
		var subName = "select";
		var subPayment = "payment";

		for (i=0;i<thisForm.elements.length;i++)
		{
			var e = thisForm.elements[i];
			if (e != null && e.name.substring(0, 6) == subName) {
				e.disabled = true;
			}
			if (e != null && e.name.substring(0, 7) == subPayment ) {
				e.disabled = true;
			}

		}
		document.getElementById("spanButton").innerHTML = "<a href='javascript:doConfirmSale();' class='btnormal' id='btnCredit' >Save</a>";
		
	}

	function doChecked(obj) {
		var subName = "select";
		var selectId = 0;
		for (i=0;i<thisForm.elements.length;i++)
		{
			var e = thisForm.elements[i];
			if (e != null && e.name.substring(0, 6) == subName && e.name != obj.name) {
				e.checked = false;
			}
		}
		selectId = parseInt(obj.name.substring(6, obj.name.length));
		if (selectId <= 4) {
			doAgreementNumber();
			doSelectItemIdentifier();
			thisForm.lstAgreementNumber.disabled = true;
			thisForm.agreementNo.disabled= true;
			thisForm.lstItemIdentifier.disabled = true;
			thisForm.itemIdentifier.disabled = true;
		} else {
			
			thisForm.lstItemIdentifier.disabled = false;
			thisForm.itemIdentifier.disabled = false;
			if (obj.checked) {
				
		   		doExistAgreementNumber();  
 				if (selectId  == 5) {
					doSelectItemIdentifier5();
					thisForm.agreementNo.disabled = true;
					thisForm.lstAgreementNumber.disabled = true;				
				}
				if (selectId  == 6) {
					doSelectItemIdentifier6();
					thisForm.agreementNo.disabled = true;
					thisForm.lstAgreementNumber.disabled = true;
				}
			} else {
				doSelectItemIdentifier();
				doAgreementNumber();
				
			}
			
		}
	}	
	function doSelectItemIdentifier5() {
		document.getElementById("spanItem").innerHTML = "<select class='fieldDate' name='lstItemIdentifier'>" +
														"<option selected>AB0012340000000001</option>" + 
														"<option>AB0012340000000002</option>" + "</select>";

	}
	function doSelectItemIdentifier6() {
		document.getElementById("spanItem").innerHTML = "<select class='fieldDate' name='lstItemIdentifier'>" +
												"<option>AB0012340000000001</option>" + 
												"<option selected>AB0012340000000002</option>" + "</select>";

	}
	function doSelectItemIdentifier() {
		document.getElementById("spanItem").innerHTML = "<select class='fieldDate' name='lstItemIdentifier'>" +
												"<option></option>" + 
												"<option>AB0012340000000001</option>" + 
												"<option>AB0012340000000002</option>" + "</select>";

	}

	
	function doRefinance() {
		var missingErr = false;
		if (thisForm.saleValue.value != null && thisForm.saleValue.value > 0) {
			missingErr = true;		
		} 
	
		if (missingErr) {
			window.location.href = "CustomerTransactionsSalePayment.jsp";
		} else {
			alert('Please input Sale value and Agreement Number!');
		}
	}

	function doCalculateTotal() {
		var sum = 0;
		if (parseInt(thisForm.payment0.value) > 0) {
			sum += parseInt(thisForm.payment0.value);
		}
		if (parseInt(thisForm.payment1.value) > 0) {
			sum += parseInt(thisForm.payment1.value);
		}
		if (parseInt(thisForm.payment2.value) > 0) {
			sum += parseInt(thisForm.payment2.value);
		}
		if (parseInt(thisForm.payment3.value) > 0) {
			sum += parseInt(thisForm.payment3.value);
		}
		if (parseInt(thisForm.payment4.value) > 0) {
			sum += parseInt(thisForm.payment4.value);
		}
		if (parseInt(thisForm.payment5.value) > 0) {
			sum += parseInt(thisForm.payment5.value);
		}
		if (parseInt(thisForm.payment6.value) > 0) {
			sum += parseInt(thisForm.payment6.value);
		}
		thisForm.total.value = sum;	
		formatCurrency(thisForm.total);
	}
//-->
</script>
</body>
</html>