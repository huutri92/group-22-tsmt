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
	<title>Setup Customer</title>
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
				<table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form">
					<colgroup>
						<col width="5">
						<col width="420">
						<col width="420">
						<col width="5">
					</colgroup>
					<tr>
						<td height="25" valign="top"><img src="../images/corner.gif" border="0" width="5" height="5"></td>
						<td height="25">&nbsp;</td>
						<td height="25" align="right">&nbsp;</td>
						<td height="25">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
								<colgroup>
									<col width="4">
									<col width="85">
									<col width="5">
									<col width="5">
									
									<col width="4">
									<col width="85">
									<col width="5">
									<col width="5">
									
									<col width="4">
									<col width="85">
									<col width="5">
									<col width="5">
									
									<col width="4">
									<col width="85">
									<col width="5">
									<col>
								</colgroup>
								<tr>
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif"><a href="CustomerDetailMain.jsp"class="buttontop"><b>Main Info</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="10" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected"><b>Address Info</b></td>
									<td><img src="../images/tab_01_03.gif" width="10" height="21" border="0"></td>
									<td>&nbsp;</td>
									
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif"><a href="CustomerDetailAccount.jsp"class="buttontop"><b>Accounts</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="10" height="21" border="0"></td>
									<td>&nbsp;</td>
																		
									<td><img src="../images/tab_02_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_02_02.gif" ><a href="CustomerDetailEventLog.jsp"class="buttontop"><b>Event Logs</b></a></td>
									<td><img src="../images/tab_02_03.gif" width="10" height="21" border="0"></td>
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
									<col width="23%">
									<col width="1px">
									<col width="25%">
									<col width="2%">
									<col width="1px">
									<col width="23%">
									<col width="25%">
									<col width="2%">
								</colgroup>
								<tr>
									<td colspan="4"><b>Collection Address&nbsp;<font color="red">*</font></b></td>
									<td colspan="4"><b>&nbsp;Correspondence Address&nbsp;<font color="red">*</font></b></b></td>
								</tr>
								<tr>
									<td class="Field">Postcode&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field"><input type="text" class="FieldxShort" maxLength="20" name="collectionPostCode1" size="20" value ="81">&nbsp;<a href="javascript:doLookupPostcode()"><img id="btFinishDate0" src="../images/search.gif" border="0" width="15" height="15"></a></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field"><input type="text" class="FieldxShort" maxLength="20" name="collectionPostCode2" size="20" value ="83">&nbsp;<a href="javascript:doLookupPostcode()"><img id="btFinishDate0" src="../images/search.gif" border="0" width="15" height="15"></a></td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Address&nbsp;<font color="red">*</font>	</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldNormal" type="text" name="collectionAddress1" size="20" value ="03 Charton Street"></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldNormal" type="text" name="collectionAddress3" size="20" value ="15 Downling road"></td>
									<td class="Field">
									&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldNormal" type="text" name="collectionAddress2" size="20"></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldNormal" type="text" name="collectionAddress4" size="20"></td>
									<td class="Field">
										&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Town&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldNormal" type="text" name="town1" size="20" value ="Acont"></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldNormal" type="text" name="town1" size="20" value ="Jila"></td>
									<td class="Field">
									&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">County&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldNormal" type="text" name="county1" size="20" value ="Liverpool"></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldNormal" type="text" name="county2" size="20" value ="LonDon"></td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Status&nbsp;<font color="red">*</font></td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="status3">
											<option value="QAS">QAS</option>
											<option value="Non-QAS">Non-QAS</option>
											<option value="No-QAS">No-QAS</option>
										</select>
									</td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="status3">
											<option value="QAS">QAS</option>
											<option value="Non-QAS">Non-QAS</option>
											<option value="No-QAS">No-QAS</option>

										</select>
									</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>

								<tr>
									<td colspan="4"><b>Previous Address</b></td>
								</tr>
								<tr>
									<td class="Field">Postcode</td>
									<td>&nbsp;</td>
									<td class="Field"><input type="text" class="FieldxShort" maxLength="20" name="collectionPostCode3" size="20">&nbsp;<a href="javascript:doLookupPostcode()"><img id="btFinishDate0" src="../images/search.gif" border="0" width="15" height="15"></a></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">
									&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Address</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldNormal" type="text" name="collectionAddress5" size="20"></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">
									&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldNormal" type="text" name="collectionAddress6" size="20"></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Town</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldNormal" type="text" name="town3" size="20"></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">County</td>
									<td>&nbsp;</td>
									<td class="Field"><input class="FieldNormal" type="text" name="County" size="20"></td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>
								<tr>
									<td class="Field">Status</td>
									<td>&nbsp;</td>
									<td class="Field">
										<select size="1" name="status3">
											<option value=""></option>
											<option value="QAS">QAS</option>
											<option value="Non-QAS">Non-QAS</option>
											<option value="No-QAS">No-QAS</option>

										</select>
									</td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">&nbsp;</td>
								</tr>

							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2"><a href="CustomerDetailAddress.jsp" class="btnormal">Save</a></td>
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