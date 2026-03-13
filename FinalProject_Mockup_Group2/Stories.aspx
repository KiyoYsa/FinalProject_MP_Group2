<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stories.aspx.cs" Inherits="FinalProject_Mockup_Group2.Stories" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

    <h1>Stories & Blog</h1>

    <p class="subtitle">
    Stories from the Ifugao community, sharing traditions, culture, and heritage.
    </p>

    <!-- MAIN STORY -->

    <div class="featured">

        <img src="images/pic1.png" />

        <h2>Lorem ipsum</h2>

        <p>
        Lorem ipsum dolor sit amet consectetur adipiscing elit. 
        Consectetur adipiscing elit quisque faucibus ex sapien vitae.
        Ex sapien vitae pellentesque sem placerat in id.
        Placerat in id cursus mi pretium tellus duis.
        Pretium tellus duis convallis tempus leo eu aenean.
        </p>

        <a class="read">
        Read Full Story
        </a>

    </div>

    <h2 style="color:#8C0000;">Latest Stories</h2>

         
    <!--- EXTER STORIES --->

    <div class="blog-grid">

        <div class="card">
            <img src="images/pic1.png" />

            <h3>Lorem Ipsum</h3>

            <p>
            Lorem ipsum dolor sit amet consectetur adipiscing elit.
            Dolor sit amet consectetur adipiscing elit quisque faucibus.
            </p>

            <a class="read">
            Read More
            </a>

        </div>


        <div class="card">
            <img src="images/pic2.png" />

            <h3>Lorem Ipsum</h3>

            <p>
                Lorem ipsum dolor sit amet consectetur adipiscing elit.
                Dolor sit amet consectetur adipiscing elit quisque faucibus.
            </p>

            <a class="read">
            Read More
            </a>

        </div>


        <div class="card">
            <img src="images/pic3.png" />

            <h3>Lorem Ipsum</h3>

            <p>
            Lorem ipsum dolor sit amet consectetur adipiscing elit.
            Dolor sit amet consectetur adipiscing elit quisque faucibus.
            </p>

            <a class="read">
            Read More
            </a>

        </div>

    </div>

</div>


<style>

body{
    font-family: Arial, sans-serif;
    margin:0;
    background-color:white; 
    color:black;
}

.container{
    width:80%;
    margin:auto;
}

h1{
    text-align:center;
    margin-top:40px;
    color:#8C0000;
}

.subtitle{
    text-align:center;
    margin-bottom:40px;
}

/* MAIN STORY */

.featured{
    padding:20px;
    margin-bottom:40px;
    border-left:8px solid #8C0000;
    box-shadow:0px 4px 10px rgba(0,0,0,0.1);
}

.featured img{
    width:100%;
    height:350px;
    object-fit:cover;
}

.featured h2{
    color:#8C0000;
}

/* GRID */

.blog-grid{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    margin-top:30px;
    gap:25px;
}

/* Cards */

.card{
    background:#FAF3CD;
    padding:15px;
    border-top:6px solid #8C0000;
    box-shadow:0px 4px 8px rgba(0,0,0,0.15);
    border-radius:6px;
    transition:0.2s;
}

.card:hover{
    transform:translateY(-5px);
}

.card img{
    width:100%;
    height:180px;
    object-fit:cover;
}

.card h3{
    color:#8C0000;
}

/* Read more, a href */

.read{
    display:inline-block;
    padding:8px 14px;
    background:#FFC917;
    color:black;
    text-decoration:none;
    margin-top:10px;
    border-radius:4px;
    font-weight:bold;
    text-transform: uppercase;



}

.read:hover{
    background:#CD8417;
    color:white;
}

</style>


</asp:Content>
