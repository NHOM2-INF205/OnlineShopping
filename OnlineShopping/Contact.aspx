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
    <p>
        Số 23 Thành Thái, phương Dịch Vọng, Cầu Giấy, Hà Nội
    </p>
    <iframe src="https://www.google.com/maps/d/u/0/embed?mid=1ADrPaWg8D4RoU7chP41v0kx2Z_-b4kGR" width="640" height="480"></iframe>
</asp:Content>
