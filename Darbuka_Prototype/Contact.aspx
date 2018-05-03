<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Darbuka_Prototype.Contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    AD DARBUKA - CONTACT US
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div id="contactInfo">
        <h1>CONTACT US</h1>

        <!-- Summary Validation -->
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

        <div id="ContactForm">
            <table id="ContactTable">
            <!-- Email Field -->
                <tr>
                    <td><asp:Label ID="lblEmail" runat="server" Text="EMAIL:" CssClass="lblEmail"></asp:Label></td>
                </tr>

                <tr>
                    <td><asp:TextBox ID="txtEmail" runat="server" CssClass="EmailBox"></asp:TextBox></td>
                </tr>

                <asp:RegularExpressionValidator ID="regEmailValidator" runat="server" ErrorMessage="*This Email is not valid!" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="regEmailField" runat="server" ErrorMessage="*Please enter your Email!" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

            <!-- Subject Field -->
                <tr>            
                    <td><asp:Label ID="lblSubject" runat="server" Text="SUBJECT:" CssClass="lblSubject"></asp:Label></td>
                </tr>

                <tr>
                    <td><asp:TextBox ID="txtSubject" runat="server" CssClass="SubjectBox"></asp:TextBox></td>
                </tr>
                <asp:RequiredFieldValidator ID="reqSubjectField" runat="server" ErrorMessage="*Please enetr your subject!" ControlToValidate="txtSubject"></asp:RequiredFieldValidator>

            <!-- Body field -->
                <tr>  
                    <td><asp:Label ID="lblBody" runat="server" Text="MESSAGE:" CssClass="lblMsg"></asp:Label></td>
                </tr>

                <tr>
                    <td><asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" CssClass="MsgBox"></asp:TextBox></td>
                </tr> 
                <asp:RequiredFieldValidator ID="reqBodyField" runat="server" ErrorMessage="*Please enter your messege here!" ControlToValidate="txtBody"></asp:RequiredFieldValidator>
            
            </table>

            <!-- Send button-->
                <div id="btnSendingMsg">
                    <asp:Button ID="btnSendEmail" runat="server" Text="Send Email" OnClick="btnSendEmail_Click" CssClass="btnSendingMsg"/>
                </div>

        </div>
            <div id="litMsg">
                <asp:Literal ID="litResult" runat="server"></asp:Literal>
            </div>
    </div>

    
</asp:Content>

        
        <asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
            <div id="map">
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

                <script async defer type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDNIBMOpNTem55lD3f910VI89T9LSA7Ge0&callback=initMap"></script>

           </div>
        </asp:Content>