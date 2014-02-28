<html>
<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>
	<script language="javascript" src="../js/menu.js"></script>
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<title>List All User Group</title>
</head>

<script language="JavaScript">
function checkClearAll()
{
	if (document.forms[0].chkAll.checked == 1) {
		for (var i=0;i<document.forms[0].elements.length;i++) {
			if (!document.forms[0].elements[i].disabled) {
				var e = document.forms[0].elements[i];
				e.checked = 1;
			}
		}
	} else {
		for (var i=0;i<document.forms[0].elements.length;i++) {
			var e = document.forms[0].elements[i];
			e.checked = 0;
		}
	}
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
			<td valign="top" rowspan="2" bgcolor="#E0E9F2" height="100%"> <script language="javascript">
					<!--
					menuSystemAdmin(1);
					//-->
				</script> </td> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<!-- Left Menu End --> 

			<!-- Top Begin --> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<td valign="top" bgcolor="#E0E9F2" height="35" align="right"> <script language="javascript">
					<!--
					menuTop('HaiVH');
					//-->
				</script> </td> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<!-- Top End --> 
		</tr> 
		<tr> 
			<!-- Content Begin --> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<td valign="top" height="*"> <table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form"> 
					<colgroup> 
					<col width="5"> 
					<col width="240"> 
					<col width="600"> 
					<col width="%"> 
					</colgroup> 
					<tr> 
						<td height="25" valign="top"><img src="../images/corner.gif" border="0" width="5" height="5"></td> 
						<td height="25">&nbsp;</td> 
						<td height="25" align="right"></td> 
						<td height="25">&nbsp;</td> 
					</tr> 
					<tr> 
						<td>&nbsp;</td> 
						<td colspan="2"> <table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop"> 
								<colgroup> 
								<col width="4"> 
								<col width="150"> 
								<col width="5"> 
								<col width="%"> 
								</colgroup> 
								<tr> 
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td> 
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>List All User Group</b></td> 
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td> 
									<td>&nbsp;</td> 
								</tr> 
							</table></td> 
						<td>&nbsp;</td> 
					</tr> 
					<tr> 
						<td>&nbsp;</td> 
						<td colspan="2"> <table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormWithBorder"> 
								<colgroup> 
								<col width="20%"> 
								</colgroup> 
								<tr> 
									<td> 
										<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1"> 
											<colgroup> 
											<col width="5%"> 
											<col width="85%"> 
											</colgroup> 
											<tr class="Section"> 
												<th class="Title" align="center"> <input type="checkbox" name="chkAll" class="checkbox" onclick="checkClearAll()" value="ON"> </th> 
												<th class="Title" align="left">User Group Name</th> 
											</tr> 
										<c:forEach var="temp" items="${groupListActionForm.groupCol}">
											<tr> 
												<td class="Field" align="center"><input type="checkbox" name="chkSelect" class="checkbox"></td> 
												<td class="Field"><a href="ViewUserGroup.jsp"><c:out value='${temp.groupName}'/></a></td> 
											</tr> 
										</c:forEach>
										</table>
									</td> 
								</tr> 
							</table></td> 
						<td>&nbsp;</td> 
					</tr> 
					<tr class="btnormal"> 
						<td>&nbsp;</td> 
						<td colspan="2">
							<a class=btnormal href="AmendUserGroup.jsp">Amend</a>&nbsp;&nbsp;
							<a class=btnormal href="ListAllUserGroup.jsp">Delete</a>&nbsp;&nbsp;
							<a class=btnormal href="CreateUserGroup.jsp">Add New</a>
						</td> 
						<td>&nbsp;</td> 
					</tr> 
				</table></td> 
			<!-- ------------------------------------------------------------------------------------------ --> 
			<!-- Content End --> 
		</tr> 
	</table> 
</form> 
</body>
</html>
