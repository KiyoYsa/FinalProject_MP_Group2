<%@ Page Title="Portal Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="FinalProject_Mockup_Group2.UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <script>
        function togglePassword() {
            var pass = document.getElementById('<%= pass_input.ClientID %>');
            var eyeIcon = document.getElementById('toggleEye');

            var openEyePath = "M612.58-367.51q54.5-54.59 54.5-132.58 0-77.99-54.59-132.49-54.59-54.5-132.58-54.5-77.99 0-132.49 54.59-54.5 54.59-54.5 132.58 0 77.99 54.59 132.49 54.59 54.5 132.58 54.5 77.99 0 132.49-54.59ZM402-422.12q-32-32.12-32-78T402.12-578q32.12-32 78-32T558-577.88q32 32.12 32 78T557.88-422q-32.12 32-78 32T402-422.12Zm-197.38 147.5Q81.16-359.23 25.54-500q55.62-140.77 179.02-225.38Q327.97-810 479.95-810q151.97 0 275.43 84.62Q878.84-640.77 934.46-500q-55.62 140.77-179.02 225.38Q632.03-190 480.05-190q-151.97 0-275.43-84.62ZM480-500Zm211.87 163.42Q788.74-397.16 840-500q-51.26-102.84-148.13-163.42Q595-724 480-724t-211.87 60.58Q171.26-602.84 120-500q51.26 102.84 148.13 163.42Q365-276 480-276t211.87-60.58Z";
            var closedEyePath = "M650.92-423.08 589-485q8-55.69-30.85-93.85Q519.31-617 465-609l-61.92-61.92q11.54-6.08 33.77-11.12 22.23-5.04 43.15-5.04 79.08 0 133.08 54 54 54 54 133.08 0 20.92-4.04 40.54-4.04 19.61-12.12 36.38Zm130.23 129.46L719-355q38-29 69-64.5t52-80.5q-51-103-146.5-163.5T480-724q-29 0-58.5 4T366-708l-67.61-67.61q40.92-17.08 86.96-25.73Q431.39-810 480-810q154.61 0 277.11 86.04T934.46-500q-23.23 60.61-62.42 113.08-39.2 52.46-90.89 93.3Zm17.31 252.39L624.62-213.85q-30.77 11.39-67.2 17.62Q521-190 480-190q-155 0-278.11-86.04Q78.77-362.08 25.54-500q21.15-54 53.73-100.38 32.58-46.39 74.73-83.08l-112.77-115 60.16-60.15 757.22 757.22-60.15 60.16Zm-582.3-581.08q-28.7 25.23-54.16 55.66-25.46 30.42-42 66.65 51 103 146.5 163.5T480-276q19.31 0 39.89-2.62 20.57-2.61 31.42-6.53L520.69-319q-7.23 3.15-18.69 4.61-11.46 1.47-22 1.47-79.08 0-133.08-54-54-54-54-133.08 0-10.15 1.47-20.92 1.46-10.77 4.61-19.77l-82.84-81.62ZM543-532Zm-158.77 77.77Z";

            if (pass.type === "password") {
                pass.type = "text";
                eyeIcon.setAttribute("d", openEyePath);
            } else {
                pass.type = "password";
                eyeIcon.setAttribute("d", closedEyePath);
            }
        }
     </script>

    <div class="login-page">
        <div class="login-container">
            <div class="login-image">
                <div class="login-image-text">Dreamweavers Collective</div>
            </div>
            <div class="login-form">
                <div class="login-title">Welcome!</div>
                <div class="input-group">
                     <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                        <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/>
                    </svg>

                    <asp:TextBox ID="username_input" runat="server" CssClass="login-input" placeholder="Username" />
                </div>
                <div class="input-group">
                    <asp:TextBox ID="pass_input" runat="server" CssClass="login-input" TextMode="Password" placeholder="Password" />
                    <svg class="toggle-password" onclick="togglePassword()" viewBox="0 -960 960 960" width="24px" fill="#e3e3e3" style="position:absolute; right:10px; top:50%; transform:translateY(-50%); cursor:pointer;">
                        <path id="toggleEye" d="M650.92-423.08 589-485q8-55.69-30.85-93.85Q519.31-617 465-609l-61.92-61.92q11.54-6.08 33.77-11.12 22.23-5.04 43.15-5.04 79.08 0 133.08 54 54 54 54 133.08 0 20.92-4.04 40.54-4.04 19.61-12.12 36.38Zm130.23 129.46L719-355q38-29 69-64.5t52-80.5q-51-103-146.5-163.5T480-724q-29 0-58.5 4T366-708l-67.61-67.61q40.92-17.08 86.96-25.73Q431.39-810 480-810q154.61 0 277.11 86.04T934.46-500q-23.23 60.61-62.42 113.08-39.2 52.46-90.89 93.3Zm17.31 252.39L624.62-213.85q-30.77 11.39-67.2 17.62Q521-190 480-190q-155 0-278.11-86.04Q78.77-362.08 25.54-500q21.15-54 53.73-100.38 32.58-46.39 74.73-83.08l-112.77-115 60.16-60.15 757.22 757.22-60.15 60.16Zm-582.3-581.08q-28.7 25.23-54.16 55.66-25.46 30.42-42 66.65 51 103 146.5 163.5T480-276q19.31 0 39.89-2.62 20.57-2.61 31.42-6.53L520.69-319q-7.23 3.15-18.69 4.61-11.46 1.47-22 1.47-79.08 0-133.08-54-54-54-54-133.08 0-10.15 1.47-20.92 1.46-10.77 4.61-19.77l-82.84-81.62ZM543-532Zm-158.77 77.77Z"/>
                    </svg>

                </div>
                <asp:Label ID="lblError" runat="server" CssClass="login-error" Visible="false"></asp:Label>
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login-btn" OnClick="btnLogin_Click" />
            </div>
        </div>
    </div>
</asp:Content>