<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true" CodeFile="ViewProducts.aspx.cs" Inherits="Admin_Panel_ViewProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!--main content start-->

                    
    <div class="content-wrapper">

    <section class="content container-fluid">
             <div class="row">
                    <div class="panel-heading"><h1 style="font-family:'Arabic Typesetting';color:coral">Avaliable Products</h1>
                        Search product : <asp:TextBox runat="server" ID="searchprd"></asp:TextBox> &nbsp;<asp:Button runat="server" ID="searchbtn" Text="Search" OnClick="searchbtn_Click" CssClass="btn btn-primary" />&nbsp; <asp:Button runat="server" ID="display_all" Text="display all" OnClick="display_all_Click" CssClass="btn btn-primary" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                        <br />
                        <br /> 
       
                        <%
                            if (gridview1.Rows.Count > 0)
                            { %>
                             
                         <asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
            CssClass="mydatagrid" PagerStyle-CssClass="pager"
            HeaderStyle-CssClass="header" RowStyle-CssClass="rows"

         OnRowEditing="gridview1_RowEditing1"
            OnRowCancelingEdit="gridview1_RowCancelingEdit"
             OnRowUpdating="gridview1_RowUpdating"
             OnRowDeleting="gridview1_RowDeleting"


             AllowPaging="False" AllowSorting="True" CellPadding="4" GridLines="None" Height="380px" Width="762px">

            

            <Columns>
               


                <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="Label1" Text='<%# Eval("name") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtName" Text='<%# Eval("name") %>' runat="server" Height="35" Width="175" />
                        </EditItemTemplate>
                        
                    </asp:TemplateField>

                <asp:TemplateField HeaderText="Catagery">
                        <ItemTemplate>
                            <asp:Label ID="Label2" Text='<%# Eval("catagory") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="txtcatagory" runat="server" DataTextField="catagory" CssClass="form-control"  Height="35" Width="175" >
                                
                                <asp:ListItem>Fruits and Vegetables</asp:ListItem>
                                <asp:ListItem>Snacks and Branded Food</asp:ListItem>
                                <asp:ListItem>Beverages</asp:ListItem>
                                <asp:ListItem>Oils and Vinegar</asp:ListItem>
                                <asp:ListItem>Foodgrains</asp:ListItem>
                                <asp:ListItem>Dry Fruits</asp:ListItem>
                                <asp:ListItem>Fragrances Deos</asp:ListItem>
                                                              
                            </asp:DropDownList>
                        </EditItemTemplate> 
                    </asp:TemplateField>

                <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="Label3" Text='<%# Eval("price") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtprice" Text='<%# Eval("price") %>' runat="server"  Height="35" Width="175" />
                        </EditItemTemplate>
                        
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Stock">
                                <ItemTemplate>
                                    <asp:Label ID="qtylbl" Text='<%# Eval("avlqty") %>' runat="server" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtqty" Text='<%# Eval("avlqty") %>' runat="server" Height="35" Width="175" />
                                </EditItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image runat="server" ID="img" ImageUrl='<%#"../"+Eval("image") %>' Height="40px" Width="50px" />
                            <%--<asp:Label ID="Label4" Text='<%# Eval("image") %>' runat="server"  />--%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:FileUpload ID="txtimage" runat="server" CssClass="form-control" Height="50" Width="175" BorderColor="#993333" BorderWidth="2"/></label><br />
                            <%--<asp:TextBox ID="txtimage" Text='<%# Eval("image") %>' runat="server" />--%>
                        </EditItemTemplate>
                        
                    </asp:TemplateField>

                <asp:TemplateField>
                        <ItemTemplate >
                            <asp:ImageButton ID="ImageButton1" ImageUrl="../images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="25px" Height="25px" CssClass="pointertoimage" />
                            <asp:ImageButton ID="ImageButton2" ImageUrl="../images/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="25px" Height="25px" CssClass="pointertoimage"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ID="ImageButton3" ImageUrl="../images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="25px" Height="25px" CssClass="pointertoimage"/>
                            <asp:ImageButton ID="ImageButton4" ImageUrl="../images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="25px" Height="25px" CssClass="pointertoimage"/>
                        </EditItemTemplate>
                        
                    </asp:TemplateField>
            </Columns>
            
        </asp:GridView>


                        <%}
                  
                   else
                   {%>
                        <h2>No Menu Avaliable</h2>
                   <%}%>

                        <asp:SqlDataSource ID="search_all" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="SELECT * FROM [products]">

                        </asp:SqlDataSource>

                        
                        

        <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
            <br />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
    
 </div></div></section>

    </div>
                    



    <!--main content End-->
    <style>
        .Grid {background-color: #fff; margin: 5px 0 10px 0; border: solid 1px #525252; border-collapse:collapse; font-family:Calibri; color: #474747;}

.Grid td {

      padding: 2px;

      border: solid 1px #c1c1c1; }

.Grid th  {

      padding : 4px 2px;

      color: #fff;

      background: #363670 url(Images/grid-header.png) repeat-x top;

      border-left: solid 1px #525252;

      font-size: 0.9em; }

.Grid .alt {

      background: #fcfcfc url(Images/grid-alt.png) repeat-x top; }

.Grid .pgr {background: #363670 url(Images/grid-pgr.png) repeat-x top; }

.Grid .pgr table { margin: 3px 0; }

.Grid .pgr td { border-width: 0; padding: 0 6px; border-left: solid 1px #666; font-weight: bold; color: #fff; line-height: 12px; }  

.Grid .pgr a { color: Gray; text-decoration: none; }

.Grid .pgr a:hover { color: #000; text-decoration: none; }
    </style>
</asp:Content>

