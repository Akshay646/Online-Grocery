<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true" CodeFile="order_details.aspx.cs" Inherits="Admin_Panel_order_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="content-wrapper">

    <!-- Main content -->
    <section class="content container-fluid">
        <h4 class="btn btn-primary">Customer Name : <%=name %> </h4>
       <h4 class="btn btn-primary" >Email : <%=email %> </h4>
        <br />
        <br />
         <asp:GridView runat="server" ID="GridView1" 
            AutoGenerateColumns="False"
             DataSourceID="details_ds" Height="213px" Width="839px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <HeaderStyle HorizontalAlign="Left" BackColor="#3D7169" ForeColor="#FFFFFF" Font-Size="16pt" />
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

                <asp:BoundField DataField="catagory" HeaderText="Catagory" ItemStyle-CssClass="avlQty" >

<ItemStyle CssClass="avlQty"></ItemStyle>
                </asp:BoundField>

                <asp:BoundField DataField="quantity" HeaderText="Quantity" ItemStyle-CssClass="avlQty" >

<ItemStyle CssClass="avlQty"></ItemStyle>
                </asp:BoundField>

                <asp:BoundField DataField="netPrice" HeaderText="total price" ItemStyle-CssClass="avlQty" >

                

                
<ItemStyle CssClass="avlQty"></ItemStyle>
                </asp:BoundField>

                

                
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
        <br />
        <asp:Label runat="server" ID="lb" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" ForeColor="#996600" CssClass="top-right" ></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button runat="server" Text="View Payment" CssClass="btn btn-primary" ID="btn1" OnClick="btn1_Click" />
        <br />
        <%--<asp:Label runat="server" Text="Order Dispatched Successfully" CssClass="btn btn-primary" ID="btn2" />--%>         
        
          

       <asp:SqlDataSource runat="server" ID="details_ds" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="select p.name,p.price,c.image,c.catagory,c.netPrice,c.quantity from orders o inner join carts c on c.session_id=o.session_id inner join products p on c.product_id=p.Id Where o.session_id=@session_id">
            
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="order_id" Name="session_id"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>


        <br />


        <asp:Panel ID="Panel1" runat="server">
            <asp:GridView runat="server" ID="paymentgv" AutoGenerateColumns="False" DataKeyNames="o_id" DataSourceID="SqlDataSource1" Height="200px" Width="900px">
                
             <HeaderStyle HorizontalAlign="Left" BackColor="#3D7169" ForeColor="#FFFFFF" Font-Size="16pt" />
            <FooterStyle HorizontalAlign="Right" BackColor="#6C6B66" ForeColor="#FFFFFF" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

                <Columns>
                       
                    <asp:BoundField DataField="c_name" HeaderText="Name" SortExpression="c_name"></asp:BoundField>
                    <asp:BoundField DataField="c_phone" HeaderText="Phone" SortExpression="c_phone"></asp:BoundField>
                    <asp:BoundField DataField="c_address" HeaderText="Address" SortExpression="c_address"></asp:BoundField>
                    <asp:BoundField DataField="c_email" HeaderText="Email" SortExpression="c_email"></asp:BoundField>
                    <asp:BoundField DataField="card_no" HeaderText="Card_no" SortExpression="card_no"></asp:BoundField>
                    <asp:BoundField DataField="expiration" HeaderText="Expiration" SortExpression="expiration"></asp:BoundField>
                    <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount"></asp:BoundField>
                    <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date"></asp:BoundField>
                </Columns>

                <EditRowStyle BackColor="#999999"></EditRowStyle>

            <FooterStyle HorizontalAlign="Right" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>
            
            <HeaderStyle HorizontalAlign="Left" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Font-Size="16pt"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>

            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="SELECT * FROM [orders] WHERE ([session_id] = @session_id)">
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="order_id" Name="session_id" Type="String"></asp:QueryStringParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        


        
        <script type="text/javascript">
            $(function () {
                $('[id*=Panel1]').hide();
                $('[id*=disp]').hide();

                $('[id*=btn1]').click(function () {
                  
                    $('[id*=Panel1]').show();
                    $('[id*=disp]').show();



                    return false;
                });

            });

           
            </script>

       
        
    </section>
    <!-- /.content -->
  </div>
    
</asp:Content>

