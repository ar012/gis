/*
(function(window, google) {
    // map options
    var options = {
        center: {
            lat: 37.791350,
            lng: -122.435883
        },
        zoom: 10,
        disableDefaultUI: true

    },
    element = document.getElementById('map-canvas'),
    // map
    map = new google.maps.Map(element, options);
}(window, google));


// center: {lat: 23.810331, lng: 90.412521},

*/

var map;

function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        //   center: {lat: -34.397, lng: 150.644},
        center: {
            lat: 23.810331,
            lng: 90.412521
        },
        zoom: 8,
        disableDefaultUI: false,
        scrollwheel: true,
        draggable: true,
        //   mapTypeId: google.maps.MapTypeId.HYBRID
        //   mapTypeId: google.maps.MapTypeId.SATELLITE
        //   mapTypeId: google.maps.MapTypeId.ROADMAP

        maxZoom: 11,
        minZoom: 9,
        zoomControlOptions: {
            position: google.maps.ControlPosition.LEFT_TOP,
            style: google.maps.ZoomControlStyle.DEFAULT
        },
        panControlOptions: {
            position: google.maps.ControlPosition.LEFT_BOTTOM
        }
    });
    var myLatLng = {
        lat: 23.810331,
        lng: 90.412521
    };
    var image = 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png';
    // var image = './marker.png'
    var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        icon: image,
        title: 'Hello World!'
    });
}