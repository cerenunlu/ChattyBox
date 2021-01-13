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
    public partial class sendmail : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.AppSettings["DBCHAT"]);
        SqlCommand komut = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


            }
        }
        protected void BtnSendMail_Click(object sender, EventArgs e)
        {
            string mail;
            SqlCommand komut = new SqlCommand("SELECT email FROM users_info WHERE email=@email", baglanti);
            komut.Parameters.AddWithValue("@email", txtmail.Text);
            baglanti.Open();
            object tmpemail = null;
            tmpemail = komut.ExecuteScalar();
            if (tmpemail == null || tmpemail == DBNull.Value) //DBnull -> mail kayıtlı değil
            {

               
                LblAlert2.Text = "This e-mail is not registered.";
            }
            else
            {
                string email = tmpemail.ToString();
                string code = Guid.NewGuid().ToString();
                SqlCommand updatecmd = new SqlCommand("UPDATE users_info SET PasswordResetCode=@PasswordResetCode WHERE email=@email", baglanti);
                updatecmd.Parameters.AddWithValue("@email", txtmail.Text);
                updatecmd.Parameters.AddWithValue("@PasswordResetCode", code);
                updatecmd.ExecuteNonQuery();
                baglanti.Close();
                Send_Mail(email, code);
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