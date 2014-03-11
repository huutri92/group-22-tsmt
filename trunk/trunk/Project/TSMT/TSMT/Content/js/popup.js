$(document).ready(function () {
	var popUp = '';
	popUp += '<div id="dialog-overlay"></div>';
	popUp += '<div id="dialog-box">';
	popUp += '<div id="dialog-title"><div>Tiếp sức mùa thi</div></div>';
	popUp += '<div id="dialog-content">';
	popUp += '<div id="dialog-message"></div>';
	popUp += '<div id="dialog-buttons">';
	popUp += '<a href="#" class="popup-confirm">Confirm</a>';
	popUp += '<a href="#" class="popup-cancel">Close</a></div></div></div>';
	$('body').append(popUp);
	
	// user click on anywhere to hide the pop up
	$('#dialog-overlay, #dialog-box').click(function () {		
		$('#dialog-overlay, #dialog-box').fadeOut("slow");
		return false;
	});

	// window resize -> realign the pop up to the correct position
	$(window).resize(function () {
		if (!$('#dialog-box').is(':hidden')) showPopup();
	});

	// submit
	$('.popup-confirm').click(function () {
		window.location.href = this.href;
	});
});

function showPopup(message, href) {
	// get the screen height and width  
	var maskHeight = $(document).height();  
	var maskWidth = $(window).width();
	
	// calculate the values for center alignment
	var dialogTop =  (maskHeight/3) - ($('#dialog-box').height());  
	var dialogLeft = (maskWidth/2) - ($('#dialog-box').width()/2); 
	
    // assign values to the overlay and dialog box
	$('#dialog-overlay').css({ height: maskHeight, width: maskWidth }).fadeIn("slow");
	$('#dialog-box').css({ top: dialogTop, left: dialogLeft }).fadeIn("slow");
	
	// display the message
	$('#dialog-message').html(message);
	
	// assign link to buttons in case of there are more than one button
	$('.popup-confirm').attr("href", href);
	
	return false;
}