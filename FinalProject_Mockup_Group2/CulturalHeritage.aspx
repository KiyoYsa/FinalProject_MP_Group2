<%@ Page Title="Cultural Heritage" Language="C#" AutoEventWireup="true" CodeBehind="CulturalHeritage.aspx.cs" Inherits="FinalProject_Mockup_Group2.CulturalHeritage" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
    <div class="page-header-section">
        <h1 style="font-family: 'Garamond', 'Georgia', sans-serif;">Cultural Heritage</h1>
        <p>"The T'nalak is not just cloth; it is the physical manifestation of a dream bestowed by Fu Dalu, the Spirit of the Abaca."</p>
    </div>

    <section style="display: flex; align-items: center; gap: 60px; flex-wrap: wrap; padding: 60px;">
        <div style="flex: 1; min-width: 300px;">
            <img src="images/fu-dalu-spirit.jpg" style="width: 100%; border: 1px solid #1A1A1A; padding: 10px;" alt="The Weaver's Loom" />
        </div>
        <div style="flex: 1; min-width: 300px;">
            <h2 style="font-size: 32px; color: #7B160E; margin-bottom: 20px;">The Language of Dreams</h2>
            <p style="font-size: 18px; color: #1A1A1A; margin-bottom: 20px; line-height: 1.8;">
                The T'boli women, known as <b>Dreamweavers</b>, do not use patterns or drawings. They weave from memory, 
                interpreting sacred designs sent to them in dreams. This spiritual connection ensures that no two T'nalak 
                pieces are ever identical.
            </p>
            <ul style="list-style: none; margin-bottom: 30px;">
                <li style="margin-bottom: 10px; border-left: 4px solid #7B160E; padding-left: 15px;"><strong>Respect for Fu Dalu:</strong> Weavers must follow strict taboos to avoid offending the spirit.</li>
                <li style="margin-bottom: 10px; border-left: 4px solid #7B160E; padding-left: 15px;"><strong>Natural Pigments:</strong> Colors are sourced from <i>K’nalum</i> trees and <i>Liko</i> roots.</li>
            </ul>
        </div>
    </section>

    <section>
        <h2 style="font-size: 32px; color: #7B160E; text-align: center; letter-spacing: 4px; margin-bottom: 30px;">CORE PATTERN</h2>
        
        <div class="heritage-grid">
            <div class="heritage-card">
                <img src="images/kafi-pattern.jpg" alt="Kafi Pattern" />
                <h3>The Frog (Kafi)</h3>
                <p>One of the most sacred symbols, representing the abundance of life and the arrival of the rainy season in Lake Sebu.</p>
                <div style="padding: 0 20px 20px;"><a href="#" class="btn-read">Read More</a></div>
            </div>

            <div class="heritage-card">
                <img src="images/sigul-pattern.jpg" alt="Sigul Pattern" />
                <h3>The Snake (Sigul)</h3>
                <p>A zig-zag pattern mirroring the mountain paths, believed to protect the wearer from wandering spirits.</p>
                <div style="padding: 0 20px 20px;"><a href="#" class="btn-read">Read More</a></div>
            </div>

            <div class="heritage-card">
                <img src="images/kleng-pattern.jpg" alt="Kleng Pattern" />
                <h3>The Crab (Kleng)</h3>
                <p>An intricate design representing family ties and the crab's ability to walk between water and land.</p>
                <div style="padding: 0 20px 20px;"><a href="#" class="btn-read">Read More</a></div>
            </div>
        </div>
    </section>

    <section>
        <h2 style="font-size: 32px; color: #7B160E; margin-bottom: 30px;">Textile Authentication Data</h2>
        <table style="width: 100%; border-collapse: collapse; text-align: left; background: white; border: 1px solid #1A1A1A;">
            <tr style="background: #1A1A1A; color: #FAF3CD;">
                <th style="padding: 20px;">Property</th>
                <th style="padding: 20px;">Specification</th>
                <th style="padding: 20px;">Cultural Meaning</th>
            </tr>
            <tr style="border-bottom: 1px solid #eee;">
                <td style="padding: 20px;"><strong>Base Material</strong></td>
                <td style="padding: 20px;">Wild Abaca (Musa textilis)</td>
                <td style="padding: 20px;">Strength and connection to the Earth</td>
            </tr>
            <tr style="border-bottom: 1px solid #eee;">
                <td style="padding: 20px;"><strong>The Black Dye</strong></td>
                <td style="padding: 20px;">K’nalum Leaves (Fermented)</td>
                <td style="padding: 10px 20px;">The deep shadows of the forest</td>
            </tr>
            <tr style="border-bottom: 1px solid #eee;">
                <td style="padding: 20px;"><strong>The Red Dye</strong></td>
                <td style="padding: 20px;">Liko Roots</td>
                <td style="padding: 20px;">Humanity, blood, and bravery</td>
            </tr>
        </table>
    </section>

    <section style="background: #FAF3CD; color: #7B160E; margin: 80px; padding: 80px; border-radius: 6px;">
        <h2 style="color: #7B160E; font-size: 32px; margin-bottom: 20px;">The Lifecycle of T'nalak</h2>
        <p style="font-size: 18px; color: #1A1A1A; margin-bottom: 20px;">The creation process can take 3 to 6 months. It is a slow, meditative ritual.</p>
        <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 30px;">
            <div>
                <h4 style="color: #1A1A1A;">1. Kedungon</h4>
                <p style="font-size: 18px; color: #1A1A1A; margin-bottom: 20px;">The meticulous stripping of abaca stalks to find the finest fibers.</p>
            </div>
            <div>
                <h4 style="color: #1A1A1A;">2. Tembong</h4>
                <p style="font-size: 18px; color: #1A1A1A; margin-bottom: 20px;">The "Dream Tying" where threads are knotted to block the dye.</p>
            </div>
            <div>
                <h4 style="color: #1A1A1A;">3. Mebed</h4>
                <p style="font-size: 18px; color: #1A1A1A; margin-bottom: 20px;">Boiling the fibers in natural vats for weeks to reach true colors.</p>
            </div>
            <div>
                <h4 style="color: #1A1A1A;">4. Mewel</h4>
                <p style="font-size: 18px; color: #1A1A1A; margin-bottom: 20px;">Weaving on a backstrap loom using the weaver's body as tension.</p>
            </div>
        </div>
    </section>
</main>
</asp:Content>