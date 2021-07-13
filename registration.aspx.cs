using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;

public partial class Default2 : System.Web.UI.Page
{
    helper db = new helper();
    string img = "images/loginFace.png";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    bool reg()
    {
        db.values.Add("first", fname_tb.Text);
        db.values.Add("last", lname_tb.Text);
        db.values.Add("mobile", mobile_tb.Text);
        db.values.Add("gender", RadioButtonList1.Text);
        db.values.Add("address", Address_tb.Text);
        db.values.Add("email", email_tb.Text);
        db.values.Add("password", password_tb.Text);
        db.values.Add("image",img);



        if (db.insert("registration", db.values))
        {
            return true;

        }
        else
        {
            return false;
        }
    }

    protected void submit_button_Click(object sender, EventArgs e)
    {
        if (reg())
        {
            msg_lbl.Text = "registration successful";
            fname_tb.Text = "";
            lname_tb.Text = "";
            mobile_tb.Text = "";
            Address_tb.Text = "";
            email_tb.Text = "";
            RadioButtonList1.Text = "";

        }
        else
        {
            msg_lbl.Text = "Failed to register";
        }

       
    }
}