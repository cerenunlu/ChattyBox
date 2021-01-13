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
    public partial class Room : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListeRooms();

            if (!IsPostBack)
            {
                string GelenID = Request.QueryString["ID"];
                //LabelHeader.Text = GelenID;
                lblWelcome.Text = ONLINEUSER.Username;
                if (!string.IsNullOrEmpty(ONLINEUSER.Username))
                {
                    

                    if (!string.IsNullOrEmpty(Request.QueryString["ID"]))
                    {
                        Liste();
                    }
                    else

                    {
                        Response.Redirect("/HomePage.aspx");
                    }
                }
                else
                {
                    Response.Redirect("/LoginPage.aspx");
                }
               
            }


        }
        protected void RptButtons_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

        }
        protected void Liste()
        {

            string GelenID = Request.QueryString["ID"];
            SqlCommand command = new SqlCommand("SELECT message,Messages.UserId, users_info.username FROM Messages INNER JOIN users_info ON Messages.UserId=users_info.id WHERE RoomId=@RoomId", baglanti);
            command.Parameters.AddWithValue("@RoomId", GelenID);
            baglanti.Open();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            DataSet DataMessages = new DataSet();
            dataAdapter.Fill(DataMessages);
            RptChat.DataSource = DataMessages;
            RptChat.DataBind();
           
            baglanti.Close();

         }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            string GelenID = Request.QueryString["ID"];
            SqlCommand command2 = new SqlCommand("INSERT INTO Messages (Message,UserId,RoomId) VALUES (@msg,@UserId,@roomId)", baglanti);
            command2.Parameters.AddWithValue("@msg", TxtChat.Text);
            command2.Parameters.AddWithValue("@UserId", ONLINEUSER.ID);
            command2.Parameters.AddWithValue("@RoomId", GelenID);
            baglanti.Open();
            command2.ExecuteNonQuery();
            baglanti.Close();
            
            Liste();
           
        }
        protected void btnOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Cookies["SessionToken"].Expires = DateTime.Now.AddDays(-30);
            Request.Cookies["SessionToken"].Values.Clear();
            Response.Redirect("LoginPage.aspx");

        }
        protected void ListeRooms()
        {
            RptButtons.DataSource = ROOMS;
            RptButtons.DataBind();
            baglanti.Close();
        }
    }
}