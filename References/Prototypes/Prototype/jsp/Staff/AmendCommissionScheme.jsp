<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script language="javascript" src="../js/common.js"></script>	
	<script language="javascript" src="../js/menu.js"></script>	
	<link type="text/css" rel="stylesheet" href="../style/common.css">	
	<title>Amend Commission Scheme</title>
<script>
function init() {
	refinanceCash();
}
function refinanceCash() {
	var disable = !document.frmMorses.refinanceFlag0.checked;
	var objName = "normRow01Col";
	for (i = 79; i<=105; i++) {
		if (i==84|| i == 85) {
			continue;
		}		
		document.getElementById(objName + i).disabled = disable;
		if (disable) {
			document.getElementById(objName + i).value = "";
		}
	}
	var obj2Name = "dp0";
	for (j=1; j<=4; j++) {
		if (!disable) {
			setLabel(document.getElementById(obj2Name + j));
		} else {
			document.getElementById("rc0" + j).innerHTML = "% & Above";
			if (j==1) {
				document.getElementById("rc00").innerHTML = "Below &pound;";
			}
		}
	}	
}
function setLabel(obj) {
	if (obj.name=="weeklyCashVolumeCol02") {
		document.getElementById("weeklyCashVolumeCol01").innerHTML = "Below &pound;" + obj.value;
	} else if (obj.name == "dp01") {
		document.getElementById("dp00").innerHTML = "Below " + obj.value + "%";
		if (document.frmMorses.refinanceFlag0.checked) {
			document.getElementById("rc00").innerHTML = "Below " + obj.value + "%";
			document.getElementById("rc01").innerHTML = obj.value + "% & Above";
		}
	} else if (obj.name == "dp02") {		
		if (document.frmMorses.refinanceFlag0.checked) {
			document.getElementById("rc02").innerHTML = obj.value + "% & Above";
		}
	} else if (obj.name == "dp03") {		
		if (document.frmMorses.refinanceFlag0.checked) {
			document.getElementById("rc03").innerHTML = obj.value + "% & Above";
		}
	} else if (obj.name == "dp04") {		
		if (document.frmMorses.refinanceFlag0.checked) {
			document.getElementById("rc04").innerHTML = obj.value + "% & Above";
		}
	}
}
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

<body class="body" onload="javascript:init();">
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
				<table width="100%" height="350" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td valign="bottom" height="250">&nbsp;</td>
					</tr>
					<tr>
						<td valign="bottom" height="100">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<colgroup>
								<col width="10">
								<col width="*">
								</colgroup>
								<tr>
									<td height="20"><img src="images/spacer.gif" height="1" width="10" border="0"></td>
									<td height="20"><a href="AmendCommissionScheme.jsp"><b>PREVIOUS</b></a></td>
								</tr>								
								<tr>
									<td height="20"><img src="images/spacer.gif" height="1" width="10" border="0"></td>
									<td height="20"><a href="AmendCommissionScheme.jsp"><b>NEXT</b></a></td>
								</tr>								
							</table>
						</td>
					</tr>
				</table>
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
									<col width="*">
								</colgroup>
								<tr>
									<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
									<td align="center" background="../images/tab_01_02.gif" class="selected">Commission Scheme</td>
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
									<col width="5%">
									<col width="15%">
									<col width="15%">
									<col width="20%">
									<col width="1px">
									<col width="19%">
									<col width="26%">
								</colgroup>
								<tr>
									<td class="Field" colspan="2">Scheme Name&nbsp;<font color="red">*</font></td>
									<td class="Field" colspan="2">
										<input class="FieldNormal" type="text" name="schemeName0" size="20" value="Sales of  30 week loans"></td>
									<td>&nbsp;</td>
									<td class="Field">Status</td>
									<td class="Field">
										<select size="1" name="status" class="FieldDate" tabindex="5">
											<option value="1">Live</option>
											<option value="2" selected>New</option>
											<option value="3">Withdraw</option>
										</select></td>
								</tr>
								<tr>
									<td class="Field">&nbsp;</td>
									<td class="Field" align=right>&nbsp;</td>
									<td class="Field" align=right>Payment &nbsp;</td>
									<td class="Field" align=right>On minimum 
									sale value</td>
									<td>&nbsp;</td>
									<td class="Field">Re-finance Cash</td>
									<td class="Field">
									<input type="checkbox" class=checkbox name="refinanceFlag0" value="" checked
										onclick="javascript:refinanceCash();"></td>
								</tr>
								<tr>
									<td class="Field">&nbsp;</td>
									<td class="Field" align=right>1st Sale&nbsp;&nbsp;</td>
									<td class="Field" align=right>&pound;<input class="FieldXDR" type="text" name="1stPayment7" size="20" value="5">&nbsp;</td>
									<td class="Field" align=right>&pound;<input class="FieldXDR" type="text" name="1stPayment8" size="20" value="100"></td>
									<td>&nbsp;</td>
									<td class="Field">Standard Scheme</td>
									<td class="Field">
									<input type="checkbox" class=checkbox name="standardScheme" value=""></td>
								</tr>
								<tr>
									<td class="Field">&nbsp;</td>
									<td class="Field" align=right>2nd Sale&nbsp;&nbsp;</td>
									<td class="Field" align=right>&pound;<input class="FieldXDR" type="text" name="1stPayment9" size="20" value="10">&nbsp;</td>
									<td class="Field" align=right>&pound;<input class="FieldXDR" type="text" name="1stPayment10" size="20" value="300"></td>
									<td>&nbsp;</td>
									<td class="Field">&nbsp;</td>
									<td class="Field">
									&nbsp;</td>
								</tr>
								<tr>
									<td colspan="7" height="5"></td>
								</tr>
								<tr>
									<td colspan="7"><b>COMMISSION BAND</b></td>
								</tr>
								<tr>
									<td colspan="7">
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
												<th id="weeklyCashVolumeCol01" class="Title" style="padding-left:28px">
												Below &pound;&nbsp;500</th>
												<th class="Title" style="padding-left:10px">
												&pound;&nbsp;<input type="text" name="weeklyCashVolumeCol02" size="20" class="FieldXDR" value="500"
																onblur="javascript:setLabel(this);">&nbsp; 
												&amp; Above</th>
												<th class="Title" style="padding-left:10px">
												&pound;&nbsp;<input type="text" name="weeklyCashVolumeCol03" size="20" class="FieldXDR" value="1000">&nbsp; 
												&amp; Above</th>
												<th class="Title" style="padding-left:10px">
												&pound;&nbsp;<input type="text" name="weeklyCashVolumeCol04" size="20" class="FieldXDR" value="1500"> 
												&amp; Above</th>
												<th class="Title" style="padding-left:10px">
												&pound;&nbsp;<input type="text" name="weeklyCashVolumeCol05" size="20" class="FieldXDR" value="2500"> 
												&amp; Above</th>																								
											</tr>
											<tr class=field3>
												<th colspan=6 align=left class=titlelightyellow style="padding-left:2px"><b>Normal Cash</b></th>
											</tr>
											<tr class=Field>
												<th id="dp00" class="titleyellow">Below 
												%</th>
												<td  style="padding-left:70px">
													<input type="text" name="normRow01Col01" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col32" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col56" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col57" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col58" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>																								
											</tr>
											<tr class=field2>
												<th class="titleyellow"><input type="text" name="dp01" class="FieldCellShort" value="10"
																			onblur="javascript:setLabel(this);">&nbsp;% 
												&amp; Above</th>
												<td  style="padding-left:70px">
													<input type="text" name="normRow01Col59" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col60" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col61" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col62" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col63" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>																								
											</tr>
											<tr class=Field>
												<th class="titleyellow"><input type="text" name="dp02" class="FieldCellShort" value="10"
																				onblur="javascript:setLabel(this);">&nbsp;% 
												&amp; Above</th>
												<td  style="padding-left:70px">
													<input type="text" name="normRow01Col64" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col65" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col66" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col67" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col68" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>																								
											</tr>
											<tr class=field2>
												<th class="titleyellow"><input type="text" name="dp03"class="FieldCellShort" value="10"
																				onblur="javascript:setLabel(this);">&nbsp;% 
												&amp; Above</th>
												<td  style="padding-left:70px">
													<input type="text" name="normRow01Col69" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col70" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col71" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col72" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col73" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>																								
											</tr>
											<tr class=Field>
												<th class="titleyellow"><input type="text" name="dp04" class="FieldCellShort" value="10"
																			onblur="javascript:setLabel(this);">&nbsp;% 
												&amp; Above</th>
												<td  style="padding-left:70px">
													<input type="text" name="normRow01Col74" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col75" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col76" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col77" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col78" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>																								
											</tr>
											<tr class=field3>
												<th colspan=6 align=left class=titlelightyellow style="padding-left:2px"><b>Refinance Cash</b></th>
											</tr>											
											<tr class=Field>
												<th id="rc00" class="titleyellow">Below %</th>
												<td  style="padding-left:70px">
													<input type="text" name="normRow01Col86" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col87" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col88" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col89" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col90" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>																								
											</tr>
											<tr class=Field2>
												<th id="rc01" class="titleyellow">&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; % 
												&amp; Above</th>
												<td  style="padding-left:70px">
													<input type="text" name="normRow01Col79" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col80" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col81" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col82" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col83" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>																								
											</tr>
											<tr class=Field>
												<th id="rc02" class="titleyellow">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; % 
												&amp; Above</th>
												<td  style="padding-left:70px">
													<input type="text" name="normRow01Col91" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col92" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col93" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col94" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col95" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>																								
											</tr>
											<tr class=Field2>
												<th id="rc03" class="titleyellow">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; % 
												&amp; Above</th>
												<td  style="padding-left:70px">
													<input type="text" name="normRow01Col96" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col97" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col98" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col99" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col100" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>																								
											</tr>
											<tr class=field>
												<th id="rc04" class="titleyellow">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; % 
												&amp; Above</th>
												<td  style="padding-left:70px">
													<input type="text" name="normRow01Col101" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col102" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col103" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col104" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>
												<td  style="padding-left:20px">
													<input type="text" name="normRow01Col105" size="20" class="FieldCellShort" value="10" title="Normal Commission Rate"> 
													%</td>																								
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
						<a href="javascript:doSave();" class="btnormal">Apply</a>&nbsp;
						<a href="javascript:doSave();" class="btnormal">Cancel</a>
						</td>
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
			</td>
			<!-- ------------------------------------------------------------------------------------------ -->
			<!-- Content End -->
		</tr>
	</table>
</form>
</body>
<script language="javascript">
//<!--
	function doSave() {
		window.location= "CommSchemes.jsp";
	}	
	//-->
</script>
</html>