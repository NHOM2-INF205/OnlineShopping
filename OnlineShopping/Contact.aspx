<%@ Page Title="Liên hệ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OnlineShopping.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Contact"><%: Title %></a></li>
        </ol>
    </nav>
    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1565.7189452933785!2d105.76401717213719!3d21.03555792391877!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b991d80fd5%3A0x53cefc99d6b0bf6f!2zVHLGsOG7nW5nIENhbyDEkeG6s25nIHRo4buxYyBow6BuaCBGUFQgUG9seXRlY2huaWMgSMOgIE7hu5lp!5e0!3m2!1svi!2s!4v1528874156951" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</asp:Content>
