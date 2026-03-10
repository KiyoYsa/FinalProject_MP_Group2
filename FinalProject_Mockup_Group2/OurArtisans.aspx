<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OurArtisans.aspx.cs" Inherits="FinalProject_Mockup_Group2.OurArtisans" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Our Artisans</title>
</head>
<body>
    <section>
        <div class="our-artisans">
            <h1>OUR ARTISANS</h1>

            <!-- First artisan -->
            <div class="wrapper">
                <div class="content">
                    <h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam efficitur iaculis auctor. Curabitur a enim malesuada, vehicula erat ac, consequat est.</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam efficitur iaculis auctor. Curabitur a enim malesuada, vehicula erat ac, consequat est. Nulla ullamcorper tellus arcu, vitae euismod orci varius ac.</p>
                    <div class="button">
                        <a href="">Read More</a>
                    </div>
                </div>
                <div class="image-section">
                    <img src="https://placehold.co/400" />
                </div>
            </div>

            <!-- Second artisan (reversed) -->
            <div class="wrapper reverse">
                <div class="content">
                    <h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam efficitur iaculis auctor. Curabitur a enim malesuada, vehicula erat ac, consequat est.</p>
                    <div class="button">
                        <a href="">Read More</a>
                    </div>
                </div>
                <div class="image-section">
                    <img src="https://placehold.co/400" />
                </div>
            </div>
        </div>
    </section>
</body>
</html>

<style>
    * {
        margin: 0px;
        padding: 0px;
        box-sizing: border-box;
        line-height: 1.5;
        font-family: Arial, sans-serif;
    }

    body {
        width: 100%;
        min-height: 100vh;
        background-color: #ddd;
    }

    .our-artisans {
        width: 100%;
        text-align: center;
    }

    .our-artisans h1 {
        text-align: center;
        font-size: 40px;
        color: #7B160E;
        letter-spacing: 1.5px;
        margin-top: 50px;
        display: inline-block;
        padding-bottom: 10px;
    }

    .our-artisans h1::after {
        content: "";
        display: block;
        width: 120px;
        height: 4px;
        background: #7B160E;
        margin: 10px auto;
        border-radius: 2px;
    }

    .wrapper {
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 0px 60px;
        margin: 80px auto;
        flex-wrap: wrap;
    }

    .wrapper.reverse {
        flex-direction: row-reverse;
    }

    .content {
        width: 60%;
        text-align: left;
        padding: 0px 40px;
    }

    .content h3 {
        color: #222;
        letter-spacing: 1px;
    }

    .content p {
        font-family: sans-serif;
        font-size: 18px;
        color: black;
        margin-top: 20px;
    }

    .content .button {
        margin-top: 40px;
    }

    .content .button a {
        color: #fff;
        background-color: #BD8232;
        border: 1px solid #BD8232;
        padding: 10px 35px;
        letter-spacing: 1px;
        font-size: 22px;
        text-transform: uppercase;
    }

    .content .button a:hover {
        background-color: #fff;
        color: #BD8232;
    }

    .image-section {
        width: 40%;
        padding: 0px 30px;
    }

    .image-section img {
        max-width: 100%;
        height: auto;
    }

    @media screen and (max-width: 900px) {
        .our-artisans {
            width: 100%;
            padding-top: 20px;
        }

        .our-artisans h1 {
            font-size: 32px;
        }

        .wrapper {
            flex-direction: column;
            padding: 0px 20px;
        }

        .content {
            width: 100%;
        }

        .content .button {
            padding: 8px 25px;
        }

        .content .button a {
            margin-top: 30px;
            text-align: center;
        }

        .image-section {
            width: 100%;
            margin-top: 25px;
        }
    }
</style>
