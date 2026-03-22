<%@ Page Title="Home" Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="FinalProject_Mockup_Group2.home" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<section class="page-header-section">
        <div class ="home-hero-img-container" style="left: -50px; top: -55px; width: 106%">
            <img src="images/main (2).jpg" alt="T'boli Craftsmanship" class="home-hero-img" style="float: left; left: -278px; top: -6px; width: 121%; margin-top: 0">
        </div>
        <h1 style="font-family: 'Garamond', 'Georgia', sans-serif;">Preserving Culture Through Craft</h1>
            Discover handcrafted works created by the T'boli Indigenous artisan community. 
            Each piece represents generations of tradition, creativity, and cultural identity.
       
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
                <img src="images/crafts.jpg" alt="Craft">
                <h3 style="font-size: 1.2rem;">Crafts</h3>
                <p>Discover traditional T'nalak weaving.</p>
                <div style="padding: 0 20px 20px;"><a href="shop.aspx" class="btn-read">Discover Crafts</a></div>
            </div>

            <div class="home-grid-card">
                <img src="images/culture.jpg" alt="Heritage">
                <h3 style="font-size: 1.2rem;">Cultural Heritage</h3>
                <p>Learn the meaning behind the designs.</p>
                <div style="padding: 0 20px 20px;"><a href="CulturalHeritage.aspx" class="btn-read">Learn More</a></div>
            </div>

            <div class="home-grid-card">
                <img src="images/stories.jpg" alt="Stories">
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

    <script>
        window.addEventListener('scroll', function () {
            const parallax = document.querySelector('.parallax-js');
            let scrollPos = window.scrollY;
            parallax.style.transform = `translateY(${scrollPos * 0.5}px)`;
        });
    </script>

    <hr class="section-divider" />

    <section class="achievements-section">
    <h2 class="home-section-title">Legacy & Recognition</h2>
    <p>The T'boli Dreamweavers and their craft have gained recognition both locally and internationally, honoring their role in preserving Filipino cultural heritage.</p>

    <div class="home-grid-container">

        <div class="achievement-card">
            <img src="images/gamaba.jpg" alt="GAMABA Award">
            <h3>GAMABA Recognition</h3>
            <p>Master weaver Lang Dulay was awarded the Gawad Manlilikha ng Bayan (National Living Treasure), recognizing her mastery of T’nalak weaving.</p>
        </div>

        <div class="achievement-card">
            <img src="images/unesco.jpg" alt="UNESCO">
            <h3>Cultural Heritage</h3>
            <p>T’nalak weaving is recognized as an important part of intangible cultural heritage, preserving indigenous identity and traditions.</p>
        </div>

        <div class="achievement-card">
            <img src="images/festivals.jpg" alt="Festival">
            <h3>Cultural Festivals</h3>
            <p>The community participates in events like the T’nalak Festival, showcasing their artistry and traditions.</p>
        </div>

        <div class="achievement-card">
            <img src="images/global.jpg" alt="Global Recognition">
            <h3>Global Recognition</h3>
            <p>T’boli crafts have reached international audiences, admired for their intricate patterns and deep cultural meaning.</p>
        </div>

    </div>
</section>

</asp:Content>