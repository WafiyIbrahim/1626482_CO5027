<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="AddPage.aspx.cs" Inherits="Darbuka_Prototype.Admin.AddPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
    Add Product Here
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">

    <!-- Button Back to Admin Panel -->
    <asp:Button ID="btnBackToAdmin" runat="server" Text="Back to Admin Panel" OnClick="btnBackToAdmin_Click" />

          <!-- Form view for List page -->
          <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
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
                  <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                  &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                  &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
              </ItemTemplate>
          </asp:FormView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626482_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [ProductTable] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL))" InsertCommand="INSERT INTO [ProductTable] ([ProductID], [ProductName], [ProductDesc]) VALUES (@ProductID, @ProductName, @ProductDesc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ProductTable]" UpdateCommand="UPDATE [ProductTable] SET [ProductName] = @ProductName, [ProductDesc] = @ProductDesc WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL))">
              <DeleteParameters>
                  <asp:Parameter Name="original_ProductID" Type="Int32" />
                  <asp:Parameter Name="original_ProductName" Type="String" />
                  <asp:Parameter Name="original_ProductDesc" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="ProductID" Type="Int32" />
                  <asp:Parameter Name="ProductName" Type="String" />
                  <asp:Parameter Name="ProductDesc" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="ProductName" Type="String" />
                  <asp:Parameter Name="ProductDesc" Type="String" />
                  <asp:Parameter Name="original_ProductID" Type="Int32" />
                  <asp:Parameter Name="original_ProductName" Type="String" />
                  <asp:Parameter Name="original_ProductDesc" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
      </form>
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
