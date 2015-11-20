using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    //private string strcon = "Server=134.39.173.35;Database=glover_w14;User ID=glover_w14;Password=snowbal1";

    //String connectionString = "Server=134.39.173.35;Database=glover_w14;User ID=glover_w14;Password=snowbal1";
    //SqlConnection conn = new SqlConnection(connectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["new_user"] = "1";
    }

    /*private bool UserLogin(string un, string pw)
    {
        SqlConnection conn = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand("Select email from customer where email=@un and password=@pw", conn);

        cmd.Parameters.AddWithValue("@un", un);
        cmd.Parameters.AddWithValue("@pw", pw);

        conn.Open();
        string result = Convert.ToString(cmd.ExecuteScalarAsync());
        if (String.IsNullOrEmpty(result)) return false; return true;
        //conn.Close();
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        

        

        bool result = UserLogin(un, pw);
        if (result)
        {
            e.Authenticated = true;
            Session["username"] = un;
        }
        else e.Authenticated = false;
         * 
    }*/
}