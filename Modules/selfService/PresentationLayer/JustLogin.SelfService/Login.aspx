<%@ Page Title="Login" Language="C#" AutoEventWireup="true"  MasterPageFile="JustLogin.SelfService.Master" CodeBehind="Login.aspx.cs" Inherits="JustLogin.SelfService.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            $("#CompanyName").attr("name", "CompanyName");
            $("#UserName").attr("name", "UserName");
            $("#password").attr("name", "password");
        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-lg-4 col-lg-offset-4">
        <img src="<%: ResolveClientUrl("~/selfService/Content/images/plane.png") %>" class="plane">
        <div class="text-center m-b-md">
          <h3>Sign in to JustLogin</h3>
        </div>
        <div class="hpanel">
          <div class="panel-body url-container">
            <div class="row">
              <div class="col-lg-12">
                  
                <div  id="loginForm">
                  <% if(error) {%> 
					<div id="login-msg" class="has-error"><div class="alert alert-danger">Unable to log you in <a href="#" onclick="return false;" class="close" data-dismiss="alert">×</a></div></div>
					<% } %>
                  <div class="form-group" id="fgComUrl">
                      <asp:HiddenField ID="CompanyName" runat="server"  ClientIDMode="Static"/>
                    <label class="control-label" for="exampleInputAmount">User Name</label>
                      <asp:TextBox ID="UserName"  runat="server" CssClass="form-control" placeholder="User Name or Email Address" title="Enter your user name" ValidationGroup="Add" ClientIDMode="Static" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="User Name is required" ForeColor="Red" ControlToValidate="UserName" 
                                ValidationGroup="Add" Display="Dynamic" SetFocusOnError="true" Enabled="true"></asp:RequiredFieldValidator>
                  </div>
                <div class="form-group">
                  <label class="control-label" for="password1">Password</label>
                  <asp:TextBox ID="password"  runat="server" CssClass="form-control" placeholder="******" title="Enter your password" ValidationGroup="Add" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is required" ForeColor="Red" ControlToValidate="password" 
                                ValidationGroup="Add" Display="Dynamic" SetFocusOnError="true" Enabled="true"></asp:RequiredFieldValidator>
                    
                </div>
                  
                <asp:Button ID="btnSubmit"
                        runat="server"
                        CssClass="btn btn-success btn-block" Text="Submit" ValidationGroup="Add" OnClick="btnSubmit_Click">
                    </asp:Button>
              </div>
              </div>
            </div>
                  
          </div>
        </div>
      </div>
</asp:Content>
