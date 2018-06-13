<%@ Page Title="Giới thiệu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="OnlineShopping.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Categories"><%: Title %></a></li>
        </ol>
    </nav>
</asp:Content>
