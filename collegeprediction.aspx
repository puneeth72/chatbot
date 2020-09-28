<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="collegeprediction.aspx.cs" Inherits="FinalCode.collegeprediction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        
        
        <script>
function myFunction() {
    var x = document.getElementById("name").value;
    document.getElementById("uname").value=document.getElementById("name").value+Math.floor(Math.random() * (9999 - 5));
}
</script>
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
							<li>
								<a href="userhome.aspx">Home</a>
							</li>
							<li class="active">
								<a class="scroll" href="collegeprediction.aspx">Colleges</a>
							</li>
							<li>
								<a class="scroll" href="login.aspx">Logout</a>
							</li>
							<%--<li>
								<a class="scroll" href="contact.aspx">Contact</a>
							</li>--%>

						</ul>
					</div>
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>
		<div class="clearfix"></div>
	</div>
	
       <div id="FormBody" style="background-color:#66ccff;padding:140px;background-size: cover;min-height:650px;">
         <%-- <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">.
              <%-- <img src="data/images/4.png" class="col-md-12 col-lg-12 col-xs-12 col-sm-12"/>
            </div>--%>

            <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
            	<form id="form1" runat="server" method="post">
				<table class="style1" style="color:black;font-size:18px;font-weight:bold;">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="center" colspan="2">
                            <span style="font-weight:bolder;font-size:25px;color:black;">Welcome to College Ranking Page !!!</span></td>
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
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td style="font-size:18px;">
                            Enter Rank:</td>
                        <td>&nbsp;&nbsp;
                            <asp:TextBox ID="rank" runat="server" ></asp:TextBox>
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
                        <td align="right">
                            <input id="reset" type="reset" value="Reset" runat="server"  style="background-color:#B8D4E3;border-radius:5px;width:95px;" /></td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <input id="logi" type="submit" value="Submit" runat="server" onserverclick="logi_ServerClick" style="background-color:#B8D4E3;border-radius:5px;width:95px;" /></td>
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
                      <div class="row">
				<div class="col-md-12 contact-left">
					<asp:GridView ID="GridView1" AutoGenerateColumns="false" runat="server"  CellPadding="3" CssClass="table-responsive" EmptyDataText="No Data" 
        EmptyDataRowStyle-ForeColor="green" Width="200%" Style="color:black" HeaderStyle-ForeColoe="White" HeaderStyle-BackColor="Green" 
        BackColor="White" BorderColor="Black" BorderStyle="None" BorderWidth="1px" EnableModelValidation="true"
      PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="true">
        <Columns>
        
            <asp:BoundField DataField="CutoffRank" HeaderText="College Rank" SortExpression="CutoffRank" ItemStyle-Font-Bold="true" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Qnum" ItemStyle-Font-Bold="true" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="CollegeName" HeaderText="College Name" SortExpression="Question" ItemStyle-Font-Bold="true" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Op1" ItemStyle-Font-Bold="true" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="Stream" HeaderText="Stream" SortExpression="Stream" ItemStyle-Font-Bold="true" ItemStyle-HorizontalAlign="Center"/>
 
               <%--	<asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Action" ShowHeader="True" Text="Edit" ControlStyle-Width="150px" ControlStyle-CssClass="btn btn-primary btn-md" />
        
           	<asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Action" ShowHeader="True" Text="Delete" ControlStyle-Width="150px" ControlStyle-CssClass="btn btn-primary btn-md" />--%>
        
            </Columns>

    </asp:GridView>
				</div>
			</div>
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

	<script type="text/javascript" src="data/js/jquery-2.2.3.min.js"></script>
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
	<script type="text/javascript" src="data/js/bootstrap.js"></script>

	<script type="text/javascript" src="data/js/all.js"></script>
	<script>
		$('ul.dropdown-menu li').hover(function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
		}, function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
		});
	</script>

	<!-- js -->
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


	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>

</html>