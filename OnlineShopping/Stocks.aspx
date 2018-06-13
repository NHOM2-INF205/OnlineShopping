<%@ Page Title="Quản lý kho hàng" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Stocks.aspx.cs" Inherits="OnlineShopping.Stocks" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <%-- Kho hàng--%>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Products">Kho Hàng</a></li>
        </ol>
    </nav>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource2">
        <InsertItemTemplate>
            <div class="form-group">
                <label>Tên Kho Hàng</label>
                <asp:TextBox CssClass="form-control" ID="DonHang_IDTextBox" runat="server" Text='<%# Bind("TenKho") %>' />
            </div>
            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" />
                <asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Thêm mới kho hàng" />
            </div>
        </ItemTemplate>
    </asp:FormView>
    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="Mã Kho" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="TenKho" HeaderText="Tên Kho" SortExpression="TenKho" />
            <asp:CommandField HeaderText="Sửa|Xóa" ShowDeleteButton="True" ShowEditButton="True" EditText="Sửa" DeleteText="Xóa" UpdateText="Cập Nhật" CancelText="Hủy Bỏ" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Kho] WHERE [ID] = @original_ID" InsertCommand="INSERT INTO [Kho] ([TenKho]) VALUES (@TenKho)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [TenKho] FROM [Kho] ORDER BY [ID]" UpdateCommand="UPDATE [Kho] SET [TenKho] = @TenKho WHERE [ID] = @original_ID">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenKho" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenKho" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <%-- Lô Sản Phẩm --%>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Products">Kho Hàng</a></li>
            <li class="breadcrumb-item"><a runat="server" href="~/Products">Lô Sản Phẩm</a></li>
        </ol>
    </nav>
    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView3" runat="server" DataSourceID="DSLoSanPham" AutoGenerateColumns="False" DataKeyNames="ID">
        <Columns>
            <asp:BoundField DataField="Kho_ID" HeaderText="Mã Kho" SortExpression="Kho_ID" />
            <asp:BoundField DataField="ID" HeaderText="Mã lô hàng" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="SanPham_ID" HeaderText="Mã Sản Phẩm" SortExpression="SanPham_ID" />
            <asp:BoundField DataField="TonKho" HeaderText="Tồn Kho" SortExpression="TonKho" />
            <asp:BoundField DataField="ThoiGianNhap" HeaderText="Thời Gian Nhập Hàng" SortExpression="ThoiGianNhap" />
            <asp:CommandField HeaderText="Sửa|Xóa" ShowDeleteButton="True" ShowEditButton="True" EditText="Sửa" DeleteText="Xóa" UpdateText="Cập Nhật" CancelText="Hủy Bỏ" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="DSLoSanPham" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [LoSanPham] WHERE [ID] = @ID" InsertCommand="INSERT INTO [LoSanPham] ([SanPham_ID], [Kho_ID], [TonKho], [ThoiGianNhap]) VALUES (@SanPham_ID, @Kho_ID, @TonKho, @ThoiGianNhap)" SelectCommand="SELECT [ID], [SanPham_ID], [Kho_ID], [TonKho], [ThoiGianNhap] FROM [LoSanPham] ORDER BY [ThoiGianNhap] DESC" UpdateCommand="UPDATE [LoSanPham] SET [SanPham_ID] = @SanPham_ID, [Kho_ID] = @Kho_ID, [TonKho] = @TonKho, [ThoiGianNhap] = @ThoiGianNhap WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SanPham_ID" Type="Int32" />
            <asp:Parameter Name="Kho_ID" Type="Int32" />
            <asp:Parameter Name="TonKho" Type="Int32" />
            <asp:Parameter Name="ThoiGianNhap" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SanPham_ID" Type="Int32" />
            <asp:Parameter Name="Kho_ID" Type="Int32" />
            <asp:Parameter Name="TonKho" Type="Int32" />
            <asp:Parameter Name="ThoiGianNhap" Type="DateTime" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <%-- Chi tiết lô hàng trong kho --%>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Stocks">Kho Hàng</a></li>
            <li class="breadcrumb-item"><a runat="server" href="~/Stocks">Lô Sản Phẩm</a></li>
            <li class="breadcrumb-item"><a runat="server" href="~/Stocks">Chi Tiết Lô Sản Phẩm</a></li>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Kho.TenKho, LoSanPham.SanPham_ID, SanPham.TenSP, LoSanPham.TonKho, LoSanPham.ThoiGianNhap, ChiTietLoSanPham.MaSKU FROM Kho INNER JOIN LoSanPham ON Kho.ID = LoSanPham.Kho_ID INNER JOIN SanPham ON LoSanPham.SanPham_ID = SanPham.ID INNER JOIN ChiTietLoSanPham ON LoSanPham.ID = ChiTietLoSanPham.LoSanPham_ID"></asp:SqlDataSource>
</asp:Content>
