using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;
using System.Data.SqlClient;

public partial class MemberLogin : System.Web.UI.Page
{
    helper db = new helper();

    string username;


    protected void Page_Load(object sender, EventArgs e)
    {
        
        
    }

    void signin()
    {
        if (email_tb.Text == "admin" && password_tb.Text == "admin")
        {
            Response.Redirect("~/Admin Panel/AddProducts.aspx");
        }
        else
        {
            username = email_tb.Text.Trim();
            string q = "select COUNT(email) from registration where email='" + email_tb.Text + "' AND password='" + password_tb.Text + "'";

            int res = db.get_scalar(q);
            if (res > 0)
            {
                Session["username"] = username;
                Response.Redirect("homee.aspx");

            }
            else
            {
                Label1.Text = "Enter Correct Details";
            }
        }
    }
 
    

    protected void sign_in_btn_Click(object sender, EventArgs e)
    {

        signin();
    }
    
}