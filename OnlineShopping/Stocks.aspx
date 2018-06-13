<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Stocks.aspx.cs" Inherits="OnlineShopping.Stocks" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Products">Kho Hàng</a></li>
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

    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID" DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenKho:
            <asp:TextBox ID="TenKhoTextBox" runat="server" Text='<%# Bind("TenKho") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            TenKho:
            <asp:TextBox ID="TenKhoTextBox" runat="server" Text='<%# Bind("TenKho") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenKho:
            <asp:Label ID="TenKhoLabel" runat="server" Text='<%# Bind("TenKho") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>" DeleteCommand="DELETE FROM [Kho] WHERE [ID] = @original_ID" InsertCommand="INSERT INTO [Kho] ([TenKho]) VALUES (@TenKho)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [TenKho] FROM [Kho] ORDER BY [ID]" UpdateCommand="UPDATE [Kho] SET [TenKho] = @TenKho WHERE [ID] = @original_ID">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>" SelectCommand="SELECT Kho.TenKho, LoSanPham.SanPham_ID, SanPham.TenSP, LoSanPham.TonKho, LoSanPham.ThoiGianNhap, ChiTietLoSanPham.MaSKU FROM Kho INNER JOIN LoSanPham ON Kho.ID = LoSanPham.Kho_ID INNER JOIN SanPham ON LoSanPham.SanPham_ID = SanPham.ID INNER JOIN ChiTietLoSanPham ON LoSanPham.ID = ChiTietLoSanPham.LoSanPham_ID"></asp:SqlDataSource>
</asp:Content>
