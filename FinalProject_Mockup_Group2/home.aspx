<%@ Page Title="Home" Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="FinalProject_Mockup_Group2.home" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="page-header-section">
        <img src="images/mainpic.jpg" alt="T'boli Craftsmanship" class="home-hero-img">
        <h1 style="font-family: 'Garamond', 'Georgia', sans-serif;">Preserving Culture Through Craft</h1>
        <p>
            Discover handcrafted works created by the T'boli Indigenous artisan community. 
            Each piece represents generations of tradition, creativity, and cultural identity.
        </p>
    </section>

    <section class="home-about-section">
        <h2 class="home-section-title">About the Collective</h2>
        <p style="font-size: 18px; color: #1A1A1A;">
            This archive highlights the T'boli artisan community and their sacred traditional crafts. 
            We aim to bridge the gap between ancient traditions and the modern world, 
            ensuring the "Dreamweaver" legacy continues for generations to come.
        </p>
    </section>

    <section>
        <h2 class="home-section-title">Explore</h2>
        <div class="home-grid-container">
            
            <div class="home-grid-card">
                <img src="images/artisan.jpg" alt="Artisan">
                <h3 style="font-size: 1.2rem;">Our Artisans</h3>
                <p>Meet the creators and hear their stories.</p>
                <div style="padding: 0 20px 20px;"><a href="OurArtisans.aspx" class="btn-read">Meet Artisans</a></div>
            </div>

            <div class="home-grid-card">
                <img src="images/craft.jpg" alt="Craft">
                <h3 style="font-size: 1.2rem;">Crafts + Shop</h3>
                <p>Discover traditional T'nalak weaving.</p>
                <div style="padding: 0 20px 20px;"><a href="shop.aspx" class="btn-read">Discover Crafts</a></div>
            </div>

            <div class="home-grid-card">
                <img src="images/heritage.jpg" alt="Heritage">
                <h3 style="font-size: 1.2rem;">Cultural Heritage</h3>
                <p>Learn the meaning behind the designs.</p>
                <div style="padding: 0 20px 20px;"><a href="CulturalHeritage.aspx" class="btn-read">Learn More</a></div>
            </div>

            <div class="home-grid-card">
                <img src="images/story.jpg" alt="Stories">
                <h3 style="font-size: 1.2rem;">Stories</h3>
                <p>Read oral histories from the Lake Sebu elders.</p>
                <div style="padding: 0 20px 20px;"><a href="Stories.aspx" class="btn-read">Read Stories</a></div>
            </div>

        </div>
    </section>

    <section class="home-about-section">
        <h2 class="home-section-title">Support T'boli Craftsmanship</h2>
        <p style="font-size: 18px; color: #1A1A1A; margin-bottom: 25px;">Every craft helps sustain artisan communities and preserve cultural heritage.</p>
    </section>

</asp:Content>