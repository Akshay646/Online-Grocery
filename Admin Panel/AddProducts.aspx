<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true" CodeFile="AddProducts.aspx.cs" Inherits="Admin_Panel_AddProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content-wrapper">
    <section class="content container-fluid">


        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading">Product informtion required</div>
                    <div class="panel-body">
                        <label>Product Name : <asp:TextBox runat="server" CssClass="form-control" ID="name_box" ></asp:TextBox></label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name_box" ErrorMessage="please enter name" CssClass="auto-style24"></asp:RequiredFieldValidator><br />

                        <label>Product Price : <asp:TextBox ID="price_box" runat="server" CssClass="form-control"  ></asp:TextBox></label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="price_box" ErrorMessage="please enter price" CssClass="auto-style24"></asp:RequiredFieldValidator><br /><br />
                        
                        <label>Product Quantity : <asp:TextBox ID="qty_box" runat="server" CssClass="form-control"  ></asp:TextBox></label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="qty_box" ErrorMessage="please enter quantity" CssClass="auto-style24"></asp:RequiredFieldValidator><br /><br />

                        <label>Product Type : <asp:DropDownList ID="drpcate" runat="server" CssClass="form-control"  >
                                
                                <asp:ListItem>Fruits and Vegetables</asp:ListItem>
                                <asp:ListItem>Snacks and Branded Food</asp:ListItem>
                                <asp:ListItem>Beverages</asp:ListItem>
                                <asp:ListItem>Oils and Vinegar</asp:ListItem>
                                <asp:ListItem>Foodgrains</asp:ListItem>
                                <asp:ListItem>Dry Fruits</asp:ListItem>
                                <asp:ListItem>Fragrances Deos</asp:ListItem>  
                                
                                
                            </asp:DropDownList></label><br />
                        <label>Product Image : <asp:FileUpload ID="fileupload" runat="server" CssClass="form-control" /></label><br />
                        
                    </div>
                    <div class="panel-footer">
                        <asp:Button runat="server" ID="add_btn" CssClass="btn btn-primary" Text="Add product" OnClick="add_btn_Click" />
                        <asp:Label ID="msglbl" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    
    </section>

  </div>
</asp:Content>

