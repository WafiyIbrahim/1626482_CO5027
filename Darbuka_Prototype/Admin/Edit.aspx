<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Darbuka_Prototype.Admin.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
    Edit of Product
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <form id="viewForm" runat="server">

         <!-- Button Back to Admin Panel -->
         <asp:Button ID="btnBackToAdmin" runat="server" Text="Back to Admin Panel" OnClick="btnBackToAdmin_Click" />

         <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ProductID">
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
                 <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice", "{0:C}") %>' />
                 <br />
                 ProductQuantity:
                 <asp:Label ID="ProductQuantityLabel" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                 <br />
                 <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                 &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                 &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
             </ItemTemplate>
         </asp:FormView>

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626482_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [ProductTable] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL))" InsertCommand="INSERT INTO [ProductTable] ([ProductID], [ProductName], [ProductDesc], [ProductPrice], [ProductQuantity]) VALUES (@ProductID, @ProductName, @ProductDesc, @ProductPrice, @ProductQuantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ProductTable] WHERE ([ProductID] = @ProductID)" UpdateCommand="UPDATE [ProductTable] SET [ProductName] = @ProductName, [ProductDesc] = @ProductDesc, [ProductPrice] = @ProductPrice, [ProductQuantity] = @ProductQuantity WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL))">
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
             <SelectParameters>
                 <asp:QueryStringParameter Name="ProductID" QueryStringField="Id" Type="Int32" />
             </SelectParameters>
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

         <asp:Image ID="ImageEditPage" runat="server" BorderStyle="Solid" Height="150px" Width="110px" />

         <!-- Button Back to ListPage.aspx -->
         <asp:Button ID="btnBackToList" runat="server" Text="Back" OnClick="btnBackToList_Click" />

     </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
