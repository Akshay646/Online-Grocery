using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;


public partial class recent_order_details : System.Web.UI.Page
{
    helper db = new helper();

    protected void Page_Load(object sender, EventArgs e)
    {
        load_order();
    }
    void load_order()
    {
        string sessionid = Request.QueryString["order_id"].ToString();
        string q = "select MAX(cartTotal) from carts where session_id='" + sessionid + "'";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        db.Connection.Open();
        SqlDataReader dr = cmd.ExecuteReader();


        if (dr.Read())
        {
            lb.Text = "Cart Total :" + " " + dr[0].ToString();

        }
        else
        {
            Response.Write("no data found");
        }
        db.Connection.Close();
    }
}