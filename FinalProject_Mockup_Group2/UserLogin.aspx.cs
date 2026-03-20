using System;
using System.Configuration;
using System.Data.SqlClient;

namespace FinalProject_Mockup_Group2
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = username_input.Text.Trim();
            string password = pass_input.Text.Trim();
            //MUST CHANGE DB NAME WHEN PAGE IS READY! 
            string connStr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                string query = "SELECT Role FROM Users WHERE Username=@Username AND Password=@Password";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password);

                object result = cmd.ExecuteScalar();
                if (result != null)
                {
                    string role = result.ToString();
                    Session["Username"] = username;
                    Session["Role"] = role;

                    if (role == "Admin")
                    {
                        Response.Redirect("AdminDashboard.aspx"); //MUST CHANGE WHEN PAGE IS READY! 
                    }
                    else
                    {
                        Response.Redirect("DreamweaverDashboard.aspx"); //MUST CHANGE WHEN PAGE IS READY! 
                    }
                }
                else
                {
                    lblError.Text = "Invalid username or password";
                    lblError.Visible = true;
                }
            }
        }
    }
}
