<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>	
	<script language="javascript" src="../js/menu.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">	
	<title>Week Numbering</title>
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
					menuSystemAdmin(1);
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
						<td height="25"><b>&nbsp;</b></td>
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
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>Week Numbering</b></td>
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
								</colgroup>
								<tr>
									<td>
										<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
											<colgroup>
												<col width="20%">
												<col width="20%">
												<col width="40%">
											</colgroup>
											<tr class="Section">
												<th class="Title" nowrap align="left">Year Reference</th>
												<th class="Title" nowrap align="left">Start Date</th>
												<th class="Title" nowrap align="left">Number of Weeks</th>
											</tr>
											<tr class="field">
												<td><a href="javascript:doView();">2004</a></td>
												<td>22/04/2004</td>
												<td>52</td>
											</tr>
											<tr class="Field2">
												<td><a href="javascript:doView();">2005</a></td>
												<td>22/04/2005</td>
												<td>26</td>
											</tr>
											<tr class="field">
												<td><a href="javascript:doView();">2006</a></td>
												<td>22/10/2005</td>
												<td>&lt;week_number&gt;</td>
											</tr>
											<tr class="Field2">
												<td>
												<a href="javascript:doView();">&lt;Year_Reference&gt;</a></td>
												<td>&lt;start_date&gt;</td>
												<td>&lt;week_number&gt;</td>
											</tr>
											<tr class="field">
												<td>
												<a href="javascript:doView();">&lt;Year_Reference&gt;</a></td>
												<td>&lt;start_date&gt;</td>
												<td>&lt;week_number&gt;</td>
											</tr>
											<tr class="field2">
												<td>
												<a href="javascript:doView();">&lt;Year_Reference&gt;</a></td>
												<td>&lt;start_date&gt;</td>
												<td>&lt;week_number&gt;</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<!-- Navigation begin -->
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td><a class=btnormal href="javascript:doNew();" target="_self">New</a></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<!-- Navigation finish -->
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2">
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
<script language="javascript">
	function doView() {
		var width = 450;
		var height = 150;
		var newWin = window.open("../Security/PopAddWeekNumber.jsp", "WeekNumberDetails", centerWindow(width, height));
	}

	function doNew() {
		var width = 450;
		var height = 150;
		var newWin = window.open("../Security/PopAddWeekNumber.jsp", "WeekNumberDetails", centerWindow(width, height));
	}
	function gotoPage() {
		//
	}
	function doSort() {
		//
	}
	
</script>
</body>
</html>