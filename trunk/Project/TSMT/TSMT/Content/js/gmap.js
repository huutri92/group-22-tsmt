var map;
var examVenues = [];
var logdes = [];
var blueIcon = 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png';
var orangeIcon = 'http://maps.google.com/mapfiles/ms/icons/yellow-dot.png';
var violetIcon = 'http://maps.google.com/mapfiles/ms/icons/purple-dot.png';
var greenIcon = 'http://maps.google.com/mapfiles/ms/icons/green-dot.png';
var circle = null;
var markers = [];

function initialize() {
/* INIT EXAM'S VENUES */
examVenues['HoConRua'] = {
	name: 'Hồ con rùa',
	data: new google.maps.LatLng(10.782911,106.695891),
	description: 'phường 6, District 3, Ho Chi Minh City, Vietnam'
}
examVenues['ChoBenThanh'] = {
	name: 'Chợ Bến Thành',
	data: new google.maps.LatLng(10.772139,106.698284),
	description: 'Chợ Bến Thành, Bến Thành, Quận 1'
}
examVenues['SVDQuanKhu7'] = {
	name: 'Sân vận động Quân Khu 7',
	data: new google.maps.LatLng(10.802282,106.66731),
	description: 'I installed the rubbed surface on the track in 2000 for the asian games'
}
examVenues['UtTich'] = {
	name: 'Út Tịch',
	data: new google.maps.LatLng(10.795906,106.658812),
	description: 'Gần nhà Hiển kute!'
}

/* LOGDE INIT */
logdes['MarieCurie'] = {
	name: 'Hẻm 15 Điện Biên Phủ, quận 3',
	data: new google.maps.LatLng(10.782552,106.691316),
	description: '25 phòng nam, 15 phòng nữ. Mỗi phòng 4 người.'
}
logdes['NhaHatBenThanh'] = {
	name: '754 jjav',
	data: new google.maps.LatLng(10.784386,106.700826),
	description: 'sgfh fjh'
}
logdes['Diamond'] = {
	name: '75afd4 jj6y56av',
	data: new google.maps.LatLng(10.78152,106.698691),
	description: 'sgsfgffh fjhhg'
}
logdes['NhaThoDucBa'] = {
	name: '7gfg5afd4 jj6y5fhbf6av',
	data: new google.maps.LatLng(10.780086,106.699088),
	description: 'sgsfgfdsbfgfh fhfnhhg'
}
logdes['HoaBinh'] = {
	name: '7gfg5afd4 jj6y5fhbf6av',
	data: new google.maps.LatLng(10.767428,106.64126),
	description: 'sgsfgfdsbfgfh fhfnhhg'
}
logdes['PhamHongThai'] = {
	name: '7gfg5afd4 jj6y5fhbf6av',
	data: new google.maps.LatLng(10.771423,106.695548),
	description: 'sgsfgfdsbfgfh fhfnhhg'
}
logdes['LeThiHongGam'] = {
	name: '7gfg5afd4 jj6y5fhbf6av',
	data: new google.maps.LatLng(10.769093,106.697554),
	description: 'sgsfgfdsbfgfh fhfnhhg'
}
logdes['NguyenTrungTruc'] = {
	name: '7gfg5afd4 jj6y5fhbf6av',
	data: new google.maps.LatLng(10.773963,106.699453),
	description: 'sgsfgfdsbfgfh fhfnhhg'
}
logdes['NguyenThiNghia'] = {
	name: '7gfg5afd4 jj6y5fhbf6av',
	data: new google.maps.LatLng(10.770379,106.69411),
	description: 'sgsfgfdsbfgfh fhfnhhg'
}
logdes['DangThiNhu'] = {
	name: '7gfg5afd4 jj6y5fhbf6av',
	data: new google.maps.LatLng(10.770074,106.697758),
	description: 'sgsfgfdsbfgfh fhfnhhg'
}

/* MAPS */
var map_options = {
  center: examVenues['ChoBenThanh'].data,
  zoom: 16,
  panControl: false,
  mapTypeControl: false,
  streetViewControl: false,
}
map = new google.maps.Map(document.getElementById('map_canvas'), map_options);

google.maps.event.addListener(map, 'zoom_changed', function(){
	document.getElementById('zoom').innerHTML = this.getZoom();
});

document.getElementById('zoom').innerHTML = map.getZoom();

/* EXAM VANUES */
for (x in examVenues){
	addMarker(examVenues[x], examVenues[x].data, examVenues[x].name + '!', examVenues[x].description, '');
}

/* LOGDES */
for (x in logdes){
	addMarker(logdes[x], logdes[x].data, logdes[x].name + '!', logdes[x].description, blueIcon);
}

listAllExamVenues();
initSearchBox();
}

function initSearchBox(){
var input = (document.getElementById('txtSearch'));
map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

var searchBox = new google.maps.places.Autocomplete((input));

google.maps.event.addListener(searchBox, 'places_changed', function() {
	var places = searchBox.getPlaces();
	for (var i = 0, marker; marker = markers[i]; i++) {
	  marker.setMap(null);
	}

	markers = [];
	var bounds = new google.maps.LatLngBounds();
	for (var i = 0, place; place = places[i]; i++) {
	  var marker = new google.maps.Marker({
		map: map,
		title: place.name,
		position: place.geometry.location,
		icon: violetIcon
	  });

	  markers.push(marker);

	  bounds.extend(place.geometry.location);
	}

	map.fitBounds(bounds);
})
}

function listAllExamVenues(){
var s = '';
var d = 0;
for (x in examVenues){
	s += '<a class=\"ExamVenue\" href="#" onclick="moveToCenter(\'' + x + '\')">' + ++d + '. ' + examVenues[x].name + '</a><br/>';
}
document.getElementById('examVenues').innerHTML = s;
}

function createInfoWindow(lodge, content){
 var contentString = content;
 var infowindow = new google.maps.InfoWindow({
	  content: contentString
 });
  
google.maps.event.addListener(lodge, 'click', function() {
	if (infowindow.view){
		infowindow.close();
	} else {
		infowindow.open(map, lodge);
	}
});
}

function addMarker(logde, pos, tit, des, png){
var marker = new google.maps.Marker({
	position: pos,
	map: map,
	title: tit,
	icon: png
});

/*var pinColor = "99FFCC";
var pinImage = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=%E2%80%A2|" + pinColor,
	new google.maps.Size(21, 34),
	new google.maps.Point(0,0),
	new google.maps.Point(10, 34));
	
var marker = new google.maps.Marker({
	position: pos,
	map: map,
	icon: pinImage
});*/

createInfoWindow(marker, des);
logde.marker = marker;
}

function moveTheCircle(placeName){
if (circle == null){
	var circleOptions = {
		strokeWeight: 2,
		fillOpacity: 0.15,
		center: examVenues[placeName].data,
		map: map,
		radius: 400,
		editable: true,
		suppressUndo: true,
	};
	circle = new google.maps.Circle(circleOptions);
	document.getElementById('radius').innerHTML = circle.getRadius() + 'meters.';

	google.maps.event.addListener(circle, 'center_changed', function(){
		if (this.getCenter() !== examVenues[placeName].data){
			this.setCenter(examVenues[placeName].data);
		}
	});
	
	google.maps.event.addListener(circle, 'radius_changed', function(){
		document.getElementById('radius').innerHTML = Math.round(this.getRadius()) + 'meters.';
		changeColorMarkers();
	});
} else {
	google.maps.event.clearListeners(circle, 'center_changed');
	
	circle.setCenter(examVenues[placeName].data);
	circle.setRadius(400);
	google.maps.event.addListener(circle, 'center_changed', function(){
		if (this.getCenter() !== examVenues[placeName].data){
			this.setCenter(examVenues[placeName].data);
		}
	});
}

changeColorMarkers();
}

function changeColorMarkers(){
for (x in logdes){
	currentLogde = logdes[x];
	d = google.maps.geometry.spherical.computeDistanceBetween(circle.getCenter(), currentLogde.data);
	if (circle.getRadius() >= d){
		currentLogde.marker.setIcon(orangeIcon);
	} else {
		currentLogde.marker.setIcon(blueIcon);
	}
}
}

function moveToCenter(placeName){
map.setCenter(examVenues[placeName].data);
moveTheCircle(placeName);
}

google.maps.event.addDomListener(window, 'load', initialize);