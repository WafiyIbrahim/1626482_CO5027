<%@ Page Title="" Language="C#" MasterPageFile="~/MyAdmin.Master" AutoEventWireup="true" CodeBehind="ListPage.aspx.cs" Inherits="Darbuka_Prototype.Admin.ListPage1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Ad Darbuka - Edit Product.
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
    LIST OF PRODUCT
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    <form id="viewForm" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductDesc" HeaderText="ProductDesc" SortExpression="ProductDesc" />
                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                <asp:BoundField DataField="ProductQuantity" HeaderText="ProductQuantity" SortExpression="ProductQuantity" />
                <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="EditPage.aspx?Id={0}" HeaderText="EditProduct" Text="Edit" />
                <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="UploadImagePage.aspx?Id={0}" HeaderText="ProductImage" Text="Upload" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626482_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [ProductTable] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL))" InsertCommand="INSERT INTO [ProductTable] ([ProductID], [ProductName], [ProductDesc], [ProductPrice], [ProductQuantity]) VALUES (@ProductID, @ProductName, @ProductDesc, @ProductPrice, @ProductQuantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ProductTable]" UpdateCommand="UPDATE [ProductTable] SET [ProductName] = @ProductName, [ProductDesc] = @ProductDesc, [ProductPrice] = @ProductPrice, [ProductQuantity] = @ProductQuantity WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDesc" Type="String" />
                <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
                <asp:Parameter Name="original_ProductQuantity" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDesc" Type="String" />
                <asp:Parameter Name="ProductPrice" Type="Decimal" />
                <asp:Parameter Name="ProductQuantity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDesc" Type="String" />
                <asp:Parameter Name="ProductPrice" Type="Decimal" />
                <asp:Parameter Name="ProductQuantity" Type="Int32" />
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDesc" Type="String" />
                <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
                <asp:Parameter Name="original_ProductQuantity" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
