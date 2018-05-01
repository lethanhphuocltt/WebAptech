<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="Connections/cnAutoCar.asp" -->
<%
Dim rcCar__MMColParam
rcCar__MMColParam = "1"
If (Request.QueryString("IdCar") <> "") Then 
  rcCar__MMColParam = Request.QueryString("IdCar")
End If
%>
<%
Dim rcCar
Dim rcCar_cmd
Dim rcCar_numRows

Set rcCar_cmd = Server.CreateObject ("ADODB.Command")
rcCar_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcCar_cmd.CommandText = "SELECT * FROM dbo.CAR WHERE IDCAR = ?" 
rcCar_cmd.Prepared = true
rcCar_cmd.Parameters.Append rcCar_cmd.CreateParameter("param1", 5, 1, -1, rcCar__MMColParam) ' adDouble

Set rcCar = rcCar_cmd.Execute
rcCar_numRows = 0
%>
<%
Dim rcMap__MMColParam
rcMap__MMColParam = "1"
If (Request.QueryString("IdCar") <> "") Then 
  rcMap__MMColParam = Request.QueryString("IdCar")
End If
%>
<%
Dim rcMap
Dim rcMap_cmd
Dim rcMap_numRows

Set rcMap_cmd = Server.CreateObject ("ADODB.Command")
rcMap_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcMap_cmd.CommandText = "SELECT m.* FROM dbo.CAR c, dbo.MAKE m WHERE c.IDMAKE = m.IDMAKE AND c.IDCAR = ?" 
rcMap_cmd.Prepared = true
rcMap_cmd.Parameters.Append rcMap_cmd.CreateParameter("param1", 5, 1, -1, rcMap__MMColParam) ' adDouble

Set rcMap = rcMap_cmd.Execute
rcMap_numRows = 0
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Auto Car - Car Details</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" >

  <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap--.css">
  <link rel="stylesheet" type="text/css" href="bootstrap/fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" type="text/css" href="bootstrap/fonts/linearicons/style.css">
  <link rel="stylesheet" type="text/css" href="bootstrap/fonts/font-awesome/css/font-awesome.min.css">
  <link href="bootstrap/css/bootstrap-select.min.css" type="text/css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" id="style_sheet" href="bootstrap/css/colors/default.css">
<script src="bootstrap/js/jquery-2.2.0.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
<header class="top-header hidden-xs">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-7 col-xs-12">
                    <div class="list-inline">
                        <a href="tel:0983 456 789"><i class="fa fa-phone"></i>Need Support? 0983 456 789</a>
                        <a href="mailto:autoworld@gmail.com"><i class="fa fa-envelope"></i>autoworld@gmail.com</a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-5 col-xs-12">
                    <ul class="social-list clearfix pull-right">
                        <li>
                            <a href="#" class="sign-in"><i class="fa fa-user"></i> Log In / Register</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
</header>
<!-- Main header start -->
    <header class="main-header">
        <div class="container">
            <nav class="navbar navbar-default">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#app-navigation"> <!--hình thức toggle--> <!--data cua toggle-->
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="index.html" class="logo">
                        <img src="images/logos/green-light-logo.png" alt="logo">
                    </a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="navbar-collapse collapse" id="app-navigation">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="Home.html" >
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="CarListing.asp" >
                                Car Listing
                            </a>
                            
                        </li>
                        <li class="dropdown">
                            <a tabindex="0" data-toggle="dropdown" >
                                Pages<span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Compare.asp" tabindex="0">Compare</a>
                                </li>
                                <li>
                                    <a href="BankListing.asp" tabindex="1">Bank Listing</a>
                                </li>
                                <li>
                                    <a href="CarmakerListing.asp" tabindex="1">Carmakers Listing</a>
                                </li>
                            </ul>
                        </li>
                        
                        <li class="dropdown">
                            <a tabindex="0" data-toggle="dropdown" >
                                Contact<span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="About.html">About Us</a></li>
                            </ul>
                        </li>
                    </ul>                
                </div>
            </nav>
        </div>
    </header>
<!-- Sub banner start -->
<div class="sub-banner">
    <div class="overlay">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="breadcrumb-area">
                        <h2>Car Details</h2>
                        <ul class="breadcrumbs">
                            <li><a href="Home.html">Home</a></li>
                            <li class="active">Car Details</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- sub banner end -->

<!-- -->

<!-- Car details body start-->
<div class="car-details-body content-area">
 <div class="container">
 	<div class="row">
    	<div class="col-lg-12">
        	<div class="details-option-bar">
            	<div class="row">
                	<div class="col-md-12">
                    	<div class="pull_left">
                        	<h3><%=(rcCar.Fields.Item("NAMECAR").Value)%></h3>
                        </div>
                        <div class="pull_right">
                        	<h3>$<%=(rcCar.Fields.Item("PRICE").Value)%></h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
        	<div class="car_details">
            	<div class="car_details_img">
               	  <img src="images/imagesCar/<%=(rcCar.Fields.Item("IMAGECAR").Value)%>" width=100%/>
                </div>
                <div class="amenities_single_block">
                	<h2 class="title">SPECIFICATIONS</h2>
                    <div class="row">
                    	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 amenities-box">
                        	<ul>
                            	<li>
                                	<strong>Fuel Type: </strong><%=(rcCar.Fields.Item("FUELTYPE").Value)%>
                                </li>
                            	<li>
                                	<strong>Stock: </strong><%=(rcCar.Fields.Item("STOCK").Value)%>
                                </li>                            	<li>
                                	<strong>Gasoline: </strong><%=(rcCar.Fields.Item("GASOLINE").Value)%>
                                </li>                                
                            </ul>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 amenities-box">
                        	<ul>
                            	<li>
                                	<strong>Engine: </strong><%=(rcCar.Fields.Item("ENGINE").Value)%>
                                </li>
                            	<li>
                                	<strong>Transmission: </strong><%=(rcCar.Fields.Item("TRANSMISSION").Value)%>
                                </li>                            	<li>
                                	<strong>VIN: </strong><%=(rcCar.Fields.Item("VIN").Value)%>
                                </li>                                
                            </ul>
                        
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="col-ld-4 col-md-4 col-sm-12 col-xs-12">
        	<div class="car_details">
                <div class="amenities_single_block1">
                	<h3 title="Specifications">SPECIFICATIONS</h3>
	            	<ul>
            			<li>
                        	<span>Fuel Type:</span><%=(rcCar.Fields.Item("FUELTYPE").Value)%>
                        </li>
            			<li>
                        	<span>Stock:</span><%=(rcCar.Fields.Item("STOCK").Value)%>
                        </li>
            			<li>
                        	<span>Gasoline:</span><%=(rcCar.Fields.Item("GASOLINE").Value)%>
                        </li>
            			<li>
                        	<span>Engine:</span><%=(rcCar.Fields.Item("ENGINE").Value)%>
                        </li>
                        <li>
                        	<span>Transmission:</span><%=(rcCar.Fields.Item("TRANSMISSION").Value)%>
                        </li>
                        <li>
                        	<span>VIN:</span><%=(rcCar.Fields.Item("VIN").Value)%>
                        </li>
                        <li>
                        	<span>Mileage:</span><%=(rcCar.Fields.Item("MILEAGE").Value)%>
                        </li>
                        
                                             
            		</ul>
                </div>            		
            </div>
            <div class="car_details">
            	<div class="row">
                    <form method="get" action="Compare.asp">
                    	<input type="text" hidden="true" name="IdCar" value="<%=(rcCar.Fields.Item("IDCAR").Value)%>" />
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                            <button type="submit" class="btn btn-submit btn-warning">Contact Us</button>
                        </div> 
                    </form>
                    <form method="get" action="Warranty.asp">
                    	<input type="text" hidden="true" name="IdMake" value="<%=(rcCar.Fields.Item("IDMAKE").Value)%>" />
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                            <button type="submit" class="btn btn-submit btn-warning">Warranty</button>
                        </div> 
                    </form>
                </div>              
            </div>
            <div class="car_details">
            	<div class="row">
                	<div id="map" class="contact-map"></div>
                    
               	  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB0N5pbJN10Y1oYFRd0MJ_v2g8W2QT74JE"></script>
				  <script>
                        function LoadMap(propertes) {
                            var defaultLat = <%=(rcMap.Fields.Item("DEFAULTLAT").Value)%>;
                            var defaultLng = <%=(rcMap.Fields.Item("DEFAULTLNG").Value)%>;
                            var mapOptions = {
                                center: new google.maps.LatLng(defaultLat, defaultLng),
                                zoom: 15,
                                scrollwheel: false,
                                styles: [
                                    {
                                        featureType: "administrative",
                                        elementType: "labels",
                                        stylers: [
                                            {visibility: "off"}
                                        ]
                                    },
                                    {
                                        featureType: "water",
                                        elementType: "labels",
                                        stylers: [
                                            {visibility: "off"}
                                        ]
                                    },
                                    {
                                        featureType: 'poi.business',
                                        stylers: [{visibility: 'off'}]
                                    },
                                    {
                                        featureType: 'transit',
                                        elementType: 'labels.icon',
                                        stylers: [{visibility: 'off'}]
                                    },
                                ]
                            };
                            var map = new google.maps.Map(document.getElementById("map"), mapOptions);
                            var infoWindow = new google.maps.InfoWindow();
                            var myLatlng = new google.maps.LatLng(<%=(rcMap.Fields.Item("DEFAULTLAT").Value)%>, <%=(rcMap.Fields.Item("DEFAULTLNG").Value)%>);
                    
                            var marker = new google.maps.Marker({
                                position: myLatlng,
                                map: map
                            });
                            (function (marker) {
                                google.maps.event.addListener(marker, "click", function (e) {
                                    infoWindow.setContent("" +
                                            "<div class='map-properties contact-map-content'>" +
                                            "<div class='map-content'>" +
                                            "<p class='address'><%=(rcMap.Fields.Item("ADDRESSMAKE").Value)%></p>" +
                                            "<ul class='map-properties-list'> " +
                                            "<li><i class='fa fa-phone'></i><%=(rcMap.Fields.Item("PHONEMAKE").Value)%></li> " +
                                            "<li><i class='fa fa-envelope'></i><%=(rcMap.Fields.Item("MAILMAKE").Value)%></li> " +
                                            "<li><a href='#'><i class='fa fa-globe'></i>  http://www.<%=(rcMap.Fields.Item("WEBMAKE").Value)%></li></a> " +
                                            "</ul>" +
                                            "</div>" +
                                            "</div>");
                                    infoWindow.open(map, marker);
                                });
                            })(marker);
                        }
                        LoadMap();
                        
                        
                    </script>
                </div>
            </div>
        </div>
    </div>
 </div>
</div>
<!-- Car details body end-->
<!-- Featured car end-->
    <footer class="clearfix">
        <div class="container">
            <!-- Sub footer-->
            <div class="sub-footer">
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <div class="logo-2">
                            <a href="index.html">
                                <img src="picture/footer-logo.png" alt="footer-logo">
                            </a>
                        </div>
                    </div>
                </div>
                <!-- -->
<div class="container">
        <div class="main-title">
            <h1>Our mission</h1>
            <p>We’re on a mission to help you find the perfect car, at the perfect price.</p>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInLeft delay-03s" style="visibility: visible; animation-name: fadeInLeft;">
                <div class="content">
                    <i class="flaticon-security"> </i>
                  
                    <h4>Highly  Secured</h4>
                    <p>They are cam đoan your transactions information you is complete the security.</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInLeft delay-03s" style="visibility: visible; animation-name: fadeInLeft;">
                <div class="content">
                    <i class="flaticon-handshake"></i>
                    <h4>Trusted Agents</h4>
                    <p>Autocar has been operating for over 100 years with the trust of all people.</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInRight delay-03s" style="visibility: visible; animation-name: fadeInRight;">
                <div class="content">
                    <i class="flaticon-dollar-sticker"></i>
                    <h4>Get an Offer</h4>
                    <p>The National Online Estate Agents. We work on a no-sale, no-fee basis and have over 100 years combined experience.</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInRight delay-03s" style="visibility: visible; animation-name: fadeInRight;">
                <div class="content">
                    <i class="flaticon-call-center-agent"></i>
                    <h4>24/7 CUSTOMER SUPPORT</h4>
                    <p>At AutoCar, we're all about helping you get around. Our Technical Support team is available for any questions you may have regarding products. Our multilingual 24/7 support allows to keep in touch with customers in all time zones and regions.</p>
                </div>
            </div>
        </div> 
    </div>

<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-100829780-2', 'auto');
    ga('send', 'pageview');
	</script>

                <div class="row">
                	<div class="footerinfo">
                    	<p class="col-lg-10 col-md-10 col-sm-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-12" style="text-align:center; font-size:20px;">
                        	<strong>
                        		
                            </strong>
                        </p>
                        <div>
                            <ul class="personal-info">
                                <li class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-12">
                                    <i class="fa fa-map-marker"></i>
                                    Address: 123 Ngô Thị Thu Minh St, Hồ Chí Minh, Việt Nam
                                </li>
                                <li class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-12">
                                    <i class="fa fa-envelope"></i>
                                    Email:<a href="mailto:autoworld@gmail.com">autoworld@gmail.com</a>
                                </li>
                                <li class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-12">
                                    <i class="fa fa-phone"></i>
                                    Phone: <a href="tel:0983 456 789">0983 456 789</a>
                                </li>
                            </ul>
                    	</div>
                    </div>
                </div>
            </div>

        </div>
    </footer>

</body>
</html
>
<%
rcCar.Close()
Set rcCar = Nothing
%>
<%
rcMap.Close()
Set rcMap = Nothing
%>
>