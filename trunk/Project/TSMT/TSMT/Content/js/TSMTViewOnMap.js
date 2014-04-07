
var viewWindow = null;

function openWindowPopup(url, id) {

    if (viewWindow) {
        if (viewWindow.name == id) {
            viewWindow.focus();
            return false;
        } else {
            viewWindow.close();
        }
    }

    var w = 700;
    var h = 450;
    var l = (screen.width / 2) - (w / 2);
    var t = (screen.height / 2) - (h / 2) - 50;
    viewWindow = window.open(url + id, id, "top=" + t + ", left=" + l + ", width=" + w + ", height=" + h + ")");

    return false;
}