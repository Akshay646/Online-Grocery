using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;
using System.Data.SqlClient;

public partial class product : System.Web.UI.Page
{

    helper db = new helper();
    public List<products> product_list = new List<products>();

    static List<products> cart_list = new List<products>();

    public string idd,cat;
    


    protected void Page_Load(object sender, EventArgs e)
    {
        idd = Request.Params["bid"];
        load_menu();
        
        if (Request.QueryString.AllKeys.Contains("pro_id") && Request.QueryString.AllKeys.Contains("action"))
        {
            string pro_id = Request.QueryString["pro_id"];
            string action = Request.QueryString["action"];
            if (action.Equals("add"))
            {
                add_to_cart(pro_id);
            }
        }
    }

    void add_to_cart(string product_id)
    {
        var product = product_list.Where(x => x.Id == product_id);

        foreach (var data in product)
        {
            cart_list.Add(data);
        }

        Session["cart"] = cart_list;

    }
    

    void load_menu()
    {
        
       
            
                db.Connection.Open();
                string q = "select * from products where catagory='"+idd+"'";
                SqlCommand cmd = new SqlCommand(q, db.Connection);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        product_list.Add(new products(reader["Id"].ToString(), reader["catagory"].ToString(), reader["name"].ToString(),reader["price"].ToString(), reader["image"].ToString(),reader["avlqty"].ToString()));
                    }
                }
                db.Connection.Close();
    

    }

    //protected void srchbtn_Click(object sender, EventArgs e)
    //{
        
    //        string code = srchpd.Text;
    //        db.Connection.Open();
    //        string q = "select * from products where name LIKE '%" + code + "%' AND catagory='" + idd + "'";
    //        SqlCommand cmd = new SqlCommand(q, db.Connection);
    //        SqlDataReader reader = cmd.ExecuteReader();
    //        if (reader.HasRows)
    //        {
    //            while (reader.Read())
    //            {
    //                product_list.Add(new products(reader["Id"].ToString(), reader["catagory"].ToString(), reader["name"].ToString(), reader["price"].ToString(), reader["image"].ToString(), reader["avlqty"].ToString()));
    //            }
    //        }
    //        else
    //        {
    //            Label1.Text = "failed";
    //        }
    //        db.Connection.Close();
        
    //}


    
}