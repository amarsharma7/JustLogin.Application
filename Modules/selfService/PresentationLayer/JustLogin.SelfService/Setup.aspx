<%@ Page Title="" Language="C#" MasterPageFile="./JustLogin.SelfService.Master" AutoEventWireup="true" CodeBehind="Setup.aspx.cs" Inherits="JustLogin.SelfService.Setup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="Refresh" content="60" />  
    <script src="js/Setup.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hidCompanyURL" runat="server" />
    <asp:HiddenField ID="hidCompanyFullURL" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!-- Simple splash screen-->
    <div class="splash" id="splashSetup">
        <div class="color-line"></div>
        <div class="splash-title">
            <h1>Welcome to Justlogin.</h1>
            <p>Please wait while we are setting up <a href="" id="siteLink1" target="_blank">your site</a>.. </p>
            <img src="<%: ResolveClientUrl("~/selfService/Content/images/loading-bars.svg") %>" width="64" height="64" />
        </div>
    </div>
</asp:Content>
