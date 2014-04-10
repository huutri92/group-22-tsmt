var map;
var lodges = [];
var markers = [];
var circle;
var ces = [];
//var orangeIcon = 'http://maps.google.com/mapfiles/ms/icons/yellow-dot.png';
var orangeIcon = '/Content/img/markers/yellow-dot.png';
var icons = [
    /*'http://maps.google.com/mapfiles/ms/icons/blue-dot.png',*/
    /*'http://maps.google.com/mapfiles/ms/icons/green-dot.png',*/
    /*'http://maps.google.com/mapfiles/ms/icons/purple-dot.png'*/
    '/Content/img/markers/blue-dot.png',
    '/Content/img/markers/green-dot.png',
    '/Content/img/markers/purple-dot.png',
    '/Content/img/markers/ltblue-dot.png',
    '/Content/img/markers/orange-dot.png',
    '/Content/img/markers/pink-dot.png',
    '/Content/img/markers/red-dot.png'
];

function getIcon(ceId) {
    for (var i = 0; i < ces.length; ++i) { if (ces[i] == ceId) return i }
    ces.push(ceId);
    return ces.length - 1;
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
            addMarker(lodgeId, lodge.data, lodge.name + '!', lodge.description, icons[getIcon(lodge.ceId)]);
        }
    }

    /* sort lodges by distance to exam-venue */
    var a = [];
    for (lodgeId in lodges) { a.push(lodgeId) }
    for (var i = 0; i < a.length - 1; ++i) {
        for (var j = i + 1; j < a.length; ++j) {
            if (lodges[a[i]].d > lodges[a[j]].d || (lodges[a[i]].d == lodges[a[j]].d && lodges[a[i]].availSlots < lodges[a[j]].availSlots)) {
                var tmp = a[i]; a[i] = a[j]; a[j] = tmp;
            }
        }
    }

    /* show lodges on panel */
    var s = '';
    for (var i = 0; i < a.length; ++i) {
        if (a[i] == -1) continue;
        var lodge = lodges[a[i]];
        s += '<a class="lodge" name="' + lodge.ceId + '" href="#" style="display:block" ';
        s += 'onclick="clickOnMarker(' + lodge.lodgeId + ', true)">' + lodge.name;
        s += ' (' + lodge.availSlots + '/' + lodge.totalSlots + ')</a>';
    }
    document.getElementById('examVenues').innerHTML = s;
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
    marker.infoWindow.open(map, marker);
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
            if (circle.getRadius() >= lodge.d) { // distance to exam venue.
                lodge.marker.setIcon(orangeIcon);
            } else {
                lodge.marker.setIcon(icons[getIcon(lodge.ceId)]);
            }
        }
    }
}