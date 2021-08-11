﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="PurchaseHistory.aspx.cs" Inherits="Ertist.PurchaseHistory1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/PurchaseHistory.css" rel="stylesheet" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <div class="cart-wrap">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-heading mb-10">Purchase History</div>
                    <div class="table-wishlist">
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                            <thead>
                                <tr>
                                    <%--<th width="10%"></th>--%>
                                    <th width="15%">Order ID</th>
                                    <th width="45%"></th>
                                    <%--<th width="15%">Name</th>--%>
                                    <th width="15%">Date</th>
                                    <th width="15%">Total Price</th>
                                    <th width="15%"></th>
                                    <%--<%# Eval("orderID") %>--%>
                                </tr>
                            </thead>
                            <asp:Repeater ID="rptPurchase" runat="server" DataSourceID="SqlPurchase">
                                <ItemTemplate>
                                    <tbody>
                                        <tr>
                                            <td width="15%" class="price">
                                                <asp:Label ID="lblID" runat="server"><%# Eval("orderID") %></asp:Label></td>
                                            <td width="45%">
                                                <div class="display-flex align-center">
                                                    <div class="img-product">
                                                        <img src="<%# GetImage(Eval("picture")) %>">
                                                    </div>
                                                    <div class="name-product">
                                                        <asp:Label ID="lblName" runat="server"><%# Eval("name") %></asp:Label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td width="15%" class="price">
                                                <asp:Label ID="lblDate" runat="server"><%# Eval("date") %></asp:Label></td>
                                            <td width="15%" class="price">
                                                <asp:Label ID="lblTotalPrice" runat="server">$ <%# Eval("totalPrice") %></asp:Label></td>
                                        </tr>
                                    </tbody>
                                </ItemTemplate>
                            </asp:Repeater>
                        </table>
                    </div>
                </div>
                <asp:SqlDataSource ID="SqlPurchase" runat="server" ConnectionString="<%$ ConnectionStrings:ertistDB %>" SelectCommand="SELECT Artwork.name, [Order].date, [Order].orderID, [Order].totalPrice, Artwork.picture FROM Artwork INNER JOIN Order_Artwork ON Artwork.artworkID = Order_Artwork.artworkID INNER JOIN [Order] ON Order_Artwork.orderID = [Order].orderID INNER JOIN [User] ON [Order].userID = [User].UserID WHERE [User].UserID = @userID">
                    <SelectParameters>
                        <asp:SessionParameter SessionField="UserID" Name="userID"></asp:SessionParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </div>
        </div>
    </div>

</asp:Content>
