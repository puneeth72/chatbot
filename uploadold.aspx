<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadold.aspx.cs" Inherits="FinalCode.uploadold" %>

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
								<a class="scroll" href="chatbot.aspx">Chatbot</a>
							</li>
							<li>
								<a class="scroll" href="upload.aspx">Documents</a>
							</li>
                             <li>
								<a class="scroll" href="docstatus.aspx">Documents Status</a>
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
	
       <div id="FormBody" style="background-color:#66ccff;padding:140px;background-size: cover;min-height:650px;">
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
                            <span style="font-weight:bolder;font-size:25px;color:black;">Upload Files !!!</span>
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
                            Education Proof:
                        </td>
                        <td>
                            &nbsp;
                             <input type="file"  runat="server" id="eduproof" accept=".pdf,.PDF,.JPG,.jpg,.JPEG,.jpeg,.PNG,.png"/>
                        </td>
                         <td>
                            
                             Status:
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
                            
                             SSLC MarksCard:
                        </td>
                        <td class="style2">
                            &nbsp;
                            <input type="file" runat="server" id="slcproof" accept=".pdf,.PDF,.JPG,.jpg,.JPEG,.jpeg,.PNG,.png"/>
                        </td>
                         <td>
     
                            Status:
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
                            PUC MarksCard:</td>
                        <td>&nbsp;
                         <input type="file" runat="server" id="pcproof" accept=".pdf,.PDF,.JPG,.jpg,.JPEG,.jpeg,.PNG,.png"/>
                            </td>
                        <td align="right">
                            Status:</td>
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
     
                            Address Proof:
                        </td>
                        <td>
                            &nbsp;
                             <input type="file" runat="server" id="addproof" accept=".pdf,.PDF,.JPG,.jpg,.JPEG,.jpeg,.PNG,.png"/>
                        </td>
                        <td align="right">
                            Status:</td>
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

	<script type="text/javascript" src="data/js/jquery-2.2.3.min.js"></script>
	<script src="data/js/responsiveslides.min.js"></script>
	
<script>
    function valid()
    {
        debugger;
        if (document.getElementById("eduproof").value == "")
        {

        alert('Upload Education proof(only pdf and image)');
        return false;
        }
        if (document.getElementById("slcproof").value == "") {

            alert('Upload SSlC proof(only pdf and image)');
            return false;
        }
        if (document.getElementById("pcproof").value == "") {

            alert('Upload PUC proof(only pdf and image)');
            return false;
        }
        if (document.getElementById("addproof").value == "") {

            alert('Upload Address proof(only pdf and image)');
            return false;
        }
    }
</script>


	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>

</html>
