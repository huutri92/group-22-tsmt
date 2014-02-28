<html>
<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/menu.js"></script>
	<script language="javascript" src="../js/common.js"></script>
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<title>Letter Management</title>
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
					menuCustomer(3);
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
						<col width="*">
						<col width="5">
					</colgroup>
					<tr>
						<td height="25" valign="top"><img src="../images/corner.gif" border="0" width="5" height="5"></td>
						<td height="25"><div id="error" class="error"><b><morses:error/>&nbsp;</b></div></td>
						<td height="25">&nbsp;</td>
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
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap>Letter Management</td>
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
							<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormWithBorder">
								<colgroup>
									<col width="20%">
									<col width="80%">
								</colgroup>
								<tr>
									<td class="Field" height="3" colspan="2"></td>
								</tr>
								<tr>
									<td class="Field">Letters Assigned to Territory</td>
									<td class="Field">
										<select class="FieldLong" name="" size="1" onchange="javascript:window.location.reload(true);">
											<option>&lt;business_unit_id&gt;</option>
											<option>&lt;business_unit_id&gt;</option>
											<option>&lt;business_unit_id&gt;</option>
											<option>&lt;business_unit_id&gt;</option>
											<option>&lt;business_unit_id&gt;</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="Field" height="3" colspan="2"></td>
								</tr>
								<tr>
									<td colspan="2">
										<div id="tbl-container" style="height:300px; width:100%;">
											<table border="0" width="100%" cellpadding="1" cellspacing="1" class="Form">
												<colgroup>
													<col width="2%">
													<col width="18%" align="left">
													<col width="30%" align="left">
													<col width="10%" align="left">
													<col width="10%" align="left">
													<col width="5%" align="center">
													<col width="15%" align="left">
													<col width="10%" align="left">
												</colgroup>
												<THEAD>
												<tr class="Section">
													<th class="title" nowrap>Customer ID</th>
													<th class="title">Name</th>
													<th class="title">Address</th>
													<th class="title">Previous Letter</th>
													<th class="title">Suggested Letter</th>
													<th class="title">Do Not Send</th>
													<th class="title">Reason for Not Sending</th>
													<th class="title">Preview Period (weeks)</th>
												</tr>
												</THEAD>
												<tr class="Field">
													<td><a href="javascript:doViewDetails();">&lt;CustomerI.D&gt;</a></td>
													<td>&lt;first name&gt;&lt;surname&gt;</td>
													<td>&lt;house name/number&gt;&lt;street name&gt;&lt;postcode&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td><input type="checkbox" class="checkbox"  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
													<td><select name="ListReason0" class="FieldNormal">
														<option>Reason 1</option>
														<option>Reason 2</option>
														<option>Reason 3</option>										
													</select>
													</td>
													<td></td>
												</tr>
												<tr class="Field2">
													<td><a href="javascript:doViewDetails();">&lt;CustomerI.D&gt;</a></td>
													<td>&lt;first name&gt;&lt;surname&gt;</td>
													<td>&lt;house name/number&gt;&lt;street name&gt;&lt;postcode&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')0" value=""></td>
													<td><select name="ListReason0" class="FieldNormal">
														<option>Reason 1</option>
														<option>Reason 2</option>
														<option>Reason 3</option>										
													</select>
													</td>
													<td></td>
												</tr>
												<tr class="Field">
													<td><a href="javascript:doViewDetails();">&lt;CustomerI.D&gt;</a></td>
													<td>&lt;first name&gt;&lt;surname&gt;</td>
													<td>&lt;house name/number&gt;&lt;street name&gt;&lt;postcode&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')1" value=""></td>
													<td><select name="ListReason0" class="FieldNormal">
														<option>Reason 1</option>
														<option>Reason 2</option>
														<option>Reason 3</option>										
													</select>
													</td>
													<td></td>
												</tr>
												<tr class="Field2">
													<td><a href="javascript:doViewDetails();">&lt;CustomerI.D&gt;</a></td>
													<td>&lt;first name&gt;&lt;surname&gt;</td>
													<td>&lt;house name/number&gt;&lt;street name&gt;&lt;postcode&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')2" value=""></td>
													<td><select name="ListReason0" class="FieldNormal">
														<option>Reason 1</option>
														<option>Reason 2</option>
														<option>Reason 3</option>										
													</select>
													</td>
													<td></td>
												</tr>
												<tr class="Field">
													<td><a href="javascript:doViewDetails();">&lt;CustomerI.D&gt;</a></td>
													<td>&lt;first name&gt;&lt;surname&gt;</td>
													<td>&lt;house name/number&gt;&lt;street name&gt;&lt;postcode&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')3" value=""></td>
													<td><select name="ListReason0" class="FieldNormal">
														<option>Reason 1</option>
														<option>Reason 2</option>
														<option>Reason 3</option>										
													</select>
													</td>
													<td></td>
												</tr>
												<tr class="Field2">
													<td><a href="javascript:doViewDetails();">&lt;CustomerI.D&gt;</a></td>
													<td>&lt;first name&gt;&lt;surname&gt;</td>
													<td>&lt;house name/number&gt;&lt;street name&gt;&lt;postcode&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')4" value=""></td>
													<td><select name="ListReason0" class="FieldNormal">
														<option>Reason 1</option>
														<option>Reason 2</option>
														<option>Reason 3</option>										
													</select>
													</td>
													<td></td>
												</tr>
												<tr class="Field">
													<td><a href="javascript:doViewDetails();">&lt;CustomerI.D&gt;</a></td>
													<td>&lt;first name&gt;&lt;surname&gt;</td>
													<td>&lt;house name/number&gt;&lt;street name&gt;&lt;postcode&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')5" value=""></td>
													<td><select name="ListReason0" class="FieldNormal">
														<option>Reason 1</option>
														<option>Reason 2</option>
														<option>Reason 3</option>										
													</select>
													</td>
													<td></td>
												</tr>
												<tr class="Field2">
													<td><a href="javascript:doViewDetails();">&lt;CustomerI.D&gt;</a></td>
													<td>&lt;first name&gt;&lt;surname&gt;</td>
													<td>&lt;house name/number&gt;&lt;street name&gt;&lt;postcode&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')6" value=""></td>
													<td><select name="ListReason0" class="FieldNormal">
														<option>Reason 1</option>
														<option>Reason 2</option>
														<option>Reason 3</option>										
													</select>
													</td>
													<td></td>
												</tr>
												<tr class="Field">
													<td><a href="javascript:doViewDetails();">&lt;CustomerI.D&gt;</a></td>
													<td>&lt;first name&gt;&lt;surname&gt;</td>
													<td>&lt;house name/number&gt;&lt;street name&gt;&lt;postcode&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')7" value=""></td>
													<td><select name="ListReason0" class="FieldNormal">
														<option>Reason 1</option>
														<option>Reason 2</option>
														<option>Reason 3</option>										
													</select>
													</td>
													<td></td>
												</tr>
												<tr class="Field2">
													<td><a href="javascript:doViewDetails();">&lt;CustomerI.D&gt;</a></td>
													<td>&lt;first name&gt;&lt;surname&gt;</td>
													<td>&lt;house name/number&gt;&lt;street name&gt;&lt;postcode&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')8" value=""></td>
													<td><select name="ListReason0" class="FieldNormal">
														<option>Reason 1</option>
														<option>Reason 2</option>
														<option>Reason 3</option>										
													</select>
													</td>
													<td></td>
												</tr>
												<tr class="Field">
													<td><a href="javascript:doViewDetails();">&lt;CustomerI.D&gt;</a></td>
													<td>&lt;first name&gt;&lt;surname&gt;</td>
													<td>&lt;house name/number&gt;&lt;street name&gt;&lt;postcode&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')9" value=""></td>
													<td><select name="ListReason0" class="FieldNormal">
														<option>Reason 1</option>
														<option>Reason 2</option>
														<option>Reason 3</option>										
													</select>
													</td>
													<td></td>
												</tr>
												<tr class="Field2">
													<td><a href="javascript:doViewDetails();">&lt;CustomerI.D&gt;</a></td>
													<td>&lt;first name&gt;&lt;surname&gt;</td>
													<td>&lt;house name/number&gt;&lt;street name&gt;&lt;postcode&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')10" value=""></td>
													<td><select name="ListReason0" class="FieldNormal">
														<option>Reason 1</option>
														<option>Reason 2</option>
														<option>Reason 3</option>										
													</select>
													</td>
													<td></td>
												</tr>
												<tr class="Field">
													<td><a href="javascript:doViewDetails();">&lt;CustomerI.D&gt;</a></td>
													<td>&lt;first name&gt;&lt;surname&gt;</td>
													<td>&lt;house name/number&gt;&lt;street name&gt;&lt;postcode&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td>&lt;letter type&gt;</td>
													<td><input type="checkbox" class="checkbox" onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')11" value=""></td>
													<td><select name="ListReason0" class="FieldNormal">
														<option>Reason 1</option>
														<option>Reason 2</option>
														<option>Reason 3</option>										
													</select>
													</td>
													<td></td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td>
							<a href="javascript:doOK();" class="btnormal" tabindex="26">Save</a>&nbsp;
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
<script language="javascript" type="text/javascript">
<!--
	function doViewDetails() {
		window.location.href = "../Customer/CustomerSummaryView.jsp";
	}	
	function doOK() {
		var reply = confirm("Do you wish to process?");
		if (reply) {
		}
		return;
	}
//-->
</script>
</body>
</html>