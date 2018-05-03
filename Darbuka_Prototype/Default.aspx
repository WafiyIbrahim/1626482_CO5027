<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Darbuka_Prototype.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
     AD DARBUKA - HOMEPAGE
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Below are the codes for Homepage Banner -->
            <div id="HomepageBanner">
               <a><img src="Pictures/BannerHomepage.jpg" alt="Banner"></a>
            </div>
    
<!-- Below are the codes for List of Products -->
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate><ul></HeaderTemplate>

                <ItemTemplate>
                    <table id="tableProduct">
                        <tr>
                            <td>
                            <a href='<%#Eval ("ProductId","ShoppingCart/ProductDesc.aspx?Id={0}") %>'>
                                <asp:Image ID="ImageDefault" runat="server" alt="Ad-Darbuka Drum" height="250" Width="200"  ImageUrl='<%#Eval ("ProductImage") %>' />
                                <p><%#Eval ("ProductName")%></p> <p>Price:<%#Eval ("ProductPrice") %></p>
                            </a>
                            </td>
                        </tr>
                    </table>   
                </ItemTemplate>

            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626482_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [ProductTable] WHERE ([ProductQuantity] &gt; @ProductQuantity)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="ProductQuantity" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>


