<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="train.aspx.cs" Inherits="FinalCode.train" %>

<!DOCTYPE html>
<html>

<head>
	<title>College Chatbot</title>

	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Relief Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//tags -->
	<link href="data/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="data/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="data/css/prettyPhoto.css" rel="stylesheet" type="text/css" />
	<link href="data/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<link href="data/css/fontawesome-all.css" rel="stylesheet">
	<!-- //for bootstrap working -->
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:200,200i,300,300i,400,400i,500,500i,600,600i,700" rel="stylesheet">

     <style>
        body {
          background-image:url('data/images/login.jpg');
               background-size: cover;
               background-position:center;
                background-repeat:no-repeat;
                height:600px;
        }


    </style>
</head>

<body>

	<div class="top_header" id="home">
		<!-- Fixed navbar -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="nav_top_fx_w3layouts_agileits">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					    aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<div class="logo_wthree_agile">
						<h1>
							<a class="navbar-brand" href="index.aspx"> College Chatbot
								
							</a>
						</h1>
					</div>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<div class="nav_right_top">
							<ul class="nav navbar-nav">
							<li class="active">
								<a href="adminhome.aspx">Home</a>
							</li>
							<li>
								<a class="scroll" href="manageuser.aspx">Users</a>
							</li>
                            <li>
								<a class="scroll" href="studocuments.aspx">Process Documents</a>
							</li>
							  <li>
								<a class="scroll" href="alldocuments.aspx">All Documents</a>
							</li>
							<li>
								<a class="scroll" href="login.aspx">Logout</a>
							</li>

						</ul>
					</div>
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>
		<div class="clearfix"></div>
	</div>
	<!-- banner -->
   <form id="HomeForm" runat="server" style="color:white;padding-top:100px;color:black;">
  
	<h2>Patterns Loader</h2>   
	
        <table class="style1" style="color:black;padding-top:10px;font-size:20px;font-weight:bold;padding-left:50px;">
                
                  
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            Enter the Patterns :</td>
                        <td>
                        &nbsp;
                            <textarea id="pattern" runat="server"></textarea>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
               
                   
                  
                   <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            Enter the Responses :</td>
                        <td>
                        &nbsp;
                            <textarea id="resp" runat="server"></textarea>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
               
            
                  
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            <asp:Button ID="Button1" runat="server" Text="Reset" OnClick="Reset" />

                              <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Submit" OnClientClick="return Validator();" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
              <script>
     function Validator() {
         debugger;
         var flag = true;

         var unamer = document.getElementById('uname').value;
         var intRegexunamer = /^[A-Za-z0-9 ]+$/;
         if (!intRegexunamer.test(unamer)) {
             alert('Please enter a valid username.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }

         var namer = document.getElementById('name').value;
         var intRegexnamer = /^[A-Za-z ]+$/;
         if (!intRegexnamer.test(namer)) {
             alert('Please enter a valid name.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }


         var phone = document.getElementById('phone').value;
         var intRegex = /^(7|8|9)[0-9]{9}$/;
         if (!intRegex.test(phone)) {
             alert('Please enter a valid phone number.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }

         var age = document.getElementById('age').value;
         var intRegexage = /^[0-9]{2}$/;
         if (!intRegexage.test(age)) {
             alert('Please enter a valid age.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }

         var age = document.getElementById('cet').value;
         var intRegexage = /^[A-Za-z]{2}[0-9]{3}$/;
         if (!intRegexage.test(age)) {
             alert('Please enter a valid cet #.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }

         var gender = document.getElementById('gender').value;
         if (gender=="--Select--") {
             alert('Please select gender');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }


         var email = document.getElementById('mailid').value;
         var emailReg = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
         if (!emailReg.test(email) || email == '') {
             alert('Please enter a valid email id.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }



         var pswd = document.getElementById('pswd').value;	 


         var pswdPattern = /^[A-Za-z0-9]{5,8}$/;
         if (!pswdPattern.test(pswd)) {
             alert('Please enter min 5 max 8 characters password.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }



         return flag;
     }
 </script>
                   
                    
                </table>
        <br>   
        
                          
    <br />
    <br />

  
  </form>
    
    
    <!--//banner -->
  

	
	<script type="text/javascript" src="data/js/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="data/js/bootstrap.js"></script>
	<!-- script for responsive tabs -->
	<script src="data/js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true, // 100% fit in a container
				closed: 'accordion', // Start closed if in accordion view
				activate: function (event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type: 'vertical',
				width: 'auto',
				fit: true
			});
		});
	</script>
	<!--// script for responsive tabs -->
	<script src="data/js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 4
			$("#slider4").responsiveSlides({
				auto: true,
				pager: true,
				nav: false,
				speed: 500,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<script type="text/javascript" src="data/js/all.js"></script>
	<script>
		$('ul.dropdown-menu li').hover(function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
		}, function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
		});
	</script>

	<!-- js -->
	<script type="text/javascript" src="data/js/simplyCountdown.js"></script>
	<link href="data/css/simplyCountdown.css" rel='stylesheet' type='text/css' />
	<script>
		var d = new Date();
		simplyCountdown('simply-countdown', {
			year: d.getFullYear(),
			month: d.getMonth() + 2,
			day: 25
		});
		simplyCountdown('simply-countdown-custom', {
			year: d.getFullYear(),
			month: d.getMonth() + 2,
			day: 25
		});
		$('#simply-countdown-losange').simplyCountdown({
			year: d.getFullYear(),
			month: d.getMonth() + 2,
			day: 25
		});
	</script>
	<!--js-->
	<!--/tooltip -->
	<script>
		$(function () {
			$('[data-toggle="tooltip"]').tooltip({
				trigger: 'manual'
			}).tooltip('show');
		});

		// $( window ).scroll(function() {   
		// if($( window ).scrollTop() > 10){  // scroll down abit and get the action   
		$(".progress-bar").each(function () {
			each_bar_width = $(this).attr('aria-valuenow');
			$(this).width(each_bar_width + '%');
		});

		//  }  
		// });
	</script>
	<!--//tooltip -->
	<!-- Smooth-Scrolling-JavaScript -->
	<script type="text/javascript" src="data/js/easing.js"></script>
	<script type="text/javascript" src="data/js/move-top.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll, .navbar li a, .footer li a").click(function (event) {
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //Smooth-Scrolling-JavaScript -->
	<script type="text/javascript">
		$(document).ready(function () {
			/*
									var defaults = {
							  			containerID: 'toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
										easingType: 'linear' 
							 		};
									*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>


	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

	<!-- jQuery-Photo-filter-lightbox-Gallery-plugin -->
	<script type="text/javascript" src="data/js/jquery-1.7.2.js"></script>
	<script src="data/js/jquery.quicksand.js" type="text/javascript"></script>
	<script src="data/js/script.js" type="text/javascript"></script>
	<script src="data/js/jquery.prettyPhoto.js" type="text/javascript"></script>
	<!-- //jQuery-Photo-filter-lightbox-Gallery-plugin -->


</body>

</html>