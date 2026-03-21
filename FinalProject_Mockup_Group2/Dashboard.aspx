<%@ Page Title="System Administration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="FinalProject_Mockup_Group2.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .portal-wrapper { display: flex; min-height: 85vh; background: #fdfcf8; }
        .sidebar { width: 240px; background: #7A1C1C; color: white; padding: 25px 15px; flex-shrink: 0; }
        .main-stage { flex-grow: 1; padding: 30px; background: white; overflow-x: auto; }
        
        .nav-group-title { font-size: 11px; text-transform: uppercase; color: #cc9999; margin: 20px 0 10px 10px; letter-spacing: 1px; }
        .nav-btn { display: block; width: 100%; padding: 12px; color: #FAF3CD; text-align: left; background: none; border: none; border-radius: 5px; cursor: pointer; font-size: 14px; margin-bottom: 5px; transition: 0.3s; }
        .nav-btn:hover, .nav-btn.active { background: #BD8232; color: white; }
        
        .gv-portal { width: 100%; border-collapse: collapse; margin-top: 15px; font-size: 13px; border: 1px solid #ddd; }
        .gv-portal th { background: #7A1C1C; color: #FAF3CD; padding: 12px; text-align: left; }
        .gv-portal td { padding: 10px; border-bottom: 1px solid #eee; }

        .add-section { background: #f4f4f4; padding: 20px; border-radius: 8px; margin-bottom: 25px; border-left: 5px solid #BD8232; }
        .form-row { display: flex; gap: 15px; margin-bottom: 10px; align-items: flex-end; flex-wrap: wrap; }
        .form-item { display: flex; flex-direction: column; }
        .form-item label { font-size: 11px; font-weight: bold; color: #7A1C1C; margin-bottom: 3px; }
        .form-ctrl { padding: 8px; border: 1px solid #ccc; border-radius: 4px; }
    </style>

    <div class="portal-wrapper">
        <div class="sidebar">
            <h3 style="color:#FAF3CD; margin-left:10px;">Control Panel</h3>
            
            <asp:PlaceHolder ID="phArtisanMenu" runat="server">
                <p class="nav-group-title">My Workspace</p>
                <asp:Button runat="server" ID="btnMyTab" Text="🧶 My Crafts" CssClass="nav-btn active" OnClick="SwitchTab" CommandArgument="MyCrafts" />
            </asp:PlaceHolder>

            <asp:PlaceHolder ID="phAdminMenu" runat="server" Visible="false">
                <p class="nav-group-title">Database Administration</p>
                <asp:Button runat="server" Text="Crafts" CssClass="nav-btn" OnClick="SwitchTab" CommandArgument="Crafts" />
                <asp:Button runat="server" Text="Artisans" CssClass="nav-btn" OnClick="SwitchTab" CommandArgument="Artisans" />
                <asp:Button runat="server" Text="Categories" CssClass="nav-btn" OnClick="SwitchTab" CommandArgument="Categories" />
                <asp:Button runat="server" Text="Patterns" CssClass="nav-btn" OnClick="SwitchTab" CommandArgument="Patterns" />
                <asp:Button runat="server" Text="Users" CssClass="nav-btn" OnClick="SwitchTab" CommandArgument="Users" />
            </asp:PlaceHolder>

            <asp:LinkButton ID="btnLogout" runat="server" OnClick="Logout_Click" Style="display:block; margin-top:40px; color:#FAF3CD; font-size:12px; text-align:center; text-decoration:none;">Logout</asp:LinkButton>
        </div>

        <div class="main-stage">
            <h2 style="color:#7A1C1C;"><asp:Literal ID="litTabHeader" runat="server" /></h2>
            
            <div class="add-section">
                <h4 style="margin: 0 0 15px 0; color: #BD8232;">+ Create New <asp:Literal ID="litAddLabel" runat="server" /></h4>
                
                <asp:MultiView ID="mvAddForms" runat="server">
                    <asp:View ID="vwAddCraft" runat="server">
                        <div class="form-row">
                            <div class="form-item"><label>Craft Name</label><asp:TextBox ID="txtCName" runat="server" CssClass="form-ctrl" /></div>
                            <div class="form-item"><label>Description</label><asp:TextBox ID="txtCDesc" runat="server" CssClass="form-ctrl" /></div>
                            <div class="form-item"><label>Category</label><asp:DropDownList ID="ddlCCat" runat="server" CssClass="form-ctrl" DataTextField="CategoryName" DataValueField="CategoryID" /></div>
                            <div class="form-item"><label>Pattern</label><asp:DropDownList ID="ddlCPat" runat="server" CssClass="form-ctrl" DataTextField="PatternName" DataValueField="PatternID" /></div>
                            <asp:Button runat="server"  ID="btnadd" Text="Add Craft" OnClick="btnAddCraft_Click" CssClass="nav-btn active" style="width:auto; height:36px;" />
                        </div>
                    </asp:View>

                    <asp:View ID="vwAddArtisan" runat="server">
                        <div class="form-row">
                            <div class="form-item"><label>Full Name</label><asp:TextBox ID="txtAName" runat="server" CssClass="form-ctrl" /></div>
                            <div class="form-item"><label>Bio</label><asp:TextBox ID="txtABio" runat="server" CssClass="form-ctrl" /></div>
                            <div class="form-item"><label>Location</label><asp:TextBox ID="txtALoc" runat="server" CssClass="form-ctrl" /></div>
                            <asp:Button runat="server"  ID="btnadd1" Text="Add Artisan" OnClick="btnAddArtisan_Click" CssClass="nav-btn active" style="width:auto; height:36px;" />
                        </div>
                    </asp:View>

                    <asp:View ID="vwAddPattern" runat="server">
                        <div class="form-row">
                            <div class="form-item"><label>Pattern Name</label><asp:TextBox ID="txtPName" runat="server" CssClass="form-ctrl" /></div>
                            <div class="form-item"><label>Symbolism</label><asp:TextBox ID="txtPSym" runat="server" CssClass="form-ctrl" /></div>
                            <asp:Button runat="server" ID="btnadd2" Text="Add Pattern" OnClick="btnAddPattern_Click" CssClass="nav-btn active" style="width:auto; height:36px;" />
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>

            <asp:GridView ID="gvPortal" runat="server" CssClass="gv-portal" 
                AutoGenerateEditButton="True" AutoGenerateDeleteButton="True"
                OnRowEditing="gvPortal_RowEditing" OnRowCancelingEdit="gvPortal_RowCancelingEdit" 
                OnRowUpdating="gvPortal_RowUpdating" OnRowDeleting="gvPortal_RowDeleting">
            </asp:GridView>
        </div>
    </div>
</asp:Content>