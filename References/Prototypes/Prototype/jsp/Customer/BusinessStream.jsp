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
	<title>Business Stream</title>
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
					menuFinance(3);
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
							<col width="420">
							<col width="420">
							<col width="5">
						</colgroup>
						<tr>
							<td height="25">&nbsp;</td>
							<td height="25" colspan="2">&nbsp;</td>
							<td height="25">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td colspan="2">
								<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
									<colgroup>
										<col width="4">
										<col width="130">
										<col width="5">									
										<col>
									</colgroup>
									<tr>
										<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
										<td style="padding-left:20px" align="left" background="../images/tab_01_02.gif" class="selected">
										<b>Business Stream </b></td>
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
								<!---Recordset begin======-->
								<table class="FormWithBorder" border="0" width="100%" cellpadding="1" cellspacing="1">
									<colgroup>
										<col width="3%">
										<col width="15%">
										<col width="15%" align="left">
										<col width="33%" align="left">
										<col width="18%" align="right">
										<col width="20%" align="right">
									</colgroup>
									<tr class="Section">
										<th class="Title">&nbsp;</th>
										<th class="Title"><b>Business Stream ID</b></th>
										<th class="Title" ><b>Name</b></th>
										<th class="Title" ><b>Description</b></th>
										<th class="Title" ><b>Credit Control Scheme</b></th>
										<th class="Title" ><b>Statement Frequency</b></th>
									</tr>
									<tr class="Field">
										<td><input type="checkbox" class="checkbox" onclick="" name="SelectedId" value=""></td>
										<td ><a class="" href="BusinessStreamView.jsp">16085723</a></td>
										<td  nowrap>Roll</td>
										<td  nowrap>Eleventh</td>
										<td  nowrap>153</td>
										<td  nowrap>12</td>
	
									</tr>
									<tr class="Field2">
										<td ><input type="checkbox" class="checkbox" onclick="" name="SelectedId" value=""></td>
										<td ><a class="" href="BusinessStreamView.jsp" >160565</a></td>
										<td nowrap>Butt</td>
										<td nowrap>Fifth</td>
										<td nowrap>128</td>
										<td nowrap>2</td>
									</tr>
									<tr class="Field">
										<td ><input type="checkbox" class="checkbox" onclick="" name="SelectedId" value=""></td>
										<td ><a class="" href="BusinessStreamView.jsp">160562</a></td>
										<td  nowrap>Carter</td>
										<td  nowrap>Second</td>
										<td  nowrap>175</td>
										<td  nowrap>42</td>

									</tr>
									<tr class="Field2">
										<td ><input type="checkbox" class="checkbox" onclick="" name="SelectedId" value=""></td>
										<td ><a class="" href="BusinessStreamView.jsp">160562</a></td>
										<td nowrap>Mean</td>
										<td nowrap>Second</td>
										<td nowrap>175</td>
										<td nowrap>42</td>

									</tr>
									<tr class="Field">
										<td><input type="checkbox" class="checkbox" onclick="" name="SelectedId" value=""></td>
										<td><a class="" href="BusinessStreamView.jsp">160562</a></td>
										<td nowrap>Meaner</td>
										<td nowrap>Second</td>
										<td nowrap>175</td>
										<td nowrap>42</td>
									</tr>
								</table>
								<!---Recordset finish======-->
							</td>
							<td>&nbsp;</td>
						</tr>
						<tr class="btnormal">
							<td>&nbsp;</td>
							<td>
								<a href="javascript:doAmend();" class="btnormal2">Amend</a>&nbsp;&nbsp;
								<a href="BusinessStreamAddNew.jsp" class="btnormal2">Add new</a>&nbsp;&nbsp;
								<a href="BusinessStream.jsp" class="btnormal2">Delete</a>
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
			window.self.location = "BusinessStreamAmend.jsp";				
		} else {
			alert("Please check an item!");	
		}
	}
	//-->
</script></body>

</html>