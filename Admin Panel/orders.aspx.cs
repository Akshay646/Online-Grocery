using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;
using System.Data.SqlClient;

public partial class Admin_Panel_orders : System.Web.UI.Page
{
    helper db = new helper();

    SqlDataReader dr,dr1;

    protected void Page_Load(object sender, EventArgs e)
    {
        gd1.DataSource = srchbyname;
        gd1.DataBind();
        srchname.Text = "";
    }


    protected void srch_Click(object sender, EventArgs e)
    {
       
        string qq = "select * from orders where c_name='"+srchname.Text+"'";
        db.Connection.Open();
        SqlCommand cmd = new SqlCommand(qq, db.Connection);
        cmd.ExecuteNonQuery();
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            gd1.DataSource = dr;
            gd1.DataBind();
        }
        
    }
    protected void display_all_Click(object sender, EventArgs e)
    {
        gd1.DataSource = all;
        gd1.DataBind();
    }
}