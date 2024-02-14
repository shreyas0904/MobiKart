using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileShoppingWebsite
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Server.Transfer("LoginPage.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("Reports.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Server.Transfer("UserManagement.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("ManagePhones.aspx");
        }
    }
}