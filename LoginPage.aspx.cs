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
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Server.Transfer("RegisterPage.aspx");
        }

        protected void ForgotPswdlink_Click(object sender, EventArgs e)
        {
            Server.Transfer("ForgotPswd.aspx");
        }
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            Session["name"] = TextBox1.Text;
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Login WHERE Username='" + TextBox1.Text + "' AND Password = '" + TextBox2.Text + "' AND UserType = '" + DropDownList1.SelectedItem.ToString() + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('You're logged in as " + dt.Rows[0][2] + "')</script>");
                if (DropDownList1.SelectedIndex == 0)
                {
                    Response.Write("<script>alert('Logged in as User! Welcome!')</script>");
                    Server.Transfer("Main.aspx");
                }
                else if (DropDownList1.SelectedIndex == 1)
                {
                    Response.Write("<script>alert('Logged in as Admin! Welcome!')</script>");
                    Server.Transfer("AdminHome.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Username, Password Incorrect / Usertype not matching')</script>");
            }
        }
    }
}

