var is_chrome = navigator.userAgent.toLowerCase().indexOf('chrome') > -1;

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

    $('#dialog-overlay').click(function (e) {
        e.stopPropagation();
        $('#dialog-overlay, #dialog-box').fadeOut("slow");
        return false;
    });

    $('.popup-cancel').click(function (e) {
        e.stopPropagation();
        $('#dialog-overlay, #dialog-box').fadeOut("slow");
        return false;
    });

    // window resize -> realign the pop up to the correct position
    $(window).resize(function () {
        if (!$('#dialog-box').is(':hidden')) showPopup();
    });

    $('.popup-confirm').click(function () {
        if (this.className.indexOf("popup-remove") != -1) {
            if (tempt == "del") {
                callAjaxDelete(id);
            } else if (tempt == "remove") {
                callAjaxDenie(id);
            } else if (tempt == "removeOut") {
                callAjaxRemove(id);
            }
            $('#dialog-overlay, #dialog-box').fadeOut("slow");
            return false;
        } else {
            window.location.href = this.href;
        }
    });
});


id = null;
tempt = null;

function showPopup(message, href, aid, flag) {
    // get the screen height and width  
    var maskHeight = $(document).height();
    var maskWidth = $(window).width();

    // calculate the values for center alignment
    var dialogTop = (maskHeight / 3) - ($('#dialog-box').height());
    var dialogLeft = (maskWidth / 2) - ($('#dialog-box').width() / 2);

    id = aid;
    tempt = flag;
    // assign values to the overlay and dialog box
    if (is_chrome) {
        $('#dialog-overlay').css({ height: maskHeight, width: maskWidth }).show();
        $('#dialog-box').css({ top: dialogTop, left: dialogLeft }).fadeIn("fast");
    }
    else {
        $('#dialog-overlay').css({ height: maskHeight, width: maskWidth }).fadeIn("slow");
        $('#dialog-box').css({ top: dialogTop, left: dialogLeft }).fadeIn("slow");
    }

    // display the message
    $('#dialog-message').html(message);

    // assign link to buttons in case of there are more than one button
    $('.popup-confirm').attr("href", href);

    return false;
}