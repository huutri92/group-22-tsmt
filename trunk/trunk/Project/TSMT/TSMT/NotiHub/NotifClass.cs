using System;
using System.Web;
using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.SignalR.Hubs;

namespace TSMT.NotiHub
{
    public static class UserHandler // class static de chua bien Counter (luon luon ton tai trong suot thoi gian song cua website)
    {
        public static string Counter;
    }
    [HubName("NotiHub")]
    public class NotifyHub : Hub
    {
        public void Send(string name, string message)
        {
            // Call the addNewMessageToPage method to update clients.
            Clients.All.addNewMessageToPage(name, message);
        }

        public void Receive(string name, string message)
        {
            Clients.All.receiveMessage(name, message);
        }
    }
}