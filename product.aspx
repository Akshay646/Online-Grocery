<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="wrap t3-mast-col ">
		<div class="container">
			<div class="t3-module module box-style dessert-box " id="Mod137"><div class="module-inner"><h3 class="module-title "><span>MENU Items </span></h3>
   
               <div>
                   <a href="MainMenus.aspx" class="j2store-cart-button btn btn-primary">go back to menus</a>
                   <%--<asp:Button runat="server" ID="srchall" CssClass="divright" Text="search all" OnClick="srchall_Click" />--%>
                  <%--  <asp:Button ID="srchbtn" CssClass="divright" runat="server" Text="Search" OnClick="srchbtn_Click" />--%>
                   <%--<asp:TextBox runat="server" ID="srchpd" CssClass="divright"></asp:TextBox>
                   <asp:Label ID="Label1" runat="server" Text="Enter Name : " CssClass="divright"></asp:Label></div>--%>
                    
                <%--<div>
                    <asp:Button runat="server" ID="sortbyprice" CssClass="divright" OnClick="sortbyprice_Click" Text="Search"/>
                    <asp:DropDownList ID="dplst" runat="server" CssClass="divcenter">
                        <asp:ListItem>Relevant</asp:ListItem>
                        <asp:ListItem>Low to High</asp:ListItem>
                        <asp:ListItem>High To Low</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label runat="server" ID="sortlbl" Text="Sort by price" CssClass="divright"> </asp:Label>
                </div>--%>
  
                <div class="module-ct">
                <div class="j2store-product-module j2store-product-module-list row-fluid col-sm-12 col-xs-12">
                <asp:Label runat="server" ID="lblnew"></asp:Label>	
                
                
	 
               <br />
                    <br />
                <% 
                    if (product_list.Count > 0)
                    { 
                    
                    foreach (var product in product_list)
                   {%>
                            
                        <!--single product-->
                                <div class="menuborder">
    <div class="row" >
		<div class="col-sm-5 product-image">
			<div class="j2store-mainimage">
		   	<span>
                   <%--<asp:Image runat="server" Width="400" CssClass="j2store-product-main-image j2store-img-responsive" ID="imgmain" />--%>
		  	 <img class="j2store-product-main-image j2store-img-responsive" src="<%=product.image %>" width="400" />
		  	 <img src="<%=product.image %>" class="zoomImg" style="border-style: none; border-color: inherit; border-width: medium; position: absolute; top: -11px; left: -82px; opacity: 0; width: 1000px; height: 751px; max-width: none;" /></span>
			</div>
		</div>

		<div class="col-sm-7 product-content">		
	<h1 class="product-title"> <%=product.name %></h1>
			<div class="price-sku-brand-container row">
<div class="product-sku">
		<span class="sku-text">Name :</span>
		<span itemprop="sku" class="sku"> <%=product.name %> </span>
	</div>
				
<div class="product-price-container">
	<span class="price-title">Price: </span>
		<span class="sale-price">							
				<%=product.price %>				
		</span>
		
</div>		
				
      	<div class="category-title">
                    <span class="cat-title">Category: </span>                    
                    <span class="cat-name"><%=product.catagory %>
                    </span>
                </div>
			</div>
					
		<div id="Div1" class="j2store-add-to-cart">
				<asp:Button ID="mustlogin" runat="server" Text="Add to cart" class="btn btn-primary submit mb-4"  PostBackUrl="~/Login.aspx" />
									</div>
					</div>
	</div>
    </div>
                        <!--single product-->

                   <%}
                   }
                   else
                   {%>
                        <h2>No Menu Avaliable</h2>
                   <%}%>
    <asp:Label runat="server" ID="lbl"></asp:Label>

</div>
</div></div></div>
		</div>
	</div>
    
    </span>
    
</asp:Content>

