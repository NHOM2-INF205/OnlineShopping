<%@ Page Title="Quản lý tài khoản" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Accounts.aspx.cs" Inherits="OnlineShopping.Accounts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Accounts"><%: Title %></a></li>
        </ol>
    </nav>
    <asp:GridView CssClass="table table-tripped table-bordered" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="Mã tài khoản" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="HoTen" HeaderText="Họ và tên" SortExpression="HoTen" />
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="SoDienThoai" HeaderText="Số điện thoại" SortExpression="SoDienThoai" />
            <asp:BoundField DataField="GioiTinh" HeaderText="Giới tính" SortExpression="GioiTinh" />
            <asp:BoundField DataField="TaiKhoan" HeaderText="Tài khoản" SortExpression="TaiKhoan" />
            <asp:BoundField DataField="MatKhau" HeaderText="Mật khẩu" SortExpression="MatKhau" />
            <asp:BoundField DataField="TenQuyen" HeaderText="Quyền truy cập" SortExpression="TenQuyen" />
            <asp:BoundField DataField="TenTrangThai" HeaderText="Trạng thái tài khoản" SortExpression="TenTrangThai" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT NguoiDung.ID, NguoiDung.HoTen, NguoiDung.DiaChi, NguoiDung.Email, NguoiDung.SoDienThoai, NguoiDung.GioiTinh, NguoiDung.TaiKhoan, NguoiDung.MatKhau, QuyenTruyCap.TenQuyen, TrangThaiTaiKhoan.TenTrangThai FROM NguoiDung INNER JOIN QuyenTruyCap ON NguoiDung.QuyenTruyCap_ID = QuyenTruyCap.ID INNER JOIN TrangThaiTaiKhoan ON NguoiDung.TrangThaiTaiKhoan_ID = TrangThaiTaiKhoan.ID ORDER BY NguoiDung.ID"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID" DataSourceID="SqlDataSource2" Width="369px">
        <EditItemTemplate>
            ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            HoTen:
            <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
            <br />
            DiaChi:
            <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            SoDienThoai:
            <asp:TextBox ID="SoDienThoaiTextBox" runat="server" Text='<%# Bind("SoDienThoai") %>' />
            <br />
            GioiTinh:
            <asp:CheckBox ID="GioiTinhCheckBox" runat="server" Checked='<%# Bind("GioiTinh") %>' />
            <br />
            TaiKhoan:
            <asp:TextBox ID="TaiKhoanTextBox" runat="server" Text='<%# Bind("TaiKhoan") %>' />
            <br />
            MatKhau:
            <asp:TextBox ID="MatKhauTextBox" runat="server" Text='<%# Bind("MatKhau") %>' />
            <br />
            QuyenTruyCap_ID:
            <asp:TextBox ID="QuyenTruyCap_IDTextBox" runat="server" Text='<%# Bind("QuyenTruyCap_ID") %>' />
            <br />
            TenQuyen:
            <asp:TextBox ID="TenQuyenTextBox" runat="server" Text='<%# Bind("TenQuyen") %>' />
            <br />
            TrangThaiTaiKhoan_ID:
            <asp:TextBox ID="TrangThaiTaiKhoan_IDTextBox" runat="server" Text='<%# Bind("TrangThaiTaiKhoan_ID") %>' />
            <br />
            TenTrangThai:
            <asp:TextBox ID="TenTrangThaiTextBox" runat="server" Text='<%# Bind("TenTrangThai") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            HoTen:
            <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
            <br />
            DiaChi:
            <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            SoDienThoai:
            <asp:TextBox ID="SoDienThoaiTextBox" runat="server" Text='<%# Bind("SoDienThoai") %>' />
            <br />
            GioiTinh:
            <asp:CheckBox ID="GioiTinhCheckBox" runat="server" Checked='<%# Bind("GioiTinh") %>' />
            <br />
            TaiKhoan:
            <asp:TextBox ID="TaiKhoanTextBox" runat="server" Text='<%# Bind("TaiKhoan") %>' />
            <br />
            MatKhau:
            <asp:TextBox ID="MatKhauTextBox" runat="server" Text='<%# Bind("MatKhau") %>' />
            <br />
            QuyenTruyCap_ID:
            <asp:TextBox ID="QuyenTruyCap_IDTextBox" runat="server" Text='<%# Bind("QuyenTruyCap_ID") %>' />
            <br />
            TenQuyen:
            <asp:TextBox ID="TenQuyenTextBox" runat="server" Text='<%# Bind("TenQuyen") %>' />
            <br />
            TrangThaiTaiKhoan_ID:
            <asp:TextBox ID="TrangThaiTaiKhoan_IDTextBox" runat="server" Text='<%# Bind("TrangThaiTaiKhoan_ID") %>' />
            <br />
            TenTrangThai:
            <asp:TextBox ID="TenTrangThaiTextBox" runat="server" Text='<%# Bind("TenTrangThai") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            HoTen:
            <asp:Label ID="HoTenLabel" runat="server" Text='<%# Bind("HoTen") %>' />
            <br />
            DiaChi:
            <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChi") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            SoDienThoai:
            <asp:Label ID="SoDienThoaiLabel" runat="server" Text='<%# Bind("SoDienThoai") %>' />
            <br />
            GioiTinh:
            <asp:Label ID="GioiTinhCheckBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
            <br />
            TaiKhoan:
            <asp:Label ID="TaiKhoanLabel" runat="server" Text='<%# Bind("TaiKhoan") %>' />
            <br />
            MatKhau:
            <asp:Label ID="MatKhauLabel" runat="server" Text='<%# Bind("MatKhau") %>' />
            <br />
            QuyenTruyCap_ID:
            <asp:Label ID="QuyenTruyCap_IDLabel" runat="server" Text='<%# Bind("QuyenTruyCap_ID") %>' />
            <br />
            TenQuyen:
            <asp:Label ID="TenQuyenLabel" runat="server" Text='<%# Bind("TenQuyen") %>' />
            <br />
            TrangThaiTaiKhoan_ID:
            <asp:Label ID="TrangThaiTaiKhoan_IDLabel" runat="server" Text='<%# Bind("TrangThaiTaiKhoan_ID") %>' />
            <br />
            TenTrangThai:
            <asp:Label ID="TenTrangThaiLabel" runat="server" Text='<%# Bind("TenTrangThai") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM NguoiDung WHERE (ID = @ID)" InsertCommand="INSERT INTO NguoiDung(HoTen, Email, DiaChi, SoDienThoai, GioiTinh, TaiKhoan, MatKhau, QuyenTruyCap_ID, TrangThaiTaiKhoan_ID) VALUES (@HoTen, @Email, @DiaChi, @SoDienThoai, @GioiTinh, @TaiKhoan, @MatKhau, 3, 1)" SelectCommand="SELECT NguoiDung.ID, NguoiDung.HoTen, NguoiDung.DiaChi, NguoiDung.Email, NguoiDung.SoDienThoai, NguoiDung.GioiTinh, NguoiDung.TaiKhoan, NguoiDung.MatKhau, NguoiDung.QuyenTruyCap_ID, QuyenTruyCap.TenQuyen, NguoiDung.TrangThaiTaiKhoan_ID, TrangThaiTaiKhoan.TenTrangThai FROM QuyenTruyCap INNER JOIN NguoiDung ON QuyenTruyCap.ID = NguoiDung.QuyenTruyCap_ID INNER JOIN TrangThaiTaiKhoan ON NguoiDung.TrangThaiTaiKhoan_ID = TrangThaiTaiKhoan.ID" UpdateCommand="UPDATE NguoiDung SET HoTen = @HoTen, DiaChi = @DiaChi, GioiTinh = @GioiTinh, SoDienThoai = @SoDienThoai, MatKhau = @MatKhau, QuyenTruyCap_ID = @QuyenTruyCap_ID, TrangThaiTaiKhoan_ID = @TrangThaiTaiKhoan_ID WHERE (ID = @ID)">
        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="HoTen" />
            <asp:Parameter Name="Email" />
            <asp:Parameter Name="DiaChi" />
            <asp:Parameter Name="SoDienThoai" />
            <asp:Parameter Name="GioiTinh" />
            <asp:Parameter Name="TaiKhoan" />
            <asp:Parameter Name="MatKhau" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HoTen" />
            <asp:Parameter Name="DiaChi" />
            <asp:Parameter Name="GioiTinh" />
            <asp:Parameter Name="SoDienThoai" />
            <asp:Parameter Name="MatKhau" />
            <asp:Parameter Name="QuyenTruyCap_ID" />
            <asp:Parameter Name="TrangThaiTaiKhoan_ID" />
            <asp:Parameter Name="ID" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
