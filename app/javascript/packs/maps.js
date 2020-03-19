window.initMap =  function(businesses) {

    var mlat = parseFloat(businesses[0].latitude);
    var mlng = parseFloat(businesses[0].longitude);

    var myCoords = new google.maps.LatLng(mlat, mlng);
    var mapOptions = {
    center: myCoords,
    zoom: 14,
    mapTypeControl: false,
    fullscreenControl: false,
    streetViewControl: false
    };

    var map = new google.maps.Map(document.getElementById('map'), mapOptions);

    var bounds = new google.maps.LatLngBounds();
    for (var i = 0; i < businesses.length; i++) {
        var bs = businesses[i];
        var lat = parseFloat(bs.latitude);
        var lng = parseFloat(bs.longitude);
        var myCoordsm = new google.maps.LatLng(lat, lng);

        var marker = new google.maps.Marker({
            position: myCoordsm,
            map: map,
            title: bs.name
        });
            bounds.extend(marker.getPosition());

    }

    if (businesses.length > 1) {map.fitBounds(bounds, 100);}

    //map.setZoom(14);
}

window.initAdminMap = function(bus) {
    console.log(bus);
    var mlat;
    var mlng;
    if (!bus.latitude || !bus.longitude) {
        mlat = parseFloat(46.407895);
        mlng = parseFloat(-90.179690);
    } else {
        mlat = parseFloat(bus.latitude);
        mlng = parseFloat(bus.longitude);
    }



    var myCoords = new google.maps.LatLng(mlat, mlng);

    var mapOptions = {
    center: myCoords,
    minZoom: 3,
    zoom: 13,
    mapTypeControl: false,
    fullscreenControl: false,
    streetViewControl: false
    };

    var map = new google.maps.Map(document.getElementById('map'), mapOptions);

    if (bus != NaN) {
        var marker = new google.maps.Marker({
            position: myCoords,
            map: map
        });
    }


    map.addListener('click', function(e) {
        var nLat = e.latLng.lat().toFixed(6);
        var nLng = e.latLng.lng().toFixed(6);
        var newCoords = new google.maps.LatLng(nLat, nLng);
        marker.setPosition(newCoords);
        $(".bus-lat").val(nLat);
        $(".bus-lng").val(nLng);
      });

}

window.initAdminNewBusMap = function() {

    var mlat = parseFloat(46.407895);
    var mlng = parseFloat(-90.179690);

    var myCoords = new google.maps.LatLng(mlat, mlng);

    var mapOptions = {
    center: myCoords,
    minZoom: 3,
    zoom: 13,
    mapTypeControl: false,
    fullscreenControl: false,
    streetViewControl: false
    };

    var map = new google.maps.Map(document.getElementById('map'), mapOptions);

    var bSw = new google.maps.LatLng(45.848793, -91.102405);
    var bNe = new google.maps.LatLng(46.948976, -89.237259);
    var bound = new google.maps.LatLngBounds(bSw, bNe);

    map.fitBounds(bound)
    var marker = new google.maps.Marker({map: map});

    map.addListener('click', function(e) {
        var nLat = e.latLng.lat().toFixed(6);
        var nLng = e.latLng.lng().toFixed(6);
        var newCoords = new google.maps.LatLng(nLat, nLng);
        marker.setPosition(newCoords);
        $(".bus-lat").val(nLat);
        $(".bus-lng").val(nLng);
      });

}