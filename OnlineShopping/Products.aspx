<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="OnlineShopping.Products" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Products">Sản phẩm</a></li>
        </ol>
    </nav>
    <asp:FormView ID="ProductForm" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            TenLoaiSP:
            <asp:TextBox ID="TenLoaiSPTextBox" runat="server" Text='<%# Bind("TenLoaiSP") %>' />
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
            ChatLieu:
            <asp:TextBox ID="ChatLieuTextBox" runat="server" Text='<%# Bind("ChatLieu") %>' />
            <br />
            TrongLuong:
            <asp:TextBox ID="TrongLuongTextBox" runat="server" Text='<%# Bind("TrongLuong") %>' />
            <br />
            MoTa:
            <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
            <br />
            HinhAnh:
            <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            TenLoaiSP:
            <asp:TextBox ID="TenLoaiSPTextBox" runat="server" Text='<%# Bind("TenLoaiSP") %>' />
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
            ChatLieu:
            <asp:TextBox ID="ChatLieuTextBox" runat="server" Text='<%# Bind("ChatLieu") %>' />
            <br />
            TrongLuong:
            <asp:TextBox ID="TrongLuongTextBox" runat="server" Text='<%# Bind("TrongLuong") %>' />
            <br />
            MoTa:
            <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
            <br />
            HinhAnh:
            <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Loại sản phẩm:
            <asp:Label ID="TenLoaiSPLabel" runat="server" Text='<%# Bind("TenLoaiSP") %>' />
            <br />
            Tên sản phẩm:
            <asp:Label ID="TenSPLabel" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            Đơn giá:
            <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Bind("DonGia") %>' />
            <br />
            Đơn vị tính:
            <asp:Label ID="DonViTinhLabel" runat="server" Text='<%# Bind("DonViTinh") %>' />
            <br />
            Chất liệu:
            <asp:Label ID="ChatLieuLabel" runat="server" Text='<%# Bind("ChatLieu") %>' />
            <br />
            Trọng lượng:
            <asp:Label ID="TrongLuongLabel" runat="server" Text='<%# Bind("TrongLuong") %>' />
            <br />
            Mô tả:
            <asp:Label ID="MoTaLabel" runat="server" Text='<%# Bind("MoTa") %>' />
            <br />
            Hình ảnh:
            <asp:Image ID="HinhAnhLabel" runat="server" ImageUrl='<%# Bind("HinhAnh") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>" InsertCommand="INSERT INTO SanPham(LoaiSanPham_ID, TenSP, DonGia, DonViTinh, ChatLieu, TrongLuong, MoTa, HinhAnh) VALUES (@LoaiSanPham_ID, @TenSP, @DonGia, @DonViTinh, @ChatLieu, @TrongLuong, @MoTa, @HinhAnh)" SelectCommand="SELECT LoaiSanPham.TenLoaiSP, SanPham.TenSP, SanPham.DonGia, SanPham.DonViTinh, SanPham.ChatLieu, SanPham.TrongLuong, SanPham.MoTa, SanPham.HinhAnh FROM LoaiSanPham INNER JOIN SanPham ON LoaiSanPham.ID = SanPham.LoaiSanPham_ID" UpdateCommand="UPDATE SanPham SET LoaiSanPham_ID = @LoaiSanPham_ID, TenSP = @TenSP, DonGia = @DonGia, DonViTinh = @DonViTinh, ChatLieu = @ChatLieu, TrongLuong = @TrongLuong, MoTa = @MoTa, HinhAnh = @HinhAnh WHERE (ID = @ID)">
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
