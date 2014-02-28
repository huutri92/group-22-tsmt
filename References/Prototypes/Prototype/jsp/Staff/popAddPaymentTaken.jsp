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
	<title>CAP System</title>
</head>
<script>
function sync()
{
	var lft = document.all("dvData").scrollLeft;
	var top = document.all("dvData").scrollTop;
	
	// adjust the position of Header pane
	document.all("dvHeader").style.left = -lft;

}
</script>
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
									<col width="300">
									<col width="5">									
									<col width="80%">
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>PAYMENTS TAKEN</b></td>
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
						<table border=0 width="100%" cellpadding=0 cellspacing=0 class="FormWithBorder">																	

<tr>
<!-- This is table's content -->
<td valign="top">
<div id="dvData" style="position:relative; height: 211px; width:100%; overflow:auto" onscroll="sync()">
					<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
					<colgroup>
						<col width="25%" align="right">
						<col width="25%" align="right">
						<col width="50%" align="left">
					</colgroup>
					
					<tr class="Section">
						<th class="Title">Amount (&pound;)</th>
						<th class="Title">Date</th>
						<th class="Title">Notes</th>
					</tr>						
					<tr class=field>
						<td>10.15</td>
						<td>11/11/2005</td>
						<td>
						Payment note 1</td>
					</tr>
					<tr class=field2>
						<td>10.15</td>
						<td>11/11/2005</td>
						<td>
						Payment note 2</td>
					</tr>
					<tr class=field>
						<td>10.15</td>
						<td>11/11/2005</td>
						<td>
						Payment note 3</td>
					</tr>
					<tr class=field2>
						<td>10.15</td>
						<td>11/11/2005</td>
						<td>
						Payment note 4</td>
					</tr>
					<tr class=field>
						<td>10.15</td>
						<td>11/11/2005</td>
						<td>
						Payment note 5</td>
					</tr>		

					<tr class=field>
						<td>
													<input class="FieldNormal" type="text" name="amount3" value="" size="20"style="width:100%"></td>
						<td>
													<input class="FieldDate" type="text" name="TakenDate3" value="" style="width:80%">
													<a href="#">
													<img id="btTakenDate3" src="../images/calendar.gif" border="0" width="16" height="14"></a>
													<script type="text/javascript">
														<!--
															Calendar.setup({
															  inputField	: "TakenDate3",
															  button		: "btTakenDate3",
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
						<td>
						<input class="FieldNormal" type="text" name="Notes3" value="" size="20"style="width:100%"></td>
					</tr>						
					</table>
</div>
</td>
</tr>
</table>

						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2">
							<a class=btnormal2 href="javascript:doCancel()" target="_self">Save</a>&nbsp;
							<a class=btnormal href="javascript:doCancel()" target="_self">Close</a>&nbsp;						
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
	function doAdd() {
		window.location.href="popAddPaymentTaken.jsp";
	}	
	function doCancel() {
		window.close();
	}		
</script>
</html>