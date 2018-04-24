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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CHI TIẾT</title>
  <title>Car Details</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <script src="bootstrap/js/jquery-2.2.0.min.js"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="bootstrap/css/bootstrap--.css"
</head>

<body>
<!--TOP HEADER -->
<header class="top-header hidden-xs">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-7 col-xs-12">
                <div class="list-inline">
                    <a href="tel:01657556867"><i class="fa fa-phone"></i>Need Support? 098 3456789</a>
                    <a href="lethanhphuocltt@gmail.com"><i class="fa fa-envelope"></i>AUTOWORLD@gmail.com</a>
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
<!-- sub banner strated -->
<div class="sub_banner">
	<div class="overlay">
    	<div class="container">
        	<div class="row">
            	<div class="col-md-12">
                	<div class="breadcrumb-area">
                		<h2>CAR DETAILS</h2>
                    	<ul class="breadcrumbs">
                    		<li class="active">
                        		<a href="#">Home</a>
                        	</li>
                        	<li> &nbsp;>&nbsp; Car Details</li>
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
               	  <img src="images/grid/<%=(rcCar.Fields.Item("IMAGECAR").Value)%>" width=100%/>
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
                    <form method="get" action="So_sanh.asp">
                    	<input type="text" name="IdCar" value="<%=(rcCar.Fields.Item("IDCAR").Value)%>" />
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                            <button type="submit" class="btn btn-submit btn-warning">Contact Us</button>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                            <button type="submit" class="btn btn-submit btn-warning">Partial Payment</button>
                        </div> 
                    </form>
                </div>              
            </div>
        </div>
    </div>
 </div>
</div>
<!-- Car details body end-->
<!--footer -->
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
                <!--container -->
                <div class="container">
        <div class="main-title">
            <h1>We Are The Best</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac tortor at tellus feugiat congue quis ut nunc..</p>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInLeft delay-03s" style="visibility: visible; animation-name: fadeInLeft;">
                <div class="content">
                    <i class="flaticon-security"> </i>
                  
                    <h4>Highly  Secured</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut </p>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInLeft delay-03s" style="visibility: visible; animation-name: fadeInLeft;">
                <div class="content">
                    <i class="flaticon-handshake"></i>
                    <h4>Trusted Agents</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut </p>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInRight delay-03s" style="visibility: visible; animation-name: fadeInRight;">
                <div class="content">
                    <i class="flaticon-dollar-sticker"></i>
                    <h4>Get an Offer</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut </p>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInRight delay-03s" style="visibility: visible; animation-name: fadeInRight;">
                <div class="content">
                    <i class="flaticon-call-center-agent"></i>
                    <h4>24/7 CUSTOMER SUPPORT</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut </p>
                </div>
            </div>
        </div> 
        <a href="#" class="btn btn-submit">Read More</a>
    </div>
<script src="./Auto Car - Car Dealer HTML Template_files/ie10-viewport-bug-workaround.js.tải xuống"></script>

<!-- Custom javascript -->
<script src="./Auto Car - Car Dealer HTML Template_files/app.js.tải xuống"></script>
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-100829780-2', 'auto');
    ga('send', 'pageview');
	</script>
                <!-- -->
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
                                    Address: 20/F Green Road, Dhanmondi, Dhaka
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
>