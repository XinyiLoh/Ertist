﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddGallery.aspx.cs" Inherits="Ertist.AddGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/GalleryCRUD.css" rel="stylesheet" />
    <link href="css/button.css" rel="stylesheet" />

    <style>        
        .auto-style3 {
            width: 140px;
            height: 22px;
        }
        .auto-style4 {
            height: 22px;
        }
    </style>

    <div style="font-size:14px; padding:2%; margin-left:32%;" class="container" >
            <div class="title-container">
                <h3>Add Gallery</h3><br />
            </div>
            <table class="gal-table">
                <tr>
                    <td class="gal-lbl auto-style3">Gallery Name&nbsp;</td>
                    <td style="width: 36px">&nbsp;</td>
                    <td class="auto-style4"><asp:TextBox ID="txtGalName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td style="width: 36px">&nbsp;</td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style3 gal-lbl" style="width: 140px">Cover Photo&nbsp;</td>
                    <td style="width: 36px">&nbsp;</td>
                    <td><asp:FileUpload ID="imgUpload" runat="server" CssClass="auto-style2"/></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 140px">&nbsp;</td>
                    <%--<td>
                        <asp:Label ID="lblErr" runat="server" Text="" CssClass="gal-err-lbl"></asp:Label>
                    </td>--%>
                </tr>
                    
        </table>

           <div class="gal-con-btn-container">
            <asp:Button ID="btnAddGal" class="art-pg-btn gal-btn gal-con-btn" runat="server" 
                Text="Add Gallery" OnClick="btnAddGal_Click" />
            <asp:Button ID="btnCancel" class="art-pg-btn gal-btn gal-con-btn" runat="server" 
                Text="Cancel" OnClick="btnCancel_Click" />
           </div>
            <br />
            <br />
    </div>
</asp:Content>
