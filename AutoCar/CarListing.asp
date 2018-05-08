<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="Connections/cnAutoCar.asp" -->
<%
Dim rcMake
Dim rcMake_cmd
Dim rcMake_numRows

Set rcMake_cmd = Server.CreateObject ("ADODB.Command")
rcMake_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcMake_cmd.CommandText = "SELECT * FROM dbo.MAKE" 
rcMake_cmd.Prepared = true

Set rcMake = rcMake_cmd.Execute
rcMake_numRows = 0
%>
<%
Dim rcCar
Dim rcCar_cmd
Dim rcCar_numRows

Set rcCar_cmd = Server.CreateObject ("ADODB.Command")
rcCar_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcCar_cmd.CommandText = "SELECT * FROM dbo.CAR" 
rcCar_cmd.Prepared = true

Set rcCar = rcCar_cmd.Execute
rcCar_numRows = 0
%>
<%
Dim rcIdMake1__MMColParam
rcIdMake1__MMColParam = "1"
If (Request.QueryString("IdMake1") <> "") Then 
  rcIdMake1__MMColParam = Request.QueryString("IdMake1")
End If
%>
<%
Dim rcIdMake1
Dim rcIdMake1_cmd
Dim rcIdMake1_numRows

Set rcIdMake1_cmd = Server.CreateObject ("ADODB.Command")
rcIdMake1_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcIdMake1_cmd.CommandText = "SELECT * FROM dbo.MAKE WHERE IDMAKE = ?" 
rcIdMake1_cmd.Prepared = true
rcIdMake1_cmd.Parameters.Append rcIdMake1_cmd.CreateParameter("param1", 5, 1, -1, rcIdMake1__MMColParam) ' adDouble

Set rcIdMake1 = rcIdMake1_cmd.Execute
rcIdMake1_numRows = 0
%>
<%
Dim rcSLMake__MMColParam
rcSLMake__MMColParam = "1"
If (Request.QueryString("IdMake1") <> "") Then 
  rcSLMake__MMColParam = Request.QueryString("IdMake1")
End If
%>
<%
Dim rcSLMake
Dim rcSLMake_cmd
Dim rcSLMake_numRows

Set rcSLMake_cmd = Server.CreateObject ("ADODB.Command")
rcSLMake_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcSLMake_cmd.CommandText = "SELECT * FROM dbo.CAR WHERE IDMAKE = ?" 
rcSLMake_cmd.Prepared = true
rcSLMake_cmd.Parameters.Append rcSLMake_cmd.CreateParameter("param1", 5, 1, -1, rcSLMake__MMColParam) ' adDouble

Set rcSLMake = rcSLMake_cmd.Execute
rcSLMake_numRows = 0
%>
<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = -1
Repeat1__index = 0
rcSLMake_numRows = rcSLMake_numRows + Repeat1__numRows
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <title>Auto Car - Car Listing</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">

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
                        <li  class="active">
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
                        <h2>Car Listing</h2>
                        <ul class="breadcrumbs">
                            <li><a href="Home.html">Home</a></li>
                            <li class="active">Car Listing</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Sub banner end -->

<!-- Car grid start-->
<div class="car-grid content-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <!-- Block heading Start-->
                <div class="block-heading">
                    <div class="row">
                        <div class="col-lg-6 col-md-5 col-sm-5 col-xs-2">
                            <h4>
                                <span class="heading-icon">
                                    <i class="fa fa-th-large"></i>
                                </span>
                                <span class="hidden-xs">Car Grid</span>
                            </h4>
                        </div>
                        <div class="col-lg-6 col-md-7 col-sm-7 col-xs-10 cod-pad">
                        <form method="get" action="CarListing.asp">
                            <div class="sorting-options">
                              <select class="sorting" name="IdMake1">
                                <%
While (NOT rcMake.EOF)
%>
                                <option value="<%=(rcMake.Fields.Item("IDMAKE").Value)%>" <%If (Not isNull((rcIdMake1.Fields.Item("IDMAKE").Value))) Then If (CStr(rcMake.Fields.Item("IDMAKE").Value) = CStr((rcIdMake1.Fields.Item("IDMAKE").Value))) Then Response.Write("selected=""selected""") : Response.Write("")%> ><%=(rcMake.Fields.Item("BRANDS").Value)%></option>
                                <%
  rcMake.MoveNext()
Wend
If (rcMake.CursorType > 0) Then
  rcMake.MoveFirst
Else
  rcMake.Requery
End If
%>
                              </select>
                              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <button style="text-align:center" type="submit" class=" btn btn-submit btn-block clearfix">Search</button>
                                </div>
</a>
                            </div>
                            
                             </form>
                        </div>
                    </div>
                </div>
                <!-- Block heading end -->
                
                <!-- Car grid start -->
                <div class="row">
                  <% 
While ((Repeat1__numRows <> 0) AND (NOT rcSLMake.EOF)) 
%>
  <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
    <!-- Car box start-->
    <div class="thumbnail car-box clearfix">
      <div class="car-box-thumbnail"> <img style="height:250px" src="images/imagesCar/<%=(rcSLMake.Fields.Item("IMAGECAR").Value)%>" alt="car-2">
        <div class="listing-price"> <span class="del"><del>$<%=(rcSLMake.Fields.Item("PRICE").Value)%></del></span> </div>
        </div>
      <!-- detail -->
      <div class="caption detail">
        <!-- Header -->
        <header class="clearfix">
          <h5 class="title"> <a href="CarDetails.asp?IdCar=<%=(rcSLMake.Fields.Item("IDCAR").Value)%>"><%=(rcCar.Fields.Item("NAMECAR").Value)%></a> </h5>
          <ul class="custom-list">
            <li> <a href="#">New Car</a> / </li>
            <li> <a href="#">Automatic</a> / </li>
            <li> <a href="#">Sports</a> </li>
            </ul>
          </header>
        <!-- paragraph -->
        <p style="height:200px"><%=(rcSLMake.Fields.Item("NOTE").Value)%></p>
        <!-- Facilities List -->
        <div class="facilities-area">
          <ul class="facilities-list clearfix">
            <li> <i class="flaticon-gasoline-pump"></i> <span><%=(rcSLMake.Fields.Item("FUELTYPE").Value)%></span> </li>
            <li> <i class="flaticon-automatic-flash-symbol"></i> <span><%=(rcCar.Fields.Item("GASOLINE").Value)%></span> </li>
            <li> <i class="flaticon-road-with-broken-line"></i> <span><%=(rcCar.Fields.Item("MILEAGE").Value)%></span> </li>
            <li> <i class="flaticon-racing-flag"></i> <span><%=(rcSLMake.Fields.Item("VIN").Value)%></span> </li>
            <li> <i class="flaticon-transport"></i> <span><%=(rcSLMake.Fields.Item("ENGINE").Value)%></span> </li>
            <li> <i class="flaticon-time"></i> <span><%=(rcSLMake.Fields.Item("YEARMAKE").Value)%></span> </li>
            </ul>
          </div>
        </div>
      </div>
    <!-- Car box end-->
  </div>
  <% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  rcSLMake.MoveNext()
Wend
%>
                </div>
                <!-- Car grid end-->

                <!-- Page navigation start-->
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">«</span>
                            </a>
                        </li>
                        <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">»</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- Page navigation end-->
            </div>
        </div>
    </div>
</div>
<!-- Car grid end-->

<!-- Car Viedo Modal -->
<div class="modal fade" id="carVideo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Lexus GS F</h4>
            </div>
            <div class="modal-body">
                <iframe src="https://www.youtube.com/embed/m5_AKjDdqaU"></iframe>
            </div>
        </div>
    </div>
</div>

<!-- Car Gallary Modal -->
<div class="modal fade" id="carGallary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel1">Lexus GS F</h4>
            </div>
            <div class="modal-body">
                <div id="carGallaryCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="images/grid/car-2.jpg" alt="car-2" class="img-responsive">
                        </div>

                        <div class="item">
                            <img src="images/grid/car-4.jpg" alt="car-4" class="img-responsive">
                        </div>

                        <div class="item">
                            <img src="images/grid/car-3.jpg" alt="car-3" class="img-responsive">
                        </div>

                        <div class="item">
                            <img src="images/grid/car-1.jpg" alt="car-1" class="img-responsive">
                        </div>
                    </div>
                    <!-- Left and right controls -->

                    <a class="left carousel-control" href="#carGallaryCarousel" role="button" data-slide="prev">
                            <span class="slider-mover-left" aria-hidden="true">
                                <i class="fa fa-angle-left"></i>
                            </span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carGallaryCarousel" role="button" data-slide="next">
                            <span class="slider-mover-right" aria-hidden="true">
                                <i class="fa fa-angle-right"></i>
                            </span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
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
</html>
<%
rcMake.Close()
Set rcMake = Nothing
%>
<%
rcCar.Close()
Set rcCar = Nothing
%>
<%
rcIdMake1.Close()
Set rcIdMake1 = Nothing
%>
<%
rcSLMake.Close()
Set rcSLMake = Nothing
%>
