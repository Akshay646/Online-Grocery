<%@ Page Title="" Language="C#" MasterPageFile="~/homee.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><asp:Label ID="msg" runat="server"></asp:Label>
    <div>
    
        
        <div class="wrap t3-mast-col ">
		<div class="container">
			<div class="t3-module module box-style dessert-box " id="Mod137"><div class="module-inner"><h3 class="module-title "><span>Your Order </span></h3><div class="module-ct"><div class="j2store-product-module j2store-product-module-list row-fluid col-sm-12 col-xs-12">

            <asp:GridView ID="GridView1" DataSourceID="SqlDataSource1"  runat="server" AutoGenerateColumns="False" ShowFooter="true" GridLines="None" Height="300px" Width="100%" DataKeyNames="Id">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                            <asp:Image runat="server" ID="imff" ImageUrl='<%#Eval("image") %>' Height="50px" Width="60px" />
                            </ItemTemplate>
                    </asp:TemplateField>
                
                <asp:BoundField DataField="catagory" HeaderText="catagory" SortExpression="catagory"></asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price"></asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity"></asp:BoundField>
                <%--<asp:BoundField DataField="netPrice" HeaderText="Net Price" SortExpression="netPrice"></asp:BoundField>--%>
                
                <asp:TemplateField HeaderText="net price">
                    <ItemTemplate>
                       <asp:Label runat="server" ID="netprice" Text='<%#Eval("netPrice") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                       Cart Total:<asp:Label runat="server" ID="carttoal"><%=amount %></asp:Label>
                    </FooterTemplate>
                </asp:TemplateField>

            </Columns>

            <HeaderStyle HorizontalAlign="Left" BackColor="#3D7169" ForeColor="#FFFFFF" />
            <FooterStyle HorizontalAlign="Right" BackColor="#6C6B66" ForeColor="#FFFFFF" />
            <AlternatingRowStyle BackColor="#F8F8F8" />

        </asp:GridView>

                <%--<strong><span class="auto-style1">Total Amount :</span></strong> <%=amount %>--%>

            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' 
             SelectCommand="select c.Id,c.name,c.price,p.image,c.catagory,c.netPrice,c.quantity,c.cartTotal from carts c inner join products p on c.product_id=p.Id Where c.session_id=@session_id">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="session_id" Name="session_id" Type="String"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>



                <div class="contact-2 col-sm-8">
<div class="contact-form">
<div style="width: 800px;
    border: 2px solid white;
    padding: 25px;
    margin: 25px;">







            <div class="tab-1 resp-tab-content" >
										
									             <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                                    <!--credit card-->
									<div class="tab-1 resp-tab-content" >
										<div class="payment-info">
											<h3><strong>Make Payment</strong></h3>
											<div id="vaish">
												<div class="tab-for">				
													<h5>FULL NAME</h5>
														<asp:TextBox runat="server" ID="fullname" CssClass="textboxfontcolor"></asp:TextBox>
													<h5>Delivery ADDRESS</h5>													
														<asp:TextBox runat="server" ID="address" CssClass="textboxfontcolor" ></asp:TextBox>
														<h5>MOBILE NUMBER</h5>													
														<asp:TextBox runat="server" ID="mobile" CssClass="textboxfontcolor" ></asp:TextBox>
														<h5>EMAIL ID</h5>		
                                                    <asp:Label ID="email" runat="server" CssClass="textboxfontcolor"></asp:Label>											
														
														
												</div>			
											</div>
											<h3 class="pay-title"><strong>Credit Card/Debit Card Info</strong></h3>
											<div>
												<div class="tab-for">				
													<h5>NAME ON CARD</h5>
														<asp:TextBox runat="server" ID="textbox5"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="textbox5"></asp:RequiredFieldValidator>
                                                    
													<h5>CARD NUMBER</h5>													
														<asp:TextBox runat="server" ID="textbox6"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="textbox6"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="textbox6" ErrorMessage="Enter Valid Number" ValidationExpression="^[0-9]{12}$" CssClass="auto-style24"></asp:RegularExpressionValidator>

                                                    <h5>Total Amount</h5>													
														<%=amount %>

												</div>	
                                                <br />

												<div class="transaction">
													<div class="tab-form-left user-form">
														<h5>EXPIRATION</h5>
															<ul>
																<li>
																	<asp:TextBox runat="server" ID="textbox7"  Height="35" Width="75"></asp:TextBox>
                                                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="textbox7" ErrorMessage="Enter Valid month" ValidationExpression="^[0-2]{2}$" CssClass="auto-style24"></asp:RegularExpressionValidator>

																</li>
																<li>
																	<asp:TextBox runat="server" ID="textbox8"  Height="35" Width="75"></asp:TextBox>
                                                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="textbox8" ErrorMessage="Enter Valid Year" ValidationExpression="^[0-9]{4}$" CssClass="auto-style24"></asp:RegularExpressionValidator>
	
																</li>
																
															</ul>
													



													
														<h5>&nbsp;</h5>
                                                        <h5>CVV NUMBER</h5>
														<asp:TextBox ID="TextBox9" runat="server" CssClass="tab-form-right-textbox"></asp:TextBox> 
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="textbox9" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                                       <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox9" ErrorMessage="Enter Valid CVV" ValidationExpression="^[0-9]{3}$" CssClass="auto-style24"></asp:RegularExpressionValidator>

												<asp:Button runat="server" ID="pay" Text="Order Now" CssClass="btn btn-primary" OnClick="pay_Click" />
											            <br />
													</div>
                                                </div>
												</div>
                                                
                                                <div>
											</div >
                                                
											</div>
                                            
                                            
                                        </div>
									</div>
                                    <!--credit card-->

                                    <!--debit card-->
									
                                    <!--debit card-->

                                    <!--paypal-->
									
		                            <!--paypal-->
        						</div>

                </div> 

                </div>
</div>
</div>
                </div></div></div></div></div>
            </div>

        
<%--<asp:Image ID="Image1" runat="server" ImageUrl="~/images/CreditCard.png" Height="197px" Width="314px" />
<asp:Image runat="server" ImageUrl="~/images/rupey.jpg" Height="185px" Width="328px" ID="Image3" />--%>
    


    

        </div>
</asp:Content>

