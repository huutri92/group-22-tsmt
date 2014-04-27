
var geocoder = new google.maps.Geocoder();

var BenThanh = { lat: 10.7719285, lng: 106.6983282, text: "1028 Chợ Bến Thành, Phường Bến Thành, Quận 1" };
var map;
var marker;
var addressLat;
var addressLng;
var timer;
var currentText = null;

function initialize(place) {
    if (place == undefined) {
        place = BenThanh;
    }
    else {
        // record the position of the current input.
        addressLat = place.lat;
        addressLng = place.lng;
    }

    var map_options = {
        center: new google.maps.LatLng(place.lat, place.lng),
        zoom: 16,
        panControl: false,
        mapTypeControl: false,
        streetViewControl: false,
    }
    map = new google.maps.Map(document.getElementById('map_canvas'), map_options);
    document.getElementById("Address").value = place.text;
    putMarker(place.lat, place.lng);

    

    map.controls[google.maps.ControlPosition.TOP_LEFT].push(document.getElementById('searchBox'));

    var inputAddress = $("#Address");
    var suggest = document.createElement("div");
    suggest.id = "suggest";
    suggest.style.width = "399px";
    suggest.style.top = $(inputAddress).offset().top + inputAddress.height() + 2 + "px";
    suggest.style.left = $(inputAddress).offset().left + "px";
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
    });
    $("#btnGoThere").click(function () { goThere()});
}
function putMarker(lat, lng) {
    var thePosition = new google.maps.LatLng(lat, lng);

    // move map to center and put a marker on this position.
    map.setCenter(thePosition);
    if (!marker) { createMarker(thePosition) }
    else { marker.setPosition(thePosition) }
}
function useSuggestion(address, lat, lng) { // only go to the address and do nothing else.
    document.getElementById("Address").value = address;
    marker.setVisible(true);

    // record the position of the current input.
    addressLat = lat;
    addressLng = lng;

    putMarker(lat, lng);
    $("#suggest").slideUp();
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
function getSuggestions(results) {
    var counter = 0;
    var tmp = ""; // create content of new suggestions.
    for (var i = 0; i < results.length; ++i) {
        var formattedAddress = getAddressSuggested(results[i].address_components);
        if (formattedAddress != "") {
            var lat = results[i].geometry.location.k;
            var lng = results[i].geometry.location.A;
            tmp += "<a href='#' onclick='useSuggestion(\"" + formattedAddress + "\", \"" + lat + "\", \"" + lng + "\")'>" + formattedAddress + "</a></br>";
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
function createMarker(pos) {
    marker = new google.maps.Marker({
        map: map,
        position: pos,
        draggable: true,
        animation: google.maps.Animation.DROP
    });

    google.maps.event.addDomListener(marker, 'dragend', function () {
        geocoder.geocode({ 'latLng': this.getPosition() }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                getSuggestions(results, true, false);
            } else {
                console.log("Geocoder failed due to: " + status);
            }
        })
    });
}
function PrepareDataToSubmit() {
    var address = document.getElementById("Address").value;

    if (marker.getVisible() == false || address == "") {
        showPopup("Bạn chưa chọn địa điểm. Hãy sử dụng những gợi ý ở ô nhập địa chỉ, hoặc di chuyển ghim đánh dấu.");
        return false;
    }

    if (addressLat != marker.getPosition().lat() || addressLng != marker.getPosition().lng()) {
        showPopup("Ghim đánh dấu không trùng khớp với địa chỉ đã nhập, bạn có muốn lưu lại?");
        return false;
    }

    document.getElementById("Longitude").value = marker.getPosition().lng();
    document.getElementById("Latitude").value = marker.getPosition().lat();

    return true;
}