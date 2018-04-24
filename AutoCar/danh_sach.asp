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
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = -1
Repeat1__index = 0
rcCar_numRows = rcCar_numRows + Repeat1__numRows
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
                            <li class="active">>&nbsp;Car Grid Fullwidth</li>
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
                                <span class="hidden-xs"> Car Grid</span>
                            </h4>
                        </div>
                        <div class="col-lg-6 col-md-7 col-sm-7 col-xs-10 cod-pad">
                            <div class="sorting-options">
                              <select class="sorting">
                              	<option value="All" ></option>
                                <%
									While (NOT rcMake.EOF)
									%>
									<option value="<%=(rcMake.Fields.Item("IDMAKE").Value)%>"><%=(rcMake.Fields.Item("BRANDS").Value)%>
                                    </option>
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
                                                             
                                
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Block heading end -->
                
                <!-- Car grid start -->
                <div class="row">
                  <% 
					While ((Repeat1__numRows <> 0) AND (NOT rcCar.EOF)) 
					%>
					  <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
						<!-- Car box start-->
						<div class="thumbnail car-box clearfix">
						  <div class="car-box-thumbnail">
							<img src="images/grid/<%=(rcCar.Fields.Item("IMAGECAR").Value)%>" alt="car-2">
							<div class="listing-price">
							  <span class="del"><del>$<%=(rcCar.Fields.Item("PRICE").Value)%></del></span>
							  </div>
							</div>
						  
						  <!-- detail -->
						  <div class="caption detail">
							<!-- Header -->
							<header class="clearfix">
							  <h5 class="title">
								<a href="chi_tiet.asp?IdCar=<%=(rcCar.Fields.Item("IDCAR").Value)%>"><%=(rcCar.Fields.Item("NAMECAR").Value)%></a>
								</h5>
							  <ul class="custom-list">
								<li>
								  <a href="#">New Car</a> /
								  </li>
								<li>
								  <a href="#">Automatic</a> /
								  </li>
								<li>
								  <a href="#">Sports</a>
								  </li>
								</ul>
							  </header>
							<!-- paragraph -->
							<p><%=(rcCar.Fields.Item("NOTE").Value)%></p>
							<!-- Facilities List -->
							<div class="facilities-area">
							  <ul class="facilities-list clearfix">
								<li>
								  <i class="flaticon-gasoline-pump"></i>
								  <span><%=(rcCar.Fields.Item("FUELTYPE").Value)%></span>
								  </li>
								<li>
								  <i class="flaticon-automatic-flash-symbol"></i>
								  <span><%=(rcCar.Fields.Item("GASOLINE").Value)%></span>
								  </li>
								<li>
								  <i class="flaticon-road-with-broken-line"></i>
								  <span><%=(rcCar.Fields.Item("MILEAGE").Value)%></span>
								  </li>
								<li>
								  <i class="flaticon-racing-flag"></i>
								  <span>Chen` VIN</span>
								  </li>
								<li>
								  <i class="flaticon-transport"></i>
								  <span><%=(rcCar.Fields.Item("ENGINE").Value)%></span>
								  </li>
								<li>
								  <i class="flaticon-time"></i>
								  <span><%=(rcCar.Fields.Item("YEARMAKE").Value)%></span>
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
					  rcCar.MoveNext()
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
