using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileShoppingWebsite
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        string Type = "User";
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
            SqlCommand scmd = new SqlCommand(@"INSERT INTO [dbo].[RegTable]([First Name],[Last Name],[Username],[Password],[CPassword],[Addr],[Phno],[Email],[Gender],[Usertype]) Values ('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtUsername.Text + "','" + txtpswd.Text + "','" + txtCPswd.Text + "','" + txtAddress.Text + "','"+txtPhone.Text+"','"+TxtEmail.Text+"','"+gender+"','" + Type + "')", con);
            SqlCommand scmdo = new SqlCommand(@"INSERT INTO [dbo].[Login]([Username],[Password],[Usertype]) Values ('" +txtUsername.Text + "','" + txtpswd.Text + "','" + Type + "')", con);
            SqlCommand q = new SqlCommand("SELECT * FROM [dbo].[RegTable] WHERE Username = '" + txtUsername.Text + "'", con);
            con.Open();
            SqlDataReader sdr = q.ExecuteReader();
            int count = 0;
            while (sdr.Read())
            {
                count++;
            }
            con.Close();
            if (count > 0)
            {
                Response.Write("<script>alert('Username already exists')</script>");
                
            }
            else
            {
                con.Open();
                scmd.ExecuteNonQuery();
                scmdo.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('User Registered successfully!')</script>");
                Server.Transfer("LoginPage.aspx");
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Male";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Female";
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Other";
        }
    }
}