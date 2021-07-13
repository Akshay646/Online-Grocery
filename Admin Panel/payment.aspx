<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="Admin_Panel_payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="content-wrapper">

    <!-- Main content -->
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
    
                <asp:GridView runat="server" ID="gv11" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="o_id">
                    <Columns>
                       
                        <asp:BoundField DataField="c_name" HeaderText="c_name" SortExpression="c_name" />
                        <asp:BoundField DataField="c_phone" HeaderText="c_phone" SortExpression="c_phone" />
                        <asp:BoundField DataField="c_address" HeaderText="c_address" SortExpression="c_address" />

                        <asp:BoundField DataField="c_email" HeaderText="c_email" SortExpression="c_email"></asp:BoundField>
                    </Columns>

                </asp:GridView>

                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="SELECT[o_id],  [c_name], [c_phone], [c_address], [c_email] FROM [orders] WHERE ([session_id] = @session_id)">
                    <SelectParameters>
                        <asp:QueryStringParameter QueryStringField="order_id" Name="session_id" Type="String"></asp:QueryStringParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            </div>
        </section>
        </div>
    
</asp:Content>

