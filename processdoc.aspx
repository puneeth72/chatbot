<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="processdoc.aspx.cs" Inherits="FinalCode.processdoc" %>

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
   
       <div id="FormBody" style="background-color:#66ccff;padding-top:80px;background-size: cover;min-height:650px;">
          <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
              <img src="data/images/fp.jpg" class="col-md-12 col-lg-12 col-xs-12 col-sm-12"/>
            </div>

            <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
            	<form id="form1" runat="server" method="post">
				<table class="style1" style="color:black;font-size:18px;font-weight:bold;" border="0">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;
                            <span style="font-weight:bolder;font-size:25px;color:black;">Process Documents !!!</span>
                        </td>
                        <td align="center" colspan="2">
                            </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td>&nbsp;
                            
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Document Id:
                        </td>
                        <td>
                            &nbsp;
                            <asp:Label ID="docid" runat="server" ></asp:Label>
                        </td>
                         <td>
                            
                            
                        </td>
                        <td class="style2">
                            &nbsp;<label id="lbled" runat="server"></label>
                             </td>
                        <td style="font-size:18px;">
                          </td>
                        <td>&nbsp;
                    
                            &nbsp;</td>
                         <td>
                            &nbsp;
                        
                        </td>
                        <td>
                            &nbsp;
                           
                        </td>
                    </tr>
                     <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                          <td>
                            
                            Document Name :
                        </td>
                        <td class="style2">
                            &nbsp;
                           
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                         <td>
     
                          
                        </td>
                        <td>
                            &nbsp;<label id="lblslc" runat="server"></label>
                             </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
					 <tr>
                       <td style="font-size:18px;">
                           </td>
                        <td>&nbsp;
                         <asp:Button ID="Button1" runat="server" Text="Download" OnClick="Button1_Click" />
                            </td>
                        <td align="right">
                          </td>
                        <td>
                            &nbsp;<label id="lblpc" runat="server"></label></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                     <tr>
                       <td>
     
                            Comments :
                        </td>
                        <td>
                            &nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                        </td>
                        <td align="right">
                           </td>
                        <td>
                            &nbsp;<label id="lbladd" runat="server"></label></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                      <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                     <tr>
                       <td>
     
                            Change Status :
                        </td>
                        <td>
                            &nbsp;
                          <asp:DropDownList ID="DropDownList1" runat="server">
                              <asp:ListItem>Select Status</asp:ListItem>
                              <asp:ListItem>Completed</asp:ListItem>
                              <asp:ListItem>Rejected</asp:ListItem>
                              <asp:ListItem>Pending</asp:ListItem>
                          </asp:DropDownList>
                        </td>
                        <td align="right">
                           </td>
                        <td>
                            &nbsp;<label id="Label2" runat="server"></label></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            
                             <input id="reset" type="reset" value="Reset" runat="server"  style="background-color:#B8D4E3;border-radius:5px;width:95px;" />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          
                        <input id="logi" type="submit" onclick="return valid();" value="Submit" runat="server" onserverclick="logi_ServerClick" style="background-color:#B8D4E3;border-radius:5px;width:95px;" /></td>
                        <td align="right">
                           
                        <td>
                            
                             </td>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td>
                            </td>
                        <td>
                        &nbsp;
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
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="center" colspan="2" >
                            
                            <%--<a href="register.aspx"><span style="color:black;"> Sign up here !!!</a></span>&nbsp;</td>--%>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr> &nbsp;</td>
                    </tr>
                </table>
                </form>
            </div>
           
      </div>
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