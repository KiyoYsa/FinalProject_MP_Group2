<%@ Page Title="Our Artisans" Language="C#" AutoEventWireup="true" CodeBehind="OurArtisans.aspx.cs" Inherits="FinalProject_Mockup_Group2.OurArtisans" MasterPageFile="~/Site.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="our-artisans-page">
        <div class="our-artisans">
            <div class="page-header-section">
                <h1>OUR ARTISANS</h1>
                    <p> 
                        Honoring the hands that weave the soul of the T’boli into the fabric of the future. Meet the artisans who turn sacred traditions into living art.
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
                                <a href='Stories.aspx'>Read More</a>
                            </div>
                        </div>

                        <div class="artisan-image-section">
                            <img src='<%# Eval("ProfileImage") %>' />
                        </div>

                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>



</asp:Content>
 