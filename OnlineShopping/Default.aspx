<%@ Page Title="Trang Chủ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnlineShopping._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>INF205 - ĐIỆN TOÁN ĐÁM MÂY</h1>
        <p class="lead">Sử dụng công nghệ ASP.NET | .NET Framework 4.5.1 | Lưu trữ mã nguồn tại github</p>
        <p><a href="https://github.com/NHOM2-INF205/OnlineShopping" class="btn btn-primary btn-lg">Đến Github &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Sản phẩm nổi bật</h2>
            <hr />
            <asp:DataList ID="DataList2" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource_SanPhamNoiBat" Width="100%">
                <ItemTemplate>
                    <div class="card">
                        <div class="card-header">

                            <asp:Image CssClass="card-img-top" ID="Image1" runat="server" Width="100%" ImageUrl='<%# Bind("HinhAnh") %>' />
                        </div>
                        <div class="card-body">
                            <h3 class="card-title">
                                <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>' />
                                | Mã SP (<asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />)</h3>
                            <p class="card-text">
                                <asp:Label ID="MoTaLabel" runat="server" Text='<%# Eval("MoTa") %>' />
                            </p>
                            <p class="card-text">
                                Giá: <span class="badge badge-danger">
                                    <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' />
                                    <sup>đ</sup></span>
                            </p>
                        </div>
                        <div class="card-footer">
                            <a class="btn btn-primary" runat="server" href="~/Products">Xem chi tiết</a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource_SanPhamNoiBat" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT TOP (1) SanPham.ID, LoaiSanPham.TenLoaiSP, SanPham.TenSP, 
                SanPham.DonGia, SanPham.ChatLieu, SanPham.MoTa, SanPham.HinhAnh 
                FROM LoaiSanPham INNER JOIN SanPham ON LoaiSanPham.ID = SanPham.LoaiSanPham_ID ORDER BY SanPham.ID">
            </asp:SqlDataSource>
        </div>
        <div class="col-md-4">
            <h2>Sản phẩm mới nhất</h2>
            <hr />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource_SanPhamMoiNhat" Width="100%">
                <ItemTemplate>
                    <div class="card">
                        <div class="card-header">
                            <asp:Image CssClass="card-img-top" ID="Image1" runat="server" Width="100%" ImageUrl='<%# Bind("HinhAnh") %>' />
                        </div>
                        <div class="card-body">
                            <h3 class="card-title">
                                <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>' />
                                | Mã SP (<asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />)</h3>
                            <p class="card-text">
                                <asp:Label ID="MoTaLabel" runat="server" Text='<%# Eval("MoTa") %>' />
                            </p>
                            <p class="card-text">
                                Giá: <span class="badge badge-danger">
                                    <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' />
                                    <sup>đ</sup></span>
                            </p>
                        </div>
                        <div class="card-footer">
                            <a class="btn btn-primary" runat="server" href="~/Products">Xem chi tiết</a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource_SanPhamMoiNhat" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT TOP (1) SanPham.ID, LoaiSanPham.TenLoaiSP, SanPham.TenSP, 
                SanPham.DonGia, SanPham.ChatLieu, SanPham.MoTa, SanPham.HinhAnh 
                FROM LoaiSanPham INNER JOIN SanPham ON LoaiSanPham.ID = SanPham.LoaiSanPham_ID ORDER BY ID DESC">
            </asp:SqlDataSource>
        </div>
        <div class="col-md-4">
            <h2>Sản phẩm ngẫu nhiên</h2>
            <hr />
            <asp:DataList ID="DataList3" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource_SanPhamNgauNhien" Width="100%">
                <ItemTemplate>
                    <div class="card">
                        <div class="card-header">
                            <asp:Image CssClass="card-img-top" ID="Image1" runat="server" Width="100%" ImageUrl='<%# Bind("HinhAnh") %>' />
                        </div>
                        <div class="card-body">
                            <h3 class="card-title">
                                <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>' />
                                | Mã SP (<asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />)</h3>
                            <p class="card-text">
                                <asp:Label ID="MoTaLabel" runat="server" Text='<%# Eval("MoTa") %>' />
                            </p>
                            <p class="card-text">
                                Giá: <span class="badge badge-danger">
                                    <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' />
                                    <sup>đ</sup></span>
                            </p>
                        </div>
                        <div class="card-footer">
                            <a class="btn btn-primary" runat="server" href="~/Products">Xem chi tiết</a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource_SanPhamNgauNhien" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT TOP (1) SanPham.ID, LoaiSanPham.TenLoaiSP, SanPham.TenSP, 
                SanPham.DonGia, SanPham.ChatLieu, SanPham.MoTa, SanPham.HinhAnh 
                FROM LoaiSanPham INNER JOIN SanPham ON LoaiSanPham.ID = SanPham.LoaiSanPham_ID ORDER BY NEWID()">
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
