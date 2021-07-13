using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for products
/// </summary>
public class products
{
    public List<products> product_list = new List<products>();
     
    public string Id { get; set; }

    public string catagory { get; set; }

    public string name { get; set; }

    public string price { get; set; }

    public string image { get; set; }

    public int Qty { get; set; }

    public string avlqty { get; set; }



   


    public products(string Id, string catagory, string name, string price, string image,string avlqty)
    {
        this.Id = Id;
        this.catagory = catagory;
        this.name = name;
        this.price = price;
        this.image = image;
        this.Qty = 1;
        this.avlqty = avlqty;
        

    }

}