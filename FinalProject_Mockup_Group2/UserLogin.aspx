<%@ Page Title="Portal Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="FinalProject_Mockup_Group2.UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="login-page">
        <div class="login-container">
            <div class="login-image">
                <div class="login-image-text">Dreamweavers Collective</div>
            </div>
            <div class="login-form">
                <div class="login-title">Welcome!</div>
                <div class="input-group">
                    <asp:TextBox ID="username_input" runat="server" CssClass="login-input" placeholder="Username" />
                </div>
                <div class="input-group">
                    <asp:TextBox ID="pass_input" runat="server" CssClass="login-input" TextMode="Password" placeholder="Password" />
                </div>
                <asp:Label ID="lblError" runat="server" CssClass="login-error" Visible="false"></asp:Label>
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login-btn" OnClick="btnLogin_Click" />
            </div>
        </div>
    </div>
</asp:Content>