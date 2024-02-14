<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="MobileShoppingWebsite.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MobiKart</title>
<link rel="stylesheet" type="text/css" href="Cart.css" />
</head>
<body>
    <form runat="server">
        <header>
               <h1>Welcome to MobiKart</h1>
                <nav>
                     <ul>
                        <li><a href="Main.aspx">Home</a></li>
                        <li><a href="Cart.aspx">Cart</a></li>
                        <li><a href="LoginPage.aspx">Logout</a></li>
                     </ul>
                 </nav>
        </header>
        <div class="container">
            <h1>&nbsp;</h1>
            <h1>Shopping Cart</h1>
            <div class="cart-items">
                <div class="cart-item">
                    <center>
                    <asp:GridView ID="gv" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="232px" OnSelectedIndexChanged="gv_SelectedIndexChanged" Width="531px">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="ModelName" HeaderText="ModelName" SortExpression="ModelName" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cart]"></asp:SqlDataSource>
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="SubTotal:₹"></asp:Label>
                        <asp:Label ID="TotalLabel" runat="server"></asp:Label>
                        <br />
                        <br />
                        <br />
                    <asp:Button ID="removeButton1" runat="server" Text="Remove" CssClass="remove-button" OnClick="removeButton1_Click"  />
                    </center>
                </div>
                <!--<div class="cart-item">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/img/phone2.jpg"/>
                     <h3>Samsung S22</h3>
                    <p>Price:₹52,990.00</p>
                    <div class="quantity">
                        <label for="quantity2">Quantity:</label>
                        <asp:TextBox ID="quantity2" runat="server" Text="1" CssClass="quantity-input" />
                    </div>
                    <p class="subtotal">Subtotal:₹52,990.00</p>
                    <asp:Button ID="removeButton2" runat="server" Text="Remove" CssClass="remove-button" />
                </div>-->
            </div>

            <div class="cart-total">
                <p>&nbsp;</p>
                <asp:Button ID="checkoutButton" runat="server" Text="Checkout" CssClass="checkout-button" OnClick="checkoutButton_Click" />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
    </form>

    <footer>
         <p>&copy; 2023 MobiKart</p>
    </footer>
</body>
</html>
