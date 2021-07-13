<%@ Page Title="" Language="C#" MasterPageFile="~/homee.master" AutoEventWireup="true" CodeFile="cartitems.aspx.cs" Inherits="cartitems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrap t3-mast-col ">
		<div class="container">
			<div class="t3-module module box-style dessert-box " id="Mod137"><div class="module-inner"><h3 class="module-title "><span>my cart </span></h3><div class="module-ct"><div class="j2store-product-module j2store-product-module-list row-fluid col-sm-12 col-xs-12">
    <%if (GridView1.Rows.Count > 0)
      {
           
       %>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="true" GridLines="None" Height="300px" Width="100%"  >
        <HeaderStyle HorizontalAlign="Left" BackColor="#3D7169" ForeColor="#FFFFFF" />
        <FooterStyle HorizontalAlign="Right" BackColor="#6C6B66" ForeColor="#FFFFFF" />
        <AlternatingRowStyle BackColor="#F8F8F8" />
        <Columns >
            <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                            <asp:Image runat="server" ID="imff" ImageUrl='<%#Eval("image") %>' Height="50px" Width="60px" />
                            </ItemTemplate>
                    </asp:TemplateField>

            <asp:BoundField DataField="name" HeaderText="Name" />

            <asp:BoundField DataField="catagory" HeaderText="Catagory" ItemStyle-CssClass="" />

            <asp:BoundField DataField="price" DataFormatString="{0:0.00}" ItemStyle-CssClass="price"
                HeaderText="Price" />

            <asp:BoundField DataField="avlqty" HeaderText="Available qty" ItemStyle-CssClass="avlQty" />

            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>                
                    <asp:TextBox ID="TextBoxQty" CssClass="txtQty" runat="server" Text='<%# Eval("Qty") %>' MaxLength="5" Width="45"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxQty" Display="Dynamic" ForeColor="Red" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="delete">
            <ItemTemplate>
                <asp:Button ID="delete" runat="server" Text="delete" OnClick="delete_Click" CommandName="Delete" />
            </ItemTemplate>
        </asp:TemplateField>

            <asp:TemplateField HeaderText="Net Price">
                <ItemTemplate>
                    <span class="totalPrice" ></span> 
                </ItemTemplate>
                <FooterTemplate>
                   Total: <span class="grandtotal" style="font-size:22px"></span> 
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>        
    </asp:GridView><br />

                <%}
                   else
                   {%>
                <h2>Cart Is Empty</h2>
                <%} %>  

                
                
               <!-- <a href="#" class="j2store-cart-button btn btn-primary" style=""> proceed to checkout</a>-->
                <asp:Button ID="Button1" CssClass="j2store-cart-button btn btn-primary" runat="server" Text="Proceed To checkout" OnClick="btndelete_Click" />
               
				<asp:Label ID="label1" runat="server"></asp:Label>			
				        </div>
        </div></div></div></div></div>

    <script type="text/javascript">
        //Change price and grand total on changing qty
        $('#<%=GridView1.ClientID %> .txtQty').blur(function () {
            var $tr = $(this).parents('tr');
            if ($tr.length > 0) {
                if (parseInt($tr.find('.avlQty').html()) < $(this).val()) {
                    alert('Qty must not exceed available quantity.');
                    var $ctrl = $(this);
                    window.setTimeout(function () {
                        $ctrl.focus();
                    }, 50);
                    return false;
                }
                $tr.find('.totalPrice').html(parseFloat($tr.find('.price').html()) * parseInt($(this).val()));
            }
            CalculateGrandTotal();
        });

        //To get grand Total
        function CalculateGrandTotal() {
            var grandTotal = 0.0;
            $('#<%=GridView1.ClientID %> tr:gt(0)').each(function () {
                grandTotal = grandTotal + parseFloat($(this).find('.totalPrice').length == 0 || !$(this).find('.totalPrice').html() ? 0 : $(this).find('.totalPrice').html());
            });
            $('#<%=GridView1.ClientID %> .grandtotal').html(grandTotal);
        }

        //To allow numeric character only
        $('#<%=GridView1.ClientID %> .txtQty').keydown(function (event) {
            // Allow: backspace, delete, tab, escape, and enter
            if (event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 27 || event.keyCode == 13 ||
                // Allow: Ctrl+A
        (event.keyCode == 65 && event.ctrlKey === true) ||
                // Allow: home, end, left, right
        (event.keyCode >= 35 && event.keyCode <= 39)) {
                // let it happen, don't do anything
                return;
            }
            else {
                // Ensure that it is a number and stop the keypress
                if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105)) {
                    event.preventDefault();
                }
            }
        });

        //First Time to display all total amount and grand total
        function initGrid() {
            $('#<%=GridView1.ClientID %> tr:gt(0)').each(function () {
                $(this).find('.totalPrice').html(parseFloat($(this).find('.price').html()) * parseInt($(this).find('.txtQty').val()));

            });
            CalculateGrandTotal();
        }
        initGrid();
    </script>
</asp:Content>

