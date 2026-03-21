<%@ Page Title="Stories" Language="C#" AutoEventWireup="true" CodeBehind="Stories.aspx.cs" Inherits="FinalProject_Mockup_Group2.Stories" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   
    <div class="page-header-section">
    <h1>Stories</h1>
    <p>Discover the inspiring lives of T'boli women and the colorful festivities that honor their heritage. These stories honor tradition, dedication, and community, ranging from daily living to t'nalak-woven dreams.</p>
   </div>

<div class="container">
        <!-- MAIN STORY -->

    <div class="featured">

        <img src="images/tboli weave their dream.jpg" />

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
            <img src="images/journey to school.jpg" />

            <h3>A girl's journey to school</h3>

            <p>
           Before the first lesson even begins, her journey has already tested her strength. 
           Through rivers, rough paths, and long miles, a young T’boli girl pushes forward—driven by a quiet dream of learning. 
           Follow her story and see how far hope can carry her.
            </p>

            <a class="btn-read" href="https://www.savethechildren.org.ph/our-work/our-stories/story/watch-a-tboli-girls-journey-to-school/" target="_blank">
            Read More
            </a>

        </div>


        <div class="storiescard">
            <img src="images/hilltop legacy.jpg" />

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

        <!--
        <div class="storiescard">
            <img src="images/tbolis journey.webp" />

            <h3>A T'boli Women's Journey</h3>

            <p>
            Before the sun rises, she is already on her way through mountains, rivers, and long lengths of road, carrying a small desire of education. 
            Every step reveals a story of bravery, hope, and determination. Discover her strength behind her journey.
            </p>

            <a class="btn-read" href="https://sesotunawa.com/blogs/stories/a-tboli-womans-journey" target="_blank">
            Read More
            </a>

        </div>
        -->
    </div>

</div>

    <section class="celeb-strip">
     <h2>T’boli Festival and Celebrations</h2>
    <p class="subtitle">A vibrant glimpse into the dances, music, and traditions that bring T’boli culture to life</p>

          <div class="strip strip-1">
              <div class="image">
                  <img src="images/tnalak festival.jpg" alt="T'nalak Festival">
              </div>
              <div class="text">
                  <h3>The T'nalak Festival</h3>
                  <p>As the province's founding anniversary, this is the largest celebration in South Cotabato. It takes its name from the sacred cloth known as T'nalak, which is woven by T'boli "dream weavers" using their dreams as inspiration. The celebration represents the "interweaving" of the province's many cultures.</p>
              </div>
              <p class="festival-date" data-type="fixed" data-date="07-18">
                Countdown: <span class="countdown"></span>
            </p>
          </div>

    <div class="strip strip-2">
         <div class="image">
             <img src="images/helobung festival.jpg" alt="Seslong Festival">
         </div>
        <div class ="text">
            <h3>The Helobung Festival</h3>
            <p>Held in the municipality of Lake Sebu, "Helubong" means "never-ending joy." It is a celebration of the T'boli people's cultural endurance and a magnificent thanksgiving for a good crop. It includes colorful street dance, ethnic music performed on the hegelung (lute), and traditional games like horse fighting (kadal kuda).</p>
        </div>
        <p class="festival-date" data-type="fixed" data-date="11-09">
            Countdown: <span class="countdown"></span>
        </p>
    </div>


           
    <div class="strip strip-1">
        <div class="image">
            <img src="images/seslong fest.JPG" alt="Seslong Festival">
        </div>
        <div class="text">
            <h3>Seslong Festival</h3>
            <p> The word "Seslong" is derived from a T'boli phrase that means "to gather for bartering." It recreates the old custom of trading commodities between highland and lowland tribes. Through cultural parades, the "Miss T'boli" pageant, and exhibits of traditional crafts and brassware, it now highlights T'boli heritage.</p>
        </div>
        <p class="festival-date" data-type="fixed" data-date="03-05">
            Countdown: <span class="countdown"></span>
        </p>
        
    </div>


    <div class="strip strip-2">
        <div class="image">
            <img src="images/lemlunay-festival.jpg" alt="Lemlunay Festival">
        </div>
        <div class="text">
            <h3>Lemlunay Festival</h3>
            <p>"Lemlunay," also known as the T'boli Tribal Festival, is a mythical "Golden Age" or paradise with eternal peace. This is a very spiritual holiday that frequently begins with gongs and dawn ceremonies. It features large gatherings of different indigenous tribes at Lake Sebu and is a moment for the tribe to renew their vow to work toward that ideal state of life.</p>
        </div>
        
        <p class="festival-date" data-type="september-third-week">
            Countdown: <span class="countdown"></span>
        </p>
    </div>

            
  

</section>
<script>
    function getThirdWeekOfSeptember(year) {
        let date = new Date(year, 8, 1); 

        
        while (date.getDay() !== 1) {
            date.setDate(date.getDate() + 1);
        }

        //add 2 weeks
        date.setDate(date.getDate() + 14);

        return date;
    }
    function updateAllCountdowns() {
        const now = new Date();

        document.querySelectorAll(".festival-date").forEach(item => {
            const type = item.getAttribute("data-type");
            const value = item.getAttribute("data-date");
            const countdownEl = item.querySelector(".countdown");

            let festivalDate;

            if (type === "fixed") {
                const [month, day] = value.split("-");
                festivalDate = new Date(now.getFullYear(), month - 1, day);

                if (festivalDate < now) {
                    festivalDate = new Date(now.getFullYear() + 1, month - 1, day);
                }

            } else if (type === "september-third-week") {
                festivalDate = getThirdWeekOfSeptember(now.getFullYear());

                if (festivalDate < now) {
                    festivalDate = getThirdWeekOfSeptember(now.getFullYear() + 1);
                }
            }

            const diff = festivalDate - now;

            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hours = Math.floor((diff / (1000 * 60 * 60)) % 24);
            const minutes = Math.floor((diff / (1000 * 60)) % 60);
            const seconds = Math.floor((diff / 1000) % 60);

            countdownEl.textContent =
                `${days}d ${hours}h ${minutes}m ${seconds}s`;
        });
    }

    updateAllCountdowns();
    setInterval(updateAllCountdowns, 1000);

</script>

</asp:Content>
