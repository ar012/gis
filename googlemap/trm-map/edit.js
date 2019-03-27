var btsData = [
	{btsCode: 10, btsName: "BBLMA05", latlng: {lat: 21.927747, lng: 92.194388}, radiating_power_dbm: 45},
	{btsCode: 11, btsName: "BBLMA07", latlng: {lat: 21.744400, lng: 92.256300}, radiating_power_dbm: 45},
	{btsCode: 12, btsName: "BBLMA10", latlng: {lat: 21.990726, lng: 92.206335}, radiating_power_dbm: 50},
	{btsCode: 13, btsName: "BBLMA11", latlng: {lat: 21.685791, lng: 92.103807}, radiating_power_dbm: 50},
	{btsCode: 14, btsName: "BBLMA12", latlng: {lat: 21.895179, lng: 92.192529}, radiating_power_dbm: 50},
	{btsCode: 15, btsName: "BBRMA01", latlng: {lat: 22.047556, lng: 92.396417}, radiating_power_dbm: 42},
	{btsCode: 16, btsName: "BBRNC02", latlng: {lat: 22.187583, lng: 92.226833}, radiating_power_dbm: 44},
	{btsCode: 17, btsName: "BBRNC02", latlng: {lat: 22.187582, lng: 92.226836}, radiating_power_dbm: 44},
	{btsCode: 18, btsName: "BBRNC03", latlng: {lat: 22.167722, lng: 92.210444}, radiating_power_dbm: 44},
	{btsCode: 19, btsName: "BBRNC03", latlng: {lat: 22.167720, lng: 92.210447}, radiating_power_dbm: 44},
	{btsCode: 20, btsName: "BBRNC04", latlng: {lat: 22.058528, lng: 92.271556}, radiating_power_dbm: 44},
	{btsCode: 21, btsName: "BBRNC04", latlng: {lat: 22.058531, lng: 92.271558}, radiating_power_dbm: 44},
	{btsCode: 22, btsName: "BBRNC05", latlng: {lat: 22.170833, lng: 92.338194}, radiating_power_dbm: 44},
	{btsCode: 23, btsName: "BBRNC06", latlng: {lat: 22.240917, lng: 92.288417}, radiating_power_dbm: 44},
	{btsCode: 24, btsName: "BBSDR02", latlng: {lat: 22.197620, lng: 92.218995}, radiating_power_dbm: 42},
	{btsCode: 25, btsName: "BBSDR03", latlng: {lat: 22.214000, lng: 92.210278}, radiating_power_dbm: 42},
	{btsCode: 26, btsName: "BBSDR04", latlng: {lat: 22.341722, lng: 92.194389}, radiating_power_dbm: 42},
	{btsCode: 27, btsName: "BBSDR04", latlng: {lat: 22.341731, lng: 92.194389}, radiating_power_dbm: 42},
	{btsCode: 28, btsName: "BBSDR05", latlng: {lat: 22.206086, lng: 92.266414}, radiating_power_dbm: 42},
	{btsCode: 29, btsName: "BBSDR06", latlng: {lat: 22.256389, lng: 92.156056}, radiating_power_dbm: 42},
	{btsCode: 30, btsName: "BBSDR06", latlng: {lat: 22.256386, lng: 92.156052}, radiating_power_dbm: 42},
	{btsCode: 31, btsName: "BBSDR06", latlng: {lat: 22.256380, lng: 92.156046}, radiating_power_dbm: 45},
	{btsCode: 32, btsName: "BBSDR07", latlng: {lat: 22.164583, lng: 92.176111}, radiating_power_dbm: 45},
	{btsCode: 33, btsName: "BBSDR09", latlng: {lat: 22.138190, lng: 92.178590}, radiating_power_dbm: 45}
  ];
  

  var btsLinks = [ [btsData[0].latlng, btsData[1].latlng], [btsData[1].latlng, btsData[2].latlng], [btsData[2].latlng, btsData[3].latlng] ];
  

  console.log(btsLinks);
