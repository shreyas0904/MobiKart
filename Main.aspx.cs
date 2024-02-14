using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileShoppingWebsite
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddToCart1_Click(object sender, EventArgs e)
        {
            string myVar = Session["name"].ToString();
            Session["model"] = Phone1.Text;
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Stock WHERE ModelName = '" + Phone1.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                Response.Write("<script>alert('Model out of stock')</script>");
            }
            else
            {
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Cart]([ModelName],[Price]) VALUES ('" + Phone1.Text + "', '" + Phone1Price.Text + "')", conn);
                SqlCommand cmdo = new SqlCommand(@"INSERT INTO [dbo].[Booking]([ModelName],[Price],[User]) VALUES ('" + Phone1.Text + "', '" + Phone1Price.Text + "','"+myVar+"')", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                cmdo.ExecuteNonQuery();
                Response.Write("<script>alert('Item added to cart successfully!')</script>");
                con.Close();
            }
        }

        protected void AddToCart2_Click(object sender, EventArgs e)
        {
            string myVar = Session["name"].ToString();
            Session["model"] = Phone2.Text;
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Stock WHERE ModelName = '" + Phone2.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                Response.Write("<script>alert('Model out of stock')</script>");
            }
            else
            {
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Cart]([ModelName],[Price]) VALUES ('"+Phone2.Text+"', '"+Phone2Price.Text+"')", conn);
                SqlCommand cmdo = new SqlCommand(@"INSERT INTO [dbo].[Booking]([ModelName],[Price],[User]) VALUES ('" + Phone2.Text + "', '" + Phone2Price.Text + "','" + myVar + "')", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                cmdo.ExecuteNonQuery();
                Response.Write("<script>alert('Item added to cart successfully!')</script>");
                con.Close();
            }
        }

        protected void AddToCart3_Click(object sender, EventArgs e)
        {
            string myVar = Session["name"].ToString();
            Session["model"] = Phone3.Text;
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Stock WHERE ModelName = '" + Phone3.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                Response.Write("<script>alert('Model out of stock')</script>");
            }
            else
            {
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Cart]([ModelName],[Price]) VALUES ('" + Phone3.Text + "', '" + Phone3Price.Text + "')", conn);
                SqlCommand cmdo = new SqlCommand(@"INSERT INTO [dbo].[Booking]([ModelName],[Price],[User]) VALUES ('" + Phone3.Text + "', '" + Phone3Price.Text + "','" + myVar + "')", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                cmdo.ExecuteNonQuery();
                Response.Write("<script>alert('Item added to cart successfully!')</script>");
                con.Close();
            }
        }
    }
}