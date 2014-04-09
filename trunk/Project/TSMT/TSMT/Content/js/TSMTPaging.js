/* GLOBAL VARIABLES */
var TSMTPagingDataUsing = [];
var TSMTPagingData = [];
var recordPerPage;
var step = 5;
var numberOfPage = null;
var currentPageIndex;
var colspan = 5;

/* INITIALIZATION */
function init(s, c, data) {
    if (step != undefined) step = s;
    if (colspan != undefined) colspan = c;

    $("#TSMTSearching").append('Tìm kiếm <input type="text" id="txtSearch" onkeyup="searchNow(this.value)" />');
    $("#TSMTPaging").after('<tfoot><tr><td colspan="' + colspan + '"><div id="leftNavigator"></div><div id="rightNavigator"></div></td></tr></tfoot>');

    TSMTPagingData = TSMTPagingDataUsing = data;
	createLeftNavigator();
	
	recordPerPage = TSMTPagingDataUsing.length < step*2 ? step : step*2;
	createRightNavigator();
	goToPage(1);
}

/* SORTING */
function sortBy(attrName, e){
	if (TSMTPagingDataUsing.length == 0) return false;
	
	var tmp;
	var isAsc = $(e).hasClass("orderAsc");
	for (var i = 0; i < TSMTPagingDataUsing.length-1; ++i){
		for (var j = i+1; j < TSMTPagingDataUsing.length; ++j){
			if (compareBy(attrName, i, j, isAsc)){
			    tmp = TSMTPagingDataUsing[i];
			    TSMTPagingDataUsing[i] = TSMTPagingDataUsing[j];
			    TSMTPagingDataUsing[j] = tmp;
			}
		}
	}
	
	var el;
	var els = $(".order");
	for (var i = 0; i < els.length; ++i){
		el = els[i];
		$(el).removeClass();
		$(el).addClass("order");
		$(el).addClass("orderDes");
		$(el).addClass("orderHidden");
	}
	
	if (!isAsc){
		$(e).removeClass("orderDes");
		$(e).addClass("orderAsc");
	}
	$(e).removeClass("orderHidden");
	goToPage(currentPageIndex);
}

function compareBy(attrName, i, j, isAsc){
    var x = TSMTPagingDataUsing[i][attrName].toString();
    var y = TSMTPagingDataUsing[j][attrName].toString();
	return isAsc ? x < y : x > y;
}

/* PAGING */
function createLeftNavigator(){	
	numberOfPage = Math.ceil(TSMTPagingDataUsing.length/recordPerPage);
	
	var tmp = "";
	if (numberOfPage > 1){
		tmp += "<a href='#' id='firstPage' class='pageIndex' onclick='goTo(\"FirstPage\")'>«</a>";
		tmp += "<a href='#' id='previousPage' class='pageIndex' onclick='goTo(\"PreviousPage\")'>‹</a>";
		for (var i = 1; i <= numberOfPage; ++i)
			tmp += "<a href='#' id='page" + i + "' class='pageIndex' onclick=\"$('#cbbGoToPage').val('" + i + "').change()\">" + i + "</a>";
		tmp += "<a href='#' id='nextPage' class='pageIndex' onclick='goTo(\"NextPage\")'>›</a>";
		tmp += "<a href='#' id='lastPage' class='pageIndex' onclick='goTo(\"LastPage\")'>»</a>";
	}
	
	if (numberOfPage > 1) tmp += "<span style='margin-left: 20px'>Đến trang <select id='cbbGoToPage' onchange='goToPage(this.value)'>";
	else tmp += "<span style='margin-left: 20px;display: none;'>Đến trang <select id='cbbGoToPage' onchange='goToPage(this.value)'>";
	for (var i = 1; i <= numberOfPage; ++i) tmp += "<option value=" + i + ">" + i + "</option>";
	tmp += "</select><span>";
	
	$("#leftNavigator").html(tmp);
}

function createRightNavigator(){
	var tmp = "Số bản ghi mỗi trang <select id='cbbRecordPerPage' onchange='changeRecordPerPage(this.value)'>";
	tmp += "<option value='" + step + "'>" + step + "</option>"
	for (var i = step*2; i <= TSMTPagingDataUsing.length + step; i+=step) tmp += "<option value=" + i + ">" + i + "</option>";
	tmp += "</select>";
	$("#rightNavigator").html(tmp);
	$("#cbbRecordPerPage").val(recordPerPage).change();
}

function changeRecordPerPage(x){
	recordPerPage = x;
	createLeftNavigator();
	goToPage(1);
}

function goToPage(pageIndex){
    var t = $("#TSMTPaging");
	$(t).empty();
	if (pageIndex < 1){
		return true;
	}
	
	var tmp;
	if (TSMTPagingDataUsing.length == 0){
	    tmp = '<tr><td colspan="' + colspan + '" style="text-align: center;">Không tìm thấy kết quả nào</td></tr>';
		t.append(tmp);
	} else {
		var fromIndex = (pageIndex-1)*recordPerPage;
		var toIndex = pageIndex*recordPerPage;
		if (toIndex > TSMTPagingDataUsing.length){toIndex = TSMTPagingDataUsing.length}
		for (var i = fromIndex; i < toIndex; ++i) t.append(showData(i+1, TSMTPagingDataUsing[i]));
	}
	
	$("#page" + currentPageIndex).removeClass("pageActive");
	currentPageIndex = pageIndex;
	$("#page" + currentPageIndex).addClass("pageActive");
	
	currentPageIndex < 3 ? $("#previousPage").hide() : $("#previousPage").show();
	currentPageIndex == 1 ? $("#firstPage").hide() : $("#firstPage").show();
	currentPageIndex > numberOfPage - 2 ? $("#nextPage").hide() : $("#nextPage").show();
	currentPageIndex == numberOfPage ? $("#lastPage").hide() : $("#lastPage").show();
	if (numberOfPage == 0) $("#lastPage").hide();
}

function goTo(s){
	var x = 1;
	switch (s){
		case 'FirstPage'	: x = 1; break;
		case 'PreviousPage'	: x = currentPageIndex-1; break;
		case 'NextPage'		: x = parseInt(currentPageIndex)+1; break;
		case 'LastPage'		: x = numberOfPage; break;
	}
	$('#cbbGoToPage').val(x).change();
}

/* ACTIONS */
function searchNow(text){
	var r = false;
	TSMTPagingDataUsing = [];
	for (var i = 0; i < TSMTPagingData.length; ++i){
		if (matchSearch(i, text.toUpperCase())){
		    TSMTPagingDataUsing.push(TSMTPagingData[i]);
		}
	}

	createLeftNavigator();
	goToPage(1);
	
	var el;
	var els = $(".order");
	for (var i = 0; i < els.length; ++i){
		el = els[i];
		$(el).removeClass();
		$(el).addClass("order");
		$(el).addClass("orderDes");
		$(el).addClass("orderHidden");
	}
}