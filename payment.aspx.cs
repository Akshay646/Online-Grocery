using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Net.Mail;

public partial class payment : System.Web.UI.Page
{
    helper db = new helper();
    List<products> prods;
    public string amount;
    public string name;    
     public string session_id;
     public string d1, d2, d3, d4;
     public string nm, addr, mob;

    SqlDataReader dr;
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dtbl = new DataTable();
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        session_id = Request.QueryString["session_id"].ToString();
        userdata();
        amt();

        
        prods = Session["cart"] as List<products>;
    }

    

    void userdata()
    {
        

        cmd.CommandText = "select * from registration where email='" + Session["username"] + "'";
        cmd.Connection = db.Connection;
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        { 
       
        fullname.Text= ds.Tables[0].Rows[0]["first"].ToString() + " " + ds.Tables[0].Rows[0]["last"].ToString();
        mobile.Text = ds.Tables[0].Rows[0]["mobile "].ToString();
      
        address.Text= ds.Tables[0].Rows[0]["address"].ToString();
        email.Text= ds.Tables[0].Rows[0]["email"].ToString();
       
        db.Connection.Close();
       
        }
    }

    void amt()
    {
       string q = "select MAX(cartTotal) from carts where session_id='" + session_id + "'";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        db.Connection.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            amount =dr[0].ToString();

        }
        else
        {
            Response.Write("no data found");
        }
        db.Connection.Close();
    }


    bool checkout()
    {
         nm = fullname.Text;
         mob = mobile.Text;
         addr = address.Text;
        

        //amtlbl.Text = amount.ToString();
        db.values.Add("session_id", session_id);
        db.values.Add("c_name",nm);
        db.values.Add("c_phone",mob);
        db.values.Add("c_address",addr);
        db.values.Add("c_email",email.Text);
        db.values.Add("card_no",textbox6.Text);
        db.values.Add("expiration", textbox7.Text + "/" + textbox8.Text);
        db.values.Add("cvv",TextBox9.Text);
        db.values.Add("amount",amount);
        db.values.Add("date",DateTime.Now.ToString());

        
        if (db.insert("orders", db.values))
        {
            db.values.Clear();
            return true;
        }
        else
        {
            return false;
        }

    }



    protected void pay_Click(object sender, EventArgs e)
    {
       
        if (checkout())
        {
           //send_mail();
            //msg.Text = "order placed";
            Response.Redirect("thankyou.aspx");
        }
        else
        {
            msg.Text = "failed";
        }
    }



    public override void VerifyRenderingInServerForm(Control control)
    {

    }
}