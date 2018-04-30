<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="Connections/cnAutoCar.asp" -->
<%
Dim rcAllBank
Dim rcAllBank_cmd
Dim rcAllBank_numRows

Set rcAllBank_cmd = Server.CreateObject ("ADODB.Command")
rcAllBank_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcAllBank_cmd.CommandText = "SELECT * FROM dbo.BANK" 
rcAllBank_cmd.Prepared = true

Set rcAllBank = rcAllBank_cmd.Execute
rcAllBank_numRows = 0
%>
<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = -1
Repeat1__index = 0
rcAllBank_numRows = rcAllBank_numRows + Repeat1__numRows
%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from storage.googleapis.com/themeforest-auto-car/car-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 03 Apr 2018 13:40:15 GMT -->
<head>
    <title>Auto Car - Bank Listing</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap--.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/fonts/linearicons/style.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/fonts/flaticon/font/flaticon.css">
    <link href="bootstrap/css/bootstrap-select.min.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" id="style_sheet" href="bootstrap/css/colors/default.css">

</head>


<body>
<!--header top -->
<header class="top-header hidden-xs">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-7 col-xs-12">
                    <div class="list-inline">
                        <a href="tel:01657556867"><i class="fa fa-phone"></i>Need Support? 098 xxxxxxx</a>
                        <a href="lethanhphuocltt@gmail.com"><i class="fa fa-envelope"></i>xxx@gmail.com</a>
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
                    <a href="Home.html" class="logo">
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
                        <h2>Bank Listing</h2>
                        <ul class="breadcrumbs">
                            <li><a href="Home.html">Home</a></li>
                            <li class="active">Bank Listing</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Sub banner end -->

<!-- Car list start-->
<div class="car-list content-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-xs-12">
                <!-- Block heading Start-->
                <div class="option-bar block-heading">
                    <div class="row">
                       <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                           <h4>
                                <span class="heading-icon">
                                    <i class="fa fa-th-list"></i>
                                </span>
                                <span class="hidden-xs">Bank Listing</span>
                         </h4>
                      </div>                        
                   </div>
               </div>
               <!-- Block heading end -->
              <div class="clearfix"></div>

                <!-- Car list start -->
                <% 
While ((Repeat1__numRows <> 0) AND (NOT rcAllBank.EOF)) 
%>
  <div class="car-list-box clearfix wow fadeInUp">
    <div class=" row-table row-flush">
      <div class="col-lg-4  col-md-5 col-sm-4 col-xs-12 car-pic">
        <div class="car-box-thumbnail">
          <img src="images/logobanks/<%=(rcAllBank.Fields.Item("IMAGEBANK").Value)%>" class="img-responsive">                              
          </div>
        </div>
      <!-- Detail Body -->
      <div class="col-lg-8 col-md-7 col-sm-8 col-xs-12 detail">
        <!-- Header -->
        <header>
          <!-- Title -->
          <h3 class="title">
            <a href="BankDetails.asp?IdBank=<%=(rcAllBank.Fields.Item("IDBANK").Value)%>"><%=(rcAllBank.Fields.Item("NAMEBANK").Value)%></a>
            </h3>
          </header>
        <div class="clearfix"></div>
        <!-- paragraph -->
        <p>
          <%=(rcAllBank.Fields.Item("SUMMARY").Value)%> 
          </p>
        <!-- Facilities List -->
        </div>
      </div>
  </div>
  <% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  rcAllBank.MoveNext()
Wend
%>
<!-- Car list end-->

                <!-- Page navigation Start-->
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
                <!-- Page navigation End-->
            </div>

            <div class="col-lg-4 col-md-4 col-xs-12">
                <!-- Sidebar start-->
                <div class="sidebar">
                    <aside class="sidebar-widget">
                        <!-- Helping Start-->
                        <div class="helping-Center">
                            <h2 class="title">Helping Center</h2>
                            <p>Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros.</p>
                            <ul class="contact-link">
                                <li>
                                    <i class="fa fa-map-marker"></i>
                                    Aenean vulputate porttitor
                                </li>
                                <li>
                                    <i class="fa fa-phone"></i>
                                    <a href="tel:+55-417-634-7071">
                                        +55 417 634 7071
                                    </a>
                                </li>
                                <li>
                                    <i class="fa fa-envelope-o"></i>
                                    <a href="mailto:info@themevessel.com">
                                        info@themevessel.com
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </aside>
                    <!-- end-->
                </div>
                <!-- Sidebar end-->
            </div>
        </div>
    </div>
</div>
<!-- Car list end-->
<!-- footer-->
 <footer class="clearfix">
        <div class="container">
            <!-- Sub footer-->
            <div class="sub-footer">
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <div class="logo-2">
                            <a href="Home.html">
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

<!-- Mirrored from storage.googleapis.com/themeforest-auto-car/car-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 03 Apr 2018 13:40:18 GMT -->
</html>
<%
rcAllBank.Close()
Set rcAllBank = Nothing
%>
