<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>
	<script language="javascript" src="../js/menu.js"></script>
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<title>Address Information</title>
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
									<col>
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>Address Search Result</b></td>
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
												<col width="60%">
												<col width="20%" align=left>
												<col width="20%" align=right>
											</colgroup>
											<tr class="Section">
												<th class="Title" align="left">House</th>
												<th class="Title">Postcode</th>
												<th class="Title">Accept</th>
											</tr>
											<tr class=field>
												<td><a href="javascript:doViewAddress()">453, Nguyen Van Cu, Long Bien, Quan Thanh</a></td>
												<td>VN08 04</td>
												<td><a href="javascript:doAccept()">Accept</a></td>
											</tr>
											<tr class=field2>
												<td><a href="javascript:doViewAddress()">123, Ly Nam De, Ba Dinh</a></td>
												<td>VN08 04</td>
												<td><a href="javascript:doAccept()">Accept</a></td>
											</tr>
											<tr class=field>
												<td><a href="javascript:doViewAddress()">532, Nguyen Huu Huan, Hoan Kiem</a></td>
												<td>VN08 04</td>
												<td><a href="javascript:doAccept()">Accept</a></td>
											</tr>
											<tr class=field2>
												<td><a href="javascript:doViewAddress()">12, Thuy Khue, Tay Ho</a></td>
												<td>VN08 04</td>
												<td><a href="javascript:doAccept()">Accept</a></td>
											</tr>
											<tr class=field>
												<td><a href="javascript:doViewAddress()">23, Hoang Hoa Tham, Ba Dinh, Nguyen Van Cu</a></td>
												<td>VN08 04</td>
												<td><a href="javascript:doAccept()">Accept</a></td>
											</tr>
											<tr class=field2>
												<td><a href="javascript:doViewAddress()">42, Nguyen Trai, Thanh Xuan, Ly Nam De</a></td>
												<td>VN08 04</td>
												<td><a href="javascript:doAccept()">Accept</a></td>
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
							<a href="javascript:doNewSearch()" class="btnormal">New Search</a>&nbsp;&nbsp;
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
</body>
<script language="javascript">
	function doSelect() {
		window.close();
	}
	function doAccept() {
		window.close();
		return;
	}
	function doViewAddress() {
		window.location.href = "FindAddressDetailsPopup.jsp";
	}	
	//FindAddressDetailsPopup.jsp
	function doNewSearch() {
		window.location.href = "FindAddressPopup.jsp";
	}
	function doClose() {
		window.close();
		return;
	}
</script>
</html>