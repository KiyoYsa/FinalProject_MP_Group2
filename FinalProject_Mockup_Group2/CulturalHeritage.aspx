<%@ Page Title="Cultural Heritage" Language="C#" AutoEventWireup="true" CodeBehind="CulturalHeritage.aspx.cs" Inherits="FinalProject_Mockup_Group2.CulturalHeritage" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="page-header-section">
            <h1 style="font-family: 'Garamond', 'Georgia', sans-serif;">Cultural Heritage</h1>
            <p>"The T'nalak is not just cloth; it is the physical manifestation of a dream bestowed by Fu Dalu, the Spirit of the Abaca."</p>
        </div>

        <section class="heritage-section flex-container">
            <div class="featured-img-frame">
                <img src="images/tboli.jpg" class="heritage-img height-400" alt="The Weaver's Loom" />
            </div>
            <div style="flex: 1; min-width: 300px;">
                <h2 class="section-title left-title">The Language of Dreams</h2>
                <p class="section-desc">
                    The T'boli women, known as <b>Dreamweavers</b>, do not use patterns or drawings. They weave from memory, interpreting sacred designs sent to them in dreams. This spiritual connection ensures that no two T'nalak pieces are ever identical.
                </p>
                <ul class="sacred-list">
                    <li><strong>Respect for Fu Dalu:</strong> Weavers must follow strict taboos to avoid offending the Spirit of the Abaca, who bestows the designs.</li>
                    <li><strong>Natural Pigments:</strong> Sourced from <i>K’nalum</i> leaves (black, representing the forest shadows) and <i>Liko</i> roots (red, symbolizing the bravery and blood of ancestors).</li>
                </ul>
            </div>
        </section>

        <section class="heritage-section">
            <h2 class="section-title">Core Motifs</h2>
            <div class="heritage-grid">
                <asp:Repeater ID="rptPatterns" runat="server">
                    <ItemTemplate>
                        <div class="heritage-card">
                            <h3><%# Eval("PatternName") %></h3>
                            <p><%# Eval("SpiritualMeaning") %></p>
                            <div style="padding: 0 20px 20px;">
                                <button type="button" class="btn-read"
                                    onclick='showHistory("<%# Eval("PatternName") %>", "<%# Eval("History").ToString().Replace("\"", "&quot;").Replace("'", "\\'") %>")'>
                                    Read History
                                </button>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>

        <section class="heritage-section">
            <div style="text-align: center; margin-bottom: 20px; max-width: 800px; margin-left: auto; margin-right: auto;">
                <h2 class="section-title">The T'nalak Process</h2>
                <p class="section-desc">
                    Every T'nalak cloth undergoes a rigorous seven-stage journey that reflects the T'boli identity.      
                </p>
            </div>

            <div class="flex-container" style="margin-bottom: 40px;">
                <div class="process-img-frame">
                    <img src="images/kedungon.jpg" class="heritage-img height-300" alt="Kedungon Process" />
                </div>
                <div style="flex: 1; min-width: 300px;">
                    <span class="step-label">01. KEDUNGON</span>
                    <h3 class="step-title">Harvesting & Stripping</h3>
                    <p class="step-text">The process begins with harvesting 2-3 year old abaca plants. A prayer is offered to Fu Dalu before the trunk is stripped into layers. The whiter, finer threads are selected for the weave.</p>
                </div>
            </div>

            <div class="flex-container flex-reverse" style="margin-bottom: 80px;">
                <div style="flex: 1; min-width: 300px;">
                    <span class="step-label">02. TEMBONG</span>
                    <h3 class="step-title">Connecting the Fibers</h3>
                    <p class="step-text">After air-drying, fibers are hand-rubbed to make them pliant. The women then individually connect the fibers from end to end by tying tiny, invisible knots.</p>
                </div>
                <div class="process-img-frame">
                    <img src="images/tembong.jpg" class="heritage-img height-300" alt="Tembong" />
                </div>
            </div>

            <div class="flex-container" style="margin-bottom: 80px;">
                <div class="process-img-frame">
                    <img src="images/semdang.jpg" class="heritage-img height-300" alt="Semdang" />
                </div>
                <div style="flex: 1; min-width: 300px;">
                    <span class="step-label">03. SEMDANG</span>
                    <h3 class="step-title">Setting the Loom</h3>
                    <p class="step-text">The connected fibers are set on a <i>gono smoi</i> (loom frame). A wooden bar called a <i>teladay</i> is used to hold the fibers perfectly even and spread across the frame.</p>
                </div>
            </div>

            <div class="flex-container flex-reverse" style="margin-bottom: 80px;">
                <div style="flex: 1; min-width: 300px;">
                    <span class="step-label">04. MEBED</span>
                    <h3 class="step-title">The Dream Tying</h3>
                    <p class="step-text">This is the resist-dye knotting phase. Without sketches, weavers tie knots based on a mental picture. Beeswax-coated threads ensure the dye does not penetrate the reserved areas.</p>
                </div>
                <div class="process-img-frame">
                    <img src="images/mebed.jpg" class="heritage-img height-300" alt="Mebed" />
                </div>
            </div>

            <div class="flex-container" style="margin-bottom: 80px;">
                <div class="process-img-frame">
                    <img src="images/temogo.jpg" class="heritage-img height-300" alt="Temogo" />
                </div>
                <div style="flex: 1; min-width: 300px;">
                    <span class="step-label">05. TEMOGO & HEMTO</span>
                    <h3 class="step-title">Dyeing & Untying</h3>
                    <p class="step-text">The black dye process takes about three weeks of boiling. Once absorbed, knots for red areas are removed and dyed in Liko root for another week before revealing the natural white.</p>
                </div>
            </div>

            <div class="flex-container flex-reverse" style="margin-bottom: 80px;">
                <div style="flex: 1; min-width: 300px;">
                    <span class="step-label">06. MEWEL</span>
                    <h3 class="step-title">Backstrap Weaving</h3>
                    <p class="step-text">The dyed warp is set on the <i>legogong</i>. Weaving must happen in a cool area to prevent snapping. The weaver beats the threads three times to ensure the weave is tight and light-proof.</p>
                </div>
                <div class="process-img-frame">
                    <img src="images/mewel.png" class="heritage-img height-300" alt="Mewel" />
                </div>
            </div>

            <div class="flex-container">
                <div class="process-img-frame">
                    <img src="images/semaki.jpg" class="heritage-img height-300" alt="Semaki" />
                </div>
                <div style="flex: 1; min-width: 300px;">
                    <span class="step-label">07. SEMAKI</span>
                    <h3 class="step-title">Burnishing the Surface</h3>
                    <p class="step-text">A cowrie shell is rubbed repeatedly on the moist fabric. This requires significant strength to flatten knots and produce the iconic, coruscating gloss that T'nalak is known for.</p>
                </div>
            </div>
        </section>

        <section class="heritage-section">
            <h2 class="section-title">Sacred Taboos</h2>
            <p class="section-desc" style="text-align: center; max-width: 800px; margin: 0 auto 20px auto;">
                To protect the sanctity of the T'nalak, every Dreamweaver must observe these ancestral laws.
            </p>
            <div class="taboo-grid">
                <div class="taboo-card">
                    <h3>No Cutting</h3>
                    <p class="step-text">A T'nalak cloth must never be cut while it is still on the loom. To do so is seen as "wounding" the dream and showing disrespect to the spirits.</p>
                </div>
                <div class="taboo-card">
                    <h3>No Stepping Over</h3>
                    <p class="step-text">One must never step over the fibers or the loom. This act offends Fu Dalu and may result in the weaver losing her ability to dream.</p>
                </div>
                <div class="taboo-card">
                    <h3>Peace of Mind</h3>
                    <p class="step-text">A weaver must be in a state of spiritual peace. If she is angry or grieving, she must stop weaving, as negative emotions are "locked" into the pattern.</p>
                </div>
            </div>
        </section>

        <div id="historyModal" class="modal-overlay">
            <div class="modal-content">
                <span onclick="closeModal()" class="close-btn">&times;</span>
                <h2 id="modalTitle" style="color: #7B160E; margin-top: 0; font-family: 'Garamond', serif;">Pattern History</h2>
                <hr style="border: 0; border-top: 1px solid #7B160E; margin-bottom: 20px;" />
                <p id="modalBody" class="step-text" style="font-size: 18px;"></p>
            </div>
        </div>

        <script type="text/javascript">
            function showHistory(name, history) {
                document.getElementById('modalTitle').innerText = name + " History";
                document.getElementById('modalBody').innerText = history;
                document.getElementById('historyModal').style.display = "block";
            }
            function closeModal() {
                document.getElementById('historyModal').style.display = "none";
            }
            window.onclick = function (event) {
                var modal = document.getElementById('historyModal');
                if (event.target == modal) { closeModal(); }
            }
        </script>
    </main>
</asp:Content>
