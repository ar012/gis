// var m = Math.PI;
// console.log(m);
/*
var baliuraBazarSunamganj = {
  lat: 25.0844166666667,
  lng: 91.6218055555555
  }

  // Angle in radians = Angle in degrees x PI / 180.

var azimuth = [90, 210, 330];
var d = 1;

// var antenna_lat = baliuraBazarSunamganj.lat + d*(Math.cos(azimuth[0]*Math.PI/180))

// var antenna_lng = baliuraBazarSunamganj.lng + d*(Math.sin(azimuth[0]*Math.PI/180))


var antenna_lat =  baliuraBazarSunamganj.lat + d*(Math.cos(azimuth[0]))

var antenna_lng =  baliuraBazarSunamganj.lng + d*(Math.sin(azimuth[0]))





console.log("Lat: " + antenna_lat, "Lng: " + antenna_lng)
*/

/*
var baliuraBazarSunamganj = {
  lat: 25.0844166666667,
  lng: 91.6218055555555
};

var azimuth = [90, 210, 330];
var d = 1;


cell_1 = {
  lat: baliuraBazarSunamganj.lat + d * (Math.cos(azimuth[0])),
  lng: baliuraBazarSunamganj.lng + d * (Math.sin(azimuth[0]))
},
cell_2 = {
  lat: baliuraBazarSunamganj.lat + d * (Math.cos(azimuth[1])),
  lng: baliuraBazarSunamganj.lng + d * (Math.sin(azimuth[1]))
},
cell_3 = {
  lat: baliuraBazarSunamganj.lat + d * (Math.cos(azimuth[2])),
  lng: baliuraBazarSunamganj.lng + d * (Math.sin(azimuth[2]))
}

var cells = [
  cell_1 = {
    lat: baliuraBazarSunamganj.lat + d * (Math.cos(azimuth[0])),
    lng: baliuraBazarSunamganj.lng + d * (Math.sin(azimuth[0]))
  },
  cell_2 = {
    lat: baliuraBazarSunamganj.lat + d * (Math.cos(azimuth[1])),
    lng: baliuraBazarSunamganj.lng + d * (Math.sin(azimuth[1]))
  },
  cell_3 = {
    lat: baliuraBazarSunamganj.lat + d * (Math.cos(azimuth[2])),
    lng: baliuraBazarSunamganj.lng + d * (Math.sin(azimuth[2]))
  }
];

console.log(cells);
*/


// var baliuraBazarSunamganj = {
//   lat: 25.0844166666667,
//   lng: 91.6218055555555
// };

// var azimuth = [90, 210, 330];
// var d = 1;

// var lat1 = baliuraBazarSunamganj.lat + d * (Math.cos(azimuth[0] * Math.PI / 180));
// var lng1 = baliuraBazarSunamganj.lng + d * (Math.sin(azimuth[0] * Math.PI / 180));

// var lat2 = baliuraBazarSunamganj.lat + d * (Math.cos(azimuth[1] * Math.PI / 180));
// var lng2 = baliuraBazarSunamganj.lng + d * (Math.sin(azimuth[1] * Math.PI / 180));

// var lat3 = baliuraBazarSunamganj.lat + d * (Math.cos(azimuth[2] * Math.PI / 180));
// var lng3 = baliuraBazarSunamganj.lng + d * (Math.sin(azimuth[2] * Math.PI / 180));



// var cells = [
//   cell1 = {
//     lat: lat1,
//     lng: lng1
//   },

//   cell2 = {
//     lat: lat2,
//     lng: lng2
//   },
//   cell3 = {
//     lat: lat3,
//     lng: lng3
//   }
// ];



// console.log(lat2, lng2)


var azimuth = [90, 210, 330];
var d = 1;

// console.log(Math.tan(45*Math.PI/180));


 // Tilt, t 
  // Antenna Distance, d
  // d = h/()
  // Antenna Height, h

  var antennaHeight = 35;
  var downTilt = 2;
  var antennaDistance = antennaHeight/(Math.tan(downTilt*Math.PI/180));

  console.log(antennaDistance);
