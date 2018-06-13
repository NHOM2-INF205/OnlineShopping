<%@ Page Title="Quản lý kho hàng" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Stocks.aspx.cs" Inherits="OnlineShopping.Stocks" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%-- Kho hàng--%>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Products">Kho Hàng</a></li>
        </ol>
    </nav>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource_KhoHang" Width="100%">
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
    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource_KhoHang">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="Mã Kho" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="TenKho" HeaderText="Tên Kho" SortExpression="TenKho" />
            <asp:CommandField HeaderText="Sửa|Xóa" ShowDeleteButton="True" ShowEditButton="True" EditText="Sửa" DeleteText="Xóa" UpdateText="Cập Nhật" CancelText="Hủy Bỏ" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource_KhoHang" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Kho] WHERE [ID] = @original_ID" InsertCommand="INSERT INTO [Kho] ([TenKho]) VALUES (@TenKho)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [TenKho] FROM [Kho] ORDER BY [ID]" UpdateCommand="UPDATE [Kho] SET [TenKho] = @TenKho WHERE [ID] = @original_ID">
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
            <li class="breadcrumb-item"><a runat="server" href="~/Stocks">Kho Hàng</a></li>
            <li class="breadcrumb-item"><a runat="server" href="~/Stocks">Lô Sản Phẩm</a></li>
        </ol>
    </nav>
    <asp:FormView ID="FormView2" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource_LoSanPham" Width="100%">
        <InsertItemTemplate>
            <div class="form-group">
                <label>Mã Sản Phẩm</label>
                <asp:TextBox CssClass="form-control" ID="SanPham_IDTextBox" runat="server" Text='<%# Bind("SanPham_ID") %>' />
            </div>
            <div class="form-group">
                <label>Mã Kho</label>
                <asp:TextBox CssClass="form-control" ID="Kho_IDTextBox" runat="server" Text='<%# Bind("Kho_ID") %>' />
            </div>
            <div class="form-group">
                <label>Số lượng</label>
                <asp:TextBox CssClass="form-control" ID="TonKhoTextBox" runat="server" Text='<%# Bind("TonKho") %>' />
            </div>
            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" />
                <asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Thêm Mới 1 Lô Sản Phẩm" />
            </div>
        </ItemTemplate>
    </asp:FormView>
    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView3" runat="server" DataSourceID="SqlDataSource_LoSanPham" AutoGenerateColumns="False" DataKeyNames="ID">
        <Columns>
            <asp:BoundField DataField="Kho_ID" HeaderText="Mã Kho" SortExpression="Kho_ID" />
            <asp:BoundField DataField="ID" HeaderText="Mã lô hàng" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="SanPham_ID" HeaderText="Mã Sản Phẩm" SortExpression="SanPham_ID" />
            <asp:BoundField DataField="TonKho" HeaderText="Tồn Kho" SortExpression="TonKho" />
            <asp:BoundField DataField="ThoiGianNhap" HeaderText="Thời Gian Nhập Hàng" SortExpression="ThoiGianNhap" />
            <asp:CommandField HeaderText="Sửa|Xóa" ShowDeleteButton="True" ShowEditButton="True" EditText="Sửa" DeleteText="Xóa" UpdateText="Cập Nhật" CancelText="Hủy Bỏ" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource_LoSanPham" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [LoSanPham] WHERE [ID] = @ID" InsertCommand="INSERT INTO LoSanPham(SanPham_ID, Kho_ID, TonKho, ThoiGianNhap) VALUES (@SanPham_ID, @Kho_ID, @TonKho, CURRENT_TIMESTAMP)" SelectCommand="SELECT [ID], [SanPham_ID], [Kho_ID], [TonKho], [ThoiGianNhap] FROM [LoSanPham] ORDER BY [ThoiGianNhap] DESC" UpdateCommand="UPDATE LoSanPham SET SanPham_ID = @SanPham_ID, Kho_ID = @Kho_ID, TonKho = @TonKho WHERE (ID = @ID)">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SanPham_ID" Type="Int32" />
            <asp:Parameter Name="Kho_ID" Type="Int32" />
            <asp:Parameter Name="TonKho" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SanPham_ID" Type="Int32" />
            <asp:Parameter Name="Kho_ID" Type="Int32" />
            <asp:Parameter Name="TonKho" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <%-- Chi tiết lô sản phẩm --%>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Stocks">Kho Hàng</a></li>
            <li class="breadcrumb-item"><a runat="server" href="~/Stocks">Lô Sản Phẩm</a></li>
            <li class="breadcrumb-item"><a runat="server" href="~/Stocks">Chi Tiết Lô Sản Phẩm</a></li>
        </ol>
    </nav>
    <asp:FormView ID="FormView3" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource_ChiTietLoSanPham">
        <InsertItemTemplate>
            <div class="form-group">
                <label>Mã Lô</label>
                <asp:TextBox CssClass="form-control" ID="LoSanPham_IDTextBox" runat="server" Text='<%# Bind("LoSanPham_ID") %>' />
            </div>
            <div class="form-group">
                <label>Mã SKU</label>
                <asp:TextBox CssClass="form-control" ID="MaSKUTextBox" runat="server" Text='<%# Bind("MaSKU") %>' />
            </div>
            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" />
                <asp:LinkButton CssClass="btn btn-danger" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Thêm Mới 1 Chi Tiết Của 1 Lô Sản Phẩm" />
            </div>
        </ItemTemplate>
    </asp:FormView>
    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource_ChiTietLoSanPham">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="Mã CT Lô" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Kho_ID" HeaderText="Mã Kho" SortExpression="Kho_ID" ReadOnly="True" />
            <asp:BoundField DataField="LoSanPham_ID" HeaderText="Mã Lô" SortExpression="LoSanPham_ID" ReadOnly="True" />
            <asp:BoundField DataField="SanPham_ID" HeaderText="Mã Sản Phẩm" SortExpression="SanPham_ID" ReadOnly="True" />
            <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" SortExpression="TenSP" ReadOnly="True" />
            <asp:BoundField DataField="MaSKU" HeaderText="Mã SKU" SortExpression="MaSKU" />
            <asp:CommandField HeaderText="Sửa|Xóa" ShowDeleteButton="True" ShowEditButton="True" EditText="Sửa" DeleteText="Xóa" UpdateText="Cập Nhật" CancelText="Hủy Bỏ" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource_ChiTietLoSanPham" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        DeleteCommand="DELETE FROM [ChiTietLoSanPham] WHERE [ID] = @ID"
        InsertCommand="INSERT INTO [ChiTietLoSanPham] ([LoSanPham_ID], [MaSKU]) VALUES (@LoSanPham_ID, @MaSKU)"
        UpdateCommand="UPDATE [ChiTietLoSanPham] SET [MaSKU] = @MaSKU WHERE [ID] = @ID"
        SelectCommand="SELECT ChiTietLoSanPham.ID, LoSanPham.Kho_ID, ChiTietLoSanPham.LoSanPham_ID, LoSanPham.SanPham_ID, SanPham.TenSP, ChiTietLoSanPham.MaSKU FROM ChiTietLoSanPham INNER JOIN LoSanPham ON ChiTietLoSanPham.LoSanPham_ID = LoSanPham.ID INNER JOIN SanPham ON LoSanPham.SanPham_ID = SanPham.ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LoSanPham_ID" Type="Int32" />
            <asp:Parameter Name="MaSKU" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaSKU" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
