using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Chatty.models
{
    public class Messages
    {
        public string Id { get; set; }
        public string Message { get; set; }

        public string UserId { get; set; }
        public string RoomId { get; set; }

    }
}