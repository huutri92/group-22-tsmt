<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<script language="javascript" src="../js/menu.js"></script>		
	<title>Search Business Unit</title>
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
					menuOrganization(1);
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
						<td height="25"><b></b></td>
						<td height="25" align="right"></td>
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
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Search Business Unit</b></td>
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
									<col width="15%">
									<col width="85%">
								</colgroup>															
								<tr>
									<td class="Field">Unit Type</td>
									<td class="Field">
										<select size="1" name="unitType" class="FieldNormal">
											<option value="All"></option>
											<option value="Division">Division</option>
											<option value="Network">Network</option>
											<option value="Branch">Branch</option>
											<option value="Section">Section</option>
											<option value="Territory">Territory</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="Field">Unit Name</td>
									<td class="Field"><input class="FieldNormal" type="text" name="unitName" size="20"></td>												
								</tr>
								<tr>
									<td class="Field">Status</td>
									<td class="Field">
										<select size="1" name="unitType0" class="FieldNormal">
											<option value="All"></option>
											<option value="Live">Live</option>
											<option value="Withdraw">Withdraw</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="Field">Parent Business Unit</td>
									<td class="Field">
										<select size="1" name="parentBU" class="FieldNormal">
											<option value="All"></option>
											<option value="bu1">Business Unit 1</option>
											<option value="bu2">Business Unit 2</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="Field">Staff ID</td>
									<td class="Field"><input class="FieldNormal" type="text" name="staffId" size="20"></td>
								</tr>
								<tr>
									<td class="Field">Staff Name</td>									
									<td class="Field"><input class="FieldNormal" type="text" name="staffName" size="20"></td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2"><a href="javascript:doSearch()" class="btnormal">Search</a>&nbsp;
							<a class="btnormal" href="javascript:clearSearch()">Clear Search</a>&nbsp;
							<a class="btnormal" href="javascript:doNew()">Set up Unit</a>
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
<script lang="javascript">
frmMe = window.frmMorses;
function doSearch() {
	window.location.href="SearchResults.jsp";
}
function clearSearch() {
	frmMe.reset();
}
function doNew() {
	window.location.href="CreateBusinessUnit.jsp";
}
</script>

</html>