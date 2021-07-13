<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="home1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    
     <!--main css-->
    <link rel="stylesheet" type="text/css" href="css/1.css" />
    <!--page layout-->
	<link rel="stylesheet" type="text/css" href="css/8.css" />
    <!--page layout-->
    <!--nav bar-->
	<link rel="stylesheet" type="text/css" href="css/12.css" />
    <!---->
	<link rel="stylesheet" type="text/css" href="css/18.css" />
<!--navigation bar and social media handles-->
    <link rel="stylesheet" type="text/css" href="css/19.css" />
<!--navigation bar and social media handles-->

    <link rel="stylesheet" type="text/css" href="css/24.css" />
	<link rel="stylesheet" type="text/css" href="css/25.css" />


	<link rel="stylesheet" type="text/css" href="css/28.css" />

    <link  rel="stylesheet" type="text/css" href="css/menubox.css" />

    <!--navigation menu overley-->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!---->

    
</head>
<body>
    <form id="form1" runat="server">
        <header id="t3-header" class="t3-header col-md-12 col-sm-12 col-xs-12 affix" data-spy="affix" data-offset-top="110">
	<div class="row">
		<div class="container">
		<!-- LOGO -->
		<div class="col-sm-4 col-xs-4 col-md-2 logo">
			<div>
				<a href="Home.aspx" title="Grocery Store">
											<img  src="images/logo.png" alt="Grocery Store" style="height:65px;width:70px;" />
															
				</a>
				<small class="site-slogan"></small>
			</div>
		</div>
		<!-- //LOGO -->
		
		<!-- MAIN NAVIGATION -->
		<nav id="t3-mainnav" class="navbar navbar-default t3-mainnav col-md-8 col-sm-9 hidden-sm hidden-xs">
			<!-- navigation bar -->
			

			<div class="t3-navbar navbar-collapse collapse">
				<div class="t3-megamenu" data-responsive="true">
<ul class="nav navbar-nav level0">
<li>
<a class="" href="Home.aspx">Home </a>

</li>
<li >
<a class="" href="registration.aspx">Registration </a>

</li>
<li>
<a class="dropdown-mega" href="Login.aspx">Login</a>

</li>
<li>
<a class="dropdown-mega" href="MainMenus.aspx">Categories<em class="caret"></em></a>


</li>
<li>
<a class="" href="Contact.aspx">Contact </a>

</li>
<li>


</li>
</ul>
</div>

			</div>
		</nav>
<!-- //MAIN NAVIGATION -->


					<div class="col-xs-4 col-sm-4 col-md-2 head-right">
				
									<!--add to cart -->
					<div class="languageswitcherload">
									<div class="j2store_cart_module_97">
						<div class="j2store-minicart-button">
				<span class="cart-item-info">
                    <a style="cursor:pointer" onclick="document.getElementById('modal-wrapper').style.display='block'"><img src="images/cart.png" style="height:40px;width:40px;" />
						<asp:Label runat="server" class="cart-item-count" ID="count_lbl" >0</asp:Label>
					</a>
				</span>
			</div>

									</div>
			
					</div>
					<!-- add to cart end-->
							</div>

            

			
		<div class="navbar-header col-sm-4 col-xs-4">
					
			
							
<button class="btn btn-primary off-canvas-toggle  hidden-lg hidden-md" type="button" data-pos="left" data-nav="#t3-off-canvas" data-effect="off-canvas-effect-4">
  <i class="fa fa-bars"></i>
</button>
					
			
		</div>


	</div>
	</div>
</header>
   
         <!--image slider-->  
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->

                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

   <div class="carousel-inner">
                    <div class="item active">
                        <img src="images/bg3.jpg" style="width:100%;height:550px" data-src="holder.js/900x500/auto/#7cbf00:#fff/text: " alt="First slide" />
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>Welcome To Our Grocery Store</h1>
                                <p>Hurry up! order here with cheap rates and good food quality</p>
                                
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/bg1.jpg" style="width:100%;height:550px" data-src="" alt="Second slide" />
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>We are here for you</h1>
                                
                                
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/bg2.jpg" style="width:100%;height:550px" data-src="" alt="Third slide" />
                        <div class="container">
                            <div class="carousel-caption">
                                <h1></h1>
                                <p></p>
                                
                            </div>
                        </div>
                    </div>
                </div>
               <a class="left carousel-control" href="#myCarousel" data-slide="prev"></a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next"></a>
            </div>
    <!--Slider end -->

    <!--banner-->
    <div class="t3-banner col-md-12 col-sm-12 col-xs-12 ">
		<div class="">
			<div class="t3-module module " id="Div1"><div class="module-inner"><h3 class="module-title "><span>Great Products </span></h3><div class="module-ct">	<div class="module-intro col-lg-12 col-sm-12 col-xs-12">Check out our Products</div>

<div class="custom">
	<div class="img-module col-md-12">
	<div class="col-md-5 delivery">
		<div class="discover-menu">
			<h2>View Category</h2>
			<h4>Keep browsing our latest Products</h4>
			<p>Checkout our new productss , As new owners, our mission with Grocery Store is to value the importance of product transparency and product quality..</p>
			<a href="MainMenus.aspx" class="btn-primary btn">Discover All</a></div>
	</div>
	<div class="col-md-7 book-module">		<div class="moduletable">
						
<div class="custom">
	<div class="row">
<div class="food-banner style1 col-md-12 wow flipInX animated animated animated animated" style="visibility: visible; animation-name: flipInX;">
<div class="img-container col-md-6"><img src="images/banner.png" alt="food gal" />

</div>

</div>
</div></div>
		</div>
	</div>
</div></div>
</div></div></div>
		</div>
	</div>
    <!--banner-->

        <footer id="t3-footer" class="wrap t3-footer">

			<!-- FOOT NAVIGATION -->
		<div class="container">
				<!-- SPOTLIGHT -->
	<div class="t3-spotlight t3-footnav  row">
	<div class=" col-lg-4 col-md-4 col-sm-12 col-xs-12">
								<div class="t3-module module " id="Mod113"><div class="module-inner"><h3 class="module-title "><span>Opening time</span></h3><div class="module-ct">
<div class="custom">
	<div class="footer">
<div class="service-time">
<div><span class="">Mon to sat</span> <em>.........</em> <span class="">8am to 8pm</span></div>
<div><span class="">Sunday</span> <em>.........</em> <span class="">11am to 8pm</span></div>
<div><span class="">Public holiday</span> <em>.........</em> <span class="">8am to 1pm</span></div>
</div>

</div></div>
</div></div></div>
							</div>
					
	<div class=" col-lg-4 col-md-4 col-sm-12 col-xs-12">
								<div class="t3-module module " id="Mod114"><div class="module-inner"><div class="module-ct">
<div class="custom">
	<div class="footer-contact">
<div>
<p>The Grocery Store, Khed, Ratnagiri India</p>
</div>
<div>
<p>Phone: (+91) 123-45689 <br />Fax: (+91) 123-45678</p>
</div>
<div>
<p>Grocery Store@domain.com</p>
</div>
</div></div>
</div></div></div>
							</div>

   <div class=" col-lg-3 col-md-3 col-sm-6 col-xs-12">
       <div class="t3-module module menu_categories " id="Mod152">
             <div class="module-inner">
                 <h3 class="module-title "><span>Social media links</span></h3>
                     <div class="module-ct">
<ul class="j2store-categories-module menu_categories">
	<li> 				
        <a href="www.facebook.com">
				<img src="images/facebook.png" width="40" height="40" border="0" />
		</a>
		<h4>
		<a href="#">Facebook</a>
   		</h4>

	</li>
    <li> 					
        <a href="#">
				<img src="images/twitter.png" alt="cat-image" width="40" height="40" border="0" />
	    </a>
		<h4>
		<a href="#">Twitter	</a>
   		</h4>

	</li>
	<li> 					
        <a href="#">
				<img src="images/linkedin.png" alt="cat-image" width="40" height="40" border="0" />
		</a>
		
		<h4>
		<a href="#">Linked In</a>
   		</h4>

	</li>
	<li> 					
        <a href="#">
				<img src="images/googlenew.jpg" alt="cat-image" width="40" height="40" border="0" />
		</a>
		
		<h4>
		<a href="#">Google</a>
   		</h4>

	</li>
</ul>

</div>
      </div>
			</div>
                </div>

        
			</div>
<!-- SPOTLIGHT -->
		</div>
		<!-- //FOOT NAVIGATION -->
	
	<section class="t3-copyright">
		<div class="container">
			<div class="row">
				<div class="col-md-12 copyright ">
					<div class="module">
	<small>Copyright © 2019 Grocery Store.com. All Rights Reserved.</small>
	
</div>

          
				</div>
				
			</div>
		</div>
	</section>

</footer>


<!--Pop up window-->
        



<div id="modal-wrapper" class="modal">
  
  <div class="modal-content animate" >
        
    <div class="imgcontainer">
        
      
      <img src="images/loginFace.png" alt="Avatar" class="avatar" />
     
    </div>

    
    <div class="container"><asp:Label ID="lbl1" runat="server"></asp:Label><br />
      <asp:Button runat="server" ID="bt1" OnClick="bt1_Click" type="submit" CssClass="loginbutton" Text="Login" />
      <asp:Button runat="server"  type="submit" ID="bt12" OnClick="bt12_Click"  CssClass="loginbutton" Text="Register" /><br />
 <a href="Home.aspx" class="closethewindow"> x    </a>
      
    </div>
    
  </div>
  
</div>

<script >


    var modal = document.getElementById('modal-wrapper');
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
        function closewin() {
            window.close();
        }
    }
</script>

 <style type="text/css">


/* Full-width input fields */


/* Set a style for all buttons */
.loginbutton {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 26px;
    border: none;
    cursor: pointer;
    width: 15%;
	font-size:20px;
}
button:hover {
    opacity: 0.8;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}
.avatar {
    width: 200px;
	height:200px;
    border-radius: 50%;
}

/* The Modal (background) */
.modal {
    overflow:hidden;
	display:none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    bottom:15px;
    width: 100%;

}

/* Modal Content Box */
.modal-content {
    
    top:100px; 
        left:5%;
    background-color: #fefefe;
    margin: 4% auto 15% auto;
    border: 1px solid #888;
    width: 40%; 
	padding-bottom: 30px;

}

/* The Close Button (x) */
.closethewindow {
    
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
    color: red;
    cursor: pointer;
}


/* Add Zoom Animation */
.animate {
    animation: zoom 0.6s
}
@keyframes zoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}
</style>



<!--Pop up window-->








    </form>
</body>
</html>
