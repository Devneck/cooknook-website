using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

public partial class products : System.Web.UI.Page
{
    static List<string> listPartNo = new List<string>();
    static List<string> listDesc = new List<string>();
    static List<double> listPrice = new List<double>();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["new_user"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (Session["loggedIn"] == null)
        {
            Label2.Visible = true;
        }
        else
        {
            Label2.Visible = false;
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Session["loggedIn"] == null)
        {
            Label2.Text = "You must be logged in to add items to the shopping cart!";
        }
        else
        {
                                   
            //cart.InnerHtml = "Part no = " + GridView1.SelectedRow.Cells[1].Text;        
            GridViewRow cartRow = GridView1.SelectedRow;
            string strPartNo = cartRow.Cells[1].Text;
            string strDesc = cartRow.Cells[3].Text;
            string strPrice = cartRow.Cells[4].Text;

            double dblPrice = double.Parse(strPrice.Substring(1));

            //TextBox Selection = (TextBox)cartRow.Cells[5].FindControl("quantity");
            TextBox Selection = (TextBox)cartRow.FindControl("quantity");

            string qtySelected = Selection.Text;

            int qty = int.Parse(qtySelected);

            for (int i = 0; i < qty; i++)
            {
                listPartNo.Add(strPartNo);
                listDesc.Add(strDesc);
                listPrice.Add(dblPrice);
            } 
            string strHTML = "<table id='cart'><th class='product_id'>Product ID</th><th id='description'>Description</th><th id='price'>Price</th></tr>";
            double dblTotalPrice = 0;
            for (int i = 0; i <= listPartNo.Count - 1; i++)
            {
                strHTML = strHTML + "<tr>"
                  + "<td class='product_id'>" + listPartNo[i] + "</td>"
                  + "<td>" + listDesc[i] + "</td>"
                  + "<td class='price'>" + listPrice[i].ToString() + "</td></tr>";
                dblTotalPrice = dblTotalPrice + listPrice[i];
            }

            cart.InnerHtml = strHTML + "</table><br /><h2>Total Due: " + dblTotalPrice.ToString("c2") + "</h2>"; 
        }
    }
}