<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CulturalHeritage.aspx.cs" Inherits="FinalProject_Mockup_Group2.CulturalHeritage" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        * {
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
            line-height: 1.5;
            font-family: Arial, sans-serif;
        }

        body {
            width: 100%;
            min-height: 100vh;
            background-color: white;
            color: #050505;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 60px;
            background: #FAF3CD; 
            border-bottom: 1px solid #ddd;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo-text {
            font-size: 22px;
            font-weight: bold;
            color: #6b4f3b;
        }

        nav a {
            margin-left: 25px;
            text-decoration: none;
            color: #333;
            font-weight: 500;
            transition: 0.3s;
        }

        nav a:hover {
            color: #a05a2c;
        }

        .page-header-section {
            background: #eee; 
            width: 100%;
            text-align: center;
            padding: 40px 0;
        }

        .page-header-section h1 {
            font-size: 40px;
            color: #7B160E; 
            letter-spacing: 1.5px;
            display: inline-block;
            padding-bottom: 10px;
            text-transform: uppercase;
        }

        .page-header-section h1::after {
            content: "";
            display: block;
            width: 120px;
            height: 4px;
            background: #7B160E;
            margin: 10px auto;
            border-radius: 2px;
        }

        section {
            padding: 60px 80px;
        }

        .section-intro {
            text-align: center;
            max-width: 800px;
            margin: 0 auto 40px auto;
            font-size: 18px;
        }

        .heritage-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .heritage-card {
            background: #F1EBD3; 
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            transition: transform 0.35s ease, box-shadow 0.35s ease;
            text-align: center;
        }

        .heritage-card:hover {
            transform: translateY(-15px);
            box-shadow: 0 12px 20px rgba(0,0,0,0.2);
        }

        .heritage-card img {
            width: 100%;
            height: 245px;
            object-fit: cover;
            border-radius: 10px;
            margin-bottom: 15px;
        }

        .heritage-card h3 {
            color: #7B160E;
            margin-bottom: 10px;
        }

        .process-section {
            background-color: #FAF3CD;
            border-top: 6px solid #7B160E;
            margin: 40px 80px;
            padding: 40px;
            border-radius: 6px;
        }

        .process-section h2 {
            color: #7B160E;
            margin-bottom: 20px;
        }

        .btn-read {
            display: inline-block;
            padding: 10px 20px;
            background: #FFC917; 
            color: black;
            text-decoration: none;
            border-radius: 4px;
            font-weight: bold;
            text-transform: uppercase;
            margin-top: 15px;
            transition: 0.3s;
        }

        .btn-read:hover {
            background: #CD8417;
            color: white;
        }

        footer {
            background: #050505;
            color: #FAF3CD;
            text-align: center;
            padding: 40px;
            margin-top: 40px;
        }
    </style>


<main>
<div class="page-header-section">
    <h1>Cultural Heritage</h1>
</div>

<section>
    <p class="section-intro">
        For the T'boli and Ifugao people, weaving is a spiritual act. Every T’nalak cloth is a story woven from dreams, revealing the vocabulary of our ancestors.
    </p>

    <div class="heritage-grid">
        <div class="heritage-card">
            <img src="images/pattern1.jpg" alt="Kafi Pattern" />
            <h3>The Frog (Kafi)</h3>
            <p>A symbol of fertility and harvest, honoring the spirits that bring life-giving rain.</p>
            <a href="#" class="btn-read">Read More</a>
        </div>

        <div class="heritage-card">
            <img src="images/pattern2.jpg" alt="Sigul Pattern" />
            <h3>The Snake (Sigul)</h3>
            <p>A protector motif representing the zigzag paths of the mountains and the spirits of the loom.</p>
            <a href="#" class="btn-read">Read More</a>
        </div>

        <div class="heritage-card">
            <img src="images/pattern3.jpg" alt="Butterfly Pattern" />
            <h3>The Butterfly (Bangala)</h3>
            <p>Symbolizes transformation and the soul's journey through the ancestral physical world.</p>
            <a href="#" class="btn-read">Read More</a>
        </div>
    </div>
</section>

<div class="process-section">
    <h2>The Sacred Weaving Process</h2>
    <p>The creation of heritage cloth follows a strict traditional ritual:</p>
    <ol style="margin-left: 20px; margin-top: 15px;">
        <li><strong>Kedungon:</strong> Stripping and gathering abaca fibers.</li>
        <li><strong>Tembong:</strong> Tying threads to create the "resist" patterns.</li>
        <li><strong>Mebed:</strong> Dyeing with natural roots and leaves.</li>
        <li><strong>Mewel:</strong> Weaving on the traditional backstrap loom.</li>
    </ol>
</div>
</main>


    </asp:Content>