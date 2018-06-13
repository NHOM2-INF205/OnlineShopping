<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="OnlineShopping.Categories" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="margin-top: 30px">
            <li class="breadcrumb-item"><a runat="server" href="~/Categories">Loại sản phẩm</a></li>
        </ol>
    </nav>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenLoaiSP:
            <asp:TextBox ID="TenLoaiSPTextBox" runat="server" Text='<%# Bind("TenLoaiSP") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            TenLoaiSP:
            <asp:TextBox ID="TenLoaiSPTextBox" runat="server" Text='<%# Bind("TenLoaiSP") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenLoaiSP:
            <asp:Label ID="TenLoaiSPLabel" runat="server" Text='<%# Bind("TenLoaiSP") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [ID] = @ID" InsertCommand="INSERT INTO [LoaiSanPham] ([TenLoaiSP]) VALUES (@TenLoaiSP)" SelectCommand="SELECT [ID], [TenLoaiSP] FROM [LoaiSanPham] ORDER BY [ID]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenLoaiSP] = @TenLoaiSP WHERE [ID] = @ID">
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
</asp:Content>
