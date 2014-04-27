function checkEmpty(id){
	var e = document.getElementById(id);
	removeValMsg(e);
	if (e.value == ""){ createValMsg(e, "Vui lòng điền thông tin này."); return false; }
	return true;
}

function checkRegex(id, re, msg, required){
	var e = document.getElementById(id);
	if (checkEmpty(id)) {
		if (!re.test(e.value)) { createValMsg(e, msg); return false; }
	} else return !required;
}

function checkAjax(id, ajaxFunction, msg, required) {
    var e = document.getElementById(id);
    if (checkEmpty(id)) {
        var sss = ajaxFunction(e.value);
        if (!ajaxFunction(e.value)) {
            createValMsg(e, msg);
            return false;
        }
    } else return !required;
}

function checkConfirmPassword(id, id2){
	if (!checkEmpty(id2)) return false;
	var e = document.getElementById(id);
	var e2 = document.getElementById(id2);
	var msg = "Mật khẩu không trùng khớp! Vui lòng kiểm tra lại.";
	if (e.value != e2.value) { createValMsg(e, msg); return false; }
	return true;
}

function createValMsg(e, msg){
	var divValMsg = document.createElement("div");
	divValMsg.id = "valMsg" + e.id;
	divValMsg.className = "valMsg";
	divValMsg.innerHTML = msg;
	e.parentNode.appendChild(divValMsg);
	$(e.parentNode).addClass("divVal");
}

function removeValMsg(e){
	var divValMsg = document.getElementById("valMsg" + e.id);
	if (divValMsg != null){ 
		e.parentNode.removeChild(divValMsg);
		$(e.parentNode).removeClass("divVal");
	}
}