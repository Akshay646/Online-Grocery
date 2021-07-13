using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Database_Helpers;

public partial class homee : System.Web.UI.Page
{
    helper db = new helper();
    public  string qq;
    public string fname;
    public string lname;
    public string imagepath;

    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();

    

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["cart"] != null)
        {
            List<products> cart_list = Session["cart"] as List<products>;

            count_lbl.Text = cart_list.Count.ToString();
        }

        if (Session["username"] == null)
        {
            Response.Redirect("Login.aspx");

        }
        else 
        {
            showdata();
            //message box
            
            string message = "welcome" + "  " + fname + " " + lname;

            System.Text.StringBuilder sb = new System.Text.StringBuilder();

            sb.Append("<script type = 'text/javascript'>");

            sb.Append("window.onload=function(){");

            sb.Append("alert('");

            sb.Append(message);

            sb.Append("')};");

            sb.Append("</script>");

            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            //message box
             
         
       }

        

        

    }

    void showdata()
    {
        string q = "select * from registration where email='"+Session["username"]+"'";
        SqlCommand cmd = new SqlCommand(q,db.Connection);
        db.Connection.Open();
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count == 1)
        {

            fname = ds.Tables[0].Rows[0]["first"].ToString();
            lname = ds.Tables[0].Rows[0]["last"].ToString();
            qq = ds.Tables[0].Rows[0]["email"].ToString();
            imagepath = ds.Tables[0].Rows[0]["image"].ToString();

            lbl.Text = fname + " " + lname + " " + qq;
            db.Connection.Close();
        }
        
        
    }
}