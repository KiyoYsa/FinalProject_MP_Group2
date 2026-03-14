<%@ Page Title="Cultural Heritage" Language="C#" AutoEventWireup="true" CodeBehind="CulturalHeritage.aspx.cs" Inherits="FinalProject_Mockup_Group2.CulturalHeritage" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<main>
    <div class="page-header-section">
        <h1>Cultural Heritage</h1>
        <p style="color: #555; max-width: 600px; margin: 10px auto;">
            This digital archive documents the ancestral patterns and sacred history of the T'boli and Ifugao communities to ensure their stories are preserved for future generations.
        </p>
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
                <a href="#" class="btn-read">View Archive</a>
            </div>

            <div class="heritage-card">
                <img src="images/pattern2.jpg" alt="Sigul Pattern" />
                <h3>The Snake (Sigul)</h3>
                <p>A protector motif representing the zigzag paths of the mountains and the spirits of the loom.</p>
                <a href="#" class="btn-read">View Archive</a>
            </div>

            <div class="heritage-card">
                <img src="images/pattern3.jpg" alt="Butterfly Pattern" />
                <h3>The Butterfly (Bangala)</h3>
                <p>Symbolizes transformation and the soul's journey through the ancestral physical world.</p>
                <a href="#" class="btn-read">View Archive</a>
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
        <br />
    </div>
</main>
</asp:Content>