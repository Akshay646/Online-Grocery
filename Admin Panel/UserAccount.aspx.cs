using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Web.Security;
using System.Data.SqlClient;
using Database_Helpers;


public partial class Admin_Panel_UserAccount : System.Web.UI.Page
{
    helper db = new helper();
    public string imagepath;


    SqlCommand cmd;
    SqlDataReader dr, dr1; 
    
    protected void Page_Load(object sender, EventArgs e)
    {
        displayall();
    }

    void displayall()
    {
        db.Connection.Open();
        string q = "select * from registration";
        cmd = new SqlCommand(q, db.Connection);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            gv1.DataSource = dr;
            gv1.DataBind();
        }
        //cmd.ExecuteNonQuery();
        db.Connection.Close();

        int count = gv1.Rows.Count;
        lbl.Text = count.ToString();
    }



    protected void b1_Click(object sender, EventArgs e)
    {
        string name=t1.Text;
        db.Connection.Open();
        string q1 = "select * from registration where first LIKE '%" + name + "%' OR email LIKE '%"+name+"%' ";
        cmd = new SqlCommand(q1,db.Connection);
        dr1 = cmd.ExecuteReader();
        if (dr1.HasRows)
        {
            gv1.DataSource = dr1;
            gv1.DataBind();
        }
       
        db.Connection.Close();
    }


    protected void Display_All_Click(object sender, EventArgs e)
    {
        displayall();
        t1.Text = "";
    }
}