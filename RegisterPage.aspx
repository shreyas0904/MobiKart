<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="MobileShoppingWebsite.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <link rel="stylesheet" type="text/css" href="Register.css" />
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0;
        }
    </style>
</head>
<body style="background-image: url('bgforgot.jpg'); background-repeat:no-repeat">
   <script src="https://code.jquery.com/jquery-3.6.0.min.js" type="text/javascript"></script>
    <form id="registrationForm" runat="server">
        <h1>Registration Form</h1>
        <div>
            <label for="txtFirstName">First Name:</label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="input-text"></asp:TextBox>
         
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required First Name" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
         
        </div>
        <div>
            <label for="txtLastName">Last Name:</label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="input-text"></asp:TextBox>
          
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required First Name" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
         
        </div>
        <div>
            <label for="txtUsername">Username:</label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="input-text"></asp:TextBox>
           
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUsername" ErrorMessage="Required Username"></asp:RequiredFieldValidator>
           
        </div>
        <div>
            <label for="txtpswd" class="auto-style1">Password:</label>
            <asp:TextBox ID="txtpswd" runat="server" CssClass="input-text" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpswd" ErrorMessage="Required Password"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="txtCPswd">Confirm Password:</label>
            <asp:TextBox ID="txtCPswd" runat="server" CssClass="input-text" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCPswd" ErrorMessage="Required Confirm Password"></asp:RequiredFieldValidator>
        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpswd" ControlToValidate="txtCPswd" ErrorMessage="Passwords Don't Match"></asp:CompareValidator>
        </div>
        <div>
            <label for="txtAddress">Address:</label>
            <asp:TextBox ID="txtAddress" runat="server" CssClass="input-text"></asp:TextBox>
          
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAddress" ErrorMessage="Required Address"></asp:RequiredFieldValidator>
          
        &nbsp;</div>
        <div>
            <label for="txtPhone">Phone Number:</label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="input-text" MaxLength="10" TextMode="Phone"></asp:TextBox>
     
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Required Phone"></asp:RequiredFieldValidator>
     
        &nbsp;&nbsp;
     
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Invalid Phone Number" ValidationExpression="^([0-9]{10})$"></asp:RegularExpressionValidator>
&nbsp;&nbsp;
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPhone" ErrorMessage="Only Numbers" ValidationExpression="(^([0-9]*|\d*\d{1}?\d*)$)"></asp:RegularExpressionValidator>
     
        </div>
        <div>
       <label for="txtEmail">Email: </label>
        &nbsp;<asp:TextBox ID="TxtEmail" runat="server" CssClass="input-text"></asp:TextBox>  
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Required Email"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Invalid Email" ValidationExpression="^\S+@\S+$"></asp:RegularExpressionValidator>
        </div>
        <div>
        <div>
            <label>Gender:
            <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Male"></asp:Label>
&nbsp;<asp:RadioButton GroupName="User" ID="RadioButton1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" />
&nbsp;<asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Female"></asp:Label>
            <asp:RadioButton GroupName="User" ID="RadioButton2" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" />
            <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Rather not say"></asp:Label>
            <asp:RadioButton GroupName="User" ID="RadioButton3" runat="server" OnCheckedChanged="RadioButton3_CheckedChanged" />
            <br />
            <br />
            </label>
&nbsp;</div>
            <asp:Button ID="btnRegister" runat="server" Text="Register"  CssClass="btn" OnClick="btnRegister_Click" />
        </div>
    </form>
    
</body>
</html>