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
using System.Net.Mail;
using System.Net;

namespace Chatty
{
    public partial class LoginPage : BasePage
    {
        SqlCommand komut = new SqlCommand();
        SqlDataReader dr;



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies.Count > 0
                    && Request.Cookies["SessionToken"] != null
                    && !string.IsNullOrEmpty(Request.Cookies["SessionToken"].Value))
                {
                    string token = Request.Cookies["SessionToken"].Value;
                    if (Guid.TryParse(token, out Guid gToken))
                    {
                        SqlCommand command = new SqlCommand("SELECT id,name,surname,username FROM users_info WHERE TokenId=@TokenId", baglanti);

                        command.Parameters.AddWithValue("@TokenId", gToken);
                        baglanti.Open();
                        SqlDataReader dr = command.ExecuteReader();

                        if (dr.Read())
                        {
                            ONLINEUSER.ID = int.Parse(dr["id"].ToString());
                            ONLINEUSER.Name = dr["name"].ToString();
                            ONLINEUSER.Surname = dr["surname"].ToString();
                            ONLINEUSER.Username = dr["username"].ToString();
                            Response.Redirect("HomePage.aspx");
                        }
                    }
                    baglanti.Close();
                }
            }
        }
        protected void BtnSign_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("SELECT id,name,surname,username, password FROM users_info WHERE username=@username AND password=@pass", baglanti);
            komut.Parameters.AddWithValue("@username", txtUsername.Text);
            komut.Parameters.AddWithValue("@pass", txtPassword.Text);

            baglanti.Open();
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                ONLINEUSER.ID = int.Parse(dr["id"].ToString());
                ONLINEUSER.Name = dr["name"].ToString();
                ONLINEUSER.Surname = dr["surname"].ToString();
                ONLINEUSER.Username = dr["username"].ToString();
                baglanti.Close();
                if (chcRememberMe.Checked)
                {

                    string GuidKey = Guid.NewGuid().ToString();
                    SqlCommand command = new SqlCommand("UPDATE users_info SET TokenId=@TokenId WHERE id=@id", baglanti);
                    command.Parameters.AddWithValue("@id", ONLINEUSER.ID);
                    command.Parameters.AddWithValue("@TokenId", GuidKey);
                    baglanti.Open();
                    command.ExecuteNonQuery();

                    HttpCookie cookie = new HttpCookie("SessionToken");

                    cookie.Value = GuidKey;
                    cookie.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(cookie);

                    baglanti.Close();
                    Response.Redirect("HomePage.aspx");
                }
                Response.Redirect("HomePage.aspx");
            }
            
            else
            {
                LabelAlertSign.Text = "Change a few things up and try submitting again.";
            }



        }




        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            
             if (txtRegisterPassword.Text == txtRegisterPassword.Text)
            {
                SqlCommand komut = new SqlCommand("INSERT INTO users_info (name,surname,username,email,password) VALUES(@0, @1, @2, @3, @4); SELECT SCOPE_IDENTITY()", baglanti);
                komut.Parameters.AddWithValue("@0", txtName.Text);
                komut.Parameters.AddWithValue("@1", txtSurname.Text);
                komut.Parameters.AddWithValue("@2", txtRegisterUsername.Text);
                komut.Parameters.AddWithValue("@3", txtMail.Text);
                komut.Parameters.AddWithValue("@4", txtRegisterPassword.Text);


                baglanti.Open();
                komut.ExecuteNonQuery();

                baglanti.Close();


                Response.Redirect("LoginPage.aspx");

            }
             


        }

        protected void LinkLoginHere_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
        protected void BtnSendMail_Click(object sender, EventArgs e)
        {
            string mail;
            SqlCommand komut = new SqlCommand("SELECT email FROM users_info WHERE email=@email", baglanti);
            komut.Parameters.AddWithValue("@email", txtMailRecover.Text);
            baglanti.Open();
            object tmpemail = null;
            tmpemail = komut.ExecuteScalar();
            if (tmpemail == null || tmpemail == DBNull.Value) //DBnull -> mail kayıtlı değil
            {
                LabelWrongAlertMail.Text = "This e-mail is not registered.";
            }
            else
            {
                string email = tmpemail.ToString();
                string code = Guid.NewGuid().ToString();
                SqlCommand updatecmd = new SqlCommand("UPDATE users_info SET PasswordResetCode=@PasswordResetCode WHERE email=@email", baglanti);
                updatecmd.Parameters.AddWithValue("@email",txtMailRecover.Text);
                updatecmd.Parameters.AddWithValue("@PasswordResetCode", code);
                updatecmd.ExecuteNonQuery();
                baglanti.Close();
                Send_Mail(email, code);
                LabelCorrectAlertMail.Text = "The E-mail sent";
                
            }
        }
        public void Send_Mail(string email, string code)
        {

            MailMessage mail = new MailMessage();
            mail.IsBodyHtml = true;
            mail.To.Add(email);


            mail.From = new MailAddress("pm@runhr.com", "Chatty", System.Text.Encoding.UTF8);
            mail.Subject = "Şifre Sıfırlama Maili";

            string html = "http://localhost:52140/ResetPass.aspx?Code=" + code;
            mail.Body = html;


            SmtpClient smp = new SmtpClient();


            smp.Credentials = new NetworkCredential("pm@runhr.com", "g4ncFh9C");
            smp.Port = 587;
            smp.Host = "smtp.yandex.com";
            smp.EnableSsl = true;
            smp.Send(mail);

        }







    }
}
