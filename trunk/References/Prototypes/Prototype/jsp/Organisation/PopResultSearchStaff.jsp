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
	<title>Staff Search Results</title>
</head>

<body class="body">
<form name="frmMorses" method="post">
	<table class="Form" border="0" width="100%" height="100%" cellpadding="0" cellspacing="0">
		<colgroup>
			<col width="850">
		</colgroup>
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
						<td height="25"><b>&nbsp;</b></td>
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
									<col width="*">
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>SELECT STAFF MEMBER</b></td>
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
												<col width="2%">
												<col width="10%">
												<col width="60%">
												<col width="28%" align=right>
											</colgroup>
											<tr class="Section">
												<th class="Title" align="center"></td>
												<th class="Title" align="left">Staff ID</th>
												<th class="Title" align="left">Name</th>
												<th class="Title" width="15%">Job Title</th>
											</tr>
											<tr class="Field">
												<td><input type="radio" class=checkbox  class=checkbox name=c1></td>
												<td>1001</td>
												<td>First name + Surname</td>
												<td>&lt;job title&gt;</td>
											</tr>
											<tr class="Field2">
												<td><input type="radio" class=checkbox  class=checkbox name=c1 value="1" checked></td>
												<td>1002</td>
												<td>First name + Surname</td>
												<td>&lt;job title&gt;</td>
											</tr>
											<tr class="Field">
												<td><input type="radio" class=checkbox  class=checkbox name=c1 value="2"></td>
												<td>1003</td>
												<td>First name + Surname</td>
												<td>&lt;job title&gt;</td>
											</tr>
											<tr class="Field2">
												<td><input type="radio" class=checkbox  class=checkbox name=c1 value="3"></td>
												<td>1004</td>
												<td>First name + Surname</td>
												<td>&lt;job title&gt;</td>
											</tr>
											<tr class="Field">
												<td><input type="radio" class=checkbox  class=checkbox name=c1 value="4"></td>
												<td>1005</td>
												<td>First name + Surname</td>
												<td>&lt;job title&gt;</td>
											</tr>
											<tr class="Field2">
												<td><input type="radio" class=checkbox  class=checkbox name=c1 value="5"></td>
												<td>1006</td>
												<td>First name + Surname</td>
												<td>&lt;job title&gt;</td>
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
						<td colspan=2>
							<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormWithBorder">
								<colgroup>
									<col width="10%">
									<col width="20%">
									<col width="10%">
									<col width="20%">
									<col width="15%">
									<col width="25%">
								</colgroup>
								<tr class="Field">
									<td>Start Date <font color="#FF0000">*</font></td>
									<td>
										<input class="FieldDate" type="text" name="Startdate" size="20">&nbsp;
										<a href="#"><img id="btStartdate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
										<script type="text/javascript">
											<!--
												Calendar.setup({
												  inputField	: "Startdate",
												  button		: "btStartdate",
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
									<td>End Date</td>
									<td>
										<input class="FieldDate" type="text" name="endDate" size="20">&nbsp;
										<a href="#"><img id="btEndDate" src="../images/calendar.gif" border="0" width="16" height="14"></a>
										<script type="text/javascript">
											<!--
												Calendar.setup({
												  inputField	: "endDate",
												  button		: "btEndDate",
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
									<td>Main User</td>
									<td><input type="checkbox" class="checkbox"  name="C1" value="ON" checked style="padding-left:0px"></td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2">
							<a href="javascript:doSelect()" class="btnormal">Apply</a>&nbsp;&nbsp
							<a href="javascript:doClose()" class="btnormal">Cancel</a>
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
<!--
	function doSelect() {
		window.close();
	}
	function doViewStaff() {
		window.location="PopViewStaff.jsp";
	}	
	function doNewSearch() {
		window.location="PopSearchStaff.jsp";
	}
	function doClose() {
		window.close();
		return;
	}
//-->
</script>
</html>