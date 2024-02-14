using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileShoppingWebsite
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            decimal total = 0;
            foreach (GridViewRow row in gv.Rows)
            {
                // Assuming the value is in the second column
                decimal value = Convert.ToDecimal(row.Cells[1].Text);
                total += value;
            }
            // Assuming you have a Label control named "TotalLabel"
            TotalLabel.Text = total.ToString();
        }

        protected void checkoutButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
            SqlCommand q = new SqlCommand("SELECT * FROM Cart", con);
            con.Open();
            SqlDataReader sdr = q.ExecuteReader();
            int count = 0;
            while (sdr.Read())
            {
                count++;
            }
            con.Close();
            if (count == 0)
            {
                Response.Write("<script>alert('Cart Empty!')</script>");
            }
            else
            {
                Server.Transfer("Payment.aspx");
            }
        }
       
        protected void removeButton1_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("DELETE FROM Cart",con);
            SqlCommand q = new SqlCommand("SELECT * FROM Cart",con);
            con.Open();
            SqlDataReader sdr = q.ExecuteReader();
            int count = 0;
            while (sdr.Read())
            {
                count++;
            }
            con.Close();
            if (count == 0)
            {
                Response.Write("<script>alert('Cart Empty!')</script>");
            }
            else
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Cart Cleared!')</script>");
            }
        }

        protected void gv_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}