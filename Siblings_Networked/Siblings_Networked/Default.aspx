<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Siblings_Networked._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div id="shape"></div>
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script src="Scripts/jquery.signalR-2.0.3.js"></script>
    <script src="Scripts/jquery-ui-1.10.4.js"></script>
    <script src="/signalr/hubs"></script>
    <script>
        $(function () {
            var hub = $.connection.moveShape,
                $shape = $("#shape");

            hub.client.shapeMoved = function (x, y) {
                $shape.css({ left: x, top: y });
            };

            $.connection.hub.start().done(function () {
                $shape.draggable({
                    drag: function () {
                        hub.server.moveShape(this.offsetLeft, this.offsetTop | 0);

                    }
                     
                    
                });
            });
        });
    </script>
</asp:Content>
