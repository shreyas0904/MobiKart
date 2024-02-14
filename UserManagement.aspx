<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="MobileShoppingWebsite.UserManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Usermgmt.css" />
    <style type="text/css">
        .auto-style1 {
            margin: auto;
            width: 70%;
            height: 70%;
            padding: 10px;
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <header>
           <h1>Welcome to MobiKart</h1>
    <nav>
        <ul>
            <li><a href="AdminHome.aspx">Home</a></li>
            <li><a href="Reports.aspx">Reports</a></li>
            <li><a href="ManagePhones.aspx">Manage Stocks</a></li>
            <li><a href="LoginPage.aspx">Logout</a></li>
        </ul>
    </nav>
           </header>
        <div class="container">
        <h2>User Management</h2>
        <div class="auto-style1">


            <div class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Enter Username to purge:"></asp:Label>
&nbsp;<asp:TextBox ID="UserTxt" runat="server" Height="16px" Width="467px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Height="28px" Text="Purge" Width="127px" OnClick="Button1_Click" />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>


            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" DataKeyNames="Username">
                <Columns>
                    <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
                    <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" ReadOnly="True" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="CPassword" HeaderText="CPassword" SortExpression="CPassword" />
                    <asp:BoundField DataField="Addr" HeaderText="Addr" SortExpression="Addr" />
                    <asp:BoundField DataField="Phno" HeaderText="Phno" SortExpression="Phno" />
                    <asp:BoundField DataField="Email " HeaderText="Email " SortExpression="Email " />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [RegTable]"></asp:SqlDataSource>
        </center>
       </div>  
      </div>
    </form>

    <footer>
         <p>&copy; 2023 MobiKart</p>
    </footer>
</body>
</html>
