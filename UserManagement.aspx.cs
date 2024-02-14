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
    public partial class UserManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT * FROM RegTable WHERE Username = '" + UserTxt.Text + "'", con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                Response.Write("<script>alert('No such user exists! Please check Username')</script>");
            }
            else
            {
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
                SqlCommand cmdo = new SqlCommand("DELETE FROM RegTable WHERE Username = '" + UserTxt.Text + "'", conn);
                conn.Open();
                cmdo.ExecuteNonQuery();
                Response.Write("<script>alert('User successfully deleted')</script>");
                conn.Close();
            }
        }
    }
}