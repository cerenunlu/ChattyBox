using System;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;
using Chatty.models;
using System.Collections.Generic;

namespace Chatty
{
    public partial class Homepage : BasePage
    {
        SqlCommand komut = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblWelcome.Text = "Welcome " + ONLINEUSER.Username;
            Liste();
            lblWelcome2.Text= "Welcome " + ONLINEUSER.Username;


        }
        protected void Liste()
        {
           RptButtons.DataSource = ROOMS;
            RptButtons.DataBind();
            baglanti.Close();
        }



        protected void RptButtons_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

        }

        protected void btnOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Cookies["SessionToken"].Expires = DateTime.Now.AddDays(-30);
            Request.Cookies["SessionToken"].Values.Clear();
            Response.Redirect("LoginPage.aspx");

        }


    }
}
