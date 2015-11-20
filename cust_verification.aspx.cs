using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class cust_verification : System.Web.UI.Page
{
    public static Customer newCustomer = new Customer();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["new_user"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        newCustomer = (Customer)Session["customer"];

        lblFirstName.Text = newCustomer.FirstName.ToString();
        lblLastName.Text = newCustomer.LastName.ToString();
        lblAddress.Text = newCustomer.Address.ToString();
        lblCity.Text = newCustomer.City.ToString();
        lblState.Text = newCustomer.State.ToString();
        lblZipcode.Text = newCustomer.Zip.ToString();
        lblEmail.Text = newCustomer.Email.ToString();
        /*lblPassword.Text = newCustomer.Password.ToString();*/
        lblPhone.Text = newCustomer.Phone.ToString();

    }
    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        String connectionString = "Server=134.39.173.35;Database=glover_w14;User ID=glover_w14;Password=snowbal1";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand comm = new SqlCommand("INSERT INTO dbo.customer" +
            "(last_name, first_name, address, city, state, zip, customerDate, email, password, phone)" +
            "VALUES (@LastName, @FirstName, @Address, @City, @State, @Zipcode, @Date, @Email, @Password, @Phone)", conn);

        comm.Parameters.Add("@LastName", SqlDbType.Text);
        comm.Parameters["@LastName"].Value = lblLastName.Text;

        comm.Parameters.Add("@FirstName", SqlDbType.Text);
        comm.Parameters["@FirstName"].Value = lblFirstName.Text;

        comm.Parameters.Add("@Address", SqlDbType.Text);
        comm.Parameters["@Address"].Value = lblAddress.Text;

        comm.Parameters.Add("@City", SqlDbType.Text);
        comm.Parameters["@City"].Value = lblCity.Text;

        comm.Parameters.Add("@State", SqlDbType.Text);
        comm.Parameters["@State"].Value = lblState.Text;

        comm.Parameters.Add("@Zipcode", SqlDbType.Text);
        comm.Parameters["@Zipcode"].Value = lblZipcode.Text;

        comm.Parameters.Add("@Date", SqlDbType.Date);
        comm.Parameters["@Date"].Value = DateTime.Today;

        comm.Parameters.Add("@Email", SqlDbType.Text);
        comm.Parameters["@Email"].Value = lblEmail.Text;

        comm.Parameters.Add("@Password", SqlDbType.Text);
        comm.Parameters["@Password"].Value = newCustomer.Password.ToString();

        comm.Parameters.Add("@Phone", SqlDbType.Text);
        comm.Parameters["@Phone"].Value = lblPhone.Text;
        try
        {
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Default.aspx");
        }
        catch (SqlException ex)
        {
            lblError.Text = ex.Message;
        }
    }
    protected void btnCorrect_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}