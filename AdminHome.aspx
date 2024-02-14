<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="MobileShoppingWebsite.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Adminstyle.css" />
<style type="text/css">
        .auto-style3 {
            width: 100%;
            height: 769px;
        }
        .genbutton {
            border-radius: 10px;
            transition-duration: 0.4s;
			color: #ffffff;
			background-color: #00c88f;
			border: 1px solid #00c88f;
			cursor: pointer;
            width: 200px;
            height: 35px;
		}
        .genbutton:hover {
            color: #2d63c8;
			background-color: #ffffff;
        }
        .logoutbtn {
             border-radius: 20px;
            transition-duration: 0.4s;
			color: #ffffff;
			background-color: #f66a6a;
			border: 1px solid #f66a6a;
			cursor: pointer;
            width: 200px;
            padding: 3px 10px;
            height: 24px;
        }
        .logoutbtn:hover{
            color: #2d63c8;
			background-color: #ffffff;
        }
        .auto-style7 {
            width: 780px;
            text-align: center;
        }
        .auto-style8 {
            border-radius: 20px;
            transition-duration: 0.4s;
            color: #ffffff;
            background-color: #f66a6a;
            border: 1px solid #f66a6a;
            cursor: pointer;
            padding: 3px 10px;
        }
        .auto-style9 {
            height: 34px;
            text-align: right;
        }
    .auto-style10 {
        width: 832px;
        text-align: center;
    }
    .auto-style11 {
        border-radius: 10px;
        transition-duration: 0.4s;
        color: #ffffff;
        background-color: #00c88f;
        border: 1px solid #00c88f;
        cursor: pointer;
    }
    </style>
    </head>
    <body>
    <header>
           <h1>Welcome to MobiKart</h1>
    </header>
    <form id="form1" runat="server">
        <table class="auto-style3">
            <tr>
                <td class="auto-style9" draggable="false" colspan="2">
                    <asp:Button ID="Button5" runat="server" Text="Log-Out" CssClass="auto-style8" Font-Names="Verdana" Font-Size="Medium" OnClick="Button5_Click" Height="41px" Width="165px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10" draggable="false" style="margin: 50px; padding: 50px;">
                    <br />
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="226px" ImageAlign="Middle" ImageUrl="~/img/cell-phone-icon.png" Width="135px" />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" class="genbutton" Text="Manage Phones" CssClass="genbutton" Font-Names="Verdana" Font-Size="Medium" OnClick="Button1_Click" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style7" draggable="false" style="margin: 50px; padding: 50px;" rowspan="2">
                    <asp:Image ID="Image5" runat="server" Height="171px" ImageUrl="~/img/user-data-icon.png" Width="281px" />
                    <br />
                    <br />
                    <asp:Button ID="Button6" class="genbutton" runat="server" Text="User Data" Font-Names="Verdana" Font-Size="Medium" OnClick="Button6_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10" draggable="false" style="margin: 50px; padding: 50px;">
                    <br />
                    &nbsp;<asp:Image ID="Image4" runat="server" Height="208px" ImageAlign="Middle" ImageUrl="~/img/reports-icon.png" Width="170px" />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button3" runat="server" Text="View Booking Reports" CssClass="auto-style11" Font-Names="Verdana" Font-Size="Medium" Width="233px" OnClick="Button3_Click" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </form>

   <footer>
         <p>&copy; 2023 MobiKart</p>
    </footer>
</body>
</html>
