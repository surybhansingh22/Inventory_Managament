using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventory_Managament
{
    public partial class Sell : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataCon dc = new DataCon();
                DataSet ds = new DataSet();
                string s = "select * from Customer_Data ";
                ds = dc.Getdata(s);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    Response.Write("<script>alert('No Customer Added Yet')</script>");
                }
                else
                {
                    DropDownList1.DataSource = ds;
                    DropDownList1.DataTextField = "Customer_Name";
                    DropDownList1.DataValueField = "Customer_ID";
                    DropDownList1.DataBind();
                    DropDownList1.Items.Insert(0, "Select Customer");
                }
                string q = "select * from Stock";
                ds = dc.Getdata(q);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    Response.Write("<script>alert('No Product Added Yet')</script>");
                }
                else
                {
                    DropDownList2.DataSource = ds;
                    DropDownList2.DataTextField = "ProductName";
                    DropDownList2.DataValueField = "ProductID";
                    DropDownList2.DataBind();
                    DropDownList2.Items.Insert(0, "Select Product");
                }
                TextBox1.Enabled = TextBox2.Enabled = TextBox4.Enabled = TextBox5.Enabled = TextBox7.Enabled = false;
                DataCon dataCon = new DataCon();
                string[] dateArr = dataCon.GeneratingDates();
                string currentDate = dateArr[0];
                TextBox4.Text = currentDate;
            }
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            int value1 = Convert.ToInt32(TextBox3.Text);
            float value2 = float.Parse(TextBox6.Text); // Parsing as float
            float result = value1 * value2;
            TextBox7.Text = result.ToString();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            TextBox1.Text = DropDownList2.SelectedItem.Value.ToString();
            TextBox2.Text = DropDownList2.SelectedItem.Text.ToString();
            string s = "select * from Stock where ProductID = '" + TextBox1.Text + "'";
            ds = dc.Getdata(s);
            int StockValue = Convert.ToInt32(ds.Tables[0].Rows[0][2].ToString());
            if( StockValue == 0)
            {
                Label2.Text = "Out Of Stock";
                Label2.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label2.Text = "" + StockValue + " left";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox5.Text = DropDownList1.SelectedItem.Value.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            string Q = "insert into Sell values ('" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + TextBox4.Text + "'," + TextBox5.Text + "," + TextBox6.Text + "," + TextBox7.Text + ")";
            dc.Setdata(Q);
            string s = "select * from Stock where ProductID = '"+ TextBox1.Text +"'";
            ds = dc.Getdata(s);
            int old_Stock = Convert.ToInt32(ds.Tables[0].Rows[0][2].ToString());
            int selling_Stock = Convert.ToInt32(TextBox3.Text);
            int Available_Stock = old_Stock - selling_Stock;
            string t = "update Stock set ProductQuantity = "+ Available_Stock +" where ProductID = '"+ TextBox1.Text +"' ";
            dc.Setdata(t);
            Response.Write("<script>alert('Product Sold to " + DropDownList1.SelectedItem.Text + "')</script>");
            TextBox1.Text = TextBox2.Text = TextBox3.Text =  TextBox5.Text = TextBox6.Text = TextBox7.Text = Label2.Text= "";
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
        }
    }
}