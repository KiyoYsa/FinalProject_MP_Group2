<%@ Page Title="Our Artisans" Language="C#" AutoEventWireup="true" CodeBehind="OurArtisans.aspx.cs" Inherits="FinalProject_Mockup_Group2.OurArtisans" MasterPageFile="~/Site.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="our-artisans-page">
        <div class="our-artisans">
            <div class="page-header-section">
                <h1>OUR ARTISANS</h1>
                    <p> 
                        The Our Artisans page introduces the talented T’boli artisans behind the products featured on this website. It highlights their craftsmanship, cultural traditions, and their role in preserving the heritage of the T’boli community. Through their stories and traditional practices, visitors can learn more about the people and cultural values behind each handcrafted piece. 
                </p>
            </div>

            <div class="artisan-divider"></div>

            <asp:Repeater ID="rptArtisans" runat="server">
                <ItemTemplate>
                    <div class='artisan-wrapper <%# Container.ItemIndex % 2 == 1 ? "reverse" : "" %>'>

                        <div class="artisan-content">
                            <h3><%# Eval("ArtisanName") %> (<%# Eval("ArtisanLocation") %>)</h3>

                            <p><%# Eval("ArtisanBio") %></p>
                            <br />

                            <div class="btn-read">
                                <a href='CulturalHeritage.aspx'>Read More</a>
                            </div>
                        </div>

                        <div class="artisan-image-section">
                            <img src='<%# Eval("ProfileImageURL") %>' />
                        </div>

                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

</asp:Content>
 