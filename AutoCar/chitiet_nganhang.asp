<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="Connections/cnAutoCar.asp" -->
<%
Dim rcBankSL__MMColParam
rcBankSL__MMColParam = "1"
If (Request.QueryString("IdBank") <> "") Then 
  rcBankSL__MMColParam = Request.QueryString("IdBank")
End If
%>
<%
Dim rcBankSL
Dim rcBankSL_cmd
Dim rcBankSL_numRows

Set rcBankSL_cmd = Server.CreateObject ("ADODB.Command")
rcBankSL_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcBankSL_cmd.CommandText = "SELECT * FROM dbo.BANK WHERE IDBANK = ?" 
rcBankSL_cmd.Prepared = true
rcBankSL_cmd.Parameters.Append rcBankSL_cmd.CreateParameter("param1", 5, 1, -1, rcBankSL__MMColParam) ' adDouble

Set rcBankSL = rcBankSL_cmd.Execute
rcBankSL_numRows = 0
%>
<%
Dim rcConditionsSL__MMColParam
rcConditionsSL__MMColParam = "1"
If (Request.QueryString("IdBank") <> "") Then 
  rcConditionsSL__MMColParam = Request.QueryString("IdBank")
End If
%>
<%
Dim rcConditionsSL
Dim rcConditionsSL_cmd
Dim rcConditionsSL_numRows

Set rcConditionsSL_cmd = Server.CreateObject ("ADODB.Command")
rcConditionsSL_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcConditionsSL_cmd.CommandText = "SELECT * FROM dbo.CONDITIONS WHERE IDBANK = ?" 
rcConditionsSL_cmd.Prepared = true
rcConditionsSL_cmd.Parameters.Append rcConditionsSL_cmd.CreateParameter("param1", 5, 1, -1, rcConditionsSL__MMColParam) ' adDouble

Set rcConditionsSL = rcConditionsSL_cmd.Execute
rcConditionsSL_numRows = 0
%>
<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = -1
Repeat1__index = 0
rcConditionsSL_numRows = rcConditionsSL_numRows + Repeat1__numRows
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>DANH SÁCH</title>
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
                        <h2>Car Grid Fullwidth</h2>
                        <ul class="breadcrumbs">
                            <li><a href="index.html">Home</a></li>
                            <li class="active">Car Grid Fullwidth</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Sub banner end -->

<div class="bank-details content-area">
 <div>
 	<div class="row">
    	<div class="main-title" style="text-align:left;max-width:700px;margin:0 auto;margin-bottom:50px;">
        	<h1 style="text-align:center"><%=(rcBankSL.Fields.Item("NAMEBANK").Value)%><span> Bank</span></h1>
        	<h3 style="text-align:center">Conditions</h3>
            <ul class="clearfixx col-xs-10 col-lg-8 col-md-8 col-sm-12  col-md-offset-2 col-xs-offset-1" style="list-style-type:none;">
              <% 
While ((Repeat1__numRows <> 0) AND (NOT rcConditionsSL.EOF)) 
%>
                <li style="padding-bottom:15px;color:#808080;font-size:19px;"> <span><%=(rcConditionsSL.Fields.Item("CONDITION").Value)%></span></li>
                <% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  rcConditionsSL.MoveNext()
Wend
%>
            </ul>
        </div>
    </div>
 </div>
</div>
<div class="bank-slider content-area-3">
  <div class="container">
    <div class="row main_slider">
 		<div class="col-xs-2 col-lg-2 col-md-2 col-sm-2  col-md-offset-1">
    		<label>Loan: </label>
    	</div>
        <div class="col-xs-7 col-lg-8 col-md-7 col-sm-8">
			<input type="range" min="1" max="<%=(rcBankSL.Fields.Item("MAXAMOUNT").Value)%>" value="1" class="slider" id="Loan">
        </div>
      <div class="col-xs-3 col-lg-1 col-md-2 col-sm-2">
        	<p><span id="outLoan"></span>$</p>
        </div>
 	</div>
    <div class="row main_slider">
 		<div class="col-xs-2 col-lg-2 col-md-2 col-sm-2  col-md-offset-1">
    		<label>Month</label>
    	</div>
        <div class="col-xs-7 col-lg-8 col-md-7 col-sm-8">
			<input type="range" min="1" max="<%=(rcBankSL.Fields.Item("TIMEREPAY").Value)%>" value="1" class="slider" id="Month">
  			
        </div>
      <div class="col-xs-3 col-lg-1 col-md-2 col-sm-2">
        	<p><span id="outMonth"></span> Month</p>
        </div>
 	</div>
    
    <div class="row main_slider so_tien">
    	<div class="col-xs-8 col-lg-4 col-md-4 col-sm-4  col-md-offset-1">
            <label>Amount to be paid each month:</label>
         </div>
          <div class="col-xs-4 col-lg-4 col-md-4 col-sm-3 so_tien_container">
             <p><span id="AmountEachMonth"> 1</span><span>$</span>  </p>        
   	  </div>
    </div>
    <div class="row main_slider so_tien">
   	  <div class="col-xs-8 col-lg-4 col-md-4 col-sm-4  col-md-offset-1">
            <label>Total amount payable:</label>
         </div>
          <div class="col-xs-4 col-lg-4 col-md-4 col-sm-3 so_tien_container">
             <p><span id="TotalAmount"> 1</span><span>$</span>  </p>        
   	  </div>
    </div>
 </div>
</div>
<script>
var loan = document.getElementById("Loan");
var outLoan = document.getElementById("outLoan");

var month = document.getElementById("Month");
var outMonth = document.getElementById("outMonth");

var outAmountEachMonth = document.getElementById("AmountEachMonth");
var outTotalAmount = document.getElementById("TotalAmount");

outLoan.innerHTML = loan.value;
outMonth.innerHTML = month.value;
outTotalAmount.innerHTML = (month.value*0.1)*loan.value;


loan.oninput = function() {
  outLoan.innerHTML = loan.value;
  outTotalAmount.innerHTML = (month.value*0.1)*loan.value;
  
}


month.oninput = function() {
  outMonth.innerHTML = this.value;
  outTotalAmount.innerHTML = ((month.value*0.1)/100)*loan.value;
}
</script>
<!--footer -->
    <footer class="clearfix">
        <div class="container">
          <ul class="personal-info">
            
          </ul>
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
                                <li class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-12"> <i class="fa fa-envelope"></i> Email:<a href="mailto:autoworld@gmail.com">autoworld@gmail.com</a> </li>
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

>>>>>>> 8d85f7b4639e518b6901bceb33e787a37b2ac2dd
</body>
</html>
<%
rcBankSL.Close()
Set rcBankSL = Nothing
%>
<%
rcConditionsSL.Close()
Set rcConditionsSL = Nothing
%>
