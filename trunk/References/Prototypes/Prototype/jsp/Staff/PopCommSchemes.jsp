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
function sync() {
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
									<col width="180">
									<col width="5">									
									<col width="*">
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected" nowrap><b>Assign Commission Scheme</b></td>
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
													<col width="2%">
													<col width="10%" align="left">
													<col width="18%" align="left">
													<col width="12%" align="left">
													<col width="12%" align="right">
													<col width="12%" align="right">
													<col width="12%" align="right">
													<col width="12%" align="right">
													<col width="10%" align="right">
												</colgroup>
												<tr class="Section">
													<th class="Title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
													<th class="Title">Scheme Id</th>
													<th class="Title">Scheme Name</th>
													<th class="Title">Creation Date</th>
													<th class="Title">Current Users</th>
													<th class="Title">First Sale Commission (&pound;)</th>
													<th class="Title">Min Cash Commission (%)</th>
													<th class="Title">Max Cash Commission (%)</th>
													<th class="Title">Refinanced Cash</th>
												</tr>	
											</table>
										</div>
										</div>
									</td>
								</tr>
	
								<tr>
									<!-- This is table's content -->
									<td valign="top">
										<div id="dvData" style="position:relative; height: 150px; width:100%; overflow:auto" onscroll="sync()">
											<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
												<colgroup>
													<col width="2%">
													<col width="10%" align="left">
													<col width="18%" align="left">
													<col width="12%" align="left">
													<col width="12%" align="right">
													<col width="12%" align="right">
													<col width="12%" align="right">
													<col width="12%" align="right">
													<col width="10%" align="center">
												</colgroup>
												<tr class=field>
													<td><input type="radio" class="checkbox" name="select" value=""></td>
													<td>1001</td>
													<td><a href="javascript:doView()">Sales of  30 week loans</a></td>
													<td>22/12/2005</td>
													<td>10</td>
													<td>30</td>
													<td>30</td>
													<td>30.05</td>
													<td><input type="checkbox" class=checkbox name=refinancedCash checked disabled></td>
												</tr>
												<tr class=field2>
													<td>
													<input type="radio" class="checkbox" name="select" value=""></td>
													<td>1002</td>
													<td><a href="javascript:doView()";>Normal Cash</a></td>
													<td>
													22/12/2005</td>
													<td>20</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>
													<input type="checkbox" class=checkbox name=refinancedCash0 checked disabled></td>
												</tr>
												<tr class=field>
													<td>
													<input type="radio" class="checkbox" name="select" value=""></td>
													<td>1003</td>
													<td><a href="javascript:doView()";>Settlement Cash</a></td>
													<td>
													22/12/2005</td>
													<td>10</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>
													<input type="checkbox" class=checkbox name=refinancedCash1 checked disabled></td>
												</tr>
												<tr class=field2>
													<td>
													<input type="radio" class="checkbox" name="select" value=""></td>
													<td>1004</td>
													<td><a href="javascript:doView()";>Sales of  30 week loans</a></td>
													<td>
													22/12/2005</td>
													<td>10</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>
													<input type="checkbox" class=checkbox name=refinancedCash2 disabled></td>
												</tr>
												<tr class=field>
													<td>
													<input type="radio" class="checkbox" name="select" value=""></td>
													<td>1005</td>
													<td><a href="javascript:doView()";>Normal Cash</a></td>
													<td>
													22/12/2005</td>
													<td>10</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>
													<input type="checkbox" class=checkbox name=refinancedCash3 disabled></td>
												</tr>
												<tr class=field2>
													<td>
													<input type="radio" class="checkbox" name="select" value=""></td>
													<td>1006</td>
													<td><a href="javascript:doView()";>Sales of  30 week loans</a></td>
													<td>
													22/12/2005</td>
													<td>10</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>
													<input type="checkbox" class=checkbox name=refinancedCash4 disabled readonly></td>
												</tr>
												<tr class=field>
													<td>
													<input type="radio" class="checkbox" name="select" value=""></td>
													<td>1007</td>
													<td><a href="javascript:doView()";>Normal Cash</a></td>
													<td>
													22/12/2005</td>
													<td>10</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>
													<input type="checkbox" class=checkbox name=refinancedCash5 disabled></td>
												</tr>
												<tr class=field2>
													<td>
													<input type="radio" class="checkbox" name="select" value=""></td>
													<td>1008</td>
													<td><a href="javascript:doView()";>Settlement Cash</a></td>
													<td>
													22/12/2005</td>
													<td>10</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>
													<input type="checkbox" class=checkbox name=refinancedCash6 disabled></td>
												</tr>
												<tr class=field>
													<td>
													<input type="radio" class="checkbox" name="select" value=""></td>
													<td>1009</td>
													<td><a href="javascript:doView()";>Sales of  30 week loans</a></td>
													<td>
													22/12/2005</td>
													<td>10</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>
													<input type="checkbox" class=checkbox name=refinancedCash7 disabled></td>
												</tr>
												<tr class=field2>
													<td>
													<input type="radio" class="checkbox" name="select" value="" ></td>
													<td>1010</td>
													<td><a href="javascript:doView()";>Normal Cash</a></td>
													<td>
													22/12/2005</td>
													<td>10</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>
													<input type="checkbox" class=checkbox name=refinancedCash8 disabled></td>
												</tr>
												<tr class=field>
													<td>
													<input type="radio" class="checkbox" name="select" value="" ></td>
													<td>1011</td>
													<td><a href="javascript:doView()";>Settlement Cash</a></td>
													<td>
													22/12/2005</td>
													<td>10</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>
													<input type="checkbox" class=checkbox name=refinancedCash9 disabled></td>
												</tr>
												<tr class=field2>
													<td>
													<input type="radio" class="checkbox" name="select" value="" ></td>
													<td>1012</td>
													<td><a href="javascript:doView()";>Sales of  30 week loans</a></td>
													<td>
													22/12/2005</td>
													<td>10</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>
													<input type="checkbox" class=checkbox name=refinancedCash10 disabled></td>
												</tr>
												<tr class=field>
													<td>
													<input type="radio" class="checkbox" name="select" value="" ></td>
													<td>1013</td>
													<td><a href="javascript:doView()";>Normal Cash</a></td>
													<td>
													22/12/2005</td>
													<td>10</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>
													<input type="checkbox" class=checkbox name=refinancedCash11 disabled></td>
												</tr>
												<tr class=field2>
													<td>
													<input type="radio" class="checkbox" name="select" value="" ></td>
													<td>1014</td>
													<td><a href="javascript:doView()";>Settlement Cash</a></td>
													<td>
													22/12/2005</td>
													<td>10</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>
													<input type="checkbox" class=checkbox name=refinancedCash12 disabled></td>
												</tr>
												<tr class=field>
													<td>
													<input type="radio" class="checkbox" name="select" value="" ></td>
													<td>1015</td>
													<td><a href="javascript:doView()";>Sales of  30 week loans</a></td>
													<td>
													22/12/2005</td>
													<td>10</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>
													<input type="checkbox" class=checkbox name=refinancedCash13 checked disabled></td>
												</tr>
												<tr class=field2>
													<td>
													<input type="radio" class="checkbox" name="select" value="" ></td>
													<td>1016</td>
													<td><a href="javascript:doView()";>Normal Cash</a></td>
													<td>
													22/12/2005</td>
													<td>10</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>30.05</td>
													<td>
													<input type="checkbox" class=checkbox name=refinancedCash14 disabled></td>
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
							<table border="0" width="100%" cellpadding="0" cellspacing="0" class="FormWithBorder">
								<colgroup>
									<col width="20%">
									<col width="30%">
									<col width="1px">
									<col width="24%">
									<col width="26%">
								</colgroup>						
								<tr>
									<td class="Field">Start Date&nbsp;<font color="red">*</font></td>
									<td class="Field">
										<input class="FieldDate" type="text" name="startDate" size="20" value="">&nbsp;
										<img id="btStartDate" src="../images/calendar.gif" border="0" width="16" height="14" style="cursor:hand">
										<script type="text/javascript">
											<!--
												Calendar.setup({
												  inputField	: "StartDate",
												  button		: "btStartDate",
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
									<td>&nbsp;</td>
									<td class="Field"></td>
									<td class="Field">
									</td>
								</tr>
								
								</table>						
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="btnormal">
						<td>&nbsp;</td>
						<td colspan="2">
							<a class=btnormal2 href="javascript:doApply()" target="_self">Apply</a>&nbsp;
							<a class=btnormal href="javascript:doCancel()" target="_self">Cancel</a>&nbsp;						
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
	function doApply() {
		window.close();
	}	
	function doCancel() {
		window.close();
	}	
	function doView() {
		var width = 700;
		var height = 600;
		var request = "PopViewCommSchemeDetails.jsp";
		var newWin = window.open(request, "", centerWindow(width, height));
		newWin.opener = self;
		return;
	}					
</script>
</html>