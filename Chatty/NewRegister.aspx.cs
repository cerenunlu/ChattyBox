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

namespace Chatty
{
    public partial class NewRegister : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.AppSettings["DBCHAT"]);
        SqlCommand komut = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
       protected void btnregister_Click(object sender, EventArgs e)
        {
            if (txtpassword.Text == txtpassword2.Text)
            {
                SqlCommand komut = new SqlCommand("INSERT INTO users_info (name,surname,username,email,password) VALUES(@0, @1, @2, @3, @4); SELECT SCOPE_IDENTITY()", baglanti);
                komut.Parameters.AddWithValue("@0", txtname.Text);
                komut.Parameters.AddWithValue("@1", txtsurname.Text);
                komut.Parameters.AddWithValue("@2", txtusername.Text);
                komut.Parameters.AddWithValue("@3", txtmail.Text);
                komut.Parameters.AddWithValue("@4", txtpassword.Text);
               

                baglanti.Open();
                komut.ExecuteNonQuery();

                baglanti.Close();
               
                
                Response.Redirect("LoginPage.aspx");

            }
            
           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}