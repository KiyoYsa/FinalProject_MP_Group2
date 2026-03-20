<%@ Page Title="Stories" Language="C#" AutoEventWireup="true" CodeBehind="Stories.aspx.cs" Inherits="FinalProject_Mockup_Group2.Stories" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   
    <div class="page-header-section">
    <h1>Stories</h1>
    <p>Discover the inspiring lives of T'boli women and the colorful festivities that honor their heritage. These stories honor tradition, dedication, and community, ranging from daily living to t'nalak-woven dreams.</p>
   </div>

<div class="container">
        <!-- MAIN STORY -->

    <div class="featured">

        <img src="images/pic1.png" />

        <h3>How the T'boli women weave their dreams </h3>

        <p>
        What if dreams could be woven into something you can touch? Among the T’boli, chosen women transform visions from their sleep into sacred t’nalak—each pattern carrying stories of spirit, ancestry, and identity. 
        Step into a world where every thread holds a dream waiting to be discovered.
        </p>

       <a class="btn-read" href="https://fameplus.com/touchpoint/how-the-tboli-women-weave-their-dreams" target="_blank">
        Read the full Story
        </a>

    </div>

    <h2 style="color:#8C0000;">Latest Stories</h2>

         
    <!--- EXTER STORIES --->

    <div class="blog-grid">

        <div class="storiescard">
            <img src="images/pic1.png" />

            <h3>A girl's journey to school</h3>

            <p>
           Before the first lesson even begins, her journey has already tested her strength. 
           Through rivers, rough paths, and long miles, a young T’boli girl pushes forward—driven by a quiet dream of learning. 
           Follow her story and see how far hope can carry her.
            </p>

            <a class="btn-read" href="https://www.savethechildren.org.ph/our-work/our-stories/story/watch-a-tboli-girls-journey-to-school/" target="_blank">
            Read the full Story
            </a>

        </div>


        <div class="storiescard">
            <img src="images/pic2.png" />

            <h3>Hilltop Legacy in Lake Sebu</h3>

            <p>
             What does it take to turn a simple home into a legacy? 
             In the heart of Lake Sebu, one woman’s vision and resilience helped shape a community and preserve T’boli culture.
            Step into her story and see how one life can inspire many.
            </p>

            <a class="btn-read" href="https://www.philstar.com/lifestyle/travel-and-tourism/2026/01/18/2501837/hilltop-legacy-how-one-woman-helped-shape-lake-sebus-story" target="_blank">
            Read More
            </a>

        </div>


        <div class="storiescard">
            <img src="images/pic3.png" />

            <h3>A T'boli Women's Journey</h3>

            <p>
            Before the sun rises, she is already on her way through mountains, rivers, and long lengths of road, carrying a small desire of education. 
            Every step reveals a story of bravery, hope, and determination. Discover her strength behind her journey.
            </p>

            <a class="btn-read" href="https://sesotunawa.com/blogs/stories/a-tboli-womans-journey" target="_blank">
            Read More
            </a>

        </div>

    </div>

</div>

    <section class="celeb-strip">
    <h2>T’boli Festival and Celebrations</h2>
    <p class="subtitle">A vibrant glimpse into the dances, music, and traditions that bring T’boli culture to life</p>
           
    <div class="stripstrip-1">
        <div class="image">
            <img src="" alt="">
        </div>
        <div class="text">
            <h3>Seslong Festival</h3>
            <p>TThe Seslong Festival is the T’boli’s most vibrant celebration, bringing heritage to life through colorful dances, music, chants, and traditional crafts. “Seslong,” meaning marketplace or gathering, symbolizes the unity of the T’boli and neighboring tribes while marking a time of community, tradition, and joy.</p>
            <a class="btn-read" href="#">Read More</a>
        </div>
    </div>


    <div class="strip strip-2">
        <div class="text">
            <h3>Lemlunay Festival</h3>
            <p>At Lake Sebu, the T’boli celebrate "Lemlunay" or "Good Land," to mark the beginning of the harvest season. Through vibrant songs, dances, and intricate crafts, the community honors its roots and keeps traditions alive.</p>
            <a class="btn-read" href="https://dosjfm.com/2022/09/lemlunay-tboli-tribal-festival">Read More</a>
        </div>
        <div class="image">
            <img src="" alt="">
        </div>
    </div>

            
    <div class="strip strip-1">
        <div class="image">
            <img src="" alt="">
        </div>
        <div class="text">
            <h3>The Tnalak Festival</h3>
            <p>The town of Lake Sebu honors the sacred t'nalak fabric with a week-long event that is full of color, music, and dance every year. Men and women parade in traditional clothing, displaying designs that convey tales of pride, dreams, and ancestry.</p>
            <a class="btn-read" href="https://sites.google.com/addu.edu.ph/tnalakfestival/home">Read More</a>
        </div>
    </div>


    

</section>

<style>
.celeb-strip{
    width: 100%;
    margin: 75px 0px;
    padding: 50px 50px;
    background:#FFFEE0;
    align-items:center;
    display: flex;
    flex-direction: column;

}

.celeb-strip h2{
    text-align: center;
    color: #8C0000;
    margin-bottom: 10px;
}

.celeb-strip .subtitle{
    text-align: center;
    margin-bottom: 40px;
    color: #333;
}

/* STRIPS */
.strip{
    width:85%;
    background-color: #ffffff00;
    display: flex;
    align-items: center;
    padding:40px;
    margin-bottom: 20px;
    border-radius: 8px;
    border: 7px solid;
    color: #333;
}

.strip-1{
    border-color: #8C0000;
    flex-direction: row;
}

.strip-2{
    border-color: #FFC917;
    flex-direction: row-reverse;
}

/* Images */
.strip .image{
    flex: 1;
    padding: 10px;
}

.strip .image img{
    width: 100%;
    height: auto;
    border-radius: 8px;
    object-fit: cover;
}

/* Text */
.strip .text{
    flex: 1;
    padding: 10px 30px;
}

.strip h3{
    color: #8C0000;
    margin-bottom: 15px;
}

.strip p{
    margin-bottom: 20px;
}

/* Read More button */
.strip .read{
    display: inline-block;
    padding: 8px 14px;
    background: #8C0000;
    color: #FAF3CD;
    text-decoration: none;
    border-radius: 4px;
    font-weight: bold;
    text-transform: uppercase;
    transition: 0.2s;
}

.strip .read:hover{
    background: #CD8417;
    color: white;
}

/* Responsive */
@media (max-width: 1024px){
    .strip{
        flex-direction: column !important;
        text-align: center;
    }
    .strip .text{
        padding: 20px 0;
    }
    .strip .image{
        padding: 0;
    }
}
</style>
</asp:Content>
