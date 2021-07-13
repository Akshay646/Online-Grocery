<%@ Page Title="" Language="C#" MasterPageFile="~/homee.master" AutoEventWireup="true" CodeFile="contacts.aspx.cs" Inherits="contacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="col-sm-12 contact"><br />    <h1 class="head-right" style="font-size:32px;font-family:Arial">Contact Us</h1>
    <div class="col-sm-12 contact" >

<div class="contact-1 col-sm-4">
<div >
<h3>Contact</h3>
    
     <dl  >
<dt>

</dt>
<dd>
<span class="contact-street" >
<i class="fa fa-map-marker"> </i> Lote <br />  </span>
</dd>
<dd>
<span class="contact-suburb" >
<i class="fa fa-location-arrow"></i>Khed ,Ratnagiri<br /> </span>
</dd>
<dd>
<span class="contact-state" >
<i class="fa fa-location-arrow"></i>Maharastra <br /> </span>
</dd>
<dd>
<span class="contact-postcode" >
<i class="fa fa-magic"></i>India<br /> </span>
</dd>
<dd>
<span class="contact-country" >
<i class="fa fa-building-o"></i>415722<br /> </span>
</dd>
<dt>


</dt>
<dd>
<span class="contact-emailto"><i class="fa fa-envelope-o"></i> 
<span >

</span>

</span>
</dd>
<dt>

</dt>
<dd>
<span class="contact-telephone">
<i class="fa fa-phone"></i>0123 - 010 - 1080 </span>
</dd>
<dt>

</dt>
<dd>
<span class="contact-fax" >
<i class="fa fa-print"></i>0123 - 010 - 1080</span>
</dd>
<dt>
<span class="jicons-icons">
 </span>
</dt>
<dd>
<span class="contact-mobile">
<i class="fa fa-phone-square"></i>8329483829</span>
</dd>
<dt>
<span class="jicons-icons">
</span>
</dt>
<dd>
<span class="contact-webpage">
<i class="fa fa-globe"></i><a href="homee.aspx" >
http://www.grocery.com</a>
</span>
</dd>
</dl>

</div>
</div>


<div class="contact-2 col-sm-8">
<div class="contact-form">
<div style="width: 800px;
    border: 10px solid gray;
    padding: 25px;
    margin: 25px;">


<fieldset>
<legend>Send an Email</legend>
<div class="control-group">

<div class="control-label">
<span class="spacer"><span class="before"></span><span class="text">
<strong class="red">*</strong> Required field</span><span class="after"></span></span> 
</div>
<div class="controls"> </div>
</div>

<div class="control-group">
<div class="control-label">
Name:<strong class="red">*</strong>
</div>
<div class="controls"><asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox></div>
</div>

<div class="control-group">
<div class="control-label">
Email:<strong class="red">*</strong>
</div>
<div class="controls"><asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox></div>
</div>

<div class="control-group">
<div class="control-label">
Subject:<strong class="red">*</strong>
</div>
<div class="controls"><asp:TextBox runat="server" ID="TextBox3" Width="300px"></asp:TextBox></div>
</div>

<div class="control-group">
<div class="control-label">
Message:<strong class="red">*</strong>
</div>
<div class="controls"><textarea id="Textarea1" runat="server" style="width: 500px; height: 150px"></textarea></div>
</div>

</fieldset>

<div class="control-group">
<div class="control-btn">
                <asp:Button ID="Button1" CssClass="j2store-cart-button btn btn-primary" runat="server" Text="Send Email"  PostBackUrl="~/contactthankyous.aspx"  />
 </div>
</div>
</div>
</div>
</div>
</div>
        </div>

</asp:Content>

