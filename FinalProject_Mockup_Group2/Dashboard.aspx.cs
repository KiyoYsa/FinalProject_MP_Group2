using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject_Mockup_Group2
{
    public partial class Dashboard : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["DreamweaversDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null) Response.Redirect("UserLogin.aspx");

            bool isAdmin = Session["Role"] != null && Session["Role"].ToString() == "Admin";
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

            string label = "Item";
            switch (tab)
            {
                case "MyCrafts":
                case "Crafts": label = "Craft"; mvAddForms.SetActiveView(vwAddCraft); break;
                case "Artisans": label = "Artisan"; mvAddForms.SetActiveView(vwAddArtisan); break;
                case "Categories": label = "Category"; mvAddForms.SetActiveView(vwAddCategory); break;
                case "Patterns": label = "Pattern"; mvAddForms.SetActiveView(vwAddPattern); break;
                case "Users": label = "User"; mvAddForms.SetActiveView(vwAddUser); break;
            }
            litAddLabel.Text = label;

            string sql = (tab == "MyCrafts")
                ? "SELECT CraftID, CraftName, CraftDesc, CategoryID, PatternID FROM Crafts WHERE ArtisanID = @aid"
                : $"SELECT * FROM {tab}";

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand(sql, conn);
                if (tab == "MyCrafts") cmd.Parameters.AddWithValue("@aid", Session["ArtisanID"] ?? 0);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Columns.Count > 0)
                    gvPortal.DataKeyNames = new string[] { dt.Columns[0].ColumnName };

                gvPortal.DataSource = dt;
                gvPortal.DataBind();
            }
        }

        protected void btnAddCraft_Click(object sender, EventArgs e)
        {
            ExecuteInsert("INSERT INTO Crafts (CraftName, CraftDesc, CategoryID, PatternID, ArtisanID) VALUES (@v1, @v2, @v3, @v4, @aid)",
                txtCName.Text, txtCDesc.Text, ddlCCat.SelectedValue, ddlCPat.SelectedValue);
            txtCName.Text = ""; txtCDesc.Text = "";
        }

        protected void btnAddArtisan_Click(object sender, EventArgs e)
        {
            ExecuteInsert("INSERT INTO Artisans (ArtisanName, ArtisanBio, ArtisanLocation) VALUES (@v1, @v2, @v3)",
                txtAName.Text, txtABio.Text, txtALocation.Text, null);
            txtAName.Text = ""; txtABio.Text = ""; txtALocation.Text = "";
        }

        protected void btnAddPattern_Click(object sender, EventArgs e)
        {
            ExecuteInsert("INSERT INTO Patterns (PatternName, SpiritualMeaning, History) VALUES (@v1, @v2, @v3)",
                txtPName.Text, txtPSpiritual.Text, txtPHistory.Text, null);
            txtPName.Text = ""; txtPSpiritual.Text = ""; txtPHistory.Text = "";
        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            ExecuteInsert("INSERT INTO Categories (CategoryName) VALUES (@v1)",
                txtCatName.Text, null, null, null);
            txtCatName.Text = "";
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            ExecuteInsert("INSERT INTO Users (Username, Password, [Role], ArtisanID) VALUES (@v1, @v2, @v3, NULL)",
                txtUName.Text, txtUPass.Text, ddlURole.SelectedValue, null);

            txtUName.Text = ""; txtUPass.Text = "";
        }

        private void ExecuteInsert(string sql, string v1, string v2, string v3, string v4)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand(sql, conn);

                cmd.Parameters.Add("@v1", SqlDbType.NVarChar).Value = (object)v1 ?? DBNull.Value;
                cmd.Parameters.Add("@v2", SqlDbType.NVarChar).Value = (object)v2 ?? DBNull.Value;

                if (sql.Contains("@v3"))
                    cmd.Parameters.Add("@v3", SqlDbType.NVarChar).Value = (object)v3 ?? DBNull.Value;

                if (sql.Contains("@v4"))
                    cmd.Parameters.Add("@v4", SqlDbType.NVarChar).Value = (object)v4 ?? DBNull.Value;

                if (sql.Contains("@aid"))
                {
                    if (Session["ArtisanID"] != null)
                        cmd.Parameters.Add("@aid", SqlDbType.Int).Value = Session["ArtisanID"];
                    else
                        cmd.Parameters.Add("@aid", SqlDbType.Int).Value = DBNull.Value;
                }

                conn.Open();
                cmd.ExecuteNonQuery();
            }
            BindData();
        }

        protected void gvPortal_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvPortal.EditIndex = e.NewEditIndex;
            BindData();
        }

        protected void gvPortal_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvPortal.EditIndex = -1;
            BindData();
        }

        protected void gvPortal_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string tab = ViewState["ActiveTab"].ToString();
            string targetTable = (tab == "MyCrafts") ? "Crafts" : tab;

            string idValue = gvPortal.DataKeys[e.RowIndex].Value.ToString();
            string idColumn = gvPortal.DataKeyNames[0];

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string updateSql = $"UPDATE [{targetTable}] SET ";
                SqlCommand cmd = new SqlCommand();
                int paramCounter = 1;

                for (int i = 1; i < gvPortal.Rows[e.RowIndex].Cells.Count; i++)
                {
                    string colName = gvPortal.HeaderRow.Cells[i].Text;

                    if (colName.Equals(idColumn, StringComparison.OrdinalIgnoreCase) ||
                        colName.Equals("CreatedAt", StringComparison.OrdinalIgnoreCase) ||
                        colName.Equals("DateJoined", StringComparison.OrdinalIgnoreCase) ||
                        string.IsNullOrEmpty(colName))
                    {
                        continue;
                    }

                    if (gvPortal.Rows[e.RowIndex].Cells[i].Controls.Count > 0)
                    {
                        Control ctrl = gvPortal.Rows[e.RowIndex].Cells[i].Controls[0];
                        if (ctrl is TextBox txt)
                        {
                            updateSql += $"[{colName}] = @p{paramCounter}, ";
                            cmd.Parameters.AddWithValue($"@p{paramCounter}", string.IsNullOrEmpty(txt.Text) ? DBNull.Value : (object)txt.Text.Trim());
                            paramCounter++;
                        }
                    }
                }

                updateSql = updateSql.TrimEnd(',', ' ') + $" WHERE [{idColumn}] = @id";
                cmd.Parameters.AddWithValue("@id", idValue);
                cmd.CommandText = updateSql;
                cmd.Connection = conn;

                conn.Open();
                cmd.ExecuteNonQuery();
            }

            gvPortal.EditIndex = -1;
            BindData();
        }

        protected void gvPortal_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string tab = ViewState["ActiveTab"].ToString();
            string targetTable = (tab == "MyCrafts") ? "Crafts" : tab;

            string idValue = gvPortal.DataKeys[e.RowIndex].Value.ToString();
            string idColumn = gvPortal.DataKeyNames[0];

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand($"DELETE FROM [{targetTable}] WHERE [{idColumn}] = @id", conn);
                cmd.Parameters.AddWithValue("@id", idValue);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            BindData();
        }

        private void LoadAllDropdowns()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlDataAdapter da1 = new SqlDataAdapter("SELECT CategoryID, CategoryName FROM Categories", conn);
                DataTable dt1 = new DataTable(); da1.Fill(dt1);
                ddlCCat.DataSource = dt1; ddlCCat.DataBind();

                SqlDataAdapter da2 = new SqlDataAdapter("SELECT PatternID, PatternName FROM Patterns", conn);
                DataTable dt2 = new DataTable(); da2.Fill(dt2);
                ddlCPat.DataSource = dt2; ddlCPat.DataBind();
            }
        }

        protected void SwitchTab(object sender, EventArgs e)
        {
            ViewState["ActiveTab"] = ((Button)sender).CommandArgument;
            gvPortal.EditIndex = -1;
            BindData();
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("UserLogin.aspx");
        }
    }
}