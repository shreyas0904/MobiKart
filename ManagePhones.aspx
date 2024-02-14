<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagePhones.aspx.cs" Inherits="MobileShoppingWebsite.ManagePhones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Admin Page</title>
    <link rel="stylesheet" type="text/css" href="ManagePhones.css" />
</head>
<body>
    <header>
           <h1>Welcome to MobiKart</h1>
    <nav>
        <ul>
            <li><a href="AdminHome.aspx">Home</a></li>
            <li><a href="Reports.aspx">Reports</a></li>
            <li><a href="UserManagement.aspx">User Management</a></li>
            <li><a href="LoginPage.aspx">Logout</a></li>
        </ul>
    </nav>
</header>
    <form runat="server">
    <div class="container">
        <h2>Manage Phone Stock</h2>
        <div class="add-phone-form">
            <h3>Add Stock</h3>
            <div class="form-group">
                <label for="phoneName">Phone Name:<br />
                </label>
                <asp:DropDownList ID="DropDownList1" runat="server" class="select" DataSourceID="SqlDataSource2" DataTextField="ModelName" DataValueField="ModelName"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ModelName] FROM [Stock]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Stock]"></asp:SqlDataSource>
            </div>
            <div class="form-group">
                Quantity<label for="phonePrice">:</label>
                <asp:TextBox ID="phonePrice" runat="server" CssClass="form-input" />
            </div>
            <asp:Button ID="addPhoneButton" runat="server" Text="Update"  CssClass="admin-button" OnClick="addPhoneButton_Click" CausesValidation="False" />
            </div>
            <div class="add-phone-form">
                <h3>&nbsp;</h3>

                <h3>Delete Stocks</h3>
                <div class="form-group">
                    <label for="phonename">Phone Name:</label>&nbsp;<asp:TextBox ID="DeleteInput" runat="server" CssClass="delete-input"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="Delete" runat="server" CausesValidation="False" CssClass="admin-button" OnClick="Delete_Click" Text="Delete" />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
                <center>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" DataKeyNames="ModelName">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="ModelName" HeaderText="ModelName" SortExpression="ModelName" ReadOnly="True" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</center>
            </div>
        </div>
    </form>
    <footer>
    <p>&copy; 2023 MobiKart</p>   

    </footer>
</body>
</html>
