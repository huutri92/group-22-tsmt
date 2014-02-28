<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/menu.js"></script>
	<script language="javascript" src="../js/common.js"></script>
	<link type="text/css" rel="stylesheet" href="../style/common.css">

	<title>Product - Search Result</title>
</head>
<script language='javascript'>
function doSetup() {
	window.location.href = "SetupProduct.jsp";
}
function doSort() {
	//
}
function doView() {
	window.location.href="ViewProductDetails.jsp";
}
function doAmend()
{
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
					menuProduct(1);
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
									<col width="5">
									<col width="150">
									<col width="5">
									<col>
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Product List</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td class="buttontop" align="right">&nbsp;</td>
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
									<col width="18%">
									<col width="20%">
									<col width="30%">
									<col width="12%">
									<col width="10%">
									<col width="10%">
								</colgroup>
								<tr class="Section">									
									<th class="Title" align="left">
									<a class="title" title="Short by Product ID" href="javascript:doSort();">&nbsp;<b>Product ID</b></a></th>
									<th class="Title" align="left"><b>
									<a class="title" title="Short by Product Identifier" href="javascript:doSort();">Product Identifier</a></b></th>
									<th class="Title" align="left"><b>
									<a class="title" title="Short by Product Type" href="javascript:doSort();">Product Type</a></b></th>
									<th class="Title" align="left">
									<a class="title" title="Short by Product ID" href="javascript:doSort();"><img border="0" src="../images/down1.gif"></a><b><a class="title" title="Short by Status" href="javascript:doSort();"> 
									Status</a></b></th>
									<th class="Title" align="left"><b>
									<a class="title" title="Short by Term Type" href="javascript:doSort();">Term Type</a></b></th>
									<th class="Title" align="right"><b>
									<a class="title" title="Short by Term Type" href="javascript:doSort();">Term (weeks)</a></b></th>
								</tr>
								<tr class="Field">									
									<td>
									<a target="_self" href="javascript:doView();">1001</a></td>
									<td>L22</td>
									<td>Loan</td>
									<td>Live</td>
									<td>Fixed</td>
									<td align="right">52</td>

								</tr>															
								<tr class="Field2">
									<td>
									<a target="_self" href="javascript:doView();">1002</a></td>
									<td>CAC</td>
									<td>Card</td>
									<td>Live</td>
									<td>Variable</td>
									<td align="right">40</td>
								</tr>			
								<tr class="Field">
									<td>
									<a target="_self" href="javascript:doView();">1003</a></td>
									<td>SHA</td>
									<td>Savings</td>
									<td>Live</td>
									<td>Variable</td>
									<td align="right">36</td>
								</tr>	
								<tr class="Field2">
									<td>
									<a target="_self" href="javascript:doView();">1004</a></td>
									<td>CAC</td>
									<td>Card</td>
									<td>Live</td>
									<td>Variable</td>
									<td align="right">40</td>
								</tr>			
								<tr class="Field">
									<td>
									<a target="_self" href="javascript:doView();">1005</a></td>
									<td>SHA</td>
									<td>Savings</td>
									<td>Not to be sold</td>
									<td>Variable</td>
									<td align="right">36</td>
								</tr>	
								<tr class="Field2">
									<td>
									<a target="_self" href="javascript:doView();">1006</a></td>
									<td>CAC</td>
									<td>Card</td>
									<td>Not to be sold</td>
									<td>Variable</td>
									<td align="right">40</td>
								</tr>			
								<tr class="Field">
									<td>
									<a target="_self" href="javascript:doView();">1007</a></td>
									<td>SHA</td>
									<td>Savings</td>
									<td>Not to be sold</td>
									<td>Variable</td>
									<td align="right">36</td>
								</tr>	
								<tr class="Field2">
									<td>
									<a target="_self" href="javascript:doView();">1008</a></td>
									<td>CAC</td>
									<td>Card</td>
									<td>Not to be sold</td>
									<td>Variable</td>
									<td align="right">40</td>
								</tr>			
								<tr class="Field">
									<td>
									<a target="_self" href="javascript:doView();">1009</a></td>
									<td>SHA</td>
									<td>Savings</td>
									<td>Not to be sold</td>
									<td>Variable</td>
									<td align="right">36</td>
								</tr>																								
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td nowrap><a href="javascript:doSetup();" class="btnormal">Set up Product</a>&nbsp;&nbsp;</td>						
						<td align="right">
							<!---Navigation begin -->
							<script language="javascript">
								<!--
								doNavigation();
								//-->
							</script>
							<!---Navigation finish -->
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