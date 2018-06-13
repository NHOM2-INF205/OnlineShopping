<%@ Page Title="Đơn Hàng" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="OnlineShopping.Orders" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--Đơn hàng--%>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Orders"><%:Title %></a></li>
        </ol>
    </nav>
    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="Mã Đơn Hàng" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="TenNguoiMua" HeaderText="Tên Người Mua" SortExpression="TenNguoiMua" />
            <asp:BoundField DataField="DienThoaiLienHe" HeaderText="Điện Thoại" SortExpression="DienThoaiLienHe" />
            <asp:BoundField DataField="DiaChiGiaoHang" HeaderText="Địa chỉ giao hàng" SortExpression="DiaChiGiaoHang" />
            <asp:BoundField DataField="NgayDatHang" HeaderText="Thời Gian Đặt Hàng" SortExpression="NgayDatHang" ReadOnly="True" />
            <asp:BoundField DataField="TrangThaiDonHang_ID" HeaderText="Mã Trạng Thái" SortExpression="TrangThaiDonHang_ID" />
            <asp:CommandField ShowEditButton="True"  HeaderText="Sửa" CancelText="Hủy Bỏ" EditText="Sửa" UpdateText="Cập nhật"/>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>"
        SelectCommand="SELECT 
                            DISTINCT DonHang.ID, 
                            DonHang.TenNguoiMua, 
                            DonHang.DienThoaiLienHe, 
                            DonHang.DiaChiGiaoHang, 
                            DonHang.NgayDatHang,
                            DonHang.TrangThaiDonHang_ID,
                            TrangThaiDonHang.TrangThai 
                       FROM 
                            ChiTietDonHang INNER JOIN DonHang ON ChiTietDonHang.DonHang_ID = DonHang.ID 
                                           INNER JOIN TrangThaiDonHang ON DonHang.TrangThaiDonHang_ID = TrangThaiDonHang.ID"
        UpdateCommand="UPDATE DonHang 
                       SET TenNguoiMua = @TenNguoiMua, DienThoaiLienHe = @DienThoaiLienHe, DiaChiGiaoHang = @DiaChiGiaoHang, 
                           NguoiXacNhan = @NguoiXacNhan, TrangThaiDonHang_ID = @TrangThaiDonHang_ID 
                       WHERE (ID = @ID)">
        <UpdateParameters>
            <asp:Parameter Name="TenNguoiMua" />
            <asp:Parameter Name="DienThoaiLienHe" />
            <asp:Parameter Name="DiaChiGiaoHang" />
            <asp:Parameter Name="NguoiXacNhan" />
            <asp:Parameter Name="TrangThaiDonHang_ID" />
            <asp:Parameter Name="ID" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <%--Trạng thái đơn hàng--%>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Orders"><%:Title %></a></li>
            <li class="breadcrumb-item"><a runat="server" href="~/Orders">Trạng thái đơn hàng</a></li>
        </ol>
    </nav>
    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="Mã trạng thái" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="TrangThai" HeaderText="Tên trạng thái" SortExpression="TrangThai" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>"
        DeleteCommand="DELETE FROM [TrangThaiDonHang] WHERE [ID] = @ID"
        InsertCommand="INSERT INTO [TrangThaiDonHang] ([TrangThai]) VALUES (@TrangThai)"
        SelectCommand="SELECT [ID], [TrangThai] FROM [TrangThaiDonHang] ORDER BY [ID]"
        UpdateCommand="UPDATE [TrangThaiDonHang] SET [TrangThai] = @TrangThai WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TrangThai" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TrangThai" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Orders"><%:Title %></a></li>
            <li class="breadcrumb-item"><a runat="server" href="~/Orders">Chi tiết Đơn Hàng</a></li>
        </ol>
    </nav>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            DonHang_ID:
            <asp:TextBox ID="DonHang_IDTextBox" runat="server" Text='<%# Bind("DonHang_ID") %>' />
            <br />
            SanPham_ID:
            <asp:TextBox ID="SanPham_IDTextBox" runat="server" Text='<%# Bind("SanPham_ID") %>' />
            <br />
            TenSP:
            <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            DonGia:
            <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
            <br />
            DonViTinh:
            <asp:TextBox ID="DonViTinhTextBox" runat="server" Text='<%# Bind("DonViTinh") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            ThanhTien:
            <asp:TextBox ID="ThanhTienTextBox" runat="server" Text='<%# Bind("ThanhTien") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            DonHang_ID:
            <asp:TextBox ID="DonHang_IDTextBox" runat="server" Text='<%# Bind("DonHang_ID") %>' />
            <br />
            SanPham_ID:
            <asp:TextBox ID="SanPham_IDTextBox" runat="server" Text='<%# Bind("SanPham_ID") %>' />
            <br />
            TenSP:
            <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            DonGia:
            <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
            <br />
            DonViTinh:
            <asp:TextBox ID="DonViTinhTextBox" runat="server" Text='<%# Bind("DonViTinh") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            ThanhTien:
            <asp:TextBox ID="ThanhTienTextBox" runat="server" Text='<%# Bind("ThanhTien") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Thêm mới" />
        </ItemTemplate>
    </asp:FormView>
    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="Mã Chi Tiết Đơn Hàng" SortExpression="ID" ReadOnly="True" />
            <asp:BoundField DataField="DonHang_ID" HeaderText="Mã Đơn Hàng" SortExpression="DonHang_ID" ReadOnly="True" />
            <asp:BoundField DataField="SanPham_ID" HeaderText="Mã Sản Phẩm" SortExpression="SanPham_ID" />
            <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" SortExpression="TenSP" ReadOnly="True" />
            <asp:BoundField DataField="DonGia" HeaderText="Đơn Giá" SortExpression="DonGia" ReadOnly="True" />
            <asp:BoundField DataField="DonViTinh" HeaderText="Đơn Vị Tính" SortExpression="DonViTinh" ReadOnly="True" />
            <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" SortExpression="SoLuong" />
            <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" SortExpression="ThanhTien" />
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" CancelText="Hủy Bỏ" DeleteText="Xóa" EditText="Sửa" InsertText="Thêm" NewText="Thêm Mới" UpdateText="Cập nhật" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
        ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>"
        SelectCommand="SELECT 
                            ChiTietDonHang.ID AS ID, ChiTietDonHang.DonHang_ID, 
                            ChiTietDonHang.SanPham_ID, SanPham.TenSP, SanPham.DonGia, SanPham.DonViTinh, 
                            ChiTietDonHang.SoLuong, ChiTietDonHang.ThanhTien 
                       FROM 
                            ChiTietDonHang INNER JOIN SanPham ON ChiTietDonHang.SanPham_ID = SanPham.ID 
                       ORDER BY 
                            ChiTietDonHang.DonHang_ID"
        InsertCommand="INSERT INTO ChiTietDonHang(SanPham_ID, DonHang_ID, SoLuong, ThanhTien) 
                       VALUES (@SanPham_ID, @DonHang_ID, @SoLuong, @ThanhTien)"
        UpdateCommand="UPDATE ChiTietDonHang 
                       SET SanPham_ID = @SanPham_ID, SoLuong = @SoLuong, ThanhTien = @ThanhTien 
                       WHERE (ID = @ID)"
        DeleteCommand="DELETE FROM ChiTietDonHang 
                       WHERE (ID = @ID)">
        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SanPham_ID" />
            <asp:Parameter Name="DonHang_ID" />
            <asp:Parameter Name="SoLuong" />
            <asp:Parameter Name="ThanhTien" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SanPham_ID" />
            <asp:Parameter Name="SoLuong" />
            <asp:Parameter Name="ThanhTien" />
            <asp:Parameter Name="ID" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
