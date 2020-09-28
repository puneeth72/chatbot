<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FinalCode.login" %>

<!DOCTYPE html>
<html>

<head>
	 <title>ChatBot </title>
	<meta charset="UTF-8"/>
	<meta name="description" content="loans HTML Template"/>
	<meta name="keywords" content="loans, html"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&display=swap" rel="stylesheet"/>
 
	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="css/flaticon.css"/>
	<link rel="stylesheet" href="css/slicknav.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="css/style.css"/>


	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
   
          <script>
            function myFunction() {
                debugger;
    document.getElementById('uname').value = document.getElementById('name').value + Math.floor((Math.random() * 900) + 1);

}
</script>
    <style>
        .reg input[type="submit"], input[type="reset"]
                              {
                               border: none;
                               outline: none;
                               height: 40px;
							   width: 100px;
                               background: #fb2525;
                               color: #fff;
                               font-size: 18px;
                               border-radius: 20px;
                               padding-left:20px;
                              }
.reg input[type="submit"]:hover{
                                     cursor: pointer;
	                                 background: #ffc107;
	                                 color: #000;
	                                }
									.reg input[type="reset"]:hover{
                                     cursor: pointer;
	                                 background: #ffc107;
	                                 color: #000;
	                                }


        </style>
    </head>
<body>
    
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section -->
	<header class="header-section">
		<a href="index.html" class="site-logo">
			<img src="#" alt=""/>
		</a>
		<nav class="header-nav">
			<ul class="main-menu">
                <img src="img/l.png" style="height:60px;width:100px;margin-left:-50%" />
				<li><a href="index.aspx" class="active">Home</a></li>
			<li><a href="register.aspx" class="active">register</a></li>
                <li><a href="login.aspx" class="active">Login</a></li>
	
			<%--	<li><a href="#">Register</a>
					<ul class="sub-menu">
						<li><a href="log.aspx">User Login</a></li>
						<li><a href="stationWorker.aspx">Worker Login</a></li>
					</ul>
				</li>--%>
			
			
			</ul>
			<div class="header-right">
				<a href="#" class="hr-btn"><i class="flaticon-029-telephone-1"></i>Call us now! </a>
				<div class="hr-btn hr-btn-2">0821 427 6200</div>
			</div>
		</nav>
	</header>
	<!-- Header Section end -->

	<!-- Hero Section end -->
	<section class="hero-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="hs-text">
						<h2 style="color:black">Welcome To ChatBot</h2>
						
						<a href="#" class="site-btn sb-dark">Find out more</a>
					</div>
				</div>
				<div class="col-lg-6">
					
                         <form id="form1" runat="server"  class="hero-form">
					
                          
					    
                           

                           
  <input type="text" placeholder="Enter CET Number" runat="server" id="uname" name="uname" />

                             
                                 <input type="password" placeholder="Enter the password" runat="server" id="pswd" name="pswd" />
                           
                    



				<div class="reg">
                      <input type="reset"  id="reset" runat="server" class="button button1"  value="reset" />
		<input type="submit"  id="submit" runat="server" value="submit" onclick="return validateForm();" onserverclick="Login" />
        <%--   <button class="site-btn" <%--onclick="return validateForm()"--%> <%--onclick="">Register</button>--%>
              
               </div>
					</form>
				</div>
			</div>
		</div>
		<div class="hero-slider owl-carousel">
			<div class="hs-item set-bg" data-setbg="img/hero-slider/1.jpg"></div>
			<div class="hs-item set-bg" data-setbg="img/hero-slider/2.jpg"></div>
			<div class="hs-item set-bg" data-setbg="img/hero-slider/3.jpg"></div>
		</div>
	</section>

    <script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/main.js"></script>

   	<script>
   	    function validateForm() {
   	        debugger;
   	        //  var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
   	        //    var mailformat = /^[a-zA-Z]+@@[a-zA-Z]+(.com|.in)$/;
   	        //var mailformat = /^w+([.-]?w+)*@w+([.-]?w+)*(.w{2,3})+$/;
   	        var x = document.getElementById('uname').value;
   	        var exp = /^[a-zA-Z]+$/;

   	        var a = document.getElementById('email').value;
   	        //var exp1 = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;


   	        var b = document.getElementById('pas').value;
   	        //var exp2 = /^[0-9a-z]{8}$/;

   	        var c = document.getElementById('phone').value;
   	        var exp3 = /^(6|7|8|9)[0-9]{9}$/;

   	        if (!exp.test(x)) {
   	            alert("Valid Name must be filled out");
   	            return false;
   	        }


   	        else if (a=="") {
   	            alert(" entered a valid email address!");    //The pop up alert for a valid email address
   	            document.form1.text1.focus();
   	            return true;
   	        }
   	            //}
   	        else if (b=="") {
   	            alert("Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters");
   	            return false;
   	        } 

   	        else if (!exp3.test(c)) {
   	            alert("phone number must be filled out start with 6,7,8,9");
   	            return false;
   	        }
   	        else if (document.getElementById('address').value == '') {
   	            alert("Address number must be filled out");
   	            return false;
   	        }



   	        
   	        }








   	    

   	</script>
</body>
</html>
