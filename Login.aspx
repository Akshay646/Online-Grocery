<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="MemberLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #FF0066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="panel-primary">
        <img src="images/abc.jpg" style="height:300px; width:100%" />
        <div class="panel-heading">Member Login</div> 
        <div class="panel-body">
            <span class="auto-style1">
            <asp:Label ID="Label1" runat="server"></asp:Label><br />
            </span>
            <label>Enter Email: <asp:TextBox ID="email_tb" runat="server" CssClass="form-control" /></label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="email_tb" ErrorMessage="enter email" CssClass="auto-style24"></asp:RequiredFieldValidator><br/>
            
            <br />

            <label>Password: <asp:TextBox ID="password_tb" TextMode="Password" runat="server" CssClass="form-control" /></label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="password_tb" ErrorMessage="password must required" CssClass="auto-style24"></asp:RequiredFieldValidator>
            <br />
            <br />
            
            <asp:Button runat="server" CssClass="j2store-cart-button btn btn-primary" ID="sign_in_btn" Text="Sign in" OnClick="sign_in_btn_Click" />
            
            <br />
            
             
        </div>
    </div>
</asp:Content>

