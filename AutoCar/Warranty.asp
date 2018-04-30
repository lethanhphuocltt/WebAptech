<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="Connections/cnAutoCar.asp" -->
<%
Dim rcWarranty__MMColParam
rcWarranty__MMColParam = "1"
If (Request.QueryString("IdMake") <> "") Then 
  rcWarranty__MMColParam = Request.QueryString("IdMake")
End If
%>
<%
Dim rcWarranty
Dim rcWarranty_cmd
Dim rcWarranty_numRows

Set rcWarranty_cmd = Server.CreateObject ("ADODB.Command")
rcWarranty_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcWarranty_cmd.CommandText = "SELECT * FROM dbo.WARRANTY WHERE IDMAKE = ?" 
rcWarranty_cmd.Prepared = true
rcWarranty_cmd.Parameters.Append rcWarranty_cmd.CreateParameter("param1", 5, 1, -1, rcWarranty__MMColParam) ' adDouble

Set rcWarranty = rcWarranty_cmd.Execute
rcWarranty_numRows = 0
%>
<%
Dim rcMake__MMColParam
rcMake__MMColParam = "1"
If (Request.QueryString("IdMake") <> "") Then 
  rcMake__MMColParam = Request.QueryString("IdMake")
End If
%>
<%
Dim rcMake
Dim rcMake_cmd
Dim rcMake_numRows

Set rcMake_cmd = Server.CreateObject ("ADODB.Command")
rcMake_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcMake_cmd.CommandText = "SELECT * FROM dbo.MAKE WHERE IDMAKE = ?" 
rcMake_cmd.Prepared = true
rcMake_cmd.Parameters.Append rcMake_cmd.CreateParameter("param1", 5, 1, -1, rcMake__MMColParam) ' adDouble

Set rcMake = rcMake_cmd.Execute
rcMake_numRows = 0
%>
<%
Dim rcDW__MMColParam
rcDW__MMColParam = "1"
If (Request.QueryString("IdMake") <> "") Then 
  rcDW__MMColParam = Request.QueryString("IdMake")
End If
%>
<%
Dim rcDW
Dim rcDW_cmd
Dim rcDW_numRows

Set rcDW_cmd = Server.CreateObject ("ADODB.Command")
rcDW_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcDW_cmd.CommandText = "SELECT d.* FROM dbo.WARRANTY w, dbo.DETAILSWARRANTY d, dbo.MAKE m WHERE d.IDWARRANTY = w.ID AND m.IDMAKE= w.IDMAKE AND m.IDMAKE= ?" 
rcDW_cmd.Prepared = true
rcDW_cmd.Parameters.Append rcDW_cmd.CreateParameter("param1", 5, 1, -1, rcDW__MMColParam) ' adDouble

Set rcDW = rcDW_cmd.Execute
rcDW_numRows = 0
%>
<%
Dim rcCW__MMColParam
rcCW__MMColParam = "1"
If (Request.QueryString("IdMake") <> "") Then 
  rcCW__MMColParam = Request.QueryString("IdMake")
End If
%>
<%
Dim rcCW
Dim rcCW_cmd
Dim rcCW_numRows

Set rcCW_cmd = Server.CreateObject ("ADODB.Command")
rcCW_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcCW_cmd.CommandText = "SELECT c.* FROM dbo.WARRANTY w, dbo.CONDITIONSWARRANTY c, dbo.MAKE m WHERE c.IDWARRANTY = w.ID AND m.IDMAKE= w.IDMAKE AND m.IDMAKE=?" 
rcCW_cmd.Prepared = true
rcCW_cmd.Parameters.Append rcCW_cmd.CreateParameter("param1", 5, 1, -1, rcCW__MMColParam) ' adDouble

Set rcCW = rcCW_cmd.Execute
rcCW_numRows = 0
%>
<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = -1
Repeat1__index = 0
rcDW_numRows = rcDW_numRows + Repeat1__numRows
%>
<%
Dim Repeat2__numRows
Dim Repeat2__index

Repeat2__numRows = -1
Repeat2__index = 0
rcCW_numRows = rcCW_numRows + Repeat2__numRows
%>
<% Dim Luu%>
<!doctype html>
<html>
<head>
	<title>Auto Car - Warranty</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap--.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/fonts/flaticon/font/flaticon.css">
    <link href="bootstrap/css/bootstrap-select.min.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" id="style_sheet" href="bootstrap/css/colors/default.css">
 

</head>

<body>
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
                        <h2>Warranty</h2>
                        <ul class="breadcrumbs">
                            <li><a href="Home.html">Home</a></li>
                            <li class="active">Warranty</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--end main header start -->


<!--end block heading start -->
<div class="tl col-lg-9 col-xs-12 col-xs-offset-1">
<div class="">
  <div class="row" >
     
     <div class="col-lg-4 col-xs-5" >
       <h3 style="text-align:center">Car Manufacturer</h3>
     </div>
     <div class="col-lg-5 col-xs-7">
       <h3 style="text-align:center"><%=(rcMake.Fields.Item("BRANDS").Value)%></h3>
     </div>
     
  </div>
  <div>
    <form>
      <hr>
      </hr>
      <div class="row">
        <div class="col-lg-4 col-xs-5" >
          <h3 style="text-align:center">Warranty Conditions</h3>
        </div>
        <div class="col-lg-5 col-xs-7">
          <ul>
            <% 
While ((Repeat2__numRows <> 0) AND (NOT rcCW.EOF)) 
%>
  <li><%=(rcCW.Fields.Item("CONDITION").Value)%></li>
  <% 
  Repeat2__index=Repeat2__index+1
  Repeat2__numRows=Repeat2__numRows-1
  rcCW.MoveNext()
Wend
%>
          </ul>
        </div>
      </div>
      <hr>
      </hr>
      <div class="row">
        <div class="col-lg-4 col-xs-5" >
          <h3 style="text-align:center">Warranty Information</h3>
        </div>
        <div class="col-lg-5 col-xs-7">
          <ul>
            <% 
While ((Repeat1__numRows <> 0) AND (NOT rcDW.EOF)) 
%>
              <li><%=(rcDW.Fields.Item("DETAIL").Value)%></li>
              <% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  rcDW.MoveNext()
Wend
%>
          </ul>
        </div>
      </div>
      </hr>
      <hr>
      </hr>
      <div class="row">
        <div class="col-lg-4 col-xs-5" >
          <h3 style="text-align:center">Warranty Period</h3>
        </div>
        <div class="col-lg-5 col-xs-7">
          <ul>
            <li><%=(rcWarranty.Fields.Item("TIMEWARRANTY").Value)%><span> Month</span></li>
          </ul>
        </div>
      </div>
    </form>
  </div>
<hr>	</hr>
  </div>
</div>
</div> 
<!-- -->

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
</html>
<%
rcWarranty.Close()
Set rcWarranty = Nothing
%>
<%
rcMake.Close()
Set rcMake = Nothing
%>
<%
rcDW.Close()
Set rcDW = Nothing
%>
<%
rcCW.Close()
Set rcCW = Nothing
%>
