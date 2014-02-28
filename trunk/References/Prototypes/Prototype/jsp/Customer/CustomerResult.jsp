<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/menu.js"></script>	
	<script language="javascript" src="../js/common.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<title>Customer Search Result</title>
</head>

<body class="Body">
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
					menuCustomer(1);
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
				<!--Content begin-->
				<!---================================================================-->
				<table class="Form" border="0" width="100%" cellpadding="0" cellspacing="0">
					<colgroup>
						<col width="5">
						<col width="520">
						<col width="320">
						<col width="5">
					</colgroup>
					<tr>
						<td height="25" valign="top"><img src="../images/corner.gif" border="0" width="5" height="5"></td>
						<td height="25">&nbsp;</td>
						<td height="25">&nbsp;</td>
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
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Customer Search Result</b></td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
								</tr>
							</table>
						</td>
						<td >&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<!---Recordset begin======-->
							<table class="FormWithBorder" border="0" width="100%" cellpadding="1" cellspacing="1">
								<colgroup>
									<col width="12%" align="left">
									<col width="20%" align="left">
									<col width="47%" align="left">
									<col width="15%" align="left">
									<col width="6%"  align="left">
								</colgroup>
								<tr class="Field">
									<td colspan="7">
										<table class="Form" border="0" width="100%" cellpadding="0" cellspacing="0">
											<tr>
												<td>Customer on Phone?&nbsp;<input type="checkbox" class="checkbox" name="onPhone" checked></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr class="Section">
									<td colspan="7" height="4"></td>
								</tr>
								<tr>
									<th class="Title"><a href="CustomerResult.jsp" title="Sort by Customer ID" class="title"><img border="0" src="../images/down1.gif"> <b>Customer ID</b></a></th>
									<th class="Title"><a href="CustomerResult.jsp" title="Sort by Title" class="title"><b>Name</b></a></th>
									<th class="Title"><a href="CustomerResult.jsp" title="Sort by Correspondence Address" class="title"><b>Correspondence Address</b></a></th>
									<th class="Title"><a href="CustomerResult.jsp" title="Sort by Business Unit" class="title"><b>Business Unit</b></a></th>
									<th class="Title"><a href="CustomerResult.jsp" title="Sort by Status" class="title"><b>Status</b></a></th>
								</tr>
								<tr class="Field">
									<td align ="left" ><a href="javascript:openDataProtection()">AB1200</a></td>
									<td nowrap>Mr Eleventh Smith</td>
									<td>345 London</td>
									<td nowrap>Buckinghamshire</td>
									<td nowrap>New</td>
								</tr>
								<tr class="Field2">
									<td align = left><a href="javascript:openDataProtection()">AB1421</a></td>
									<td nowrap>Mr Fifth Alain</td>
									<td>54 London</td>
									<td nowrap>Reans</td>
									<td nowrap>Live</td>
								</tr>
								<tr class="Field">
									<td align = left><a href="javascript:openDataProtection()">PL1420</a></td>
									<td nowrap>Mr Second Tom</td>
									<td>2323 London</td>
									<td nowrap>Buckinghamshire</td>
									<td nowrap>New</td>
								</tr>
								<tr class="Field2">
									<td align = left><a href="javascript:openDataProtection()">SL1606</a></td>
									<td nowrap>Mr Butt Jerry</td>
									<td>2323 London</td>
									<td nowrap>Liverpool</td>
									<td nowrap>Live</td>
								</tr>
								<tr class="Field">
									<td align =left><a href="javascript:openDataProtection()">AS1607</a></td>
									<td nowrap>Mrs Carter Ann</td>
									<td>2323 London</td>
									<td nowrap>London</td>
									<td nowrap>Live</td>
								</tr>
							</table>
							<!---Recordset finish======-->
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td>
							<a href="SearchCustomer.jsp" class="btnormal2">New Search</a>&nbsp;&nbsp;
							<a href="SearchCustomer.jsp" class="btnormal">Revised Search</a>&nbsp;&nbsp;
							<a href="SetupCustomer.jsp" class="btnormal2">New Customer</a>
						</td>
						<td align="right">
						   <script language="javascript">
							<!--
								doNavigation();
							//-->
							</script>
						</td>
						<td>&nbsp;</td>
					</tr>
				</table>
				<!--Content finish-->
				<!---================================================================-->
		</tr>
	</table>
</form>
<script language="javascript">
<!--
	var thisForm = document.frmMorses;
	function jumpPage() {
	}

	function gotoPage(newPageNum) {
		return;
	}

	function enterKey() {
		if (window.event.keyCode=="13") {
			glbClick = true;
			jumpPage();
		}
	}
	function doAmend() {
		var bool = false;
		for (i=0;i<thisForm.SelectedId.length;i++)
		{
			if (thisForm.SelectedId[i].checked)
			{
				bool = true;
				
			}
		}
		if (bool) {
			window.self.location = "CustomerSummary.jsp";				
		} else {
			alert("Please check an item!");	
		}
	}
	
	function openDataProtection() {
		if (thisForm.onPhone.checked) {
			var width = 400;
			var height = 180;
			var newWin = window.open("DataProtectionPopup.jsp", "", centerWindow(width, height));
		} else {
			window.self.location = "CustomerSummaryView.jsp";
		}
	}
//-->
</script>
</body>

</html>