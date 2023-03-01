<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php");  //include connection file
error_reporting(0);  // using to hide undefine undex errors
session_start(); //start temp session until logout/browser closed

?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>เว็บร้านอาหารตามสั่งเมืองเอกออนไลน์</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet"> </head>

<body class="home">
    
        <!--header starts-->
        <header id="header" class="header-scroll top-header headrom">
            <!-- .navbar -->
            <nav class="navbar navbar-dark">
                <div class="container">
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                    
                    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"> <a class="nav-link active" href="index.php">หน้าแรก <span class="sr-only">(current)</span></a> </li>
                            <li class="nav-item"> <a class="nav-link active" href="restaurants.php">เมนู <span class="sr-only"></span></a> </li>
                            
                           
							<?php
						if(empty($_SESSION["user_id"])) // if user is not login
							{
								echo '<li class="nav-item"><a href="login.php" class="nav-link active">เข้าสู่ระบบ</a> </li>
							  <li class="nav-item"><a href="registration.php" class="nav-link active">ลงทะเบียน</a> </li>';
							}
						else
							{
									//if user is login
									
									echo  '<li class="nav-item"><a href="your_orders.php" class="nav-link active">ออเดอร์ของคุณ</a> </li>';
									echo  '<li class="nav-item"><a href="logout.php" class="nav-link active">ลงชื่อออก</a> </li>';
							}

						?>
							 
                        </ul>
						 
                    </div>
                </div>
            </nav>
            <!-- /.navbar -->
        </header>
        <!-- banner part starts -->
        <section class="hero bg-image" data-image-src="images/img/home.jpg">
            <div class="hero-inner">
                <div class="container text-center hero-text font-white">
                    <h1>ร้านอาหารตามสั่งเมืองเอก </h1>
                    <h5 class="font-white space-xs">สามารถสั่งและส่งอาหารออนไลน์จากร้านอาหารตามสั่งเมืองเอกได้เลย!</h5>
                    
                </div>
            </div>
            <!--end:Hero inner -->
        </section>
        <!-- banner part ends -->
        <!-- How it works block starts -->
        <section class="how-it-works">
            <div class="container">
                <div class="text-xs-center">
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <p class="pay-info">*ชำระเงินหปลายทางในสั่งอาหารออนไลน์เท่านั้น
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <!-- How it works block ends -->
       
        <!-- end:Footer -->
    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>
</body>

</html>