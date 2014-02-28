<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">	
	<link type="text/css" rel="stylesheet" href="../style/common.css">	
	<script type="text/javascript" src="../js/calendar/calendar.js"></script>
	<script type="text/javascript" src="../js/calendar/calendar-setup.js"></script>
	<script type="text/javascript" src="../js/calendar/lang/calendar-en.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/calendar/calendar-blue.css">
	
	<title>Staff Assignment</title>	
</head>

<body class="body">
<form name="frmMorses" method="post">
	<table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form">
		<colgroup>
			<col width="5">
			<col width="240">
			<col width="600">
			<col width="5">
		</colgroup>
		<tr>
			<td height="25" colspan="4">&nbsp;</td>
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
						<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Staff Assignment</b></td>
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
				<table class="Form" border="0" width="100%" cellpadding="0" cellspacing="0">
					<colgroup>
						<col width="30%">
						<col width="70%">
					</colgroup>
					<tr>
						<td class="Field" disabled>Staff name</td>
						<td class="Field"><input class="FieldLong" type="text" name="staffName" value="HOMAN, Hiedi" disabled></td>			
					</tr>
					<tr>
						<td class="Field">Job Title</td>
						<td class="Field"><input class="FieldLong" type="text" name="role" value="Backup for Sen. Manager" disabled></td>			
					</tr>					
					<tr>
						<td class="Field">From date <font color="red">*</font></td>
						<td class="Field">
							<input id="fromDate" type="text" class="FieldxD" name="fromDate" value="01/03/2005" maxlength="10">&nbsp;
							<img id="btFrom" src="../images/calendar.gif" border="0" width="16" height="14"> 
							<script type="text/javascript">
								Calendar.setup({
								  inputField	: "fromDate",
								  button		: "btFrom",
								  align		 : "Tr",
								  ifFormat	  : "%d/%m/%Y",
								  daFormat	  : "%d/%m/%Y",
								  timeFormat	: "24",
								  showsTime	 : false,
								  singleClick   : true
								});
							</script>
						</td>			
					</tr>
					<tr>
						<td class="Field">To date</td>
						<td class="Field">
							<input id="toDate" type="text" class="FieldxD" name="toDate" value="" maxlength="10">&nbsp;
							<img id="btTo" src="../images/calendar.gif" border="0" width="16" height="14"> 
							<script type="text/javascript">
								Calendar.setup({
								  inputField	: "toDate",
								  button		: "btTo",
								  align		 : "Tr",
								  ifFormat	  : "%d/%m/%Y",
								  daFormat	  : "%d/%m/%Y",
								  timeFormat	: "24",
								  showsTime	 : false,
								  singleClick   : true
								});
							</script>
						</td>
					</tr>
					<tr>
						<td class="Field">Main User</td>
						<td class="Field"><input type="checkbox" class="checkbox" name="select" value=""></td>
					</TR>
				</table>			
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr class="btnormal">
			<td>&nbsp;</td>
			<td colspan="2" align="left">
				<a class="btnormal" href="javascript:doOK();">Save</a>&nbsp;
				<a class="btnormal" href="javascript:doCancel();">Close</a>
			</td>
			<td>&nbsp;</td>
		</tr>
	</table>
</form>

<script language="javascript">
	function doOK() {
		window.close();
	}

	function doCancel() {
		window.close();
	}
</script>
</body>
</html>