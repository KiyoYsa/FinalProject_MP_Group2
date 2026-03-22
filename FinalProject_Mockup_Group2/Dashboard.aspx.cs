using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace FinalProject_Mockup_Group2
{
    public partial class Dashboard : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["DreamweaversDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null) Response.Redirect("UserLogin.aspx");

            bool isAdmin = Session["Role"].ToString() == "Admin";
            phAdminMenu.Visible = isAdmin;
            phArtisanMenu.Visible = !isAdmin;

            if (!IsPostBack)
            {
                ViewState["ActiveTab"] = isAdmin ? "Crafts" : "MyCrafts";
                LoadAllDropdowns();
                BindData();
            }
        }

        private void BindData()
        {
            string tab = ViewState["ActiveTab"].ToString();
            litTabHeader.Text = tab;
            string label;

            switch (tab)
            {
                case "MyCrafts":
                case "Crafts":
                    label = "Craft";
                    break;
                case "Artisans":
                    label = "Artisan";
                    break;
                case "Categories":
                    label = "Category";
                    break;
                case "Patterns":
                    label = "Pattern";
                    break;
                case "Users":
                    label = "User";
                    break;
                default:
                    label = tab;
                    break;
            }

            litAddLabel.Text = label;
            btnadd1.Text = "Add " + label;
            btnadd.Text = "Add " + label;
            btnadd2.Text = "Add " + label;

            if (tab == "Crafts" || tab == "MyCrafts") mvAddForms.SetActiveView(vwAddCraft);
            else if (tab == "Artisans") mvAddForms.SetActiveView(vwAddArtisan);
            else if (tab == "Patterns") mvAddForms.SetActiveView(vwAddPattern);

            string sql = (tab == "MyCrafts") ? "SELECT CraftID, CraftName, CraftDesc, Status FROM Crafts WHERE ArtisanID = @aid" : $"SELECT * FROM {tab}";

           
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand(sql, conn);
                if (tab == "MyCrafts") cmd.Parameters.AddWithValue("@aid", Session["ArtisanID"]);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                gvPortal.DataKeyNames = new string[] { dt.Columns[0].ColumnName };
                gvPortal.DataSource = dt;
                gvPortal.DataBind();
            }
        }

        protected void btnAddCraft_Click(object sender, EventArgs e)
        {
            ExecuteInsert("INSERT INTO Crafts (CraftName, CraftDesc, CategoryID, PatternID, ArtisanID, Status) VALUES (@v1, @v2, @v3, @v4, @aid, 'Active')",
                txtCName.Text, txtCDesc.Text, ddlCCat.SelectedValue, ddlCPat.SelectedValue);
        }

        protected void btnAddArtisan_Click(object sender, EventArgs e)
        {
            ExecuteInsert("INSERT INTO Artisans (ArtisanName, ArtisanBio, Location) VALUES (@v1, @v2, @v3)",
                txtAName.Text, txtABio.Text, txtALoc.Text, null);
        }

        protected void btnAddPattern_Click(object sender, EventArgs e)
        {
            ExecuteInsert("INSERT INTO Patterns (PatternName, Symbolism) VALUES (@v1, @v2)",
                txtPName.Text, txtPSym.Text, null, null);
        }

        private void ExecuteInsert(string sql, string v1, string v2, string v3, string v4)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@v1", v1); cmd.Parameters.AddWithValue("@v2", v2);
                if (v3 != null) cmd.Parameters.AddWithValue("@v3", v3);
                if (v4 != null) cmd.Parameters.AddWithValue("@v4", v4);
                if (sql.Contains("@aid")) cmd.Parameters.AddWithValue("@aid", Session["ArtisanID"] ?? 1);
                conn.Open(); cmd.ExecuteNonQuery();
            }
            BindData();
        }

        protected void gvPortal_RowEditing(object sender, GridViewEditEventArgs e) { gvPortal.EditIndex = e.NewEditIndex; BindData(); }
        protected void gvPortal_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e) { gvPortal.EditIndex = -1; BindData(); }

        protected void gvPortal_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string tab = ViewState["ActiveTab"].ToString();
            string id = gvPortal.DataKeys[e.RowIndex].Value.ToString();
            string col1 = ((TextBox)gvPortal.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string col2 = ((TextBox)gvPortal.Rows[e.RowIndex].Cells[2].Controls[0]).Text;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string idCol = gvPortal.DataKeyNames[0];
                string sql = $"UPDATE {tab} SET {gvPortal.Columns[1].HeaderText.Replace(" ", "")}=@v1, {gvPortal.Columns[2].HeaderText.Replace(" ", "")}=@v2 WHERE {idCol}=@id";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@v1", col1); cmd.Parameters.AddWithValue("@v2", col2);
                cmd.Parameters.AddWithValue("@id", id);
                conn.Open(); cmd.ExecuteNonQuery();
            }
            gvPortal.EditIndex = -1; BindData();
        }

        protected void gvPortal_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string tab = ViewState["ActiveTab"].ToString();
            string id = gvPortal.DataKeys[e.RowIndex].Value.ToString();
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand($"DELETE FROM {tab} WHERE {gvPortal.DataKeyNames[0]}=@id", conn);
                cmd.Parameters.AddWithValue("@id", id);
                conn.Open(); cmd.ExecuteNonQuery();
            }
            BindData();
        }

        private void LoadAllDropdowns()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlDataAdapter da1 = new SqlDataAdapter("SELECT * FROM Categories", conn);
                DataTable dt1 = new DataTable(); da1.Fill(dt1);
                ddlCCat.DataSource = dt1; ddlCCat.DataBind();

                SqlDataAdapter da2 = new SqlDataAdapter("SELECT * FROM Patterns", conn);
                DataTable dt2 = new DataTable(); da2.Fill(dt2);
                ddlCPat.DataSource = dt2; ddlCPat.DataBind();
            }
        }

        protected void SwitchTab(object sender, EventArgs e) { ViewState["ActiveTab"] = ((Button)sender).CommandArgument; gvPortal.EditIndex = -1; BindData(); }
        protected void Logout_Click(object sender, EventArgs e) { Session.Clear(); Response.Redirect("UserLogin.aspx"); }
    }
}