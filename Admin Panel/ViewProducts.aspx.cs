using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Database_Helpers;

public partial class Admin_Panel_ViewProduct : System.Web.UI.Page
{
    helper db = new helper();
    string sort;
    DataTable dtbl = new DataTable();
    SqlDataReader dr;
    SqlDataReader dr1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

           // PopulateGridview();
           // search();
            gridview1.DataSource = dtbl;
            gridview1.DataBind();
            lblErrorMessage.Text = "";
            lblSuccessMessage.Text = "";
            
            
        }
        this.MaintainScrollPositionOnPostBack = true;
        
    }
   

    void search()
    {
        using (db.Connection)
        {
            string name = searchprd.Text;
            db.Connection.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM products WHERE name LIKE '%"+name+"%'", db.Connection);
            sqlDa.Fill(dtbl);
            

        }

        if (dtbl.Rows.Count > 0)
        {
            gridview1.DataSource = dtbl;
            gridview1.DataBind();
        }
        else
        {
            searchprd.Text = "";
            gridview1.Visible = false;
            lblErrorMessage.Text = "No Such Item Found";
            
        }

    }
    

    protected void gridview1_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        gridview1.EditIndex = e.NewEditIndex;
        search();
        //PopulateGridview();
    }

    protected void gridview1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gridview1.EditIndex = -1;
        search();
    }

    protected void gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            using (db.Connection)
            {
                db.Connection.Open();
                string query = "UPDATE products SET name=@name,catagory=@catagory,price=@price,image=@image,avlqty=@avlqty WHERE Id = @Id";
                SqlCommand sqlCmd = new SqlCommand(query, db.Connection);
                sqlCmd.Parameters.AddWithValue("@name", (gridview1.Rows[e.RowIndex].FindControl("txtname") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@catagory", (gridview1.Rows[e.RowIndex].FindControl("txtcatagory") as DropDownList).SelectedItem.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@price", (gridview1.Rows[e.RowIndex].FindControl("txtprice") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@image", "images/" + (gridview1.Rows[e.RowIndex].FindControl("txtimage") as FileUpload).FileName.ToString().Trim());
                sqlCmd.Parameters.AddWithValue("@avlqty", (gridview1.Rows[e.RowIndex].FindControl("txtqty") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(gridview1.DataKeys[e.RowIndex].Value.ToString()));
                sqlCmd.ExecuteNonQuery();
                db.Connection.Close();
                gridview1.EditIndex = -1;
                search();
               // PopulateGridview();
                lblSuccessMessage.Text = "Selected Record Updated";
                lblErrorMessage.Text = "";
                
            }
        }
        catch (Exception ex)
        {
            lblSuccessMessage.Text = "";
            lblErrorMessage.Text = ex.Message;
        }
    }

    protected void gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            using (db.Connection)
            {
                db.Connection.Open();
                string query = "DELETE FROM products WHERE Id = @Id";
                SqlCommand sqlCmd = new SqlCommand(query, db.Connection);
                sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(gridview1.DataKeys[e.RowIndex].Value.ToString()));
                sqlCmd.ExecuteNonQuery();
                db.Connection.Close();
          //      PopulateGridview();
                lblSuccessMessage.Text = "Selected Record Deleted";
                lblErrorMessage.Text = "";
                
            }
        }
        catch (Exception ex)
        {
            lblSuccessMessage.Text = "";
            lblErrorMessage.Text = ex.Message;
        }
    }

    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
   
 

    protected void searchbtn_Click(object sender, EventArgs e)
    {
        search();
    }

    protected void display_all_Click(object sender, EventArgs e)
    {
        searchprd.Text = "";
        lblErrorMessage.Text = "";
        gridview1.Visible = true;
        gridview1.DataSource = search_all;
        gridview1.DataBind();

    }



}