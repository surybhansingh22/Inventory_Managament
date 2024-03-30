using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventory_Managament
{
    public partial class Search_Supplier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select * from Supplier_Data where Supplier_ID = '"+ TextBox1.Text +"'";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.Getdata(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('No Suplier Data Found')</script>");
            }
            else
            {
                Label2.Text = ds.Tables[0].Rows[0][1].ToString();
                Label3.Text = ds.Tables[0].Rows[0][0].ToString();
                string path = ds.Tables[0].Rows[0][2].ToString();
                Image1.ImageUrl = "~/Img/" + path + "";
                Image1.Width = 100;
            }
        }
    }
}