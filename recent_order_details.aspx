<%@ Page Title="" Language="C#" MasterPageFile="~/homee.master" AutoEventWireup="true" CodeFile="recent_order_details.aspx.cs" Inherits="recent_order_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            font-weight: 700;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="wrap t3-mast-col ">
		<div class="container">
			<div class="t3-module module box-style dessert-box " id="Mod137"><div class="module-inner"><h3 class="module-title "><span> Order Summary</span></h3><div class="module-ct"><div class="j2store-product-module j2store-product-module-list row-fluid col-sm-12 col-xs-12">
                       
    <asp:GridView runat="server" ID="GridView1" 
            AutoGenerateColumns="False"
             DataSourceID="details_ds" Height="213px" Width="839px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <HeaderStyle HorizontalAlign="Left" BackColor="#3D7169" ForeColor="#FFFFFF" />
            <FooterStyle HorizontalAlign="Right" BackColor="#6C6B66" ForeColor="#FFFFFF" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image runat="server" ID="imff" ImageUrl='<%#Eval("image") %>' Height="50px" Width="60px" />
                    </ItemTemplate>
                </asp:TemplateField>

                

                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price"></asp:BoundField>

                <asp:BoundField DataField="catagory" HeaderText="Catagory" ItemStyle-CssClass="avlQty" />

                <asp:BoundField DataField="quantity" HeaderText="Quantity" ItemStyle-CssClass="avlQty" />

                <asp:BoundField DataField="netPrice" HeaderText="total price" ItemStyle-CssClass="avlQty" />

                

                
            </Columns>
            <EditRowStyle BackColor="#999999"></EditRowStyle>

            <FooterStyle HorizontalAlign="Right" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>
            
            <HeaderStyle HorizontalAlign="Left" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
        </asp:GridView>

                <asp:Label runat="server" ID="lb" CssClass="auto-style1"></asp:Label>
                </div></div></div></div></div></div>
    <asp:SqlDataSource runat="server" ID="details_ds" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="select p.name,p.price,p.image,c.catagory,c.netPrice,c.quantity from orders o inner join carts c on c.session_id=o.session_id inner join products p on c.product_id=p.Id Where o.session_id=@session_id">
            
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="order_id" Name="session_id"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>

</asp:Content>

