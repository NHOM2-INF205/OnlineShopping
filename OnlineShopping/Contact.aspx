<%@ Page Title="Liên hệ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OnlineShopping.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Contact"><%: Title %></a></li>
        </ol>
    </nav>
    <address>
        <strong>Kỹ thuật:</strong>   <a href="mailto:manhndph05481@fpt.edu.vn">manhndph05481@fpt.edu.vn</a><br />
        <strong>Kinh doanh:</strong> <a href="mailto:linhpvph05279@fpt.edu.vn">linhpvph05279@fpt.edu.vn</a>
    </address>
    <hr />
    <h3>Địa chỉ</h3>
    <p>381, Thụy Khuê, Quận Tây Hồ, Thành Phố Hà Nội, Bưởi, Tây Hồ, Hà Nội</p>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1611.4702093275805!2d105.81158686818547!3d21.047368483439364!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab19f6683d31%3A0x4dc3531957b70769!2zQ-G7rWEgSMOgbmcgUXVlZW4gRnJ1aXRz!5e0!3m2!1svi!2s!4v1528981509588" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</asp:Content>
