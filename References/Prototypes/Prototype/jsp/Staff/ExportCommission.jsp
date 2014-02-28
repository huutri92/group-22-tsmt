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
					menuStaff(3);
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
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>Export Commission to payroll/invoice</b></td>
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
	<td class=field>
	<div style="position:relative; width=100%; overflow:hidden;">
	<div id="dvHeader" style="position:relative; width:98.5%; left:0px; ">
					<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
					<colgroup>
						<col width="10%" align=center>
						<col width="30%" align="right">
						<col width="30%" align="right">
						<col width="30%" align="right">						
					</colgroup>
					<tr class="Section">
						<th class="Title" >Select</th>
						<th class="Title">Week Number</th>
						<th class="Title">Start Date</th>
						<th class="Title">End Date</th>
					</tr>	
					</table>
	</div>
	</div>
	</td>
</tr>

<tr>
<!-- This is table's content -->
<td valign="top">
<div id="dvData" style="position:relative; height: 250px; width:100%; overflow:auto" onscroll="sync()">
					<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
					<colgroup>
						<col width="10%" align=center>
						<col width="30%" align="right">
						<col width="30%" align="right">
						<col width="30%" align="right">						
					</colgroup>
					
					<tr class=field>
						<td><input type="radio" class=checkbox name=c1></td>
						<td>&lt;week_number&gt;</td>
						<td>&lt;start_date&gt;</td>
						<td>&lt;end_date&gt;</td>
					</tr>
					<tr class=field2>
						<td>
						<input type="radio" class=checkbox name=c1 value="1" checked></td>
						<td>&lt;week_number&gt;</td>
						<td>
						&lt;start_date&gt;</td>
						<td>&lt;end_date&gt;</td>
					</tr>
					<tr class=field>
						<td>
						<input type="radio" class=checkbox name=c1 value="2"></td>
						<td>&lt;week_number&gt;</td>
						<td>
						&lt;start_date&gt;</td>
						<td>&lt;end_date&gt;</td>
					</tr>
					<tr class=field2>
						<td>
						<input type="radio" class=checkbox name=c1 value="3"></td>
						<td>&lt;week_number&gt;</td>
						<td>
						&lt;start_date&gt;</td>
						<td>&lt;end_date&gt;</td>
					</tr>
					<tr class=field>
						<td>
						<input type="radio" class=checkbox name=c1 value="4"></td>
						<td>&lt;week_number&gt;</td>
						<td>
						&lt;start_date&gt;</td>
						<td>&lt;end_date&gt;</td>
					</tr>
					<tr class=field2>
						<td>
						<input type="radio" class=checkbox name=c1 value="5"></td>
						<td>&lt;week_number&gt;</td>
						<td>
						&lt;start_date&gt;</td>
						<td>&lt;end_date&gt;</td>
					</tr>
					<tr class=field>
						<td>
						<input type="radio" class=checkbox name=c1 value="6"></td>
						<td>&lt;week_number&gt;</td>
						<td>
						&lt;start_date&gt;</td>
						<td>&lt;end_date&gt;</td>
					</tr>
					<tr class=field2>
						<td>
						<input type="radio" class=checkbox name=c1 value="7"></td>
						<td>&lt;week_number&gt;</td>
						<td>
						&lt;start_date&gt;</td>
						<td>&lt;end_date&gt;</td>
					</tr>
					<tr class=field>
						<td>
						<input type="radio" class=checkbox name=c1 value="8"></td>
						<td>&lt;week_number&gt;</td>
						<td>
						&lt;start_date&gt;</td>
						<td>&lt;end_date&gt;</td>
					</tr>
					<tr class=field2>
						<td>
						<input type="radio" class=checkbox name=c1 value="9"></td>
						<td>&lt;week_number&gt;</td>
						<td>
						&lt;start_date&gt;</td>
						<td>&lt;end_date&gt;</td>
					</tr>
					<tr class=field>
						<td>
						<input type="radio" class=checkbox name=c1 value="10"></td>
						<td>&lt;week_number&gt;</td>
						<td>
						&lt;start_date&gt;</td>
						<td>&lt;end_date&gt;</td>
					</tr>
					<tr class=field2>
						<td>
						<input type="radio" class=checkbox name=c1 value="11"></td>
						<td>&lt;week_number&gt;</td>
						<td>
						&lt;start_date&gt;</td>
						<td>&lt;end_date&gt;</td>
					</tr>
					<tr class=field>
						<td>
						<input type="radio" class=checkbox name=c1 value="12"></td>
						<td>&lt;week_number&gt;</td>
						<td>
						&lt;start_date&gt;</td>
						<td>&lt;end_date&gt;</td>
					</tr>
					<tr class=field2>
						<td>
						<input type="radio" class=checkbox name=c1 value="13"></td>
						<td>&lt;week_number&gt;</td>
						<td>
						&lt;start_date&gt;</td>
						<td>&lt;end_date&gt;</td>
					</tr>
					<tr class=field>
						<td>
						<input type="radio" class=checkbox name=c1 value="14"></td>
						<td>&lt;week_number&gt;</td>
						<td>
						&lt;start_date&gt;</td>
						<td>&lt;end_date&gt;</td>
					</tr>
					<tr class=field2>
						<td>
						<input type="radio" class=checkbox name=c1 value="15"></td>
						<td>&lt;week_number&gt;</td>
						<td>
						&lt;start_date&gt;</td>
						<td>&lt;end_date&gt;</td>
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
						<td colspan="2"><a class=btnormal2 href="javascript:doCreateFile()" target="_self">Create Payroll File</a>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</td>
			<!-- ------------------------------------------------------------------------------------------ -->
			<!-- Content End -->
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
	function doCreateFile() {
		var width = 450;
		var height = 120;
		var newWin = window.open("../Staff/PopConfirm.jsp", "Confirm", centerWindow(width, height));
	}
	function doSort() {
		//
	}
</script>
</html>