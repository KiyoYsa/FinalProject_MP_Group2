<%@ Page Title="Crafts" Language="C#" AutoEventWireup="true" CodeBehind="Crafts.aspx.cs" Inherits="FinalProject_Mockup_Group2.crafts" MasterPageFile="~/Site.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .btn-read.active { background-color: #7B160E; color: white; }
        .prod_card { border: 1px solid #ddd; padding: 15px; margin-bottom: 20px; border-radius: 8px; }
        .prod_image img { width: 100%; height: auto; border-radius: 5px; }
        .contact_btn { display: inline-block; margin-top: 10px; padding: 8px 15px; background: #7B160E; color: #fff; text-decoration: none; border-radius: 4px; }
    </style>

    <div class="page-header-section">
        <h1>THE CRAFT</h1>
        <p>"Every item tells a story—crafted with care, rooted in tradition, and made for you to bring a piece of culture home."</p>
    </div>

    <section style="margin-top: 10px;">
        <h2 style="font-size: 32px; color: #7B160E; text-align: center; letter-spacing: 4px; margin-bottom: 30px;">HANDWOVEN TREASURES</h2>
        <p style="font-size: 18px; color: #1A1A1A; text-align: center;">
            Each piece is meticulously handwoven by the T’boli, blending traditional artistry with timeless elegance.
        </p>
    </section>

    <div class="auto-style1" style="gap:15px; display: flex; justify-content: center; margin-bottom: 40px; flex-wrap: wrap;">
        <asp:LinkButton ID="btnAll" runat="server" CssClass="btn-read" OnClick="FilterCategory_Click" CommandArgument="0">All</asp:LinkButton>
        <asp:LinkButton ID="btnCloth" runat="server" CssClass="btn-read" OnClick="FilterCategory_Click" CommandArgument="1">Cloth</asp:LinkButton>
        <asp:LinkButton ID="btnMalong" runat="server" CssClass="btn-read" OnClick="FilterCategory_Click" CommandArgument="2">Malong</asp:LinkButton>
        <asp:LinkButton ID="btnClothing" runat="server" CssClass="btn-read" OnClick="FilterCategory_Click" CommandArgument="3">Clothing</asp:LinkButton>
        <asp:LinkButton ID="btnBags" runat="server" CssClass="btn-read" OnClick="FilterCategory_Click" CommandArgument="4">Bags</asp:LinkButton>
        <asp:LinkButton ID="btnHome" runat="server" CssClass="btn-read" OnClick="FilterCategory_Click" CommandArgument="5">Home</asp:LinkButton>
    </div>

    <div class="prod">
        <div class="prod_box" style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 20px; max-width: 1200px; margin: 0 auto;">
            <asp:Repeater ID="rptCrafts" runat="server">
                <ItemTemplate>
                    <div class="prod_card">
                        <div class="prod_image">
                            <img src='<%# Eval("Thumbnail") %>' alt='<%# Eval("CraftName") %>'>
                        </div>
                        <div class="prod_info">
                            <h3 style="color: #7B160E;"><%# Eval("CraftName") %></h3>
                            <p><%# Eval("CraftDesc") %></p>
                            <div class="contact_info">
                                <p style="font-size: 14px;"><strong>Artisan:</strong> <%# Eval("ArtisanName") %></p>
                            </div>
                        </div>
                        <a href='<%# "OurArtisans.aspx?id=" + Eval("ArtisanID") %>' class="contact_btn">View Artisan</a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>