<%@ Page Title="Quản lý đơn Hàng" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="OnlineShopping.Orders" %>

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
            <asp:CommandField ShowEditButton="True" HeaderText="Sửa" CancelText="Hủy Bỏ" EditText="Sửa" UpdateText="Cập nhật" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
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
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="ID" Width="100%">
        <InsertItemTemplate>
            <div class="form-group">
                <label>Mã Sản Phẩm</label>
                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Text='<%# Bind("SanPham_ID") %>' />
            </div>
            <div class="form-group">
                <label>Mã Đơn Hàng</label>
                <asp:TextBox CssClass="form-control" ID="DonHang_IDTextBox" runat="server" Text='<%# Bind("DonHang_ID") %>' />
            </div>
            <div class="form-group">
                <label>Số Lượng</label>
                <asp:TextBox CssClass="form-control" ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            </div>
            <div class="form-group">
                <label>Thành Tiền</label>
                <asp:TextBox CssClass="form-control" ID="ThanhTienTextBox" runat="server" Text='<%# Bind("ThanhTien") %>' />
            </div>
            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" />
                <asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Thêm mới chi tiết đơn hàng" />
            </div>
        </ItemTemplate>
    </asp:FormView>

    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="ID">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" ReadOnly="True" InsertVisible="False" />
            <asp:BoundField DataField="DonHang_ID" HeaderText="Mã Đơn Hàng" SortExpression="DonHang_ID" ReadOnly="True" />
            <asp:BoundField DataField="SanPham_ID" HeaderText="Mã Sản Phẩm" SortExpression="SanPham_ID" />
            <asp:BoundField DataField="DonGia" HeaderText="Đơn Giá" SortExpression="DonGia" ReadOnly="True" DataFormatString="{0:n0}" />
            <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" SortExpression="SoLuong" />
            <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" SortExpression="ThanhTien" DataFormatString="{0:n0}" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="Sửa|Xóa" ShowEditButton="True" UpdateText="Cập Nhật" DeleteText="Xóa" CancelText="Hủy Bỏ" EditText="Sửa"  />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT ChiTietDonHang.ID, ChiTietDonHang.SanPham_ID, ChiTietDonHang.DonHang_ID, SanPham.DonGia, ChiTietDonHang.SoLuong, ChiTietDonHang.ThanhTien FROM ChiTietDonHang INNER JOIN SanPham ON ChiTietDonHang.SanPham_ID = SanPham.ID ORDER BY ChiTietDonHang.DonHang_ID"
        InsertCommand="INSERT INTO [ChiTietDonHang] ([SanPham_ID], [DonHang_ID], [SoLuong], [ThanhTien]) VALUES (@SanPham_ID, @DonHang_ID, @SoLuong, @ThanhTien)"
        UpdateCommand="UPDATE [ChiTietDonHang] SET [SanPham_ID] = @SanPham_ID, [SoLuong] = @SoLuong, [ThanhTien] = @ThanhTien WHERE [ID] = @ID"
        DeleteCommand="DELETE FROM [ChiTietDonHang] WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SanPham_ID" Type="Int32" />
            <asp:Parameter Name="DonHang_ID" Type="Int32" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="ThanhTien" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SanPham_ID" Type="Int32" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="ThanhTien" Type="Decimal" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
