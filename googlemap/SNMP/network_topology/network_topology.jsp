<!-- start: Common Header -->
       <jsp:include page="/WEB-INF/view/common/commonheader.jsp" />
<!-- end: Common Header -->

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cts" uri="/WEB-INF/custom.tld"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<style>
	#siteMap {
		width:100%;
		height:600px;
	}
	
	 .site-img {
      width: 550px;
      height: 250px;
    } 
    
    	#operator_drag { 
		/* width: 130px; */ 
		/* height: 105px; */
		padding: 0.7em;
		background: #FFFFFF;
		float: left;
		position: absolute;
		z-index: 100;
    	left: 20px;
    	top: 5px;
    	box-shadow: 2px 1px 5px rgba(0, 0, 0, 0.12), 0px 2px 2px rgba(0, 0, 0, 0.18);
	}
    
	#operator_drag:hover {
  		box-shadow: 2px 0px 8px rgba(0, 0, 0, 0.12), 0px 4px 8px rgba(0, 0, 0, 0.18);
	}
	.bts-pwr {
		background-color: lightblue;
	}
	
	.mw-link, .fiber-link{
		width: 30px;
		height: 5px;
		margin-top: 8px;
	}
	
	.mw-link{
		background-color: #A52A2A;	
	}
	.fiber-link{
		background-color: #800080;	
	}

</style>


<div class="wrap-content container" id="container">
	<!-- start: PAGE TITLE -->
		<jsp:include page="/WEB-INF/view/common/breadcrumb.jsp" /> 
	<!-- end: PAGE TITLE -->
	
	<div class="container-fluid container-fullw bg-white" >
		
		<div class="row">
			<div class="col-md-12">
			
			<!-- Operator selector: -->
				<div id="operator_drag" class="ui-widget-content">
				 	<p> <span class="bts-pwr">Legends:</span><br>
					Active Route <img height="15" class="pull-right" src="/assets/images/mapAPI/marker_blue.png"><br>
					Router in WIP <img height="15" class="pull-right" src="/assets/images/mapAPI/marker_blue.png"><br>
					Malti-functioning Router  <img height="15" class="pull-right" src="/assets/images/mapAPI/marker_blue.png"><br>
					Working Line  <img height="15" class="pull-right" src="/assets/images/mapAPI/marker_green.png"><br>
					Line in WIP  <img height="15" class="pull-right" src="/assets/images/mapAPI/marker_green.png">
					</p>
				</div>
				
				<!-- google map container -->
				<div id="siteMap"></div>
			</div>
		</div>	
		
		<div class="row margin-top-10">
			<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
				<jsp:include page="/WEB-INF/view/common/footerbuttons.jsp" />
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
				<cts:Submit cssClass="print pull-right" name="&nbsp;Print" spanClass="fa fa-print" onclick="printDiv(this)" />
			</div>
		</div>
	</div>
</div>

 
<script>

//Oepetator Draggable div
$( function() {
	    $( "#operator_drag" ).draggable();
	  } );
	  

// BTS site data


var bpData = [
	{"btsCode":"BBLMA12","btsName":"Daluchhari","btsLatitude":21.89518,"btsLongitude":92.19253,"btsAltitudeFt":55.77428},
	{"btsCode":"BGRMP05","btsName":"Cahksri Bazar_GP","btsLatitude":22.639694,"btsLongitude":89.70175,"btsAltitudeFt":55.77428},
	{"btsCode":"BGRMP06","btsName":"Gilatola Bazar_GP","btsLatitude":22.5945556,"btsLongitude":89.6957222,"btsAltitudeFt":55.77428},
	{"btsCode":"BHSDR26","btsName":"Poranganj Bazar_BL","btsLatitude":22.725062,"btsLongitude":90.634891,"btsAltitudeFt":55.77428},
	{"btsCode":"BBAKD01","btsName":"Alikadam_GP","btsLatitude":21.6477778,"btsLongitude":92.3078056,"btsAltitudeFt":55.77428},
	{"btsCode":"BBAKD01","btsName":"Alikadam_GP","btsLatitude":21.6477778,"btsLongitude":92.3078056,"btsAltitudeFt":55.77428},
	{"btsCode":"BBAKD01","btsName":"Alikadam_GP","btsLatitude":21.6477778,"btsLongitude":92.3078056,"btsAltitudeFt":55.77428},
	{"btsCode":"BBAKD02","btsName":"Refarfari 41m","btsLatitude":21.6964,"btsLongitude":92.25185,"btsAltitudeFt":55.77428},
	{"btsCode":"BBAKD02","btsName":"Refarfari 41m","btsLatitude":21.6964,"btsLongitude":92.25185,"btsAltitudeFt":55.77428},
	{"btsCode":"BBAKD02","btsName":"Refarfari 41m","btsLatitude":21.6964,"btsLongitude":92.25185,"btsAltitudeFt":55.77428},
	{"btsCode":"BBAKD03","btsName":"Puraba Palongpara","btsLatitude":21.652556,"btsLongitude":92.319861,"btsAltitudeFt":55.77428},
	{"btsCode":"BBLMA07","btsName":"Ruposhipara","btsLatitude":21.744401,"btsLongitude":92.2563,"btsAltitudeFt":55.77428},
	{"btsCode":"BBAKD03","btsName":"Puraba Palongpara","btsLatitude":21.652556,"btsLongitude":92.319861,"btsAltitudeFt":55.77428},
	{"btsCode":"BBAKD03","btsName":"Puraba Palongpara","btsLatitude":21.652556,"btsLongitude":92.319861,"btsAltitudeFt":55.77428}
	];
	
	/* console.log(mscData); */
	

 

//Google Maps 

  var mapCenter = {lat: bpData[0].btsLatitude, lng: bpData[0].btsLongitude};
    
	// Google map starts
    function initMap() {
		
    	    	 
      // Create the map.
      var map = new google.maps.Map(document.getElementById('siteMap'), {
        zoom: 12,
        center: mapCenter,
        mapTypeControl: true,
        mapTypeControlOptions: {
            style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
            position: google.maps.ControlPosition.TOP_RIGHT
        }
      });
      
 	 
      
      
   // ============== markers and infoWindow for BTS ================================
		 
  	 var bts_marker, bts_latlng, btsContent;
       
      for ( var i = 0; i < bpData.length; i++) {
     	 
    	  bts_latlng = {lat: bpData[i].btsLatitude, lng: bpData[i].btsLongitude};
     	 	
    	  btsContent = '<div class="container site_container">'+
  		      '<div class="row">' +
  		      	   '<div class="col-md-12 text-center">' +
  			          	'<h4>BTS Summary</h4>' +
  			          	'<p> BTS Code: '+ bpData[i].btsCode +
  			 		    ', BTS Name: '+ bpData[i].btsName +
  			 		   '</p>' +
 			        	'<p>BTS Lng/Lat: '+ bpData[i].btsLongitude +'/'+  bpData[i].btsLatitude +
 					    '<br>BTS Altitude: '+ bpData[i].btsAltitudeFt + ' ft' +
 					    '</p>' +
  		        	'</div>' +
  		      '</div>' +
  		 '</div>'	
  		     
      	 
  		
  		bts_marker = new google.maps.Marker({
               position: bts_latlng,
               icon: 'assets/images/mapAPI/marker_green.png',
               map: map,
               title: 'BTS',
               html: btsContent
               
            });
      	 
      	 
      	 // Open an InfoWindow When Clicking on The Marker
          google.maps.event.addListener(bts_marker, 'click', function () {
               infowindow.setContent(this.html);
               infowindow.open(map, this);
           });  
     	 
       };  // ending of for-loop of BTS
      
       
   }; // ending of map

    
<%-- </script>
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=${map.mapApiKey}&libraries=geometry&callback=initMap">
</script> --%>

</script>
  <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCKaduL2DMoEj3FgqfsctosuK5h5WkKcAM&callback=initMap">
</script>



<!-- start: Common Footer -->
    <jsp:include page="/WEB-INF/view/common/commonfooter.jsp" />
<!-- end: Common Footer -->

