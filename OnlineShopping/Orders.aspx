<%@ Page Title="Đơn Hàng" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="OnlineShopping.Orders" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Orders">Đơn hàng</a></li>
        </ol>
    </nav>
    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="Mã Đơn Hàng" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="TenNguoiMua" HeaderText="Tên Người Mua" SortExpression="TenNguoiMua" />
            <asp:BoundField DataField="DienThoaiLienHe" HeaderText="Điện Thoại" SortExpression="DienThoaiLienHe" />
            <asp:BoundField DataField="DiaChiGiaoHang" HeaderText="Địa chỉ giao hàng" SortExpression="DiaChiGiaoHang" />
            <asp:BoundField DataField="NgayDatHang" HeaderText="Thời Gian Đặt Hàng" SortExpression="NgayDatHang" />
            <asp:BoundField DataField="TrangThai" HeaderText="Trạng Thái" SortExpression="TrangThai" />
        </Columns>
    </asp:GridView>
    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="DonHang_ID" HeaderText="Mã Đơn Hàng" SortExpression="DonHang_ID" />
            <asp:BoundField DataField="SanPham_ID" HeaderText="Mã Sản Phẩm" SortExpression="SanPham_ID" />
            <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" SortExpression="TenSP" />
            <asp:BoundField DataField="DonGia" HeaderText="Đơn Giá" SortExpression="DonGia" />
            <asp:BoundField DataField="DonViTinh" HeaderText="Đơn Vị Tính" SortExpression="DonViTinh" />
            <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" SortExpression="SoLuong" />
            <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" SortExpression="ThanhTien" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>" SelectCommand="SELECT ChiTietDonHang.DonHang_ID, ChiTietDonHang.SanPham_ID, SanPham.TenSP, SanPham.DonGia, SanPham.DonViTinh, ChiTietDonHang.SoLuong, ChiTietDonHang.ThanhTien FROM ChiTietDonHang INNER JOIN SanPham ON ChiTietDonHang.SanPham_ID = SanPham.ID"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>" SelectCommand="SELECT DISTINCT DonHang.ID, DonHang.TenNguoiMua, DonHang.DienThoaiLienHe, DonHang.DiaChiGiaoHang, DonHang.NgayDatHang, TrangThaiDonHang.TrangThai FROM ChiTietDonHang INNER JOIN DonHang ON ChiTietDonHang.DonHang_ID = DonHang.ID INNER JOIN TrangThaiDonHang ON DonHang.TrangThaiDonHang_ID = TrangThaiDonHang.ID"></asp:SqlDataSource>
</asp:Content>
