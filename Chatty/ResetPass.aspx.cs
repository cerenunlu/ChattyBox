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
    public partial class ResetPass : BasePage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(ConfigurationManager.AppSettings["DBCHAT"]);
            SqlCommand komut = new SqlCommand();
            SqlDataReader dr;

            if (!IsPostBack)
            {
                if (string.IsNullOrEmpty(Request.QueryString["Code"]))
                {
                    Response.Redirect("/LoginPage.aspx");
                }
                else
                {
                    string id;
                    string GelenCode = Request.QueryString["Code"];
                    SqlCommand command = new SqlCommand("SELECT id FROM users_info WHERE PasswordResetCode=@PasswordResetCode", baglanti);
                    command.Parameters.AddWithValue("@PasswordResetCode", GelenCode);
                    baglanti.Open();
                    object tmpid = null;
                    tmpid = command.ExecuteScalar();
                    if (tmpid == null || tmpid == DBNull.Value)
                    {
                        Response.Redirect("/LoginPage.aspx");
                    }
                    baglanti.Close();

                }
            }



        }
        protected void BtnConfirm_Click(object sender, EventArgs e)
        {
            if (txtpassword.Text == txtconfpassword.Text)
            {
                string GelenCode = Request.QueryString["Code"];
                SqlCommand command = new SqlCommand("SELECT id FROM users_info WHERE PasswordResetCode=@PasswordResetCode", baglanti);
                command.Parameters.AddWithValue("@PasswordResetCode", GelenCode);
                baglanti.Open();
                object tmpid = null;
                tmpid = command.ExecuteScalar();
                if (tmpid != null & tmpid != DBNull.Value)
                {
                    SqlCommand command2 = new SqlCommand("UPDATE users_info SET password=@password FROM users_info WHERE id=@id", baglanti);
                    command2.Parameters.AddWithValue("@id",tmpid);
                    command2.Parameters.AddWithValue("@password", txtconfpassword.Text);
                    command2.ExecuteNonQuery();
                    baglanti.Close();
                    Session["userid"] = tmpid;
                    Response.Redirect("/Homepage.aspx");
                }
            }
            else
            {
                LblAlert1.Text = "Warning!";
                LblAlert2.Text = "Try Again";
            }
        }

    }
}