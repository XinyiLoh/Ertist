﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderSuccess.aspx.cs" Inherits="Ertist.OrderSuccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p style="height: 244px">Ordered Succesfully. </p>
    <a href="./Homepage.aspx">Back to Home</a>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT[User].UserID, [User].email, [User].username, [User].picture, Cart.userID AS UserID2, Cart.artworkID, Artwork.artworkID AS ArtworkID2, Artwork.price, Artwork.name, Artwork.picture AS picture2, Artwork.description FROM[User] INNER JOIN Cart ON[User].UserID = Cart.userID INNER JOIN Artwork ON Cart.artworkID = Artwork.artworkID WHERE([User].UserID = @UserID)">
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <%# Session["artworkId"] = Convert.ToInt32(Eval("ArtworkID2")) %>
<%--           <%#  Ertist.OrderSuccess.UpdateArtwork(Convert.ToInt32(Session["artworkId"])); %>--%>
        </ItemTemplate>
    </asp:Repeater>

    <script>
        
    </script>



</asp:Content>