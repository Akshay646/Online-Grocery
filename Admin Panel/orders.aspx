<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true" CodeFile="orders.aspx.cs" Inherits="Admin_Panel_orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            font-size: xx-large;
            font-family:Algerian;
            color: #FFCC99;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content-wrapper">

    <!-- Main content -->
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h1 class="auto-style2" ><strong>Orders</strong></h1>
                <strong><span class="auto-style1">Search Customer : </span></strong> <asp:TextBox runat="server" ID="srchname" ></asp:TextBox>&nbsp;<asp:Button runat="server" ID="srch" OnClick="srch_Click" Text="Search" CssClass="btn btn-primary"  />
                &nbsp;<asp:Button runat="server" ID="display_all" Text="display all" CssClass="btn btn-primary" OnClick="display_all_Click" />
                <br />
                <br />
                <asp:GridView runat="server" ID="gd1" AutoGenerateColumns="False"  CellPadding="4" ForeColor="#333333" GridLines="None" Height="268px" Width="769px">

                    <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="session_id" DataNavigateUrlFormatString="order_details.aspx?order_id={0}" HeaderText="order id" DataTextField="session_id" />
                        <asp:BoundField DataField="c_name" HeaderText="Customer Name" SortExpression="c_name" />
                        <asp:BoundField DataField="date" HeaderText="Date/Time" SortExpression="date" />
                        
                        
                        
                    </Columns>
                    <EditRowStyle BackColor="#999999"></EditRowStyle>

                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

                    <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                    <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

                    <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

                    <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

                    <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
                </asp:GridView>

        <asp:SqlDataSource ID="srchbyname" runat="server"
                            ConnectionString="<%$ ConnectionStrings:DefaultConnectionString %>" 
                            SelectCommand="SELECT * FROM [orders] ORDER BY date DESC" 
                            FilterExpression="c_name LIKE '{0}%'">
                        <FilterParameters>
                                <asp:ControlParameter Name="c_email" ControlID="srchname" PropertyName="Text" />
                        </FilterParameters>
                            
                        </asp:SqlDataSource>

                <asp:SqlDataSource runat="server" ID="all" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="SELECT * FROM [orders]"> </asp:SqlDataSource>

            </div>
            <asp:Label runat="server" ID="lbl"></asp:Label>
        </div>


    </section>
    <!-- /.content -->
  </div>

</asp:Content>

