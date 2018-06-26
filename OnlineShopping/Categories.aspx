<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="OnlineShopping.Categories" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Categories">Loại sản phẩm</a></li>
        </ol>
    </nav>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource_LoaiSanPham">
        <InsertItemTemplate>
            <div class="form-group">
                <label>Tên loại sản phẩm</label>
                <asp:TextBox CssClass="form-control" ID="TenLoaiSPTextBox" runat="server" Text='<%# Bind("TenLoaiSP") %>' />
            </div>
            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" />
                <asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-success" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Thêm mới 1 loại sản phẩm" />
            </div>
        </ItemTemplate>
    </asp:FormView>
    <div style="color:blue">
    <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource_LoaiSanPham">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="Mã loại" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="TenLoaiSP" HeaderText="Tên loại" SortExpression="TenLoaiSP" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="Sửa|Xóa" ShowEditButton="True" UpdateText="Cập Nhật" DeleteText="Xóa" CancelText="Hủy Bỏ" EditText="Sửa" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource_LoaiSanPham" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [ID] = @ID" InsertCommand="INSERT INTO [LoaiSanPham] ([TenLoaiSP]) VALUES (@TenLoaiSP)" SelectCommand="SELECT [ID], [TenLoaiSP] FROM [LoaiSanPham] ORDER BY [ID]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenLoaiSP] = @TenLoaiSP WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenLoaiSP" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenLoaiSP" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>
