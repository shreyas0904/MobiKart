<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPswd.aspx.cs" Inherits="MobileShoppingWebsite.ForgotPswd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="ForgotPswd.css" />
    <title></title>
</head>
<body style="background-image: url('bgforgot.jpg'); background-repeat:no-repeat">
    <form id="form1" runat="server">
        <div class="container">
        <h2>Forgot Password</h2>
        <p>Enter your Username below to reset your password.</p>

        <div>
            <label for="txtUser">Username:<br />
            <br />
            <asp:TextBox ID="txtUser" runat="server" Height="27px" Width="262px"></asp:TextBox>
            </label>
            &nbsp;</div>
        <div> 
            <asp:Button ID="Button1" class="btnVerify" runat="server" Text="Verify" OnClick="Button1_Click" />
        </div>
            <div>

            </div>
        <div>
            <asp:Label ID="Npass" runat="server">New Password</asp:Label>
            <br />
            <asp:TextBox ID="txtPass" runat="server" CssClass="form-control" Textmode="Password" required="required"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="CNpass" runat="server">Confirm New Password</asp:Label><asp:TextBox ID="txtCPass" runat="server" CssClass="form-control" Textmode="Password" required="required"></asp:TextBox>
        </div>
        <div>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtCPass" ErrorMessage="Passwords dont match" Font-Strikeout="False" ForeColor="Red"></asp:CompareValidator>
        </div>
        <div>
            <asp:Button ID="Conf" runat="server" class="btnConf" Text="Update" OnClick="Conf_Click"></asp:Button>
        </div>

        </div>
    </form>
</body>
</html>

