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
    public partial class Purchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from Supplier_Data ";
                DataCon dc = new DataCon();
                DataSet ds = new DataSet();
                ds = dc.Getdata(s);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    Response.Write("<script>alert('No Supplier Added Yet')</script>");
                }
                else
                {
                    DropDownList1.DataSource = ds;
                    DropDownList1.DataTextField = "Supplier_Name";
                    DropDownList1.DataValueField = "Supplier_ID";
                    DropDownList1.DataBind();
                    DropDownList1.Items.Insert(0, "Select Supplier");
                }
            }
             TextBox4.Enabled = TextBox5.Enabled = TextBox7.Enabled = false;
            DataCon dataCon = new DataCon();
            string[] dateArr = dataCon.GeneratingDates();
            string currentDate = dateArr[0];
            TextBox4.Text = currentDate;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox5.Text = DropDownList1.SelectedItem.Value.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataCon dc = new DataCon();
            string Q = "insert into Purchase values ('"+ TextBox1.Text +"','" + TextBox2.Text + "',"+ TextBox3.Text +",'"+ TextBox4.Text +"',"+ TextBox5.Text +","+ TextBox6.Text +","+ TextBox7.Text +")";
            dc.Setdata(Q);
            Cheak_Stock();
            Response.Write("<script>alert('Product Added')</script>");
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text = "";
            
        }

        private void Cheak_Stock()
        {
            string t = "select * from Stock where ProductID = '" + TextBox1.Text + "'";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.Getdata(t);
            if(ds.Tables[0].Rows.Count == 0)
            {
            string s = "insert into Stock values ('" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ")";
            dc.Setdata(s);
            }
            else
            {
                int old_Stock = Convert.ToInt32(ds.Tables[0].Rows[0][2].ToString());
                int Purchasing_Stock = Convert.ToInt32(TextBox3.Text);
                int Available_Stock = old_Stock + Purchasing_Stock;
                string a = "update Stock set ProductQuantity = " + Available_Stock + " where ProductID = '" + TextBox1.Text + "' ";
                dc.Setdata(a);
            }
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            int value1 = Convert.ToInt32(TextBox3.Text);
            float value2 = float.Parse(TextBox6.Text); // Parsing as float
            float result = value1 * value2;
            TextBox7.Text = result.ToString();
        }

        
    }
}