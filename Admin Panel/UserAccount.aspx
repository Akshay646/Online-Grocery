<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true" CodeFile="UserAccount.aspx.cs" Inherits="Admin_Panel_UserAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #9966FF;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style271 {
            font-weight: 700;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="content-wrapper">
            <section class="content container-fluid">
                <div class="panel-heading">
                    <h1 style="font-family:'Arabic Typesetting';" class="auto-style1"><strong>Registered Users</strong></h1>

                    <strong><span class="auto-style2">Search name : </span></strong>

        <asp:TextBox runat="server" ID="t1" Height="34px" Width="210px" ></asp:TextBox>
                    <asp:Button runat="server" ID="b1" Text="Search" OnClick="b1_Click" CssClass="btn btn-primary" />
                    &nbsp;<asp:Button runat="server" ID="Display_All" Text="Display All" OnClick="Display_All_Click" CssClass="btn btn-primary" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style2">Total Registered User : </span></strong> <asp:Label runat="server" ID="lbl" CssClass="auto-style271"></asp:Label>
      <br />

                  <%
                      if (gv1.Rows.Count > 0)
                      {     
                      
                       %>

                      <br />

                      <asp:GridView ID="gv1" runat="server" GridLines="None" AutoGenerateColumns="False" DataKeyNames="user_Id" CellPadding="4" ForeColor="#333333" Height="381px" Width="734px">
            <HeaderStyle HorizontalAlign="Left" BackColor="#5D7B9D" ForeColor="#FFFFFF" Font-Bold="True" Font-Size="X-Large" />
            <EditRowStyle BackColor="#999999" />
        <FooterStyle HorizontalAlign="Right" BackColor="#5D7B9D" ForeColor="#FFFFFF" Font-Bold="True" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                
                <asp:BoundField DataField="first" HeaderText="first" SortExpression="first"></asp:BoundField>
                <asp:BoundField DataField="last" HeaderText="last" SortExpression="last"></asp:BoundField>
                <asp:BoundField DataField="mobile " HeaderText="mobile " SortExpression="mobile "></asp:BoundField>
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender"></asp:BoundField>
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image runat="server" ImageUrl='<%#"../"+Eval("image") %>'  ID="gvimage" Height="60px" Width="60px" />
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
            
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            
        </asp:GridView>

                    <%}
                    
                      else
                      {%>
                         <h1>No User Registered</h1> 
                      <%} %> 
                    
    </div>
                    </section>

  </div>
    
    <!--main content End-->
</asp:Content>

