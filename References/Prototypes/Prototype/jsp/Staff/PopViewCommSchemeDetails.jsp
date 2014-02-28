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
<script>
function sync()
{
	var lft = document.all("dvData").scrollLeft;
	var top = document.all("dvData").scrollTop;
	
	// adjust the position of Header pane
	document.all("dvHeader").style.left = -lft;

	// adjust the position of Left pane
	document.all("dvLeft").style.top = -top;
}
</script>
</head>

<body class="body" onload="javascript:disableForm();">
<form name="frmMorses" method="post">
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
						<td height="25" align="right"><!--<a href="#">Search Commission Scheme</a>--></td>
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
									<col width="5">									
									<col width="4">
									<col width="150">
									<col width="5">
									<col width="5">
									<col width="4">
									<col width="150">
									<col width="5">
									<col>
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected">Commission Scheme</td>
									<td><img src="../images/tab_01_03.gif" width="5" height="21" border="0"></td>
									<td>&nbsp;</td>
									<td></td>
									<td align="center"></td>
									<td></td>
									<td>&nbsp;</td>
									<td></td>
									<td align="center"></td>
									<td></td>
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
									<col width="5%">
									<col width="15%">
									<col width="1px">
									<col width="15%">
									<col width="20%">
									<col width="1px">
									<col width="19%">
									<col width="1px">
									<col width="26%">
								</colgroup>						
								<tr>
									<td class="Field" colspan="2">Scheme Name&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field" colspan="2">Sales of  30 week loans</td>
									<td>&nbsp;</td>
									<td class="Field">Status</td>
									<td>&nbsp;</td>
									<td class="Field">Live</td>
								</tr>
								<tr>
									<td class="Field">&nbsp;</td>
									<td class="Field" align=right>&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field" align=right>Payment &nbsp;</td>
									<td class="Field" align=right>On minimum 
									sale value</td>
									<td>&nbsp;</td>
									<td class="Field">Re-finance Cash</td>
									<td>&nbsp;</td>
									<td class="Field">
									<input type="checkbox" class=checkbox name="refinanceFlag0" checked value=""></td>
								</tr>
								<tr>
									<td class="Field">&nbsp;</td>
									<td class="Field" align=right>1st Sale&nbsp;&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field" align=right>&pound;5&nbsp;</td>
									<td class="Field" align=right>&pound;100</td>
									<td>&nbsp;</td>
									<td class="Field">Standard Scheme</td>
									<td>&nbsp;</td>
									<td class="Field">
									<input type="checkbox" class=checkbox checked name="standardScheme" value=""></td>
								</tr>
								<tr>
									<td class="Field">&nbsp;</td>
									<td class="Field" align=right>2nd Sale&nbsp;&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field" align=right>&pound;10&nbsp;</td>
									<td class="Field" align=right>&pound;300</td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td>&nbsp;</td>
									<td class="Field">
									&nbsp;</td>
								</tr>								
								<tr>
									<td colspan="9"><b>COMMISSION BAND</b></td>
								</tr>															
								
								<tr>
									<td colspan="9">
										<table class="Form" border="0" width="100%" cellpadding="1" cellspacing="1">
											<colgroup>
												<col width="13%" align="center">
												<col width="18%"align="left">
												<col width="18%"align="left" >
												<col width="17%"align="left" >
												<col width="17%"align="left" >
												<col width="17%"align="left" >
											</colgroup>
											<tr class="Section" height="40">
												<th class="Title" background=../images/maxtrix.gif width="6%"></th>
												<th class="Title" style="padding-left:28px">
												Below &pound;&nbsp;500</th>
												<th class="Title" style="padding-left:10px">
												&pound;&nbsp;500&nbsp; 
												&amp; Above</th>
												<th class="Title" style="padding-left:10px">
												&pound;&nbsp;1000&nbsp; 
												&amp; Above</th>
												<th class="Title" style="padding-left:10px">
												&pound;&nbsp;1500 
												&amp; Above</th>
												<th class="Title" style="padding-left:10px">
												&pound;&nbsp;2500 
												&amp; Above</th>																								
											</tr>
											<tr class=field3>
												<th colspan=6 align=left class=titlelightyellow style="padding-left:2px"><b>Normal Cash</b></th>
											</tr>
											<tr class=Field>
												<th class="titleyellow">Below 
												20%</th>
												<td  style="padding-left:70px">
													10%</td>
												<td  style="padding-left:20px">
													10
													%</td>
												<td  style="padding-left:20px">
													 
													10%</td>
												<td  style="padding-left:20px">
													 
													10%</td>
												<td  style="padding-left:20px">
													
													10%</td>																								
											</tr>
											<tr class=field2>
												<th class="titleyellow">20&nbsp;% 
												&amp; Above</th>
												<td  style="padding-left:70px">
													
													10%</td>
												<td  style="padding-left:20px">
													10%</td>
												<td  style="padding-left:20px">
													
													10%</td>
												<td  style="padding-left:20px">
													
													10%</td>
												<td  style="padding-left:20px">
													
													10%</td>																								
											</tr>
											<tr class=Field>
												<th class="titleyellow">40&nbsp;% 
												&amp; Above</th>
												<td  style="padding-left:70px">
 
													10%</td>
												<td  style="padding-left:20px">
													
													10%</td>
												<td  style="padding-left:20px">
													
													10%</td>
												<td  style="padding-left:20px">
													
													10%</td>
												<td  style="padding-left:20px">
													
													10%</td>																								
											</tr>
											<tr class=field2>
												<th class="titleyellow">60&nbsp;% 
												&amp; Above</th>
												<td  style="padding-left:70px">
													 
													10%</td>
												<td  style="padding-left:20px">
													
													10%</td>
												<td  style="padding-left:20px">
													
													10%</td>
												<td  style="padding-left:20px">
													
													10%</td>
												<td  style="padding-left:20px">
													
													10%</td>																								
											</tr>
											<tr class=Field>
												<th class="titleyellow">80&nbsp;% 
												&amp; Above</th>
												<td  style="padding-left:70px">

													5%</td>
												<td  style="padding-left:20px">
													
													5%</td>
												<td  style="padding-left:20px">
													
													5%</td>
												<td  style="padding-left:20px">
													
													5%</td>
												<td  style="padding-left:20px">
													
													5%</td>																								
											</tr>
											<tr class=field3>
												<th colspan=6 align=left class=titlelightyellow style="padding-left:2px"><b>Refinance Cash</b></th>
											</tr>											
											<tr class=Field>
												<th class="titleyellow">Below 
												20%</th>
												<td  style="padding-left:70px">

													20%</td>
												<td  style="padding-left:20px">
													
													20%</td>
												<td  style="padding-left:20px">
													
													5%</td>
												<td  style="padding-left:20px">

													5%</td>
												<td  style="padding-left:20px">
													
													5%</td>																								
											</tr>
											<tr class=Field2>
												<th class="titleyellow">
												20 &nbsp;% 
												&amp; Above</th>
												<td  style="padding-left:70px">
													
													10%</td>
												<td  style="padding-left:20px">

													10%</td>
												<td  style="padding-left:20px">

													5%</td>
												<td  style="padding-left:20px">

													5%</td>
												<td  style="padding-left:20px">

													5%</td>																								
											</tr>
											<tr class=Field>
												<th class="titleyellow">
												40 &nbsp;% 
												&amp; Above</th>
												<td  style="padding-left:70px">

													5%</td>
												<td  style="padding-left:20px">

													5%</td>
												<td  style="padding-left:20px">

													5%</td>
												<td  style="padding-left:20px">

													5%</td>
												<td  style="padding-left:20px">

													5%</td>																								
											</tr>
											<tr class=Field2>
												<th class="titleyellow">
												60 &nbsp;% 
												&amp; Above</th>
												<td  style="padding-left:70px">

													5%</td>
												<td  style="padding-left:20px">

													8%</td>
												<td  style="padding-left:20px">

													7%</td>
												<td  style="padding-left:20px">

													7%</td>
												<td  style="padding-left:20px">

													8%</td>																								
											</tr>
											<tr class=field>
												<th class="titleyellow">
												80&nbsp;% 
												&amp; Above</th>
												<td  style="padding-left:70px">

													8%</td>
												<td  style="padding-left:20px">

													6%</td>
												<td  style="padding-left:20px">
													
													6%</td>
												<td  style="padding-left:20px">
													
													7%</td>
												<td  style="padding-left:20px">
													
													7%</td>																								
											</tr>
											</table>
									</td>
								</tr>															
							</table>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr class=btnormal>
						<td>&nbsp;</td>
						<td align=left>
						<a href="javascript:doClose();" class="btnormal">Close</a>&nbsp;</td>
						<td align=right>&nbsp;</td>						
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr align=left>
						<td>&nbsp;</td>
						<td colspan="2">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
</form>
<script language="javascript">
	function doClose() {
		window.close();
	}
</script>

</body>
</html>