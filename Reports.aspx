<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="MobileShoppingWebsite.Reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Reports.css" />
</head>
<body> 
    <form id="form1" runat="server">
      <header>
         <h1>Welcome to MobiKart</h1>
         <nav>
      <ul>
          <li><a href="AdminHome.aspx">Home</a></li>
          <li><a href="UserManagement.aspx">User Management</a></li>
          <li><a href="ManagePhones.aspx">Manage Stocks</a></li>
          <li><a href="LoginPage.aspx">Logout</a></li>
      </ul>
  </nav>
  </header>
        <div class="container">
            <h2>Booking Reports</h2>
        <center>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="ModelName" HeaderText="ModelName" SortExpression="ModelName" />
                <asp:BoundField DataField="Price_" HeaderText="Price_" SortExpression="Price_" />
                <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ModelName], [Price ] AS Price_, [User] FROM [Booking]"></asp:SqlDataSource>
        </center> 
        </div>
   </form>

    <footer>
         <p>&copy; 2023 MobiKart</p>
    </footer>
</body>
</html>
