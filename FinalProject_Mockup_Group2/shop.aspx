<%@ Page Title="Crafts + Shop" Language="C#" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="FinalProject_Mockup_Group2.shop" MasterPageFile="~/Site.Master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="page-header-section">
        <h1 >THE CRAFT</h1>
        <p> "Every item tells a story—crafted with care, rooted in tradition, and made for you to bring a piece of culture home."
        </p>
        
    </div>

    <div class="carousel">
        <div class="slides">
            <img class="slide" alt="pic" src="images/pic1.png" />
            <img class="slide" alt="pic" src="images/pic2.png" />
            <img class="slide" alt="pic" src="images/pic3.png" />
     </div>

    <button type="button" class="prev" onclick="prevSlide()">❮</button>
    <button type="button" class="next" onclick="nextSlide()">❯</button>

    </div>
    
    <br>
    <section>
        <h2 style="font-size: 32px; color: #7B160E; text-align: center; letter-spacing: 4px; margin-bottom: 30px;">HANDWOVEN TREASURES</h2>
        <p style="font-size: 18px; color: #1A1A1A; text-align: center";>
            Each piece is meticulously handwoven by the T’boli, blending traditional artistry with timeless elegance.
        </p>
    </section>
            
    <div class="auto-style1" style="gap:25px;">
        <button type="button" class="btn-read">All</button>
        <button type="button" class="btn-read">Cloth</button>
        <button type="button" class="btn-read">Malong</button>
        <button type="button" class="btn-read">Clothing</button>
        <button type="button" class="btn-read">Bags</button>
        <button type="button" class="btn-read">Home</button>
    </div>
        
        



<div class="prod">
    <div class="prod_box">
        <div class="prod_card">

            <div class="prod_image">
                <img src="https://www.tnalakhome.com/wp-content/uploads/2020/12/tinalak_traditional_print2.png" alt="Tinalak Traditional Print">
            </div>

            <div class="prod_info">
                <h3>Bed Klagan Dark Red</h3>
                <p>handwoven T’nalak in dark red.</p>
                <span class="status available">Status: Available</span>
                <div class="contact_info">
                    <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
                    <p><strong>Email:</strong> artisan@example.com</p>
                    <p><strong>Phone:</strong> +63 912 345 6789</p>
                </div>
            </div>
            <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

        </div>

        <div class="prod_card">

            <div class="prod_image">
                <img src="https://www.tnalakhome.com/wp-content/uploads/2020/12/tinalak_traditional_print4-.png" alt="Tinalak Traditional Print">
            </div>

            <div class="prod_info">
                <h3>Bed Duon Blata Dark Blue/Light Blue/Natural</h3>
                <p>handwoven T’nalak in light and dark blue.</p>
                <span class="status available">Status: Available</span>
                <div class="contact_info">
                    <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
                    <p><strong>Email:</strong> artisan@example.com</p>
                    <p><strong>Phone:</strong> +63 912 345 6789</p>
                </div>
            </div>
            <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

        </div>

<div class="prod_card">

    <div class="prod_image">
        <img src="https://www.tnalakhome.com/wp-content/uploads/2020/12/tinalak_traditional_print6-.png" alt="Tinalak Traditional Print">
    </div>

    <div class="prod_info">
        <h3>Bed Duon Blata Dark Rust</h3>
        <p>handwoven T’nalak in light and dark rust.</p>
        <span class="status available">Status: Available</span>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>

        <div class="prod_card">

    <div class="prod_image">
        <img src="https://www.tnalakhome.com/wp-content/uploads/2020/12/tinalak_traditional_print7.png" alt="Tinalak Traditional Print">
    </div>

    <div class="prod_info">
        <h3>Bed Klagan Dark Yellow/Light Yellow/Natural</h3>
        <p>handwoven T’nalak in light and dark yellow.</p>
        <span class="status available">Status: Available</span>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>

        <div class="prod_card">

    <div class="prod_image">
        <img src="https://narrastudio.com/cdn/shop/files/DSCF8477.jpg?v=1772860763&width=750" alt="Tnalak Malong">
    </div>

    <div class="prod_info">
        <h3>Handwoven Malong - Black and Gold</h3>
        <p>A traditional woven garment in black and gold.</p>
        <span class="status available">Status: Available</span>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>

        <div class="prod_card">

    <div class="prod_image">
        <img src="https://narrastudio.com/cdn/shop/files/DSCF8527.jpg?v=1772775577&width=750" alt="Tnalak Malong">
    </div>

    <div class="prod_info">
        <h3>Handwoven Malong - Gold and Fuchsia</h3>
        <p>A traditional woven garment in gold and fuchsia.</p>
        <span class="status available">Status: Available</span>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>

        <div class="prod_card">

    <div class="prod_image">
        <img src="https://narrastudio.com/cdn/shop/files/DSCF8408.jpg?v=1772860900&width=750" alt="Tnalak Malong">
    </div>

    <div class="prod_info">
        <h3>Handwoven Malong - Purple</h3>
        <p>A traditional woven garment in purple.</p>
        <span class="status available">Status: Available</span>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>

        <div class="prod_card">

    <div class="prod_image">
       <img src="https://narrastudio.com/cdn/shop/files/DSCF8434.jpg?v=1772860874&width=750" alt="Tnalak Malong">
    </div>

    <div class="prod_info">
        <h3>Handwoven Malong - Golden Orange</h3>
        <p>A traditional woven garment in golden orange.</p>
        <span class="status available">Status: Available</span>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>

        <div class="prod_card">

    <div class="prod_image">
        <img src="https://pinas-sadya.com/cdn/shop/files/Pinas_Sadya_0547_2_0e448b5b-d36f-4e96-9765-cfb503510538.jpg?v=1745384929&width=823" alt="Tnalak clothing">
    </div>

    <div class="prod_info">
        <h3>Heritage Poncho</h3>
        <p>Cotton T’nalak poncho from Cotabato with traditional Filipino patterns.</p>
        <span class="status available">Status: Available</span>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>

        <div class="prod_card">

    <div class="prod_image">
        <img src="https://pinas-sadya.com/cdn/shop/files/012-8461.jpg?v=1756951948&width=823" alt="Tnalak clothing">
    </div>

    <div class="prod_info">
        <h3>Oldrose Top in Tnalak Cotton</h3>
        <p>Cotton T’nalak top in old rose with traditional Filipino patterns, soft and practical for everyday wear.</p>
        <span class="status available">Status: Available</span>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>
<div class="prod_card">

    <div class="prod_image">
        <img src="https://pinas-sadya.com/cdn/shop/files/1_595dae4d-7852-4fe3-b23d-4e9cfee38203.jpg?v=1720965887&width=823" alt="Tnalak clothing">
    </div>

    <div class="prod_info">
        <h3>Modern Filipiniana Black Tnalak </h3>
        <p>T’nalak wrap-around top in gray and off-white stripes made from premium abaca, combining heritage and style.</p>
        <span class="status available">Status: Available</span>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>
<div class="prod_card">

    <div class="prod_image">
        <img src="https://pinas-sadya.com/cdn/shop/files/012-7582.jpg?v=1756965973&width=823" alt="Tnalak bag">
    </div>

    <div class="prod_info">
        <h3>Tnalak Tote Bag with Kalinga Straps</h3>
        <p>T’nalak tote bag with Kalinga-style straps, combining traditional Filipino design with everyday functionality.</p>
        <span class="status available">Status: Available</span>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

</div>

        <div class="prod_card">

    <div class="prod_image">
        <img src="https://pinas-sadya.com/cdn/shop/files/012-7536.jpg?v=1756966070&width=823" alt="Tnalak bag">
    </div>

        <div class="prod_info">
            <h3>Manila Tote Bag with Black Tnalak</h3>
            <p>T’nalak tote bag inspired by Sipa Takraw and banig, with an interchangeable flap and versatile design for everyday use.</p>
            <span class="status available">Status: Available</span>
            <div class="contact_info">
                <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
                <p><strong>Email:</strong> artisan@example.com</p>
                <p><strong>Phone:</strong> +63 912 345 6789</p>
            </div>
        </div>
        <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

    </div>

            <div class="prod_card">

        <div class="prod_image">
            <img src="https://pinas-sadya.com/cdn/shop/files/672A6117_1.jpg?v=1707394636&width=823" alt="Tnalak bag">
        </div>

            <div class="prod_info">
                <h3>Kalinga Tote Bag in Bagobo Tnalak Weave</h3>
                <p>T’nalak bag with a Langkit handle, paired with black denim canvas and blue stripes in earthy tones.</p>
                <span class="status available">Status: Available</span>
                <div class="contact_info">
                    <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
                    <p><strong>Email:</strong> artisan@example.com</p>
                    <p><strong>Phone:</strong> +63 912 345 6789</p>
                </div>
            </div>
            <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

        </div>

    <div class="prod_card">

<div class="prod_image">
    <img src="https://www.tnalakhome.com/wp-content/uploads/2020/12/CUSHION-RIVER-DESIGN.png" alt="Tnalak home">
</div>

    <div class="prod_info">
        <h3>Cushion River Design Pillowcase</h3>
        <p>T’nalak River Design cushion cover, blending traditional patterns with modern style.</p>
        <span class="status available">Status: Available</span>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

    </div>


    <div class="prod_card">

<div class="prod_image">
    <img src="https://www.tnalakhome.com/wp-content/uploads/2020/12/Cushion-Cover-maranao-Crown-Light-Grey-with-black-coco.png" alt="Tnalak home">
</div>

    <div class="prod_info">
        <h3>Maranao Crown Light Grey with Black Coco</h3>
        <p>T’nalak Maranao Crown cushion cover in light grey with black coco accents.</p>
        <span class="status available">Status: Available</span>
        <div class="contact_info">
            <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
            <p><strong>Email:</strong> artisan@example.com</p>
            <p><strong>Phone:</strong> +63 912 345 6789</p>
        </div>
    </div>
    <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

    </div>


        <div class="prod_card">

    <div class="prod_image">
        <img src="https://www.tnalakhome.com/wp-content/uploads/2020/12/stool-tnalak-ikat-blue.png" alt="Tnalak home">
    </div>

        <div class="prod_info">
            <h3>Stool T’nalak Traditional Ikat Blue</h3>
            <p>T’nalak stool with traditional Ikat pattern in blue.</p>
            <span class="status available">Status: Available</span>
            <div class="contact_info">
                <p><strong>Artisan / Center:</strong> Lang Dulay Weaving Center</p>
                <p><strong>Email:</strong> artisan@example.com</p>
                <p><strong>Phone:</strong> +63 912 345 6789</p>
            </div>
        </div>
        <a href="mailto:artisan@example.com?subject=Inquiry%20about%20Scarf" class="contact_btn"> Contact Us</a>

        </div>

        <div class="prod_card">

    <div class="prod_image">
        <img src="https://www.tnalakhome.com/wp-content/uploads/2020/12/stool-tnalak-ikat-brown.png" alt="Tnalak home">
    </div>

        <div class="prod_info">
            <h3>Stool T’nalak Traditional Ikat Brown</h3>
            <p>T’nalak stool with traditional Ikat pattern in brown.</p>
            <span class="status available">Status: Available</span>
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
            // Remove “active” from all buttons
            buttons.forEach(btn => btn.classList.remove('active'));
            // Add “active” to the clicked button
            button.classList.add('active');
        });
    });

    </script>


    </div>
</asp:Content>

