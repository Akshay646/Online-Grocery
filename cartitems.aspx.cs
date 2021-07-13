using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Database_Helpers;

public partial class cartitems : System.Web.UI.Page
{
    helper db = new helper();
    List<products> prods;
    //To bind gridview
    string session_id,amount;
    string qt,aq;

    int x, y, up;

    protected void Page_Load(object sender, EventArgs e)
    {

        prods = Session["cart"] as List<products>;
        if (!IsPostBack)
        {
            GridView1.DataSource = prods;
            GridView1.DataBind();
        }


    }




    protected void delete_Click(object sender, EventArgs e)
    {
        int n = Convert.ToInt32(GridView1.SelectedRow);
        prods.RemoveAt(n);
        GridView1.DataSource = prods;
        GridView1.DataBind();
    }


    protected void btndelete_Click(object sender, EventArgs e)
    {
        inserttocart();
        Response.Redirect("payment.aspx?session_id=" + session_id);
        

    }

    int p, q, nettotal;
    int grandtotal = 0;


    void inserttocart()
    {
        Guid g = Guid.NewGuid();
        session_id = g.ToString();

        
        for (int i = 0; i < (GridView1.Rows.Count) & i < (prods.Count); i++)
        {


            string img = ((Image)GridView1.Rows[i].Cells[0].FindControl("imff")).ImageUrl;
            string nm = GridView1.Rows[i].Cells[1].Text;
            string cat = GridView1.Rows[i].Cells[2].Text;
            string price = GridView1.Rows[i].Cells[3].Text;
            aq = GridView1.Rows[i].Cells[4].Text;
            qt = ((TextBox)GridView1.Rows[i].Cells[4].FindControl("TextBoxQty")).Text;

            p = Convert.ToInt32(price);
            q = Convert.ToInt32(qt);

            nettotal = p * q;
            grandtotal = grandtotal + nettotal;




            db.values.Add("product_id", prods[i].Id);
            db.values.Add("session_id", session_id);
            db.values.Add("name", nm.ToString());
            db.values.Add("image", "../"+img.ToString());
            db.values.Add("catagory", cat.ToString());
            db.values.Add("price", price);
            db.values.Add("quantity", qt.ToString());
            db.values.Add("netPrice", nettotal.ToString());
            db.values.Add("cartTotal", grandtotal.ToString());

            if (db.insert("carts", db.values))
            {
                db.values.Clear();
            }
            else
            {
                label1.Text = "failed";
            }


            x = Convert.ToInt32(aq);
            y = Convert.ToInt32(qt);

            up = x - y;

            string qry = "update products set avlqty='" + up + "' where Id='" + prods[i].Id + "'";
            SqlCommand cmd = new SqlCommand(qry, db.Connection);
            db.Connection.Open();
            cmd.ExecuteReader();
            db.Connection.Close();

        }


    



    }
    
}