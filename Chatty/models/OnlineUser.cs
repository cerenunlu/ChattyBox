using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;
using Chatty.models;

namespace Chatty.models
{


    public class OnlineUser
    {


        public int ID { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Username { get; set; }

        public string Email { get; set; }

        public string Age { get; set; }
        public string TokenID { get; set; }



    }
}