
var geocoder = new google.maps.Geocoder();

var timer;
var currentText = null;

function initialize() {
    var inputAddress = $("#Address");
    var suggest = document.createElement("div");
    suggest.id = "suggest";
    suggest.style.width = inputAddress.width() + 25 + "px";
    inputAddress[0].parentNode.appendChild(suggest);
    $(inputAddress).focus(function () {
        timer = setInterval(function () {
            if (currentText != $("#Address")[0].value) {
                currentText = $("#Address")[0].value;
                if (currentText.length > 6) {
                    goThere();
                } else {
                    $(suggest).empty();
                    $(suggest).hide();
                }
            }
        }, 500);
    });
    $(inputAddress).blur(function () {
        clearInterval(timer);
        $("#suggest").slideUp();
    });
}
function getAddressSuggested(address_components) {
    // extract address's components.
    isAddress = false;
    var address = homeNumber = streetName = ward = district = "";
    for (var i = 0; i < address_components.length; ++i) {
        var tmp = address_components[i].long_name; // variable keep component's content.
        switch (address_components[i].types[0]) { // type of the component's.
            case "street_number":
                isAddress = true;
                homeNumber = tmp;
                break;
            case "route":
                isAddress = true;
                streetName = tmp;
                break;
            case "sublocality":
                ward = tmp.replace("phường ", "").replace("Phường ", "");
                break;
            case "administrative_area_level_2":
                district = tmp.replace("quận ", "").replace("Quận ", "").replace(" district", "").replace(" District", "").replace(" DISTRICT", "").replace("District ", "").replace("DISTRICT ", "");
                break;
        }
    }

    if (!isAddress) return "";

    // format the address.
    address = homeNumber + " " + streetName;
    if (ward) { address += ", Phường " + ward }
    if (district) { address += ", Quận " + district }

    return address;
}
function showSuggestions(content) {
    var suggest = $("#suggest");
    $(suggest).empty();
    $(suggest).hide();
    suggest.append(content);
    $(suggest).slideDown();
}
function useSuggestion(address) {
    document.getElementById("Address").value = address;
    $("#suggest").slideUp();
}
function getSuggestions(results) {
    var counter = 0;
    var tmp = ""; // create content of new suggestions.
    for (var i = 0; i < results.length; ++i) {
        var formattedAddress = getAddressSuggested(results[i].address_components);
        if (formattedAddress != "") {
            tmp += "<a href='#' onclick='useSuggestion(\"" + formattedAddress + "\")'>" + formattedAddress + "</a></br>";
            ++counter;
        }
    }

    if (counter == 0) tmp = "<a href='#'>Không tìm thấy địa chỉ nào phù hợp</a><br/>";
    showSuggestions(tmp);
}
function goThere() {
    var address = document.getElementById("Address").value + " Ho Chi Minh city";
    geocoder.geocode({ 'address': address }, function (results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            var hasOnlyOneSuggestion = results.length == 1;
            getSuggestions(results, hasOnlyOneSuggestion, hasOnlyOneSuggestion);
        } else {
            console.log("Geocode was not successful for the following reason: " + status);
        }
    });
}