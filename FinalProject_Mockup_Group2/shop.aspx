<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="FinalProject_Mockup_Group2.shop" MasterPageFile="~/Site.Master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<style>

/*title*/

.our-artisans {
    width: 100%;
    text-align: center;
}

.our-artisans h1 {
    text-align: center;
    font-size: 40px;
    font-family: sans-serif;
    color: #7B160E;
    letter-spacing: 1.5px;
    margin-top: 50px;
    display: inline-block;
    padding-bottom: 10px;
}

/*hero banner*/
.carousel {
position: relative;
width: 100%;
height: 550px;
overflow: hidden;
margin-bottom: 30px;
}

.slides {
    display: flex;
    transition: transform 0.5s ease;
}

.slide{
    min-width:100%;
    height:550px;
    object-fit:cover;
}

.prev, .next{
    position:absolute;
    top:50%;
    border-radius:15px;
    transform:translateY(-50%);
    font-size:30px;
    background:#BD8232;
    color:white;
    border:none;
    padding:10px 15px;
    cursor:pointer;
}

.prev{
    left:10px;
}

.next{
    right:10px;
}

.auto-style1 {
    text-align: center;
}

/*products*/
.prod{
    width: 100%;
    padding: 70px 0;
    margin-top: 20px;
}

.prod h1{
    font-size: 55px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 30px;
}

.prod .prod_box{
    width: 95%;
    margin: 0 auto;
    display: grid;
    grid-template-columns: 1fr 1fr 1fr 1fr;
    grid-gap: 15px;
}

.prod .prod_box .prod_card{
    width: 325px;
    height: 480px;
    border-radius: 15px;
    padding-top: 10px;
    margin-bottom: 20px;
    box-shadow: 0 0 10px rgb(128, 128, 128);
    background: #F1EBD3;

    transition: transform 0.35s ease, box-shadow 0.35s ease;
}

.prod .prod_box .prod_card:hover{
    transform: translateY(-15px);
    box-shadow: 0 12px 20px rgba(0,0,0,0.2);
}

.prod .prod_box .prod_card .prod_image{
    width: 300px;
    height: 245px;
    margin: 0 auto;
    overflow: hidden;
}

.prod .prod_box .prod_card .prod_image img{
    width: 100%;
    height: 100%;
}

/*filter*/


.btn-active-text{
    background-color: #7B160E !important;
    color: white !important;
    border-color: #7B160E;
    border-radius: 10px;
    padding: 15px 33px;
    font-size: 18px;
    margin: 12px;
    cursor: pointer;
    transition: 0.3s ease, transform 0.3s ease;
}

.btn-active-text:hover{
    background-color: #4A0C07!important;
    color: white !important;
    transition: transform 0.35s ease, box-shadow 0.35s ease;
}


</style>
    <section style=" background:#eee;">
    <div class="our-artisans">
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

