using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventory_Managament
{
    public partial class NewCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Enabled = false;
            AutoID();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Q = "insert into Customer_Data values ("+ TextBox1.Text +",'"+ TextBox2.Text +"')";
            DataCon dc = new DataCon();
            dc.Setdata(Q);
            Response.Write("<script>alert('Customer Added')</script>");
            TextBox2.Text = "";
            AutoID();
        }
        private void AutoID()
        {
            string s = "select * from Customer_Data order by Customer_ID desc";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.Getdata(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                TextBox1.Text = "1";
            }
            else
            {
                TextBox1.Text = (Convert.ToInt32(ds.Tables[0].Rows[0][0]) + 1).ToString();
            }
        }
    }
}