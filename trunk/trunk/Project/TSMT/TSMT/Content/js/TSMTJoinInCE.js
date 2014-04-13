var map;
var lodges = [];
var markers = [];
var circle;
var ces = [];
var a = []; // indexes of lodges use to sort lodges by distance to venue
var currentInfoWindow;

var yellowIcon = '/Content/img/markers/yellow-dot.png';
var redIcon = '/Content/img/markers/red-dot.png';

var icons = [
    '/Content/img/markers/blue-dot.png',
    '/Content/img/markers/green-dot.png',
    '/Content/img/markers/purple-dot.png',
    '/Content/img/markers/ltblue-dot.png',
    '/Content/img/markers/pink-dot.png',
    '/Content/img/markers/orange-dot.png',
];

function getIcon(lodge) {
    if (lodge.availSlots == 0) return redIcon;

    for (var i = 0; i < ces.length; ++i) { if (ces[i] == lodge.ceId) return icons[i] }
    ces.push(lodge.ceId);

    return icons[ces.length - 1];
}

function initialize(venuePos) {
    /* MAPS */
    var map_options = {
        center: venuePos,
        zoom: 16,
        panControl: false,
        mapTypeControl: false,
        streetViewControl: false,
    }
    map = new google.maps.Map(document.getElementById('map_canvas'), map_options);

    /* Add marker for each Lodge */
    for (lodgeId in lodges) {
        lodge = lodges[lodgeId];
        if (lodgeId == -1) { // exam venue
            addMarker(lodgeId, lodge.data, lodge.name + '!', lodge.description, "");
        } else {
            addMarker(lodgeId, lodge.data, lodge.name + '!', lodge.description, getIcon(lodge));
        }
    }

    currentInfoWindow = lodges[-1].marker.infoWindow;
    currentInfoWindow.open(map, lodges[-1].marker);

    /* sort lodges by distance to exam-venue */
    for (lodgeId in lodges) { a.push(lodgeId) }
    for (var i = 0; i < a.length - 1; ++i) {
        for (var j = i + 1; j < a.length; ++j) {
            if (lodges[a[i]].d > lodges[a[j]].d || (lodges[a[i]].d == lodges[a[j]].d && lodges[a[i]].availSlots < lodges[a[j]].availSlots)) {
                var tmp = a[i]; a[i] = a[j]; a[j] = tmp;
            }
        }
    }
}

function createInfoWindow(marker, content) {
    var contentString = content;
    marker.infoWindow = new google.maps.InfoWindow({
        content: contentString
    });
}

function addMarker(lodgeId, pos, tit, des, png) {
    var marker = new google.maps.Marker({
        position: pos,
        map: map,
        title: tit,
        icon: png
    });

    createInfoWindow(marker, des);
    marker.lodgeId = lodgeId;

    google.maps.event.addListener(marker, 'click', function () {
        clickOnMarker(this.lodgeId, false);
    });

    lodges[lodgeId].marker = marker;
}

function clickOnMarker(lodgeId, goCenter) {
    marker = lodges[lodgeId].marker;
    if (goCenter) { map.setCenter(lodges[lodgeId].data); }

    currentInfoWindow.close();
    currentInfoWindow = marker.infoWindow;
    currentInfoWindow.open(map, marker);
}

function createTheCircle() {
    var circleOptions = {
        strokeWeight: 2,
        fillOpacity: 0.15,
        center: lodges[-1].data,
        map: map,
        radius: 400,
        editable: true,
        suppressUndo: true,
    };
    circle = new google.maps.Circle(circleOptions);
    document.getElementById('radius').innerHTML = circle.getRadius() + ' m.';

    google.maps.event.addListener(circle, 'radius_changed', function () {
        document.getElementById('radius').innerHTML = Math.round(this.getRadius()) + ' m.';
        changeColorMarkers();
    });

    google.maps.event.addListener(circle, 'center_changed', function () {
        if (this.getCenter() != lodges[-1].data) {
            this.setCenter(lodges[-1].data);
        }
    });

    changeColorMarkers();
}

function changeColorMarkers() {
    for (x in lodges) {
        var lodge = lodges[x];
        if (lodge.marker.getVisible() == true && x != -1) {
            if (circle.getRadius() >= lodge.d && lodge.availSlots > 0) { // distance to exam venue.
                lodge.marker.setIcon(yellowIcon);
            } else {
                lodge.marker.setIcon(getIcon(lodge));
            }
        }
    }
}

function changeCE(ceId) {
    var s = '';
    var counter = 0;
    for (var i = 0; i < a.length; ++i) {
        if (a[i] == -1) continue;
        var lodge = lodges[a[i]];
        if (ceId == "null" || lodge.ceId == ceId) {
            s += '<a class="lodge" name="' + lodge.ceId + '" href="#" ';
            s += 'title="Đi đến địa điểm trọ ' + lodge.name + '" ';
            s += 'onclick="clickOnMarker(' + lodge.lodgeId + ', true)">' + (++counter) + ". " + lodge.name.split(",")[0];
            s += ' - <strong>(' + lodge.availSlots + '/' + lodge.totalSlots + ')</strong></a>';
            lodge.marker.setVisible(true);
        } else {
            lodge.marker.setVisible(false);
        }
    }
    document.getElementById('examVenues').innerHTML = s;
}

function prepareToSubmit(lodgeId) {
    $("#lodgeId").val(lodgeId);
    $("#formJoinInCE").submit();
}