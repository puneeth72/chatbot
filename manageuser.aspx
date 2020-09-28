<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manageuser.aspx.cs" Inherits="FinalCode.manageuser" %>

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
  
	<h2>Manage Students</h2>   
	
        <br>   
        
  <asp:GridView ID="GridView1" AutoGenerateColumns="false" runat="server" CssClass="table table-responsive" CellPadding="3" EmptyDataText="No Data" 
        EmptyDataRowStyle-ForeColor="green" Width="100%" Style="color:black" HeaderStyle-ForeColoe="White" HeaderStyle-BackColor="Green" 
        BackColor="White" BorderColor="Black" BorderStyle="None" BorderWidth="1px" EnableModelValidation="true" 
        OnRowDeleting="Delete"  >
      <Columns>
                        <asp:BoundField DataField="username" HeaderText="Username" 
                            SortExpression="username" />
                            <asp:BoundField DataField="named" HeaderText="Name" 
                            SortExpression="named" />  
                            <asp:BoundField DataField="phone" HeaderText="Phone #" 
                            SortExpression="phone" />     
                            <asp:BoundField DataField="email" HeaderText="Email Id" 
                            SortExpression="email" />    
                            <asp:BoundField DataField="age" HeaderText="Age" 
                            SortExpression="age" />       
                            <asp:BoundField DataField="cet" HeaderText="CET #" 
                            SortExpression="cet" />                           
                        <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" ControlStyle-Width="150px" ControlStyle-CssClass="btn btn-primary btn-md" >
                   
<ControlStyle CssClass="btn btn-primary btn-md" Width="150px"></ControlStyle>
                        </asp:ButtonField>
                   
                    </Columns>
                    
                    <FooterStyle BackColor="White" ForeColor="#333333" />

<HeaderStyle ForeColor="White" BackColor="#336666" Font-Bold="True"></HeaderStyle>
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    
                </asp:GridView>
                          
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