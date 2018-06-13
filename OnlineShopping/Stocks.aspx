<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Stocks.aspx.cs" Inherits="OnlineShopping.Stocks" %>
<asp:Content  ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Products">Kho Hàng</a></li>
        </ol>
    </nav>
    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="TenKho" HeaderText="Tên Kho" SortExpression="TenKho" />
            <asp:BoundField DataField="SanPham_ID" HeaderText="Mã sản phẩm" SortExpression="SanPham_ID" />
            <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" SortExpression="TenSP" />
            <asp:BoundField DataField="TonKho" HeaderText="Tồn kho" SortExpression="TonKho" />
            <asp:BoundField DataField="ThoiGianNhap" HeaderText="Thời gian nhập" SortExpression="ThoiGianNhap" />
            <asp:BoundField DataField="MaSKU" HeaderText="Mã SKU" SortExpression="MaSKU" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>" SelectCommand="SELECT Kho.TenKho, LoSanPham.SanPham_ID, SanPham.TenSP, LoSanPham.TonKho, LoSanPham.ThoiGianNhap, ChiTietLoSanPham.MaSKU FROM Kho INNER JOIN LoSanPham ON Kho.ID = LoSanPham.Kho_ID INNER JOIN SanPham ON LoSanPham.SanPham_ID = SanPham.ID INNER JOIN ChiTietLoSanPham ON LoSanPham.ID = ChiTietLoSanPham.LoSanPham_ID"></asp:SqlDataSource>
</asp:Content>
