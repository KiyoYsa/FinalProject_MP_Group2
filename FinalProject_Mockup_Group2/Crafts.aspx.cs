using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject_Mockup_Group2
{
    public partial class crafts : System.Web.UI.Page
    {
        // 1. IMPORTANT: Ensure "MyDbConn" matches exactly with <add name="..." /> in your Web.config
        private string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["DreamweaversDB"].ConnectionString;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load all crafts on first visit
                BindCrafts(0);
            }
        }

        protected void FilterCategory_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            int categoryId;

            if (int.TryParse(btn.CommandArgument, out categoryId))
            {
                BindCrafts(categoryId);

                // UI: Reset all buttons and set clicked one to active
                UpdateFilterUI(btn);
            }
        }

        private void BindCrafts(int categoryId)
        {
            using (SqlConnection conn = new SqlConnection(GetConnectionString()))
            {
                // We use LEFT JOIN to ensure crafts show up even if an Artisan or Pattern was deleted
                string query = @"SELECT c.CraftName, c.CraftDesc, c.Thumbnail, c.ArtisanID, 
                                        ISNULL(a.ArtisanName, 'Unknown Artisan') as ArtisanName 
                                 FROM Crafts c 
                                 LEFT JOIN Artisans a ON c.ArtisanID = a.ArtisanID";

                // If categoryId is 0, we show "All". Otherwise, we filter.
                if (categoryId > 0)
                {
                    query += " WHERE c.CategoryID = @CategoryID";
                }

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    if (categoryId > 0)
                    {
                        cmd.Parameters.AddWithValue("@CategoryID", categoryId);
                    }

                    try
                    {
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        // Bind the data to the Repeater
                        rptCrafts.DataSource = dt;
                        rptCrafts.DataBind();

                        // Debugging: If the repeater is still empty, this will show a message on your page
                        if (dt.Rows.Count == 0)
                        {
                            Response.Write("<h3 style='color:red; text-align:center;'>No crafts found in the database for this category.</h3>");
                        }
                    }
                    catch (Exception ex)
                    {
                        // This will display the exact SQL error (e.g., "Invalid column name")
                        Response.Write("<div style='color:red; border:1px solid red; padding:10px;'>");
                        Response.Write("<strong>SQL Error:</strong> " + ex.Message);
                        Response.Write("</div>");
                    }
                }
            }
        }

        private void UpdateFilterUI(LinkButton activeBtn)
        {
            // This assumes your buttons are inside a container like <div class="auto-style1">
            // It clears the 'active' class from siblings and adds it to the clicked one
            foreach (Control ctrl in activeBtn.Parent.Controls)
            {
                if (ctrl is LinkButton lb)
                {
                    lb.CssClass = "btn-read";
                }
            }
            activeBtn.CssClass = "btn-read active";
        }
    }
}