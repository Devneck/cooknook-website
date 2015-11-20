using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String connectionString = "Server=134.39.173.35;Database=glover_w14;User ID=glover_w14;Password=snowbal1";
        SqlConnection conn = new SqlConnection(connectionString);
        //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Server=134.39.173.35;Database=glover_w14;User ID=glover_w14;Password=snowbal1"].ConnectionString);
        conn.Open();
        string checkuser = "Select count(*) from customer where email='" + txtUsername.Text + "'";// and password='" + txtPassword.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "Select password from customer where email='" + txtUsername.Text + "'";
            SqlCommand passCom = new SqlCommand(checkPasswordQuery, conn);
            string password = passCom.ExecuteScalar().ToString();

            if (password == txtPassword.Text)
            {
                Session["loggedIn"] = 1;
                Response.Redirect("chat.aspx");
            }
            else
            {
                Response.Write("Username or Password are not correct");
            }
        }
        else
        {
            Response.Write("Username or Password are not correct");
        }

    }
}