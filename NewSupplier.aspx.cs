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
    public partial class NewSupplier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Enabled = false;
            AutoID();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string s = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (s == ".jpeg" || s == ".jpg" || s == ".png")
                {
                    FileUpload1.SaveAs(Server.MapPath("~/Img/" + FileUpload1.FileName));
                    InserData();
                    Response.Write("<script>alert('Supplier Registerd')</script>");
                    AutoID();
                }
                else
                {
                    Label2.Text = "Please Select Only jpeg , jpg";
                    Label2.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                Label2.Text = "Please Select a File";
                Label2.ForeColor = System.Drawing.Color.Red;
            }

            TextBox1.Text = TextBox2.Text = "";

        }

        private void AutoID()
        {
            string s = "select * from Supplier_Data order by Supplier_ID desc";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.Getdata(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                TextBox1.Text = "1";
            }
            else
            {
              TextBox1.Text = ( Convert.ToInt32(ds.Tables[0].Rows[0][0]) + 1 ).ToString();
            }
        }

        private void InserData()
        {
            string Q = "insert into Supplier_Data values ("+ TextBox1.Text +",'"+ TextBox2.Text +"','"+ FileUpload1.FileName +"')";
            DataCon dc = new DataCon();
            dc.Setdata(Q);
        }
    }
}