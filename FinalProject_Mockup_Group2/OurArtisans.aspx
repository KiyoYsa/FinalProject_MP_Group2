<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OurArtisans.aspx.cs" Inherits="FinalProject_Mockup_Group2.OurArtisans" MasterPageFile="~/Site.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="our-artisans-page">
    
    <section>
        <div class="our-artisans">
            <h1>OUR ARTISANS</h1>

             <div class="artisan-page-description"> 
                <p>
                    <br> 
                    The Our Artisans page introduces the skilled individuals behind the products and services featured in this website.  
                    Its purpose is to highlight the artisans, their craftsmanship, and their contribution to preserving traditional skills  
                    and cultural heritage. By showcasing their work and stories, the page allows visitors to learn more about the people  
                    responsible for creating the products presented in the platform. 
                </p>
            </div> 

            <!-- First artisan -->
            <div class="artisan-wrapper">
                <div class="artisan-content">
                    <h3>Artisan 1 Name (Province)</h3>
                    <p>Contains artisan's description, background, culture and the likes. Read more would take them to their heritage.</p>
                    <div class="artisan-button">
                        <a href="CulturalHeritage.aspx">Read More</a>
                    </div>
                </div>
                <div class="artisan-image-section">
                    <img src="https://placehold.co/400" />
                </div>
            </div>

            <!-- Second artisan (reversed) -->
            <div class="artisan-wrapper reverse">
                <div class="artisan-content">
                    <h3>Artisan 2 Name (Province)</h3>
                    <p>Contains artisan's description, background, culture and the likes. Read more would take them to their heritage.</p>
                    <div class="artisan-button">
                        <a href="CulturalHeritage.aspx">Read More</a>
                    </div>
                </div>
                <div class="artisan-image-section">
                    <img src="https://placehold.co/400" />
                </div>
            </div>
        </div>
    </section>


</asp:Content>
    
