<%@ Page Title="Stories" Language="C#" AutoEventWireup="true" CodeBehind="Stories.aspx.cs" Inherits="FinalProject_Mockup_Group2.Stories" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   
    <div class="page-header-section">
    <h1>Stories</h1>
    <p>"Through stories and shared experiences, traditions and cultural heritage are preserved and passed on to future generations."</p>
   </div>

<div class="container">
        <!-- MAIN STORY -->

    <div class="featured">

        <img src="images/pic1.png" />

        <h3>Featured Story </h3>

        <p>
        This space will contain a short description or summary of the blog post.
        It will highlight the main idea of the story and encourage readers to 
        continue reading the full article.
        </p>

        <a class="btn-read">
        Read Full Story
        </a>

    </div>

    <h2 style="color:#8C0000;">Latest Stories</h2>

         
    <!--- EXTER STORIES --->

    <div class="blog-grid">

        <div class="storiescard">
            <img src="images/pic1.png" />

            <h3>Story / Blog 1</h3>

            <p>
            This space will contain a short description or summary of the blog post.
            It will highlight the main idea of the story and encourage readers to 
            continue reading the full article.
            </p>

            <a class="btn-read">
            Read More
            </a>

        </div>


        <div class="storiescard">
            <img src="images/pic2.png" />

            <h3>Story / Blog 2</h3>

            <p>
            This space will contain a short description or summary of the blog post.
            It will highlight the main idea of the story and encourage readers to 
            continue reading the full article.
            </p>

            <a class="btn-read">
            Read More
            </a>

        </div>


        <div class="storiescard">
            <img src="images/pic3.png" />

            <h3>Story / Blog 3</h3>

            <p>
            This space will contain a short description or summary of the blog post.
            It will highlight the main idea of the story and encourage readers to 
            continue reading the full article.
            </p>

            <a class="btn-read">
            Read More
            </a>

        </div>

    </div>

</div>



</asp:Content>
