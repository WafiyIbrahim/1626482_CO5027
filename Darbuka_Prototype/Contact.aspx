<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Darbuka_Prototype.Contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

    <div id="contactInfo">
        <h1>CONTACT uS</h1>

        <!-- Summary Validation -->
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

        <!-- Email Field -->
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

            <asp:RegularExpressionValidator ID="regEmailValidator" runat="server" ErrorMessage="*This Email is not valid!" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="regEmailField" runat="server" ErrorMessage="*Please enter your Email!" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

        <!-- Subject Field -->
        <p></p>
            <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator ID="reqSubjectField" runat="server" ErrorMessage="*Please enetr your subject!" ControlToValidate="txtSubject"></asp:RequiredFieldValidator>

        <!-- Body field -->
        <p>&nbsp;</p>   
            <asp:Label ID="lblBody" runat="server" Text="Body"></asp:Label>
            <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine"></asp:TextBox>

            <asp:RequiredFieldValidator ID="reqBodyField" runat="server" ErrorMessage="*Please enter your messege here!" ControlToValidate="txtBody"></asp:RequiredFieldValidator>

        <!-- Send button-->
        <p></p> 
            <asp:Button ID="btnSendEmail" runat="server" Text="Send Email" OnClick="btnSendEmail_Click"/>
        <p></p> 
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
    </div>
</form>
    
</asp:Content>

        
        <asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
            <div id="map"></div>
            <script>
              var map;
              function initMap() {
                map = new google.maps.Map(document.getElementById('map'), {
                  center: {lat: 4.885808, lng: 114.931676},
                  zoom: 18
                });

                var marker = new google.maps.Marker({
                    position: { lat: 4.885808, lng: 114.931676 },
                    map: map,
                    title: 'Ad-Darbuka'
                });
              }
            </script>
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDNIBMOpNTem55lD3f910VI89T9LSA7Ge0&callback=initMap"
            async defer></script>
        </asp:Content>