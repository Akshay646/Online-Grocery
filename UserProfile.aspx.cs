using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Database_Helpers;

public partial class UserProfile : System.Web.UI.Page
{

    public string datetime;

    helper db = new helper();

    public string fname;
    public string lname;
    public string mob;
    public string gen;
    public string address;
    public string email;
    public string password;
    public string image;
    public string uid;

    public string chkval;


    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dtbl = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

        showdata();

       
    }



    
    void showdata()
    {
        cmd.CommandText = "select * from registration where email='" + Session["username"] + "'";
        cmd.Connection = db.Connection;
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        { 
        label1.Text = ds.Tables[0].Rows[0]["first"].ToString();
        label2.Text = ds.Tables[0].Rows[0]["last"].ToString();
        label3.Text = ds.Tables[0].Rows[0]["mobile "].ToString();
        label4.Text = ds.Tables[0].Rows[0]["gender"].ToString();
        label5.Text = ds.Tables[0].Rows[0]["address"].ToString();
        label6.Text = ds.Tables[0].Rows[0]["email"].ToString();
        label7.Text = ds.Tables[0].Rows[0]["password"].ToString();
        Image1.ImageUrl = ds.Tables[0].Rows[0]["image"].ToString();
        uid = ds.Tables[0].Rows[0]["user_Id"].ToString();
        //lb1.Text = mob;
        db.Connection.Close();
        dtlbl.Text = "Date:" + DateTime.Now.ToString();
        //Label3.Text += uid;
        // lbl1.Text = fname;
        // gen = label4.Text;
    
        }
    }
 




    protected void uploadimg_Click(object sender, EventArgs e)
    {
        string fileimg = "images/" + fileupload1.FileName.ToString();
        Image1.ImageUrl = fileimg;
        string q = "update registration set image='" + fileimg + "' where user_id='" + uid + "' ";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        db.Connection.Open();
        cmd.Parameters.AddWithValue("image", fileimg);
        cmd.ExecuteNonQuery();
        db.Connection.Close();

       
    }

    protected void fileupload1_Load(object sender, EventArgs e)
    {

    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {

    }

    string tb1;
    string tb2;
    string tb3;
    public string tb4;
    string tb5;
    string tb6;
    string tb7;
    protected void btnsave_Click(object sender, EventArgs e)
    {
        editsave();
    }



    void editsave()
    {
        //chkval = RadioButtonList1.SelectedValue;
        tb1 = TextBox1.Text;
        tb2 = TextBox2.Text;
        tb3 = TextBox3.Text;
        tb4 = RadioButtonList1.SelectedValue;
        tb5 = TextBox5.Text;
        tb6 = TextBox6.Text;
        tb7 = TextBox7.Text;
        string updateq = "update registration set first='" + tb1 + "', last='" + tb2 + "', mobile='" + tb3 + "',gender='" + tb4 + "',address='" + tb5 + "',email='" + tb6 + "',password='" + tb7 + "' where user_id='" + uid + "' ";

        SqlCommand cmd = new SqlCommand(updateq, db.Connection);

        db.Connection.Open();

        cmd.ExecuteNonQuery();
        db.Connection.Close();
        label1.Text = tb1;
        label2.Text = tb2;
        label3.Text = tb3;
        label4.Text = tb4;
        label5.Text = tb5;
        label6.Text = tb6;
        label7.Text = tb7;

    }
    protected void cancelbtn_Click(object sender, EventArgs e)
    {

    }
}