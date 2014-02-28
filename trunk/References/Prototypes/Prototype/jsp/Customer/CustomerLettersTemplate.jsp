<html>

<head>
	<meta http-equiv="Content-Language" content="en-us">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="../style/common.css">
	<script language="javascript" src="../js/menu.js"></script>
	<script language="javascript" src="../js/common.js"></script>
	<title>Customer Letters Template</title>
</head>

<body class="body">
<form name="frmMorses" method="post">
	<table border="0" width="100%" cellpadding="0" cellspacing="0" class="Form">
		<colgroup>
			<col width="5">
			<col width="240">
			<col width="600">
			<col width="5">
		</colgroup>
		<tr>
			<td height="25" valign="top">&nbsp;</td>
			<td height="25" colspan="2">&nbsp;</td>
			<td height="25">&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td colspan="2">
				<table width="100%" border="0" cellpadding="0" cellspacing="0" class="buttontop">
					<colgroup>
						<col width="4">
						<col width="120">
						<col width="5">									
						<col>
					</colgroup>
					<tr>
						<td><img src="../images/tab_01_01.gif" width="5" height="21" border="0"></td>
						<td align="center" background="../images/tab_01_02.gif" class="selected"><b><div id="title">Letter Template</div></b></td>
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
				<table border="0" width="100%" cellpadding="1" cellspacing="1" class="FormWithBorder">
					<tr>
						<td>
							<div id="content" style="overflow:auto; width:100%; height:500px; ">
								<br>
								<p>Letter TL1 (Terms)</p>
								<p>Mr Fred Bloggs</p>
								<p>1 Anywhere Lane</p>
								<p>Anytown</p>
								<p>Anywhere</p>
								<p>AB1 XYZ</p>
								<br>
								<p>Dear Mr Bloggs</p>
								<p align="center"><b>NON PAYMENT OF TERMS</b></p>
								<p>
									I am concerned to not that you have not maintained the repayments laid out under the correct terms of your <br>
									signed agreement(s).
								</p>
								<p>
									<table border="0" width="50%" cellpadding="0" cellspacing="0">
										<tr>
											<td><b>Account Number(s)</b></td>
											<td><b>Balance </b></td>
											<td><b>Terms</b></td>
										</tr>
										<tr>
											<td>&lt;Account 1&gt;</td>
											<td>&lt;Balance 1&gt;</td>
											<td>&lt;Weekly Terms 1&gt;</td>
										</tr>
										<tr>
											<td>&lt;Account 2&gt;</td>
											<td>&lt;Balance 2&gt;</td>
											<td>&lt;Weekly Terms 2&gt;</td>
										</tr>
									</table>
								</p>
								<p>If this is allowed to continue your account(s) will become seriously in arrears and affect your future trading with our company.</p>
								<p>Would you please ensure that your account(s) is/are brought up to date immediately and regular weekly payments are maintained.</p>
								<p>If you would like to discuss the content of this letter plaes ring myself at the local office, telephone number provided below.</p>
								<p>Your co-operation is appreciated.</p>
								<p>Yours sincerely<br>
								<br>
								<p>&lt;Manager Name&gt;</p>
								<br>
								<p>Morses Club</p>
								<p>Morses Local Office Telephone Number: 01234 5678910</p>
								<br>
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
				<div id="buttons">
					<a href="javascript:doNext();" class="btnormal" tabindex="26">Send</a>&nbsp;&nbsp;
					<a href="javascript:doClose();" class="btnormal" tabindex="26">Close</a>
				</div>
			</td>
			<td></td>
		</tr>
	</table>
</form>

<script language="javascript">
<!--
	function doNext() {
		var textArea = '<textarea rows="15" name="S1" cols="100%"></textarea>';
		var button   = '<a href="javascript:doSend();" class="btnormal" tabindex="26">Send</a>&nbsp;&nbsp;' + 
					   '<a href="javascript:doClose();" class="btnormal" tabindex="26">Close</a>';
		document.getElementById('title').outerHTML = 'Description';
		document.getElementById('content').outerHTML = textArea;
		document.getElementById('buttons').outerHTML = button;
	}
	function doSend() {
	}
	function doClose() {
		window.close();
	}
//-->
</script></body>

</html>