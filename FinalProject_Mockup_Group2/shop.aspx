<%@ Page Title="Crafts + Shop" Language="C#" AutoEventWireup="true" CodeBehind="Crafts.aspx.cs" Inherits="FinalProject_Mockup_Group2.crafts" MasterPageFile="~/Site.Master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="page-header-section">
        <h1 >THE CRAFT</h1>
        <p> "Every item tells a story—crafted with care, rooted in tradition, and made for you to bring a piece of culture home."
        </p>
        
    </div>

    <section>
        <h2 style="font-size: 32px; color: #7B160E; letter-spacing: 4px; margin-bottom: 30px;" class="auto-style1">HANDWOVEN TREASURES</h2>
        <p style="font-size: 18px; color: #1A1A1A; "; class="auto-style1">
            Each piece is meticulously handwoven by the T’boli, blending traditional artistry with timeless elegance.
        </p>
    </section>
            
    <div class="auto-style1" style="gap:25px;">
        <button type="button" class="btn-read" data-filter="all">All</button>
        <button type="button" class="btn-read" data-filter="cloth">Cloth</button>
        <button type="button" class="btn-read" data-filter="malong">Malong</button>
        <button type="button" class="btn-read" data-filter="clothing">Clothing</button>
        <button type="button" class="btn-read" data-filter="bags">Bags</button>
        <button type="button" class="btn-read" data-filter="home">Home</button>
    </div>
        
        



<div class="prod">
    <div class="prod_box">
        <div class="prod_card" data-category="cloth">

            <div class="prod_image">
                <img src="images/red cloth.png" alt="Tinalak Traditional Print">
            </div>

            <div class="prod_info">
                <h2>Bed Klagan Dark Red</h2>
                <h3>handwoven T’nalak in dark red.</h3>
                <p><span class="status available">Status: Available</span></p>
                <div class="contact_info">
                    <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
                    <p><strong>Email:</strong> artisan@example.com</p>
                    <p><strong>Phone:</strong> +63 912 345 6789</p>
                </div>
            </div>
            <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

        </div>

        <div class="prod_card" data-category="cloth">

            <div class="prod_image">
                <img src="images/blue cloth.png" alt="Tinalak Traditional Print">
            </div>

            <div class="prod_info">
                <h2>Bed Duon Blata Dark Blue/Light Blue/Natural</h2>
                <h3>handwoven T’nalak in light and dark blue.</h3>
                <p><span class="status available">Status: Available</span></p>
                <div class="contact_info">
                    <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
                    <p><strong>Email:</strong> artisan@example.com</p>
                    <p><strong>Phone:</strong> +63 912 345 6789</p>
                </div>
            </div>
            <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

        </div>

<div class="prod_card" data-category="cloth">

    <div class="prod_image">
        <img src="images/brown cloth.png" alt="Tinalak Traditional Print">
    </div>

    <div class="prod_info">
        <h2>Bed Duon Blata Dark Rust</h2>
        <h3>handwoven T’nalak in light and dark rust.</h3>
        <p><span class="status available">Status: Available</span></p>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>

        <div class="prod_card" data-category="cloth">

    <div class="prod_image">
        <img src="images/yellow cloth.png" alt="Tinalak Traditional Print">
    </div>

    <div class="prod_info">
        <h2>Bed Klagan Dark Yellow/Light Yellow/Natural</h2>
        <h3>handwoven T’nalak in light and dark yellow.</h3>
        <p><span class="status available">Status: Available</span></p>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>

        <div class="prod_card" data-category="malong">

    <div class="prod_image">
        <img src="images/black malong.png" alt="Tnalak Malong">
    </div>

    <div class="prod_info">
        <h2>Handwoven Malong - Black and Gold</h2>
        <h3>A traditional woven garment in black and gold.</h3>
        <p><span class="status available">Status: Available</span></p>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>

        <div class="prod_card" data-category="malong">

    <div class="prod_image">
        <img src="images/pink malong.png" alt="Tnalak Malong">
    </div>

    <div class="prod_info">
        <h2>Handwoven Malong - Gold and Fuchsia</h2>
        <h3>A traditional woven garment in gold and fuchsia.</h3>
        <p><span class="status available">Status: Available</span></p>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>

        <div class="prod_card" data-category="malong">

    <div class="prod_image">
        <img src="images/purple malong.png" alt="Tnalak Malong">
    </div>

    <div class="prod_info">
        <h2>Handwoven Malong - Purple</h2>
        <h3>A traditional woven garment in purple.</h3>
        <p><span class="status available">Status: Available</span></p>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>

        <div class="prod_card" data-category="malong">

    <div class="prod_image">
       <img src="images/yellow malong.png" alt="Tnalak Malong">
    </div>

    <div class="prod_info">
        <h2>Handwoven Malong - Golden Orange</h2>
        <h3>A traditional woven garment in golden orange.</h3>
        <p><span class="status available">Status: Available</span><p>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>

        <div class="prod_card" data-category="clothing">

    <div class="prod_image">
        <img src="images/poncho.png" alt="Tnalak clothing">
    </div>

    <div class="prod_info">
        <h2>Heritage Poncho</h2>
        <h3>Cotton T’nalak poncho from Cotabato with traditional Filipino patterns.</h3>
        <p><span class="status available">Status: Available</span></p>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>

        <div class="prod_card" data-category="clothing">

    <div class="prod_image">
        <img src="images/bib1.png" alt="Tnalak clothing">
    </div>

    <div class="prod_info">
        <h2>Oldrose Top in Tnalak Cotton</h2>
        <h3>Cotton T’nalak top in old rose with traditional Filipino patterns, soft and practical for everyday wear.</h3>
        <p><span class="status available">Status: Available</span></p>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>
<div class="prod_card" data-category="clothing">

    <div class="prod_image">
        <img src="images/dress.png" alt="Tnalak clothing">
    </div>

    <div class="prod_info">
        <h2>Modern Filipiniana Black Tnalak </h2>
        <h3>T’nalak wrap-around top in gray and off-white stripes made from premium abaca, combining heritage and style.</h3>
        <p><span class="status available">Status: Available</span></p>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>
<div class="prod_card" data-category="bags"> 

    <div class="prod_image">
        <img src="images/bag1.png" alt="Tnalak bag">
    </div>

    <div class="prod_info">
        <h2>Tnalak Tote Bag with Kalinga Straps</h2>
        <h3>T’nalak tote bag with Kalinga-style straps, combining traditional Filipino design with everyday functionality.</h3>
        <p><span class="status available">Status: Available</span></p>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>

        <div class="prod_card" data-category="bags">

    <div class="prod_image">
        <img src="images/bag2.png" alt="Tnalak bag">
    </div>

        <div class="prod_info">
            <h2>Manila Tote Bag with Black Tnalak</h2>
            <h3>T’nalak tote bag inspired by Sipa Takraw and banig, with an interchangeable flap and versatile design for everyday use.</h3>
            <p><span class="status available">Status: Available</span></p>
            <div class="contact_info">
                <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
                <p><strong>Email:</strong> artisan@example.com</p>
                <p><strong>Phone:</strong> +63 912 345 6789</p>
            </div>
        </div>
        <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

    </div>

            <div class="prod_card" data-category="bags">

        <div class="prod_image">
            <img src="images/bag3.png" alt="Tnalak bag">
        </div>

            <div class="prod_info">
                <h2>Kalinga Tote Bag in Bagobo Tnalak Weave</h2>
                <h3>T’nalak bag with a Langkit handle, paired with black denim canvas and blue stripes in earthy tones.</h3>
                <p><span class="status available">Status: Available</span></p>
                <div class="contact_info">
                    <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
                    <p><strong>Email:</strong> artisan@example.com</p>
                    <p><strong>Phone:</strong> +63 912 345 6789</p>
                </div>
            </div>
            <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

        </div>

    <div class="prod_card" data-category="home">

<div class="prod_image">
    <img src="images/red pillow.png" alt="Tnalak home">
</div>

    <div class="prod_info">
        <h2>Cushion River Design Pillowcase</h2>
        <h3>T’nalak River Design cushion cover, blending traditional patterns with modern style.</h3>
        <p><span class="status available">Status: Available</span></p>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

    </div>


    <div class="prod_card" data-category="home">

<div class="prod_image">
    <img src="images/white pillow.png" alt="Tnalak home">
</div>

    <div class="prod_info">
        <h2>Maranao Crown Light Grey with Black Coco</h2>
        <h3>T’nalak Maranao Crown cushion cover in light grey with black coco accents.</h3>
        <p><span class="status available">Status: Available</span></p>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

    </div>


        <div class="prod_card" data-category="home">

    <div class="prod_image">
        <img src="images/blue chair.png" alt="Tnalak home">
    </div>

        <div class="prod_info">
            <h2>Stool T’nalak Traditional Ikat Blue</h2>
            <h3>T’nalak stool with traditional Ikat pattern in blue.</h3>
            <p><span class="status available">Status: Available</span></p>
            <div class="contact_info">
                <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
                <p><strong>Email:</strong> artisan@example.com</p>
                <p><strong>Phone:</strong> +63 912 345 6789</p>
            </div>
        </div>
        <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

        </div>

        <div class="prod_card" data-category="home">

    <div class="prod_image">
        <img src="images/brown chair.png" alt="Tnalak home">
    </div>

        <div class="prod_info">
            <h2>Stool T’nalak Traditional Ikat Brown</h2>
            <h3>T’nalak stool with traditional Ikat pattern in brown.</h3>
            <p><span class="status available">Status: Available</span></p>
            <div class="contact_info">
                <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
                <p><strong>Email:</strong> artisan@example.com</p>
                <p><strong>Phone:</strong> +63 912 345 6789</p>
            </div>
        </div>
        <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

        </div>
    

</div>




        


        <div>
        </div>



    <script>
    let index = 0;

    function showSlide()
    {
        const slides = document.querySelector(".slides");
        const total = document.querySelectorAll(".slide").length;

        if (index >= total) index = 0;
        if (index < 0) index = total-1;

        slides.style.transform = "translateX(" + (-index * 100) + "%)";
    }

    function nextSlide()
    {
        index++;
        showSlide();
    }

    function prevSlide()
    {
        index--;
        showSlide();
        }


    const buttons = document.querySelectorAll('.btn-read');

    buttons.forEach(button => {
        button.addEventListener('click', () => {
            buttons.forEach(btn => btn.classList.remove('active'));
            button.classList.add('active');
        });
    });


    const filterButtons = document.querySelectorAll('.btn-read');
    const cards = document.querySelectorAll('.prod_card');

    filterButtons.forEach(btn => {
        btn.addEventListener('click', () => {
            const filter = btn.getAttribute('data-filter');

            filterButtons.forEach(b => b.classList.remove('active'));
            btn.classList.add('active');

            cards.forEach(card => {
                if (filter === 'all') {
                    card.style.display = 'flex'; 
                } else if (card.dataset.category === filter) {
                    card.style.display = 'flex';
                } else {
                    card.style.display = 'none';
                }
            });
        });
    });

    </script>


    </div>
</asp:Content>

