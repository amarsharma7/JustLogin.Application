<%@ Page Title="" Language="C#" MasterPageFile="./JustLogin.SelfService.Master" AutoEventWireup="true" CodeBehind="SignUpDone.aspx.cs" Inherits="JustLogin.SelfService.SignUpDone" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-8 col-lg-offset-2 text-center">
        <div class="f-modal-alert">
          <div class="f-modal-icon f-modal-success animate">
            <span class="f-modal-line f-modal-tip animateSuccessTip"></span>
            <span class="f-modal-line f-modal-long animateSuccessLong"></span>
            <div class="f-modal-placeholder"></div>
            <div class="f-modal-fix"></div>
          </div>
        </div> 
        <h3>Confirm your account</h3>
        <p>Thank you for signing with us. Your account is almost ready.<br>Please check your inbox to confirm your email address.</p>
        <p class="text-primary"><u><asp:Literal ID="litEmail" runat="server"></asp:Literal></u></p>
      </div>
</asp:Content>
