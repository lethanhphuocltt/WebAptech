<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="Connections/cnAutoCar.asp" -->
<%
Dim rcDanhSachXe
Dim rcDanhSachXe_cmd
Dim rcDanhSachXe_numRows

Set rcDanhSachXe_cmd = Server.CreateObject ("ADODB.Command")
rcDanhSachXe_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcDanhSachXe_cmd.CommandText = "SELECT * FROM dbo.CAR" 
rcDanhSachXe_cmd.Prepared = true

Set rcDanhSachXe = rcDanhSachXe_cmd.Execute
rcDanhSachXe_numRows = 0
%>
<%
Dim rcHang
Dim rcHang_cmd
Dim rcHang_numRows

Set rcHang_cmd = Server.CreateObject ("ADODB.Command")
rcHang_cmd.ActiveConnection = MM_cnAutoCar_STRING
rcHang_cmd.CommandText = "SELECT * FROM dbo.CARBARRANDS" 
rcHang_cmd.Prepared = true

Set rcHang = rcHang_cmd.Execute
rcHang_numRows = 0
%>
<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = -1
Repeat1__index = 0
rcDanhSachXe_numRows = rcDanhSachXe_numRows + Repeat1__numRows
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
    <link rel="stylesheet" type="text/css" href="testCSS/css/style2.css" />

</head>

<body>
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
                                <span class="hidden-xs"> Car Grid</span>
                            </h4>
                        </div>
                        <div class="col-lg-6 col-md-7 col-sm-7 col-xs-10 cod-pad">
                            <div class="sorting-options">
                              <select class="sorting">
                                <%
While (NOT rcHang.EOF)
%>
                                <option value="<%=(rcHang.Fields.Item("IDCB").Value)%>"><%=(rcHang.Fields.Item("BRANDS").Value)%></option>
                                <%
  rcHang.MoveNext()
Wend
If (rcHang.CursorType > 0) Then
  rcHang.MoveFirst
Else
  rcHang.Requery
End If
%>
                                  
                              </select>
                              <select class="sorting">
                                <option>nhan hieu</option>
                                    <option>nhan hieu</option>
                                    <option>nhan hieu</option>
                                    <option>nhan hieu</option>
                                </select>                                
                                <a href="car-list-3.html" class="change-view-btn"><i class="fa fa-th-list"></i></a>
                                <a href="car-grid-3.html" class="change-view-btn active-view-btn"><i class="fa fa-th-large"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Block heading end -->
                
                <!-- Car grid start -->
                <div class="row">
                  <% 
While ((Repeat1__numRows <> 0) AND (NOT rcDanhSachXe.EOF)) 
%>
  <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
    <!-- Car box start-->
    <div class="thumbnail car-box clearfix">
      <div class="car-box-thumbnail">
        <img src="images/grid/<%=(rcDanhSachXe.Fields.Item("IMAGECAR").Value)%>" alt="car-2">
        </div>
      
      <!-- detail -->
      <div class="caption detail">
        <!-- Header -->
        <header class="clearfix">
          <h5 class="title">
            <a href="car-details.html"><%=(rcDanhSachXe.Fields.Item("NAMECAR").Value)%></a>
            </h5>
          
          </header>
        <!-- paragraph -->
        <p>thong tin̉</p>
        <!-- Facilities List -->
        <div class="facilities-area">
          <ul class="facilities-list clearfix">
            <li>
              <i class="flaticon-gasoline-pump"></i>
              <span>Gasoline</span>
              </li>
            <li>
              <i class="flaticon-automatic-flash-symbol"></i>
              <span>Automatic</span>
              </li>
            
            
            <li>
              <i class="flaticon-transport"></i>
              <span>5 Gears</span>
              </li>
            
            </ul>
          </div>
        </div>
      </div>
    <!-- Car box end-->
  </div>
  <% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  rcDanhSachXe.MoveNext()
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
<!--footer -->


</body>
</html>
<%
rcDanhSachXe.Close()
Set rcDanhSachXe = Nothing
%>
<%
rcHang.Close()
Set rcHang = Nothing
%>
