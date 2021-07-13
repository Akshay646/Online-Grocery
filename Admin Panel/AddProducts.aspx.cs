using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;



public partial class Admin_Panel_AddProducts : System.Web.UI.Page
{
    helper db = new helper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    bool add_product()
    {
        db.values.Add("name", name_box.Text);
        db.values.Add("price", price_box.Text);
        db.values.Add("catagory", drpcate.SelectedItem.Text);
        db.values.Add("image", "images/"+fileupload.FileName.ToString());
        db.values.Add("avlqty",qty_box.Text);
        if (db.insert("products", db.values))
        {
            return true;

        }
        else
        {
            return false;
        }
    }

    protected void add_btn_Click(object sender, EventArgs e)
    {
        if (add_product())
        {

            msglbl.Text = "Product Added Successfully";
            name_box.Text = "";
            price_box.Text = "";
            qty_box.Text = "";


        }
        else
        {
            msglbl.Text = "Failed to add Product";
        }
    }

    protected void drpcate_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
}