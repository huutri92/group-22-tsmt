<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>	
	<script language="javascript" src="../js/menu.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">	
	<title>Customer list matched to file</title>
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
									<col width="5">
									<col width="150">
									<col width="5">
									<col width="*">
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap>
									Customer Matched To File</td>
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
						<col width="8%">
						<col width="10%" align=center>
						<col width="25%">
						<col width="20%">
						<col width="35%">
					</colgroup>
					<tr class="Section">
						<th class="Title" align="center"><input type="checkbox" class=checkbox  class=checkbox  onclick="javaScript:checkSelect('selectedItemIds');" name="selectAll" value="selectAll"></td>
						<th class="Title" align="center">Id</th>
						<th class="Title">Status</th>
						<th class="Title" align="left">Name</th>
						<th class="Title" align="left">N.I Number</th>
						<th class="Title" align="left">Address</th>
					</tr>
					<tr class=field>
						<td><input type="checkbox" class=checkbox  class=checkbox  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')" value=""></td>
						<td><a href="javascript:doViewStaff()">HA0001</a></td>
						<td>Active</td>
						<td>Mr. Toan Tong Duc</td>
						<td>0123 456 789</td>
						<td>453, Nguyen Van Cu, VN08 04</td>
					</tr>
					<tr class=field2>
						<td>
						<input type="checkbox" class=checkbox  class=checkbox  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')1" value=""></td>
						<td><a href="javascript:doViewStaff()">HA0002</a></td>
						<td>Active</td>
						<td>Mrs. Phuong Nguyen Thi Minh</td>
						<td>
						0123 456 790</td>
						<td>123, Ly Nam De, VN08 04</td>
					</tr>
					<tr class=field>
						<td>
						<input type="checkbox" class=checkbox  class=checkbox  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')2" value=""></td>
						<td><a href="javascript:doViewStaff()">HA0003</a></td>
						<td>
						Active</td>
						<td>
						Mr. Hanh Truong Ngoc </td>
						<td>
						0123 456 791</td>
						<td>532, Nguyen Huu Huan, VN08 04</td>
					</tr>
					<tr class=field2>
						<td>
						<input type="checkbox" class=checkbox  class=checkbox  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')3" value=""></td>
						<td><a href="javascript:doViewStaff()">HA0004</a></td>
						<td>
						Active</td>
						<td>
						Mr. Binh Pham Hai</td>
						<td>
						123 456 792</td>
						<td>12, Thuy Khue, VN08 04</td>
					</tr>
					<tr class=field>
						<td>
						<input type="checkbox" class=checkbox  class=checkbox  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')4" value=""></td>
						<td><a href="javascript:doViewStaff()">HA0005</a></td>
						<td>
						Active</td>
						<td>
						Mr. Tuan Anh Truong </td>
						<td>
						123 456 793</td>
						<td>23, Hoang Hoa Tham, VN08 04</td>
					</tr>
					<tr class=field2>
						<td>
						<input type="checkbox" class=checkbox  class=checkbox  onclick="javaScript:checkSelectAll('selectedItemIds');" name="selectedItemIds('1')5" value=""></td>
						<td><a href="javascript:doViewStaff()">HA0006</a></td>
						<td>
						Active</td>
						<td>
						Mr. Son Phan Mai</td>
						<td>
						123 456 794</td>
						<td>42, Nguyen Trai, VN08 04</td>
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
							<a href="javascript:doViewDetails()" class="btnormal">View Details </a>&nbsp;
							<a href="javascript:doUsedSaved()" class="btnormal">Used Saved Customer</a>&nbsp;
							<a href="javascript:doReject()" class="btnormal">Reject Customer</a>&nbsp;
							<a href="javascript:doAccept()" class="btnormal">Accept New Customer</a>&nbsp;							
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
	function doViewDetails() {
//		
		window.close(); 
		opener.location.href = "CustomerSummaryView.jsp";

	}	
	function doUsedSaved() {
//	
		window.close(); 
		opener.location.href = "CustomerSummary.jsp";
	}
	function doReject() {
//
		window.close(); 
		opener.location.href = "SearchCustomer.jsp";
	}	
	function doAccept() {
		window.close();
		opener.location.href = "SetupCustomerNext.jsp";
	}
			
	function doClose() {
		window.close();
		return;
	}
</script>
&lt;/htm