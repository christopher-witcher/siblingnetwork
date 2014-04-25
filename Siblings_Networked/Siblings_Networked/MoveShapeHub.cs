using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.SignalR.Hubs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Siblings_Networked
{
    [HubName("moveShape")]
    public class MoveShapeHub : Hub
    {
        
        public void MoveShape(int x, int y)
        {
            Clients.Others.shapeMoved(x, y);
        }
    }
}