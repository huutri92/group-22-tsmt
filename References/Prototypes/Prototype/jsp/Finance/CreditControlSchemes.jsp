<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<script language="javascript" src="../js/menu.js"></script>
	<script language="javascript" src="../js/common.js"></script>
	<title>Credit Control Schemes</title>
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
					menuFinance(1);
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
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Credit Control Schemes</b></td>
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
							<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
								<colgroup>
									<col width="2%" align="left">
									<col width="20%" align="left">
									<col width="48%" align="left">
									<col width="30%" align="left">
								</colgroup>
								<tr>
									<th class="Title" align="left"><input type="checkbox" class="checkbox" onclick="" name="selectAll" value="selectAll"></th>
									<th class="Title" align="left"><a href="CreditControlSchemes.jsp" title="Sort by Name" class="title"><img border="0" src="../images/down1.gif"> <b>Name</b></a></th>
									<th class="Title" align="left"><a href="CreditControlSchemes.jsp" title="Sort by Description" class="title"><b>Description</b></a></th>
									<th class="Title" align="left"><a href="CreditControlSchemes.jsp" title="Sort by Business Streams" class="title"><b>Used by Business Streams</b></a></th>
								</tr>
								<tr class="Field">
									<td><input type="checkbox" class="checkbox" onclick="" name="" value=""></td>
									<td><a href="CreditControlSchemeDetails.jsp">Scheme 1</a></td>
									<td>This credit control scheme is used for testing only</td>
									<td>stream 1, stream 3, stream 7</td>												
								</tr>
								<tr class="Field2">
									<td><input type="checkbox" class="checkbox" onclick="" name="" value=""></td>
									<td><a href="CreditControlSchemeDetails.jsp">Scheme 2</a></td>
									<td>This credit control scheme is used for testing only</td>
									<td>stream 4, stream 9</td>												
								</tr>
								<tr class="Field">
									<td><input type="checkbox" class="checkbox" onclick="" name="" value=""></td>
									<td><a href="CreditControlSchemeDetails.jsp">Scheme 3</a></td>
									<td>This credit control scheme is used for testing only</td>
									<td></td>
								</tr>
							</table>
							<!---Recordset finish======-->
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td>
							<a href="CreditControlSchemes.jsp" class="btnormal">Delete</a>&nbsp;&nbsp;
							<a href="CreateCreditControlScheme.jsp" class="btnormal">Setup Scheme</a>
						</td>
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