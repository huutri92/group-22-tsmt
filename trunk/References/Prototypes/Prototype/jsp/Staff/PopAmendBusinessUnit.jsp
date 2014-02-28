<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>
	<script language="javascript" src="../js/menu.js"></script>
	<link type="text/css" rel="stylesheet" href="../style/common.css">

	<script type="text/javascript" src="../js/calendar/calendar.js"></script>
	<script type="text/javascript" src="../js/calendar/calendar-setup.js"></script>
	<script type="text/javascript" src="../js/calendar/lang/calendar-en.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/calendar/calendar-blue.css">

	<title>Amend Business Unit</title>
</head>

<body class="body">
<form name="frmMorses" method="post">
	<table class="Form" border="0" width="100%" height="100%" cellpadding="0" cellspacing="0">
		<tr>
			<!-- Content Begin -->
			<!-- ------------------------------------------------------------------------------------------ -->
			<td valign="top" height="100%">
				<table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form">
					<colgroup>
						<col width="5">
						<col width="240">
						<col width="600">
						<col width="5">
					</colgroup>
					<tr>
						<td height="25" valign="top"><img src="../images/corner.gif" border="0" width="5" height="5"></td>
						<td height="25">&nbsp;</td>
						<td height="25" align="right"></td>
						<td height="25">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="4">
									<col width="150">
									<col width="5">
									<col>
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>Business Unit</b></td>
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
									<col width="100%">
								</colgroup>
								<tr>
									<td valign="top">
										<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
											<colgroup>
												<col width="30%" align="left">
												<col width="70%" align="left">
											</colgroup>
											<tr class="Field">
												<td>Unit Name</td>
												<td>Non payment of terms</td>
											</tr>
											<tr class="Field">
												<td>Unit Type</td>
												<td>Division</td>
											</tr>
											<tr class="Field">
												<td>Is Main</td>
												<td><input type=checkbox name="isMain"></td>
											</tr>
											<tr>
												<td class="Field">Start Date&nbsp;<font color="red">*</font></td>
												<td class="Field">
													<input class="FieldDate" type="text" name="startDate" size="20" value="12/01/2004">&nbsp;
													<img id="btStartDate" src="../images/calendar.gif" border="0" width="16" height="14" style="cursor:hand">
													<script type="text/javascript">
														<!--
															Calendar.setup({
															  inputField	: "StartDate",
															  button		: "btStartDate",
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
												<td class="Field">Finish Date</td>
												<td class="Field">
													<input class="FieldDate" type="text" name="finishDate" size="20" value="12/01/2005">&nbsp;
													<img id="btFinishDate" src="../images/calendar.gif" border="0" width="16" height="14" style="cursor:hand">
													<script type="text/javascript">
														<!--
															Calendar.setup({
															  inputField	: "FinishDate",
															  button		: "btFinishDate",
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
										</table>
									</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2">
							<a href="javascript:doClose()" class="btnormal">Save</a>&nbsp;
							<a href="javascript:doClose()" class="btnormal">Close</a>&nbsp;
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
<!--
	function doClose() {
		window.close();
		return;
	}
//-->
</script>
</body>
</html>
