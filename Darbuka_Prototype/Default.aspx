<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Darbuka_Prototype.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
     AD DARBUKA - HOMEPAGE.
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Below are the codes for Homepage Banner -->
            <div id="HomepageBanner">
               <a><img src="Pictures/BannerHomepage.jpg" alt="Logo"></a>
            </div>
    
<!-- Below are the codes for List of Products -->
    <form id="form1" runat="server">

        <asp:Repeater ID="ProductList" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate><ul></HeaderTemplate>

                <ItemTemplate>
                    <li>
                        <a href="<%#Eval ("ProductId","ProductDesc.aspx?Id={0}") %>">
                            <!-- <img src='%#Eval " -->
                            <%#Eval ("ProductName")%>
                        </a>
                    </li>
                </ItemTemplate>

            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626482_co5027_asgConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [ProductTable]"></asp:SqlDataSource>
</form>
</asp:Content>
