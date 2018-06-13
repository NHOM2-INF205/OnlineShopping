<%@ Page Title="Quản lý sản phẩm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="OnlineShopping.Products" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Products">Sản phẩm</a></li>
        </ol>
    </nav>
    <asp:FormView ID="ProductForm" runat="server" DataSourceID="SqlDataSource_QuanLySanPham" DataKeyNames="ID" Width="100%">
        <InsertItemTemplate>
            <div class="form-group">
                <label>Mã Loại Sản Phẩm</label>
                <asp:TextBox CssClass="form-control" ID="LoaiSanPham_IDTextBox" runat="server" Text='<%# Bind("LoaiSanPham_ID") %>' />
            </div>
            <div class="form-group">
                <label>Tên Sản Phẩm</label>
                <asp:TextBox CssClass="form-control" ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
            </div>
            <div class="form-group">
                <label>Đơn Giá</label>
                <asp:TextBox CssClass="form-control" ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
            </div>
            <div class="form-group">
                <label>Đơn Vị Tính</label>
                <asp:TextBox CssClass="form-control" ID="DonViTinhTextBox" runat="server" Text='<%# Bind("DonViTinh") %>' />
            </div>
            <div class="form-group">
                <label>Chất liệu</label>
                <asp:TextBox CssClass="form-control" ID="ChatLieuTextBox" runat="server" Text='<%# Bind("ChatLieu") %>' />
            </div>
            <div class="form-group">
                <label>Trong Lượng</label>
                <asp:TextBox CssClass="form-control" ID="TrongLuongTextBox" runat="server" Text='<%# Bind("TrongLuong") %>' />
            </div>
            <div class="form-group">
                <label>Mô tả</label>
                <asp:TextBox CssClass="form-control" TextMode="multiline" Columns="50" Rows="5" ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
            </div>
            <div class="form-group">
                <label>Hình</label>
                <asp:TextBox CssClass="form-control" ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
            </div>
            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" />
                <asp:LinkButton CssClass="btn btn-danger" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <%--<div class="card border-secondary" style="border-collapse: collapse">
                <div style="width:20%"><asp:Image CssClass="card-img-top" ID="Image1" runat="server" Width="100%" ImageUrl='<%# Bind("HinhAnh") %>' /></div>
                <div class="card-body">
                    <h3 class="card-title">
                        <asp:Label ID="TenSPLabel" runat="server" Text='<%# Bind("TenSP") %>' /></h3>
                    <p class="card-text">
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("TenLoaiSP") %>' /></p>
                    <p class="card-text">
                        <asp:Label ID="MoTaLabel" runat="server" Text='<%# Bind("MoTa") %>' />
                    </p>
                    <p class="card-text">
                        <span class="badge badge-danger">
                            <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Bind("DonGia") %>' /></span>
                    </p>
                </div>
            </div>--%>
            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Thêm Mới 1 Sản Phẩm" />
            </div>
        </ItemTemplate>
    </asp:FormView>

    <%--Bảng sản phẩm--%>
    <div class="table-responsive">
        <asp:GridView CssClass="table table-stripped table-bordered" ID="GridViewSanPham" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource_QuanLySanPham">
            <Columns>
                <asp:ImageField DataImageUrlField="HinhAnh" HeaderText="Hình ảnh" ControlStyle-Width="50" />
                <asp:BoundField DataField="ID" HeaderText="Mã Sản Phẩm" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="LoaiSanPham_ID" HeaderText="Mã Loại" SortExpression="LoaiSanPham_ID" ControlStyle-Width="50" />
                <asp:BoundField DataField="TenLoaiSP" HeaderText="Tên Loại" SortExpression="TenLoaiSP" ReadOnly="true" />
                <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" SortExpression="TenSP" />
                <asp:BoundField DataField="DonGia" HeaderText="Đơn Giá" SortExpression="DonGia" DataFormatString="{0:n0}" ControlStyle-Width="100" />
                <asp:BoundField DataField="DonViTinh" HeaderText="Đơn Vị Tính" SortExpression="DonViTinh" ControlStyle-Width="50" />
                <asp:BoundField DataField="ChatLieu" HeaderText="Chất Liệu" SortExpression="ChatLieu" ControlStyle-Width="100" />
                <asp:BoundField DataField="TrongLuong" HeaderText="Trọng Lượng" SortExpression="TrongLuong" ControlStyle-Width="50" />
                <asp:BoundField DataField="MoTa" HeaderText="Mô Tả" SortExpression="MoTa" />
                <asp:CommandField ShowDeleteButton="True" HeaderText="Sửa|Xóa" ShowEditButton="True" UpdateText="Cập Nhật" DeleteText="Xóa" CancelText="Hủy Bỏ" EditText="Sửa" />
            </Columns>
        </asp:GridView>
    </div>

    <asp:SqlDataSource ID="SqlDataSource_QuanLySanPham" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO SanPham(LoaiSanPham_ID, TenSP, DonGia, DonViTinh, ChatLieu, TrongLuong, MoTa, HinhAnh) VALUES (@LoaiSanPham_ID, @TenSP, @DonGia, @DonViTinh, @ChatLieu, @TrongLuong, @MoTa, @HinhAnh)" SelectCommand="SELECT SanPham.ID, SanPham.LoaiSanPham_ID, LoaiSanPham.TenLoaiSP, SanPham.TenSP, SanPham.DonGia, SanPham.DonViTinh, SanPham.ChatLieu, SanPham.TrongLuong, SanPham.MoTa, SanPham.HinhAnh FROM LoaiSanPham INNER JOIN SanPham ON LoaiSanPham.ID = SanPham.LoaiSanPham_ID" UpdateCommand="UPDATE SanPham SET LoaiSanPham_ID = @LoaiSanPham_ID, TenSP = @TenSP, DonGia = @DonGia, DonViTinh = @DonViTinh, ChatLieu = @ChatLieu, TrongLuong = @TrongLuong, MoTa = @MoTa, HinhAnh = @HinhAnh WHERE (ID = @ID)" DeleteCommand="DELETE FROM SanPham WHERE (ID = @ID)">
        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LoaiSanPham_ID" />
            <asp:Parameter Name="TenSP" />
            <asp:Parameter Name="DonGia" />
            <asp:Parameter Name="DonViTinh" />
            <asp:Parameter Name="ChatLieu" />
            <asp:Parameter Name="TrongLuong" />
            <asp:Parameter Name="MoTa" />
            <asp:Parameter Name="HinhAnh" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LoaiSanPham_ID" />
            <asp:Parameter Name="TenSP" />
            <asp:Parameter Name="DonGia" />
            <asp:Parameter Name="DonViTinh" />
            <asp:Parameter Name="ChatLieu" />
            <asp:Parameter Name="TrongLuong" />
            <asp:Parameter Name="MoTa" />
            <asp:Parameter Name="HinhAnh" />
            <asp:Parameter Name="ID" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
