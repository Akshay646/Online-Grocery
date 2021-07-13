<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <img src="images/abc.jpg" style="height:300px; width:100%" />

    

    <div class="panel-primary" >
        <div class="panel-heading">User Registarion</div> 
        <div class="panel-body">
            <span class="j2store-remove">
            <asp:Label ID="msg_lbl" runat="server" Font-Size="XX-Large" /><br />
            </span>
            <label>Firstname: <asp:TextBox ID="fname_tb" runat="server" CssClass="form-control" /></label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname_tb" ErrorMessage="please enter first name" CssClass="auto-style24"></asp:RequiredFieldValidator>
            <br />
            <label>Lastname: <asp:TextBox ID="lname_tb" runat="server" CssClass="form-control" /></label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lname_tb" ErrorMessage="please enter last name" CssClass="auto-style24"></asp:RequiredFieldValidator>
            <br />
            <label>Mobile Number: <asp:TextBox ID="mobile_tb" runat="server" CssClass="form-control" /></label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="mobile_tb" ErrorMessage="Enter Mobile Number" CssClass="auto-style24"></asp:RequiredFieldValidator><br/>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="mobile_tb" ErrorMessage="Enter Valid Number" ValidationExpression="^[0-9]{10}$" CssClass="auto-style24"></asp:RegularExpressionValidator>
            <br />
            <label>Gender :<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList></label>
            <br />
            <label>Address: <asp:TextBox ID="Address_tb" runat="server" CssClass="form-control" /></label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Address_tb" ErrorMessage="Enter Address" CssClass="auto-style24"></asp:RequiredFieldValidator>
            <br />
            <label>Email: <asp:TextBox ID="email_tb" runat="server" CssClass="form-control" /></label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="email_tb" ErrorMessage="enter email" CssClass="auto-style24"></asp:RequiredFieldValidator><br/>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email_tb" ErrorMessage="not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style24"></asp:RegularExpressionValidator>
            <br />
            <label>Password: <asp:TextBox ID="password_tb" TextMode="Password" runat="server" CssClass="form-control" /></label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="password_tb" ErrorMessage="password must required" CssClass="auto-style24"></asp:RequiredFieldValidator>
            <br />
            <label>Confirm Password: <asp:TextBox ID="cpassword_tb" TextMode="Password" runat="server" CssClass="form-control" /></label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cpassword_tb" ErrorMessage="password must required" CssClass="auto-style24"></asp:RequiredFieldValidator><br/>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password_tb" ControlToValidate="cpassword_tb" ErrorMessage="password not match" CssClass="auto-style24"></asp:CompareValidator>
            <br />
            
        </div>
        <div class="panel-footer">
            <asp:Button ID="submit_button" Text="Sumbit"   class="j2store-cart-button btn btn-primary" runat="server" OnClick="submit_button_Click" />
        </div>
        
        
    </div>
</asp:Content>

