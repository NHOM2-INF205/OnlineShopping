<%@ Page Title="Giới thiệu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="OnlineShopping.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Categories"><%: Title %></a></li>
        </ol>
    </nav>
    <h3>Về chúng tôi</h3>
    <p>Sinh viên khóa 13.1 trường Cao đẳng thực hành FPT Polytechnic</p>
    <p>Môn học: Điện toán đám mâyyyyyyy/p>
    <p>Nhóm 2</p>
</asp:Content>
