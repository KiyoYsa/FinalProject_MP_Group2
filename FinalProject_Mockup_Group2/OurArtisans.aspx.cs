using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace FinalProject_Mockup_Group2
{
    public partial class OurArtisans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadArtisans();
            }
        }

        private void LoadArtisans()
        {
            string connStr = ConfigurationManager.ConnectionStrings["DreamweaversDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT ArtisanName, ArtisanBio, ArtisanLocation, ProfileImage FROM Artisans";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    conn.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        rptArtisans.DataSource = reader;
                        rptArtisans.DataBind();
                    }
                }
            }
        }
    }
}