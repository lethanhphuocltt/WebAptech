<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="Connections/cnAutoCar.asp" -->
<%
Dim rcCarS__MMColParam
rcCarS__MMColParam = "1"
If (Request.QueryString("IdCar") <> "") Then 
  rcCarS__MMColParam = Request.QueryString("IdCar")
End If
%>
<%
Dim rcCarS
Dim rcCarS_cmd
Dim rcCarS_numRows

Set rcCarS_cmd = Server.CreateObject ("ADODB.Command")
rcCarS_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcCarS_cmd.CommandText = "SELECT * FROM dbo.CAR WHERE IDCAR = ?" 
rcCarS_cmd.Prepared = true
rcCarS_cmd.Parameters.Append rcCarS_cmd.CreateParameter("param1", 5, 1, -1, rcCarS__MMColParam) ' adDouble

Set rcCarS = rcCarS_cmd.Execute
rcCarS_numRows = 0
%>
<%
Dim rcAllCar
Dim rcAllCar_cmd
Dim rcAllCar_numRows

Set rcAllCar_cmd = Server.CreateObject ("ADODB.Command")
rcAllCar_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcAllCar_cmd.CommandText = "SELECT * FROM dbo.CAR" 
rcAllCar_cmd.Prepared = true

Set rcAllCar = rcAllCar_cmd.Execute
rcAllCar_numRows = 0
%>
<%
Dim rcCar2__MMColParam
rcCar2__MMColParam = "1"
If (Request.QueryString("IdCar2") <> "") Then 
  rcCar2__MMColParam = Request.QueryString("IdCar2")
End If
%>
<%
Dim rcCar2
Dim rcCar2_cmd
Dim rcCar2_numRows

Set rcCar2_cmd = Server.CreateObject ("ADODB.Command")
rcCar2_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcCar2_cmd.CommandText = "SELECT * FROM dbo.CAR WHERE IDCAR = ?" 
rcCar2_cmd.Prepared = true
rcCar2_cmd.Parameters.Append rcCar2_cmd.CreateParameter("param1", 5, 1, -1, rcCar2__MMColParam) ' adDouble

Set rcCar2 = rcCar2_cmd.Execute
rcCar2_numRows = 0
%>
<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from storage.googleapis.com/themeforest-auto-car/car-comparison.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 03 Apr 2018 13:40:27 GMT -->
<head>
    <title>Auto Car - Car Dealer HTML Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap--.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/fonts/linearicons/style.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/fonts/flaticon/font/flaticon.css">
    <link href="bootstrap/css/bootstrap-select.min.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" id="style_sheet" href="bootstrap/css/colors/default.css">

    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" >

    <!-- Google fonts -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800%7CPlayfair+Display:400,700%7CRoboto:100,300,400,400i,500,700">


    <script src="bootstrap/js/ie-emulation-modes-warning.js"></script>

</head>
<body>
<!--header top -->
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
<!-- Sub banner start -->
<div class="sub-banner">
    <div class="overlay">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="breadcrumb-area">
                        <h2>Car Comparison</h2>
                        <ul class="breadcrumbs">
                            <li><a href="index.html">Home</a></li>
                            <li class="active">>&nbsp;Car Comparison</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Sub banner end -->

<!-- Comparison start -->
<div class="comparison content-area">
    <div class="container">
        <div class="row mt-30">
            <div class="col-lg-4 col-md-4">
                <div class="heading">
                    <h3>Select Car's You Want To Compare</h3>
                </div>
            </div>
            <div class="col-lg-8 col-md-8">
                <div class="single-block Compare-search">
                    <form method="get" action="So_sanh.asp">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="form-group search-fields" >
                                    <select class="selectpicker" name="IdCar">
                                      <%
										While (NOT rcAllCar.EOF)
										%>
										<option value="<%=(rcAllCar.Fields.Item("IDCAR").Value)%>" <%If (Not isNull((rcCarS.Fields.Item("IDCAR").Value))) Then If (CStr(rcAllCar.Fields.Item("IDCAR").Value) = CStr((rcCarS.Fields.Item("IDCAR").Value))) Then Response.Write("selected=""selected""") : Response.Write("")%> ><%=(rcAllCar.Fields.Item("NAMECAR").Value)%></option>
										<%
										  rcAllCar.MoveNext()
										Wend
										If (rcAllCar.CursorType > 0) Then
										  rcAllCar.MoveFirst
										Else
										  rcAllCar.Requery
										End If
										%>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="form-group search-fields">
                                  <select class="selectpicker" name="IdCar2">
                                    <%
									While (NOT rcAllCar.EOF)
									%>
									<option value="<%=(rcAllCar.Fields.Item("IDCAR").Value)%>" <%If (Not isNull((rcCar2.Fields.Item("IDCAR").Value))) Then If (CStr(rcAllCar.Fields.Item("IDCAR").Value) = CStr((rcCar2.Fields.Item("IDCAR").Value))) Then Response.Write("selected=""selected""") : Response.Write("")%> ><%=(rcAllCar.Fields.Item("NAMECAR").Value)%></option>
									<%
									  rcAllCar.MoveNext()
									Wend
									If (rcAllCar.CursorType > 0) Then
									  rcAllCar.MoveFirst
									Else
									  rcAllCar.Requery
									End If
									%>
                                  </select>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="form-group">

                                    <button type="submit" class="btn btn-submit btn-block">Compare</button>

              </div>
          </div>
      </div>
                    </form>
  </div>
</div>
        </div>

        <div class="row">
            <div class="col-md-6 col-sm-6">
                <div class="thumbnail Compare-car">
                    <div class="car-box-thumbnail">
                        <img src="images/grid/<%=(rcCarS.Fields.Item("IMAGECAR").Value)%>" alt="car-1" class="img-responsive">
                    </div>
                    <!-- detail -->
                    <div class="caption detail clearfix">
                        <div class="pull-left">
                            <h5><%=(rcCarS.Fields.Item("NAMECAR").Value)%></h5>
                            <h6>$<%=(rcCarS.Fields.Item("PRICE").Value)%></h6>
                        </div>
                        <div class="pull-right">
                            <p>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-6">
                <div class="thumbnail Compare-car">
                    <div class="car-box-thumbnail">
                        <img src="images/grid/<%=(rcCar2.Fields.Item("IMAGECAR").Value)%>" alt="car-2" class="img-responsive">
                    </div>
                    <!-- detail -->
                    <div class="caption detail clearfix">
                        <div class="pull-left">
                            <h5><%=(rcCar2.Fields.Item("NAMECAR").Value)%></h5>
                            <h6>$<%=(rcCar2.Fields.Item("PRICE").Value)%></h6>
                        </div>
                        <div class="pull-right">
                            <p>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Comparison end -->

<!-- Comparison start -->
<div class="comparison faq content-area-8">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="tab-content">
                    <div class="tab-pane fade active in" id="generalInformataion">
                        <div class="panel-div">
                            <div class="panel-group" role="tablist">
                                <div class="panel panel-default">
                                    <div class="panel-heading active" role="tab" id="heading1">
                                        <h4 class="panel-title">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false">
                                                <i class="fa fa-plus"></i>General Information
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapse1" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
                                        <div class="panel-body panel-body-2 pd-0">
                                            <div class="compare-table">
                                                <table>
                                                    <tbody>
                                                    <tr>
                                                        <td> Fuel Type: </td>
                                                        <td> <%=(rcCarS.Fields.Item("FUELTYPE").Value)%></td>
                                                        <td> <%=(rcCar2.Fields.Item("FUELTYPE").Value)%></td>
                                                    </tr>
                                                    <tr>
                                                        <td> Stock: </td>
                                                        <td> <%=(rcCarS.Fields.Item("STOCK").Value)%></td>
                                                        <td> <%=(rcCar2.Fields.Item("STOCK").Value)%></td>
                                                    </tr>
                                                    <tr>
                                                        <td> Gasoline: </td>
                                                        <td> <%=(rcCarS.Fields.Item("GASOLINE").Value)%></td>
                                                        <td> <%=(rcCar2.Fields.Item("GASOLINE").Value)%></td>
                                                    </tr>
                                                    <tr>
                                                        <td> Engine: </td>
                                                        <td> <%=(rcCarS.Fields.Item("ENGINE").Value)%></td>
                                                        <td> <%=(rcCar2.Fields.Item("ENGINE").Value)%></td>
                                                    </tr>
                                                    <tr>
                                                        <td> Transmission: </td>
                                                        <td> <%=(rcCarS.Fields.Item("TRANSMISSION").Value)%></td>
                                                        <td> <%=(rcCar2.Fields.Item("TRANSMISSION").Value)%></td>
                                                    </tr>
                                                    <tr>
                                                        <td> VIN: </td>
                                                        <td> <%=(rcCarS.Fields.Item("VIN").Value)%></td>
                                                        <td> <%=(rcCar2.Fields.Item("VIN").Value)%></td>
                                                    </tr>
                                                    <tr>
                                                        <td> Mileage: </td>
                                                        <td> <%=(rcCarS.Fields.Item("MILEAGE").Value)%></td>
                                                        <td> <%=(rcCar2.Fields.Item("MILEAGE").Value)%> </td>
                                                    </tr>
                                                    
                                                  </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                               
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade features" id="extraFeatures">
                        <div class="panel-div">
                            <div class="panel-group" role="tablist">
                                <div class="panel panel-default">
                                    <div class="panel-heading active" role="tab" id="heading7">
                                        <h4 class="panel-title">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse7" aria-expanded="false">
                                                <i class="fa fa-plus"></i>Lorem ipsum dolor sit amet
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapse7" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
                                        <div class="panel-body panel-body-2">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus tincidunt aliquam. Aliquam gravida massa at sem vulputate interdum et vel eros. Maecenas eros enim, tincidunt vel turpis vel, dapibus tempus nulla. Donec vel nulla dui. Pellentesque sed ante sed ligula hendrerit condimentum. Suspendisse rhoncus fringilla ipsum quis porta. Morbi tincidunt viverra pharetra.
                                                Vestibulum vel mauris et odio lobortis laoreet eget eu magna. Proin mauris erat, luctus at nulla ut, lobortis mattis magna. Morbi a arcu lacus. Maecenas tristique velit vitae nisi consectetur, in mattis diam sodales. Mauris sagittis sem mattis justo bibendum, a eleifend dolor facilisis. Mauris nec pharetra tortor, ac aliquam felis. Nunc pretium erat sed quam consectetur fringilla.</p>
                                            <span>Was this answer helpful? <a href="#">Yes</a> <a href="#">No</a></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading active" role="tab" id="heading8">
                                        <h4 class="panel-title">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse8" aria-expanded="false">
                                                <i class="fa fa-plus"></i>Lorem ipsum dolor sit amet
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapse8" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
                                        <div class="panel-body panel-body-2">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus tincidunt aliquam. Aliquam gravida massa at sem vulputate interdum et vel eros. Maecenas eros enim, tincidunt vel turpis vel, dapibus tempus nulla. Donec vel nulla dui. Pellentesque sed ante sed ligula hendrerit condimentum. Suspendisse rhoncus fringilla ipsum quis porta. Morbi tincidunt viverra pharetra.
                                                Vestibulum vel mauris et odio lobortis laoreet eget eu magna. Proin mauris erat, luctus at nulla ut, lobortis mattis magna. Morbi a arcu lacus. Maecenas tristique velit vitae nisi consectetur, in mattis diam sodales. Mauris sagittis sem mattis justo bibendum, a eleifend dolor facilisis. Mauris nec pharetra tortor, ac aliquam felis. Nunc pretium erat sed quam consectetur fringilla.</p>
                                            <span>Was this answer helpful? <a href="#">Yes</a> <a href="#">No</a></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading" role="tab" id="headingThree">
                                        <h4 class="panel-title">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                <i class="fa fa-plus"></i>Lorem ipsum dolor sit amet
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree" aria-expanded="false">
                                        <div class="panel-body panel-body-2">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus tincidunt aliquam. Aliquam gravida massa at sem vulputate interdum et vel eros. Maecenas eros enim, tincidunt vel turpis vel, dapibus tempus nulla. Donec vel nulla dui. Pellentesque sed ante sed ligula hendrerit condimentum. Suspendisse rhoncus fringilla ipsum quis porta. Morbi tincidunt viverra pharetra.
                                                Vestibulum vel mauris et odio lobortis laoreet eget eu magna. Proin mauris erat, luctus at nulla ut, lobortis mattis magna. Morbi a arcu lacus. Maecenas tristique velit vitae nisi consectetur, in mattis diam sodales. Mauris sagittis sem mattis justo bibendum, a eleifend dolor facilisis. Mauris nec pharetra tortor, ac aliquam felis. Nunc pretium erat sed quam consectetur fringilla.</p>
                                            <span>Was this answer helpful? <a href="#">Yes</a> <a href="#">No</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade technical" id="VehicleOverview">
                        <div class="panel-div">
                            <div class="panel-group" role="tablist">
                                <div class="panel panel-default">
                                    <div class="panel-heading active" role="tab" id="heading9">
                                        <h4 class="panel-title">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse9" aria-expanded="false">
                                                <i class="fa fa-plus"></i>Lorem ipsum dolor sit amet
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapse9" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
                                        <div class="panel-body panel-body-2">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus tincidunt aliquam. Aliquam gravida massa at sem vulputate interdum et vel eros. Maecenas eros enim, tincidunt vel turpis vel, dapibus tempus nulla. Donec vel nulla dui. Pellentesque sed ante sed ligula hendrerit condimentum. Suspendisse rhoncus fringilla ipsum quis porta. Morbi tincidunt viverra pharetra.
                                                Vestibulum vel mauris et odio lobortis laoreet eget eu magna. Proin mauris erat, luctus at nulla ut, lobortis mattis magna. Morbi a arcu lacus. Maecenas tristique velit vitae nisi consectetur, in mattis diam sodales. Mauris sagittis sem mattis justo bibendum, a eleifend dolor facilisis. Mauris nec pharetra tortor, ac aliquam felis. Nunc pretium erat sed quam consectetur fringilla.</p>
                                            <span>Was this answer helpful? <a href="#">Yes</a> <a href="#">No</a></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading" role="tab" id="heading10">
                                        <h4 class="panel-title">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse10" aria-expanded="false">
                                                <i class="fa fa-plus"></i>Lorem ipsum dolor sit amet
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapse10" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree" aria-expanded="false">
                                        <div class="panel-body panel-body-2">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus tincidunt aliquam. Aliquam gravida massa at sem vulputate interdum et vel eros. Maecenas eros enim, tincidunt vel turpis vel, dapibus tempus nulla. Donec vel nulla dui. Pellentesque sed ante sed ligula hendrerit condimentum. Suspendisse rhoncus fringilla ipsum quis porta. Morbi tincidunt viverra pharetra.
                                                Vestibulum vel mauris et odio lobortis laoreet eget eu magna. Proin mauris erat, luctus at nulla ut, lobortis mattis magna. Morbi a arcu lacus. Maecenas tristique velit vitae nisi consectetur, in mattis diam sodales. Mauris sagittis sem mattis justo bibendum, a eleifend dolor facilisis. Mauris nec pharetra tortor, ac aliquam felis. Nunc pretium erat sed quam consectetur fringilla.</p>
                                            <span>Was this answer helpful? <a href="#">Yes</a> <a href="#">No</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Comparison end -->

<script src="bootstrap/js/jquery-2.2.0.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/bootstrap-slider.js"></script>
<script src="bootstrap/js/wow.min.js"></script>
<script src="bootstrap/js/jquery.scrollUp.js"></script>
<script src="bootstrap/js/bootstrap-select.min.js"></script>
<script src="bootstrap/js/bootstrap-submenu.js"></script>


<!-- Custom javascript -->
<script src="bootstrap/js/app.js"></script>
<!-- -->
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

<!-- Mirrored from storage.googleapis.com/themeforest-auto-car/car-comparison.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 03 Apr 2018 13:40:27 GMT -->
</html>
<%
rcCarS.Close()
Set rcCarS = Nothing
%>
<%
rcAllCar.Close()
Set rcAllCar = Nothing
%>
<%
rcCar2.Close()
Set rcCar2 = Nothing
%>
