<%@ Page Title="Our Artisans" Language="C#" AutoEventWireup="true" CodeBehind="OurArtisans.aspx.cs" Inherits="FinalProject_Mockup_Group2.OurArtisans" MasterPageFile="~/Site.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="our-artisans-page">
    
   
        <div class="our-artisans">
            <div class="page-header-section">
                <h1>OUR ARTISANS</h1>
                 <p >   The Our Artisans page introduces the talented T’boli artisans behind the products featured on this website. 
                 It highlights their craftsmanship, cultural traditions, and their role in preserving the heritage of the T’boli community.
                 Through their stories and traditional practices, visitors can learn more about the people and cultural values behind each handcrafted piece.  </p>
            </div>

            <!-- First artisan -->
            <div class="artisan-wrapper">
                <div class="artisan-content">
                    <h3>Artisan 1 Name (Province)</h3>
                    <p>This section presents each artisan’s background, craft, and cultural heritage. It provides an overview of their skills, traditions, and the stories behind their work. By clicking Read More, visitors can explore deeper insights into the artisan’s heritage and the cultural significance of their craft.</p>
                    <a href="CulturalHeritage.aspx" class="btn-read">Read More</a>
                  
                </div>
                <div class="artisan-image-section">
                    <img src="https://placehold.co/400" />
                </div>
            </div>

            <!-- Second artisan (reversed) -->
            <div class="artisan-wrapper reverse">
                <div class="artisan-content">
                    <h3>Artisan 2 Name (Province)</h3>
                    <p>This section presents each artisan’s background, craft, and cultural heritage. It provides an overview of their skills, traditions, and the stories behind their work. By clicking Read More, visitors can explore deeper insights into the artisan’s heritage and the cultural significance of their craft.</p>
                     <a href="CulturalHeritage.aspx" class="btn-read">Read More</a>
                
                </div>
                <div class="artisan-image-section">
                    <img src="https://placehold.co/400" />
                </div>
            </div>
        </div>

    </div>

</asp:Content>
    
