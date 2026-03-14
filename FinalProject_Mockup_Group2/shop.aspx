<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="FinalProject_Mockup_Group2.shop" MasterPageFile="~/Site.Master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <section style=" background:#eee;">
    <div class="shop-cont">
    <h1>THE CRAFT</h1>
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
    </section>
        
        
        
    <div class="auto-style1" style="gap:25px;">
        <button type="button" class="btn-active-text">All</button>
        <button type="button" class="btn-active-text">Clothing</button>
        <button type="button" class="btn-active-text">Blankets/Shawls</button>
        <button type="button" class="btn-active-text">Accesories</button>
    </div>
        
        



<div class="prod">
    <div class="prod_box">
        <div class="prod_card">

            <div class="prod_image">
                <img src="images/bag.jpg" />
            </div>

            <div class="prod_info">
                <h3>Scarf</h3>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                </p>
                <h3>P 700.00</h3>
            </div>

        </div>

        <div class="prod_card">

            <div class="prod_image">
                <img src="images/bag.jpg" />
            </div>

            <div class="prod_info">
                <h3>Scarf</h3>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                </p>
                <h3>P 700.00</h3>
            </div>

        </div>

        <div class="prod_card">

            <div class="prod_image">
                <img src="images/bag.jpg" />
            </div>

            <div class="prod_info">
                <h3>Scarf</h3>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                </p>
                <h3>P 700.00</h3>
            </div>

        </div>

        <div class="prod_card">

            <div class="prod_image">
                <img src="images/bag.jpg" />
            </div>

            <div class="prod_info">
                <h3>Scarf</h3>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                </p>
                <h3>P 700.00</h3>
            </div>

        </div>

        <div class="prod_card">

            <div class="prod_image">
                <img src="images/bag.jpg" />
            </div>

            <div class="prod_info">
                <h3>Scarf</h3>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                </p>
                <h3>P 700.00</h3>
            </div>

        </div>

        <div class="prod_card">

            <div class="prod_image">
                <img src="images/bag.jpg" />
            </div>

            <div class="prod_info">
                <h3>Scarf</h3>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                </p>
                <h3>P 700.00</h3>
            </div>

        </div>

        <div class="prod_card">

            <div class="prod_image">
                <img src="images/bag.jpg" />
            </div>

            <div class="prod_info">
                <h3>Scarf</h3>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                </p>
                <h3>P 700.00</h3>
            </div>

        </div>

        <div class="prod_card">

            <div class="prod_image">
                <img src="images/bag.jpg" />
            </div>

            <div class="prod_info">
                <h3>Scarf</h3>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                </p>
                <h3>P 700.00</h3>
            </div>

        </div>

        <div class="prod_card">

            <div class="prod_image">
                <img src="images/bag.jpg" />
            </div>

            <div class="prod_info">
                <h3>Scarf</h3>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                </p>
                <h3>P 700.00</h3>
            </div>

        </div>

        <div class="prod_card">

            <div class="prod_image">
                <img src="images/bag.jpg" />
            </div>

            <div class="prod_info">
                <h3>Scarf</h3>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                </p>
                <h3>P 700.00</h3>
            </div>

        </div>



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

    </script>


</asp:Content>

