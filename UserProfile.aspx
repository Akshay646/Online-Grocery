<%@ Page Title="" Language="C#" MasterPageFile="~/homee.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:Label ID="lb1" runat="server" CssClass="product-title">djalalaca
    </asp:Label><br />--%>
    
<div class="container" onload="JavaScript:AutoRefresh(5000);">
      <div class="row">
      <div class="col-md-5  toppad  pull-right col-md-offset-3 ">
         <asp:Label ID="dtlbl" runat="server"></asp:Label>   <%--<p class=" text-info">May 05,2014,03:00 pm </p>--%>
      </div>
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   
   
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3  style="font:25px;font-family:cursive">Profile</h3>
            </div>
          <!-- user image-->
               <div class="panel-body">
                <div class="imgcontainer" >

      <%--<img src="<%=image %>" class="avatar" alt="User Pic" /><br />--%>
      <asp:Image runat="server" CssClass="avatar" ID="Image1" /><br /><b class="module-title" style="color:#0635b7;font-size:25px"> Change Profile Picture</b>
      <asp:FileUpload runat="server" ID="fileupload1" BorderStyle="Outset" CssClass="btn btn-primary" Font-Bold="True" Font-Italic="True" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="#333333"  OnLoad="fileupload1_Load" />
        <div> <asp:Button runat="server" Text="upload" ID="uploadimg" CssClass="btn btn-primary" OnClick="uploadimg_Click"  /></div>
      </div><br />
     

     <style>
        .imgcontainer {
    text-align: center;
    position: relative;
    border-radius: 50%;
}
.avatar {
    width: 200px;
	height:200px;
    border-radius: 50%;
}
         .auto-style1 {
             margin-left: 120px;
         }
    </style>

                   <!-- user image-->

                   <div class="row">
                <div >  </div>

    <br /><br />


                            <!--javascript to change label to textbox-->
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>  
                                <script type="text/javascript">
                                    $(function () {
                                        $('[id*=btnsave]').hide();
                                        $('[id*=TextBox1]').hide();
                                        $('[id*=btnEdit]').click(function () {
                                            $('[id*=label1]').hide();

                                            $('[id*=TextBox1]').show();
                                            $('[id*=TextBox1]').val($('[id*=label1]').html().trim());

                                            return false;
                                        });
                                        

                                        $('[id*=TextBox2]').hide();
                                        $('[id*=btnEdit]').click(function () {
                                            $('[id *= label2]').hide();

                                            $('[id*=TextBox2]').show();
                                            $('[id*=TextBox2]').val($('[id*=label2]').html().trim());


                                        });

                                        $('[id*=TextBox3]').hide();
                                        $('[id*=btnEdit]').click(function () {
                                            $('[id*=label3]').hide();

                                            $('[id*=TextBox3]').show();
                                            $('[id*=TextBox3]').val($('[id*=label3]').html().trim());

                                            return false;
                                        });

                                        $('[id*=RadioButtonList1]').hide();
                                        $('[id*=btnEdit]').click(function () {
                                            $('[id*=label4]').hide();

                                            $('[id*=RadioButtonList1]').show();


                                            return false;
                                        });

                                        $('[id*=TextBox5]').hide();

                                        $('[id*=btnEdit]').click(function () {
                                            $('[id*=label5]').hide();

                                            $('[id*=TextBox5]').show();
                                            $('[id*=TextBox5]').val($('[id*=label5]').html().trim());

                                            return false;
                                        });

                                        $('[id*=TextBox6]').hide();
                                        $('[id*=btnEdit]').click(function () {
                                            $('[id*=label6]').hide();

                                            $('[id*=TextBox6]').show();
                                            $('[id*=TextBox6]').val($('[id*=label6]').html().trim());

                                            return false;
                                        });

                                        $('[id*=TextBox7]').hide();
                                        $('[id*=btnEdit]').click(function () {
                                            $('[id*=label7]').hide();

                                            $('[id*=TextBox7]').show();
                                            $('[id*=TextBox7]').val($('[id*=label7]').html().trim());

                                            return false;
                                        });

                                        $('[id*=cancelbtn]').hide();
                                        
                                        $('[id*=btnEdit]').click(function () {
                                            $('[id*=btnEdit]').hide();
                                            $('[id*=btnsave]').show();
                                            $('[id*=cancelbtn]').show();

                                        });

                                        


                                    });
    </script>
                             <!--javascript to change label to textbox-->

                  
                                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information" style="font-size:18px">
                    <tbody>
                      <tr>
                        <td>First Name:</td>
                        <td><asp:Label runat="server" ID="label1"></asp:Label>
                          <asp:TextBox runat="server" ID="TextBox1"></asp:TextBox>
                            </td>
                      </tr>
                      <tr>
                        <td>Last Name:</td>
                        <td><asp:Label runat="server" ID="label2"></asp:Label>
                            <asp:TextBox runat="server" ID="TextBox2"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td>mobile:</td>
                        <td><asp:Label runat="server" ID="label3"></asp:Label>
                            <asp:TextBox runat="server" ID="TextBox3"></asp:TextBox>
                        </td>
                      </tr>
                   
                      <tr>
                        <td>Gender:</td>
                        <td><asp:Label runat="server" ID="label4" > </asp:Label>
                         <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                        </td>
                      </tr>
                        <tr>
                        <td>Address:</td>
                        <td><asp:Label runat="server" ID="label5"></asp:Label>
                          <asp:TextBox runat="server" ID="TextBox5"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td>Email:</td>
                        <td>
                            <asp:Label runat="server" ID="label6" ></asp:Label>
                            <asp:TextBox runat="server" ID="TextBox6"></asp:TextBox>
                                                         
                        </td>
                      </tr>
                        <tr>
                        <td>password:</td>
                        <td><asp:Label runat="server" ID="label7"></asp:Label>
                            <asp:TextBox runat="server" ID="TextBox7"></asp:TextBox>
                            
                        </td>
                           
                      </tr>
                     
                    </tbody>
                  </table>
                  
           <asp:Button runat="server" ID="btnEdit" OnClick="btnEdit_Click" class="btn btn-primary" Text="Edit Profile"  />       
           <asp:Button runat="server" ID="btnsave" OnClick="btnsave_Click" class="btn btn-primary" Text="Save" />     
           <asp:Button runat="server" ID="cancelbtn" OnClick="cancelbtn_Click" class="btn btn-primary" Text="cancel" />          
                                    <a href="Home.aspx" class="btn btn-primary">Logout</a>
                </div>

              </div>
                   
                       </div>

                 
            
          </div>
        </div>
      </div>
    </div>
    
        
</asp:Content>

