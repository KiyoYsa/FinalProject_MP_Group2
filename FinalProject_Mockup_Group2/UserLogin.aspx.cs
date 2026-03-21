using System;
using System.Configuration;
using System.Data.SqlClient;

namespace FinalProject_Mockup_Group2
{
    public partial class UserLogin : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["DreamweaversDB"].ConnectionString;

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "SELECT UserID, ArtisanID, [Role], Username FROM Users WHERE Username=@u AND Password=@p";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@u", username_input.Text.Trim());
                cmd.Parameters.AddWithValue("@p", pass_input.Text.Trim());

                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["UserID"] = dr["UserID"];
                    Session["ArtisanID"] = dr["ArtisanID"];
                    Session["Role"] = dr["Role"];
                    Session["Username"] = dr["Username"];

                    if (dr["Role"].ToString() == "Admin")
                        Response.Redirect("Dashboard.aspx");
                    else
                        Response.Redirect("Dashboard.aspx");
                }
                else { lblError.Visible = true; lblError.Text = "Invalid login."; }
            }
        }
    }
}