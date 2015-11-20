using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    public static Customer newCustomer = new Customer();


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["new_user"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        if (!this.IsPostBack)
        {

            if (Session["customer"] != null)
            {
                txtFirstName.Text = newCustomer.FirstName.ToString();
                txtLastName.Text = newCustomer.LastName.ToString();
                txtAddress.Text = newCustomer.Address.ToString();
                txtCity.Text = newCustomer.City.ToString();
                txtState.Text = newCustomer.State.ToString();
                txtZipcode.Text = newCustomer.Zip.ToString();
                txtEmail.Text = newCustomer.Email.ToString();
                txtPassword.Text = newCustomer.Password.ToString();
                txtPhone.Text = newCustomer.Phone.ToString();
            }
        }

    }
    
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        newCustomer.FirstName = txtFirstName.Text;
        newCustomer.LastName = txtLastName.Text;
        newCustomer.Address = txtAddress.Text;
        newCustomer.City = txtCity.Text;
        newCustomer.State = txtState.Text;
        newCustomer.Zip = txtZipcode.Text;
        newCustomer.Email = txtEmail.Text;
        newCustomer.Password = txtPassword.Text;
        newCustomer.Phone = txtPhone.Text;

        Session["customer"] = newCustomer;

        Response.Redirect("/cust_verification.aspx");
    }
       
}