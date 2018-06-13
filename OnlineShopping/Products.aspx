<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="OnlineShopping.Products" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Products">Sản phẩm</a></li>
        </ol>
    </nav>
    <asp:FormView ID="ProductForm" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" DataKeyNames="ID" Width="100%">
        <EditItemTemplate>
            Mã Sản Phẩm:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Mã Loại:
            <asp:TextBox ID="LoaiSanPham_IDTextBox" runat="server" Text='<%# Bind("LoaiSanPham_ID") %>' />
            <br />
            Tên Loại:
            <asp:TextBox ID="TenLoaiSPTextBox" runat="server" Text='<%# Bind("TenLoaiSP") %>' />
            <br />
            Tên Sản Phẩm:
            <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            Đơn Giá:
            <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
            <br />
            Đơn Vị Tính:
            <asp:TextBox ID="DonViTinhTextBox" runat="server" Text='<%# Bind("DonViTinh") %>' />
            <br />
            Chất Liệu:
            <asp:TextBox ID="ChatLieuTextBox" runat="server" Text='<%# Bind("ChatLieu") %>' />
            <br />
            Trọng Lượng:
            <asp:TextBox ID="TrongLuongTextBox" runat="server" Text='<%# Bind("TrongLuong") %>' />
            <br />
            Mô Tả:
            <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
            <br />
            Hình:
            <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Mã Loại:
            <asp:TextBox ID="LoaiSanPham_IDTextBox" runat="server" Text='<%# Bind("LoaiSanPham_ID") %>' />
            <br />
            Tên Sản Phẩm:
            <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            Đơn Giá:
            <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
            <br />
            Đơn Vị Tính:
            <asp:TextBox ID="DonViTinhTextBox" runat="server" Text='<%# Bind("DonViTinh") %>' />
            <br />
            Chất liệu:
            <asp:TextBox ID="ChatLieuTextBox" runat="server" Text='<%# Bind("ChatLieu") %>' />
            <br />
            Trong Lượng:
            <asp:TextBox ID="TrongLuongTextBox" runat="server" Text='<%# Bind("TrongLuong") %>' />
            <br />
            Mô tả:
            <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
            <br />
            Hình:
            <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="card border-secondary" style="border-collapse: collapse">
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
            </div>
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO SanPham(LoaiSanPham_ID, TenSP, DonGia, DonViTinh, ChatLieu, TrongLuong, MoTa, HinhAnh) VALUES (@LoaiSanPham_ID, @TenSP, @DonGia, @DonViTinh, @ChatLieu, @TrongLuong, @MoTa, @HinhAnh)" SelectCommand="SELECT SanPham.ID, SanPham.LoaiSanPham_ID, LoaiSanPham.TenLoaiSP, SanPham.TenSP, SanPham.DonGia, SanPham.DonViTinh, SanPham.ChatLieu, SanPham.TrongLuong, SanPham.MoTa, SanPham.HinhAnh FROM LoaiSanPham INNER JOIN SanPham ON LoaiSanPham.ID = SanPham.LoaiSanPham_ID" UpdateCommand="UPDATE SanPham SET LoaiSanPham_ID = @LoaiSanPham_ID, TenSP = @TenSP, DonGia = @DonGia, DonViTinh = @DonViTinh, ChatLieu = @ChatLieu, TrongLuong = @TrongLuong, MoTa = @MoTa, HinhAnh = @HinhAnh WHERE (ID = @ID)">
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
