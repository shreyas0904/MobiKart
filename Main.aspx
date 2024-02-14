<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="MobileShoppingWebsite.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mobile Shopping</title>
    <link rel="stylesheet" type="text/css" href="Main.css" />
    </head>
<body>
    <form id="form1" runat="server">
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
        <h2>Mobile Phones</h2>
        <div class="product-grid">
            <!-- Product cards go here -->
            <div class="product-card">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/img/phone1.jpg" />
                <h3>
                    <asp:Label ID="Phone1" runat="server" Text="Samsung S23 Ultra"></asp:Label>
                </h3>
                <p>
                    Chipset:	Qualcomm SM8550-AC Snapdragon 8 Gen 2 (4 nm) Octa-core (1x3.36 GHz Cortex-X3 & 2x2.8 GHz Cortex-A715)<br><br>
                    Memory:     256GB 8GB RAM, 256GB 12GB RAM, 512GB 12GB RAM, 1TB 12GB RAM<br><br>
                    Camera:     200 MP, f/1.7, 24mm (wide), 1/1.3", 0.6µm, multi-directional PDAF, Laser AF, OIS
                </p>
                <p>
                    Price: ₹
                    <asp:Label ID="Phone1Price" runat="server" Text="124,999.00"></asp:Label>
                </p>
                <asp:Button ID="AddToCart1" runat="server" Text="Add to Cart" OnClick="AddToCart1_Click"></asp:Button>
            </div>
            <div class="product-card">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/img/phone2.jpg"/>
                <h3>
                    <asp:Label ID="Phone2" runat="server" Text="Samsung S22"></asp:Label>
                </h3>
                 <p>
                 Chipset:	Qualcomm SM8450 Snapdragon 8 Gen 1 (4 nm) Octa-core (1x3.00 GHz Cortex-X2 & 3x2.50 GHz Cortex-A710 & 4x1.80 GHz Cortex-A510)<br><br>
                 Memory:     128GB 8GB RAM, 256GB 8GB RAM<br><br>
                 Camera:    50 MP, f/1.8, 23mm (wide), 1/1.56", 1.0µm, Dual Pixel PDAF, OIS<br>
                            10 MP, f/2.4, 70mm (telephoto), 1/3.94", 1.0µm, PDAF, OIS, 3x optical zoom<br>
                            12 MP, f/2.2, 13mm, 120˚ (ultrawide), 1/2.55" 1.4µm<br>
                </p>
                <p>Price:₹<asp:Label ID="Phone2Price" runat="server" Text="52,990.00"></asp:Label>
                </p>
                <asp:Button ID="AddToCart2" runat="server" Text="Add to Cart" OnClick="AddToCart2_Click"></asp:Button>
            </div>
            <div class="product-card">
             <asp:Image ID="Image3" runat="server" ImageUrl="~/img/phone3.jpg"/>
                <h3>
                    <asp:Label ID="Phone3" runat="server" Text="IPhone 11"></asp:Label>
                </h3>
                 <p>
                 Chipset:	 Apple A13 Bionic (7 nm+)<br><br>
                 Memory:     64GB 4GB RAM, 128GB 4GB RAM, 256GB 4GB RAM<br></br>
                 Camera:     12 MP, f/1.8, 26mm (wide), 1/2.55", 1.4µm,<br>
                             12 MP, f/2.4, 120˚, 13mm (ultrawide), 1/3.6"
                </p>
                <p>Price:₹.<asp:Label ID="Phone3Price" runat="server" Text="38,990.00"></asp:Label>
                </p>
                <asp:Button ID="AddToCart3" runat="server" Text="Add to Cart" OnClick="AddToCart3_Click" ></asp:Button>
            </div>
        </div>
    </div>
    </form>
    <footer>
       <p>&copy; 2023 MobiKart</p>
    </footer>
</body>
</html>
