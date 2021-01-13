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

namespace Chatty.models
{
    public class BasePage : System.Web.UI.Page
    {
        public SqlConnection baglanti = new SqlConnection(ConfigurationManager.AppSettings["DBCHAT"]);
        #region Variables
        public OnlineUser ONLINEUSER
        {
            get
            {
                if (Session["ONLINEUSER"] == null)
                {
                    Session["ONLINEUSER"] = new OnlineUser();
                }
                return Session["ONLINEUSER"] as OnlineUser;
            }
            set
            {
                Session["ONLINEUSER"] = value;
            }

        }

        public List<Rooms> ROOMS
        {
            get
            {
                if (Application["#ROOMS#"] == null)
                {

                    #region FillCache
                    SqlCommand cmd = new SqlCommand("select * from rooms", baglanti);
                    baglanti.Open();
                    SqlDataReader roomReader = cmd.ExecuteReader();
                    List<Rooms> rooms = new List<Rooms>();
                    while (roomReader.Read())
                    {
                        Rooms item = new Rooms()
                        {
                            ID = byte.Parse(roomReader["id"].ToString()),
                            Name = roomReader["name"].ToString()
                        };
                        rooms.Add(item);
                    }
                    baglanti.Close();

                    Application["#ROOMS#"] = rooms;
                    #endregion
                }
                return Application["#ROOMS#"] as List<Rooms>;
                
            }
        }
        #endregion
       
        


    }
}