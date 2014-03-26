/* GLOBAL VARIABLES */
var a = [];
var recordPerPage;
var numberOfPage;
var currentPageIndex;


/* SORTING */
function sortBy(attrName, e){
	if (a.length == 0){
		alert("Please get the data first!");
		return false;
	}
	
	var tmp;
	var isAsc = $(e).hasClass("orderAsc");
	for (var i = 0; i < a.length-1; ++i){
		for (var j = i+1; j < a.length; ++j){
			if (compareBy(attrName, i, j, isAsc)){
				tmp = a[i];a[i] = a[j];a[j] = tmp;
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
	if (isAsc){return a[i][attrName] < a[j][attrName]}
	else {return a[i][attrName] > a[j][attrName]}
}

/* PAGING */
function loadNavigator(){
	numberOfPage = Math.ceil(a.length/recordPerPage);
	var tmp = "";
	tmp += "<a href='#' id='previousPage' class='pageIndex' onclick='goToPreviousPage()'>«</a>";
	for (var i = 1; i <= numberOfPage; ++i){
		tmp += "<a href='#' id='page" + i + "' class='pageIndex' onclick='goToPage(" + i + ")'>" + i + "</a>";
	}
	tmp += "<a href='#' id='nextPage' class='pageIndex' onclick='goToNextPage()'>»</a>";
	
	tmp += "<span style='margin-left: 40px'>Go to page <select onchange='goToPage(this.value)'>";
	for (var i = 1; i <= numberOfPage; ++i){
		tmp += "<option value=" + i + ">" + i + "</option>";
	}
	tmp += "</select><span>";
	
	tmp += "<span style='float: right'>Record per page <select onchange='changeRecordPerPage(this.value)'>";
	for (var i = 1; i <= a.length; ++i){
		tmp += "<option value=" + i + ">" + i + "</option>";
	}
	tmp += "</select><span>";
	$("#tfoot").html(tmp);
}

function changeRecordPerPage(x){
	recordPerPage = x;
	loadNavigator();
	goToPage(1);
}

function goToPreviousPage(){
	goToPage(currentPageIndex-1);
}

function goToNextPage(){
	goToPage(currentPageIndex+1);
}

/* SPECIALIZED ACTIONS */
function deleteData(id){
	var tr;
	for (var i = 0; i < a.length; ++i){
		if (a[i].id == id){
			tr = $("#tr" + a[i].id);
			a.splice(i, 1);
			break;
		}
	}
	$(tr).fadeOut("fast", function(){
		loadNavigator();
		if (currentPageIndex > numberOfPage){
			goToPage(currentPageIndex-1);
		} else {
			goToPage(currentPageIndex);
		}
	});
}