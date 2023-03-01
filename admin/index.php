<!DOCTYPE html>
<html lang="en" >
<?php
include("../connection/connect.php");
error_reporting(0);
session_start();
if(isset($_POST['submit']))
{
	$username = $_POST['username'];
	$password = $_POST['password'];
	
	if(!empty($_POST["submit"])) 
     {
	$loginquery ="SELECT * FROM shop WHERE username='$username' && password='".md5($password)."'";
	$result=mysqli_query($db, $loginquery);
	$row=mysqli_fetch_array($result);
	
	                        if(is_array($row))
								{
                                    	$_SESSION["adm_id"] = $row['adm_id'];
										 header("refresh:1;url=dashboard.php");
	                            } 
							else
							    {
                                      	$message = "Username หรือ Password ไม่ถูกต้อง!";
                                }
	 }
	
	
}

if(isset($_POST['submit1'] ))
{
     if(empty($_POST['cr_user']) ||
   	    empty($_POST['cr_email'])|| 
		empty($_POST['cr_pass']) ||  
		empty($_POST['cr_cpass']) ||
		empty($_POST['code']))
		{
			$message = "ต้องกรอกข้อมูลให้ครบทุกช่อง!";
		}
	else
	{
		
	
	$check_username= mysqli_query($db, "SELECT username FROM admin where username = '".$_POST['cr_user']."' ");
	
	$check_email = mysqli_query($db, "SELECT email FROM admin where email = '".$_POST['cr_email']."' ");
	
	  $check_code = mysqli_query($db, "SELECT adm_id FROM admin where code = '".$_POST['code']."' ");

	
	if($_POST['cr_pass'] != $_POST['cr_cpass']){
       	$message = "รหัสผ่านไม่ตรงกัน";
    }
	
    elseif (!filter_var($_POST['cr_email'], FILTER_VALIDATE_EMAIL)) // Validate email address
    {
       	$message = "อีเมลรูปแบบไม่ถูกต้อง โปรดพิมพ์อีเมลที่ถูกต้อง!";
    }
	elseif(mysqli_num_rows($check_username) > 0)
     {
    	$message = 'username นี้มีผู้อื่นใช้แล้ว!';
     }
	elseif(mysqli_num_rows($check_email) > 0)
     {
    	$message = 'อีเมล์นี้มีผู้อื่นใช้แล้ว!';
     }
	 if(mysqli_num_rows($check_code) > 0)           // if code already exist 
             {
                   $message = "รหัสเฉพาะมีอยู่ในระบบแล้ว!";
             }
	else{
       $result = mysqli_query($db,"SELECT id FROM admin_codes WHERE codes =  '".$_POST['code']."'");  //query to select the id of the valid code enter by user! 
					  
                     if(mysqli_num_rows($result) == 0)     //if code is not valid
						 {
                            // row not found, do stuff...
			                 $message = "รหัสไม่ถูกต้อง!";
                         } 
                      
                      else                                 //if code is valid 
					     {
	
								$mql = "INSERT INTO admin (username,password,email,code) VALUES ('".$_POST['cr_user']."','".md5($_POST['cr_pass'])."','".$_POST['cr_email']."','".$_POST['code']."')";
								mysqli_query($db, $mql);
									$success = "สร้างบัญชีของคุณสำเร็จแล้ว!";
						 }
        }
	}

}
?>

<head>
  <meta charset="UTF-8">
  <title>เข้าสู่ระบบเจ้าของร้าน</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Montserrat:400,700'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="css/login.css">

  
</head>

<body>

  
<div class="container">
  <div class="info">
    <h1>เจ้าของร้าน </h1><span> เข้าสู่ระบบด้วยบัญชีของคุณ</span>
  </div>
</div>
<div class="form">
  <div class="thumbnail"><img src="images/manager.png"/></div>
  
  <form class="register-form" action="index.php" method="post">
    <input type="text" placeholder="username" name="cr_user"/>
    <input type="text" placeholder="email address"  name="cr_email"/>
	 <input type="password" placeholder="password"  name="cr_pass"/>
	  <input type="password" placeholder="Confirm password"  name="cr_cpass"/>
	  <input type="password" placeholder="Unique-Code"  name="code"/>
   <input type="submit"  name="submit1" value="Create" />

  </form>
  
  <span style="color:red;"><?php echo $message; ?></span>
   <span style="color:green;"><?php echo $success; ?></span>
  <form class="login-form" action="index.php" method="post">
    <input type="text" placeholder="Username" name="username"/>
    <input type="password" placeholder="Password" name="password"/>
    <input type="submit"  name="submit" value="เข้าสู่ระบบ" />

  </form>
  
</div>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script src='js/index.js'></script>
  

    



</body>

</html>
