
var geocoder = new google.maps.Geocoder();

var BenThanh = { lat: 10.771992, lng: 106.698264 };
var map;
var marker;
var addressLat;
var addressLng;

function initialize(lat, lng) {
    var useDefault = lat == undefined || lng == undefined;
    if (useDefault) center = new google.maps.LatLng(BenThanh.lat, BenThanh.lng);
    else center = new google.maps.LatLng(lat, lng);

    var map_options = {
        center: center,
        zoom: 16,
        panControl: false,
        mapTypeControl: false,
        streetViewControl: false,
    }
    map = new google.maps.Map(document.getElementById('map_canvas'), map_options);

    if (useDefault) putMarker(BenThanh.lat, BenThanh.lng)
    else putMarker(lat, lng);
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
    var address = homeNumber = streetName = ward = district = "";
    for (var i = 0; i < address_components.length; ++i) {
        var tmp = address_components[i].long_name; // variable keep component's content.
        switch (address_components[i].types[0]) { // type of the component's.
            case "street_number":
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

function getSuggestions(results, hasOnlyOneSuggestion, goThereAnyway) {
    //if (hasOnlyOneSuggestion) {
    //    var formattedAddress = getAddressSuggested(results[0].address_components);
    //    var lat = results[0].geometry.location.k;
    //    var lng = results[0].geometry.location.A;

    //    if (goThereAnyway) { useSuggestion(formattedAddress, lat, lng) }
    //    else {
    //        showSuggestions("<a href='#' onclick='useSuggestion(\"" + formattedAddress + "\", \"" + lat + "\", \"" + lng + "\")'>" + formattedAddress + "</a></br>");
    //    }
    //} else {
        marker.setVisible(false); // hide marker.
        var tmp = "";
        // create content of new suggestions.
        for (var i = 0; i < results.length; ++i) {
            var formattedAddress = getAddressSuggested(results[i].address_components);
            var lat = results[i].geometry.location.k;
            var lng = results[i].geometry.location.A;
            tmp += "<a href='#' onclick='useSuggestion(\"" + formattedAddress + "\", \"" + lat + "\", \"" + lng + "\")'>" + formattedAddress + "</a></br>";
        }
        showSuggestions(tmp);
    //}
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

    // user drag the marker
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
        showPopup("Bạn chưa chọn địa điểm. Hãy sử dụng những gợi ý phía dưới ô nhập địa chỉ, hoặc di chuyển ghim đánh dấu.");
        return false;
    }

    if (addressLat != marker.getPosition().lat() || addressLng != marker.getPosition().lng()) {
        showPopup("Toạ độ đánh dấu không trùng khớp với địa chỉ đã nhập, bạn có muốn lưu bản đồ này?");
        return false;
    }

    document.getElementById("Longitude").value = marker.getPosition().lng();
    document.getElementById("Latitude").value = marker.getPosition().lat();

    return true;
}