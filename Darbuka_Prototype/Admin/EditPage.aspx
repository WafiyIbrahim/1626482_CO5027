<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="EditPage.aspx.cs" Inherits="Darbuka_Prototype.Admin.EditPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Ad Darbuka - Edit Page.
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">


    <div id="EditProduct">
        <h1>EDIT PRODUCT</h1>
    </div>

     <div id="AdminPath">
        <a href="~/Admin/index.aspx" runat="server">Back to Admin Panel</a>
     </div>

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductDesc:
            <asp:TextBox ID="ProductDescTextBox" runat="server" Text='<%# Bind("ProductDesc") %>' />
            <br />
            ProductPrice:
            <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            ProductQuantity:
            <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
            <br />
            ProductImage:
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:LinkButton ID="linkSaveImage" runat="server" OnClick="linkSaveImage_Click">Save this Image</asp:LinkButton>
            <asp:Label ID="lblImageSave" runat="server" Text='<%# Bind("ProductImage") %>'></asp:Label>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ProductID:
            <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductDesc:
            <asp:TextBox ID="ProductDescTextBox" runat="server" Text='<%# Bind("ProductDesc") %>' />
            <br />
            ProductPrice:
            <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            ProductQuantity:
            <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
            <br />
            ProductImage:
            <asp:TextBox ID="ProductImageTextBox" runat="server" Text='<%# Bind("ProductImage") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            ProductName:
            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductDesc:
            <asp:Label ID="ProductDescLabel" runat="server" Text='<%# Bind("ProductDesc") %>' />
            <br />
            ProductPrice:
            <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            ProductQuantity:
            <asp:Label ID="ProductQuantityLabel" runat="server" Text='<%# Bind("ProductQuantity") %>' />
            <br />
            ProductImage:
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductImage") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626482_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [ProductTable] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL)) AND (([ProductImage] = @original_ProductImage) OR ([ProductImage] IS NULL AND @original_ProductImage IS NULL))" InsertCommand="INSERT INTO [ProductTable] ([ProductID], [ProductName], [ProductDesc], [ProductPrice], [ProductQuantity], [ProductImage]) VALUES (@ProductID, @ProductName, @ProductDesc, @ProductPrice, @ProductQuantity, @ProductImage)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ProductTable] WHERE ([ProductID] = @ProductID)" UpdateCommand="UPDATE [ProductTable] SET [ProductName] = @ProductName, [ProductDesc] = @ProductDesc, [ProductPrice] = @ProductPrice, [ProductQuantity] = @ProductQuantity, [ProductImage] = @ProductImage WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL)) AND (([ProductImage] = @original_ProductImage) OR ([ProductImage] IS NULL AND @original_ProductImage IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_ProductDesc" Type="String" />
            <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
            <asp:Parameter Name="original_ProductQuantity" Type="Int32" />
            <asp:Parameter Name="original_ProductImage" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductDesc" Type="String" />
            <asp:Parameter Name="ProductPrice" Type="Decimal" />
            <asp:Parameter Name="ProductQuantity" Type="Int32" />
            <asp:Parameter Name="ProductImage" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductDesc" Type="String" />
            <asp:Parameter Name="ProductPrice" Type="Decimal" />
            <asp:Parameter Name="ProductQuantity" Type="Int32" />
            <asp:Parameter Name="ProductImage" Type="String" />
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_ProductDesc" Type="String" />
            <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
            <asp:Parameter Name="original_ProductQuantity" Type="Int32" />
            <asp:Parameter Name="original_ProductImage" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
