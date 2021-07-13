<%@ Page Title="" Language="C#" MasterPageFile="~/homee.master" AutoEventWireup="true" CodeFile="recentorders.aspx.cs" Inherits="recentorders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="wrap t3-mast-col ">
		<div class="container">
			<div class="t3-module module box-style dessert-box " id="Mod137"><div class="module-inner"><h3 class="module-title "><span>My Orders</span></h3><div class="module-ct"><div class="j2store-product-module j2store-product-module-list row-fluid col-sm-12 col-xs-12">
                
                <%if (ordergv.Rows.Count > 0)
                  {%> 
                         
                                       
                <asp:GridView ID="ordergv" runat="server" AutoGenerateColumns="False" DataKeyNames="o_id" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">

                    <Columns>
                        
                        <asp:HyperLinkField DataNavigateUrlFields="session_id" DataNavigateUrlFormatString="recent_order_details.aspx?order_id={0}" HeaderText="order id" DataTextField="session_id" />
                        <asp:BoundField DataField="c_name" HeaderText="Name" SortExpression="c_name"></asp:BoundField>
                        <asp:BoundField DataField="c_phone" HeaderText="Phone" SortExpression="c_phone"></asp:BoundField>
                        <asp:BoundField DataField="c_address" HeaderText="Address" SortExpression="c_address"></asp:BoundField>
                        <asp:BoundField DataField="c_email" HeaderText="Email" SortExpression="c_email"></asp:BoundField>
                        <asp:BoundField DataField="card_no" HeaderText="Card Number" SortExpression="card_no"></asp:BoundField>
                        <asp:BoundField DataField="expiration" HeaderText="expiration" SortExpression="expiration"></asp:BoundField>
                        <%--<asp:BoundField DataField="cvv" HeaderText="cvv" SortExpression="cvv"></asp:BoundField>--%>
                        <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount"></asp:BoundField>
                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>

                <%}
                  else
                  {%>
                      <h1>No Order Available</h1>
                  <%}
                 %>

                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="SELECT * FROM [orders] WHERE ([c_email] = @c_email)  ORDER BY [date] DESC">
                    <SelectParameters>
                        <asp:SessionParameter SessionField="username" Name="c_email" Type="String"></asp:SessionParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label runat="server" ID="lbl"></asp:Label>
                </div></div></div></div></div></div>
</asp:Content>

