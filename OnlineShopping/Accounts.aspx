<%@ Page Title="Quản lý tài khoản" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Accounts.aspx.cs" Inherits="OnlineShopping.Accounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--Tài khoản người dùng--%>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Accounts"><%: Title %></a></li>
        </ol>
    </nav>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource_TaiKhoan">
        <InsertItemTemplate>
            <div class="form-group">
                <label>Họ tên</label>
                <asp:TextBox CssClass="form-control" ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
            </div>
            <div class="form-group">
                <label>Địa chỉ</label>
                <asp:TextBox CssClass="form-control" ID="DiaChiTextBox" runat="server" Text='<%# Bind("Diachi") %>' />
            </div>
            <div class="form-group">
                <label>Email</label>
                <asp:TextBox CssClass="form-control" ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            </div>
            <div class="form-group">
                <label>Số điện thoại</label>
                <asp:TextBox CssClass="form-control" ID="SoDienThoaiTextBox" runat="server" Text='<%# Bind("SoDienThoai") %>' />
            </div>
            <div class="form-group">
                <label>Giới tính</label>
                <asp:TextBox CssClass="form-control" ID="GioiTinhCheckBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
            </div>
            <div class="form-group">
                <label>Tài khoản</label>
                <asp:TextBox CssClass="form-control" ID="TaiKhoanTextBox" runat="server" Text='<%# Bind("TaiKhoan") %>' />
            </div>
            <div class="form-group">
                <label>Mật khẩu</label>
                <asp:TextBox CssClass="form-control" ID="MatKhauTextBox" runat="server" Text='<%# Bind("MatKhau") %>' />
            </div>
            <div class="form-group">
                <label>Quyền truy cập</label>
                <asp:TextBox CssClass="form-control" ID="QuyenTruyCap_IDTextBox" runat="server" Text='<%# Bind("QuyenTruyCap_ID") %>' />
            </div>
            <div class="form-group">
                <label>Trạng thái tài khoản</label>
                <asp:TextBox CssClass="form-control" ID="TrangThaiTaiKhoan_IDTextBox" runat="server" Text='<%# Bind("TrangThaiTaiKhoan_ID") %>' />
            </div>
            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" />
                <asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-success" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New" Text="Thêm mới 1 khách hàng" />
            </div>
        </ItemTemplate>
    </asp:FormView>
    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource_TaiKhoan" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="SoDienThoai" HeaderText="SoDienThoai" SortExpression="SoDienThoai" />
            <asp:CheckBoxField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
            <asp:BoundField DataField="TaiKhoan" HeaderText="TaiKhoan" SortExpression="TaiKhoan" />
            <asp:BoundField DataField="MatKhau" HeaderText="MatKhau" SortExpression="MatKhau" />
            <asp:BoundField DataField="QuyenTruyCap_ID" HeaderText="QuyenTruyCap_ID" SortExpression="QuyenTruyCap_ID" />
            <asp:BoundField DataField="TrangThaiTaiKhoan_ID" HeaderText="TrangThaiTaiKhoan_ID" SortExpression="TrangThaiTaiKhoan_ID" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="Sửa|Xóa" ShowEditButton="True" UpdateText="Cập Nhật" DeleteText="Xóa" CancelText="Hủy Bỏ" EditText="Sửa" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource_TaiKhoan" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [NguoiDung] WHERE [ID] = @ID" InsertCommand="INSERT INTO [NguoiDung] ([HoTen], [DiaChi], [Email], [SoDienThoai], [GioiTinh], [TaiKhoan], [MatKhau], [QuyenTruyCap_ID], [TrangThaiTaiKhoan_ID]) VALUES (@HoTen, @DiaChi, @Email, @SoDienThoai, @GioiTinh, @TaiKhoan, @MatKhau, @QuyenTruyCap_ID, @TrangThaiTaiKhoan_ID)" SelectCommand="SELECT [ID], [HoTen], [DiaChi], [Email], [SoDienThoai], [GioiTinh], [TaiKhoan], [MatKhau], [QuyenTruyCap_ID], [TrangThaiTaiKhoan_ID] FROM [NguoiDung] ORDER BY [ID]" UpdateCommand="UPDATE [NguoiDung] SET [HoTen] = @HoTen, [DiaChi] = @DiaChi, [Email] = @Email, [SoDienThoai] = @SoDienThoai, [GioiTinh] = @GioiTinh, [TaiKhoan] = @TaiKhoan, [MatKhau] = @MatKhau, [QuyenTruyCap_ID] = @QuyenTruyCap_ID, [TrangThaiTaiKhoan_ID] = @TrangThaiTaiKhoan_ID WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>

        <InsertParameters>
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="SoDienThoai" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="Boolean" />
            <asp:Parameter Name="TaiKhoan" Type="String" />
            <asp:Parameter Name="MatKhau" Type="String" />
            <asp:Parameter Name="QuyenTruyCap_ID" Type="Int32" />
            <asp:Parameter Name="TrangThaiTaiKhoan_ID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="SoDienThoai" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="Boolean" />
            <asp:Parameter Name="TaiKhoan" Type="String" />
            <asp:Parameter Name="MatKhau" Type="String" />
            <asp:Parameter Name="QuyenTruyCap_ID" Type="Int32" />
            <asp:Parameter Name="TrangThaiTaiKhoan_ID" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Accounts"><%: Title %></a></li>
            <li class="breadcrumb-item"><a runat="server" href="~/Accounts">Trạng thái tài khoản</a></li>
        </ol>
    </nav>
    <asp:FormView ID="FormView2" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource_TrangThaiTaiKhoan">
        <InsertItemTemplate>
            <div class="form-group">
                <label>Tên trạng thái</label>
                <asp:TextBox CssClass="form-control" ID="TenTTTextBox" runat="server" Text='<%# Bind("TenTrangThai") %>' />
            </div>
            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" />
                <asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
            </div>
        </InsertItemTemplate>

        <ItemTemplate>
            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-success" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New" Text="Thêm trạng thái" />
            </div>
        </ItemTemplate>

    </asp:FormView>
    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource_TrangThaiTaiKhoan">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="TenTrangThai" HeaderText="Tên Trạng Thái" SortExpression="TenTrangThai" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="Sửa|Xóa" ShowEditButton="True" UpdateText="Cập Nhật" DeleteText="Xóa" CancelText="Hủy Bỏ" EditText="Sửa" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource_TrangThaiTaiKhoan" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TrangThaiTaiKhoan] WHERE [ID] = @ID" InsertCommand="INSERT INTO [TrangThaiTaiKhoan] ([TenTrangThai]) VALUES (@TenTrangThai)" SelectCommand="SELECT [ID], [TenTrangThai] FROM [TrangThaiTaiKhoan] ORDER BY [ID]" UpdateCommand="UPDATE [TrangThaiTaiKhoan] SET [TenTrangThai] = @TenTrangThai WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenTrangThai" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenTrangThai" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
