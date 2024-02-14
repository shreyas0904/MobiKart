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
    public partial class ManagePhones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addPhoneButton_Click(object sender, EventArgs e)
        {
            string textboxValue = phonePrice.Text;
            if (DropDownList1.SelectedItem == null)
            {
                Response.Write("<script>alert('Invalid Selection')</script>");
            }
            if (!string.IsNullOrWhiteSpace(textboxValue) && Int32.TryParse(textboxValue, out int i))
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
                SqlCommand cmds = new SqlCommand(@"UPDATE Stock SET Quantity = Quantity + '" + textboxValue + "' WHERE ModelName = '" + DropDownList1.SelectedItem.ToString() + "'", con);
                con.Open();
                cmds.ExecuteNonQuery();
                Response.Write("<script>alert('Stock Updated Successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Quantity Invalid')</script>");
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            //String model = DeletePhone.Text;
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT * FROM Stock WHERE ModelName = '" + DeleteInput.Text + "'", con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                Response.Write("<script>alert('Model name invalid')</script>");
            }
            else
            {
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
                SqlCommand cmdo = new SqlCommand("DELETE FROM Stock WHERE ModelName = '" + DeleteInput.Text + "'", conn);
                conn.Open();
                cmdo.ExecuteNonQuery();
                Response.Write("<script>alert('Phone has been removed!')</script>");
                conn.Close();
            }
        }
    }
}