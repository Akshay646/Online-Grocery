using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;

public partial class home1 : System.Web.UI.Page
{
    helper db = new helper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cart"] != null)
        {
            List<products> cart_list = Session["cart"] as List<products>;

            count_lbl.Text = cart_list.Count.ToString();
        }
    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {

    }

    

    protected void bt1_Click(object sender, EventArgs e)
    {
     Response.Redirect("Login.aspx");

    }
    protected void bt12_Click(object sender, EventArgs e)
    {
        Response.Redirect("registration.aspx");
    }
    
}