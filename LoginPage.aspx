<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="MobileShoppingWebsite.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel ="stylesheet" href ="style.css"/>
    <script src="https://kit.fontawesome.com/91a70791ad.js" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            width: 194px;
            height: 182px;
        }
        #TextBox1{
            width: 50%;
            padding: 10px;
                border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;    
        }
        #TextBox2{
            width: 50%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
        }
        .myButton {
    background-color: #44c767;
    border-radius: 12px;
    border: 2px solid #18ab29;
    display: inline-block;
    cursor: pointer;
    color: #ffffff;
    font-family: Arial;
    font-size: 17px;
    padding: 10px 24px;
    text-decoration: none;
    text-shadow: 0px 1px 0px #2f6627;
}

    .myButton:hover {
        background-color: #5cbf2a;
    }

    .myButton:active {
        position: relative;
        top: 1px;
    }
        .auto-style2 {
            display: block;
            margin-bottom: 30px;
            height: 25px;
            margin-left: auto;
            margin-right: auto;
            margin-top: auto;
        }
    </style>
</head>
    
<body style="background-image: url('bgimage.jpg'); background-repeat:no-repeat" >
    <form id="form1" runat="server">
        <div class="LoginBox">
            <center><img src="https://freesvg.org/img/abstract-user-flat-1.png" class="auto-style1"/></center>
            <h3>LOGIN&nbsp;&nbsp;&nbsp; </h3>
            <div class="inputBox">                  
                 <span><i class="fa-solid fa-user"></i></span>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="UserName"></asp:TextBox>
            </div>
            <div class="inputBox">
                <span><i class="fa-solid fa-lock"></i></span>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
            </div>
            <div class="auto-style2">
                
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>User</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="inputBox">
                <asp:Button ID="LoginBtn" Class="myButton" runat="server" Text="Login" OnClick="LoginBtn_Click" />
            </div>
            <div>
                <asp:LinkButton runat="server" Font-Names="Calibri" Font-Size="Medium" OnClick="ForgotPswdlink_Click">Forgot Password  </asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton runat="server" Font-Names="Calibri" Font-Size="Medium" OnClick="Unnamed3_Click" >Sign Up here</asp:LinkButton>
            </div>
        </div>
    </form>
    
</body>
</html>