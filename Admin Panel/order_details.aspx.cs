using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Database_Helpers;



public partial class Admin_Panel_order_details : System.Web.UI.Page
{
    helper db = new helper();
   public string q,qq,name,email;
    
    //List<products> prods;
    
    string sessionid;
    
    public List<products> product_list = new List<products>();

    protected void Page_Load(object sender, EventArgs e)
    {
       
        sessionid = Request.QueryString["order_id"].ToString();
      
        q = "select MAX(cartTotal) from carts where session_id='" + sessionid + "'";
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


        SqlCommand cmd1 = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dtbl = new DataTable();
        cmd.CommandText = "select * from orders where session_id='" + sessionid + "'";
        cmd.Connection = db.Connection;
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        {
            name = ds.Tables[0].Rows[0]["c_name"].ToString();
            email = ds.Tables[0].Rows[0]["c_email"].ToString();
        }
        db.Connection.Close();

    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        
        
    }
}