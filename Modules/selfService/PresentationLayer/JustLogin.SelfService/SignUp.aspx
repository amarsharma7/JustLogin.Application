<%@ Page Title="" Language="C#" MasterPageFile="./JustLogin.SelfService.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="JustLogin.SelfService.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <script src="js/SignUp.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-4 col-lg-offset-4">
        <img src="<%: ResolveClientUrl("~/selfService/Content/images/plane.png") %>" class="plane">
        <div class="text-center m-b-md">
          <h3>Sign Up to ePayroll</h3>
        </div>
        <div class="hpanel">
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">
                <div  id="loginForm">
                      <div class="form-group">
                        <label class="control-label">Full Name</label>
                      <asp:TextBox ID="tbxFullName"  runat="server" CssClass="form-control" placeholder="Full Name" title="Enter your full name"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ErrorMessage="Full Name is required" ForeColor="Red" ControlToValidate="tbxFullname" 
                                 ValidationGroup="Add" Display="Dynamic" SetFocusOnError="true" Enabled="true"></asp:RequiredFieldValidator>
                      </div>
                  <div class="form-group">
                      <label class="control-label">Company</label>
                      <asp:TextBox ID="tbxCompany"  runat="server" CssClass="form-control" placeholder="Company" title="Enter your company name"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfvCompany" runat="server" ErrorMessage="Company is required" ForeColor="Red" ControlToValidate="tbxCompany" 
                                 ValidationGroup="Add" Display="Dynamic" SetFocusOnError="true" Enabled="true"></asp:RequiredFieldValidator>
                  </div>
                  <div class="form-group">
                      <label class="control-label">Email</label>
                      <asp:TextBox ID="tbxEmail"  runat="server" CssClass="form-control" placeholder="Email" title="Enter your email"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required" ForeColor="Red" ControlToValidate="tbxEmail" 
                                 ValidationGroup="Add" Display="Dynamic" SetFocusOnError="true" Enabled="true"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator
                            id="regEmail"
                            ControlToValidate="tbxEmail" ForeColor="Red"
                            Text="Invalid email format"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  SetFocusOnError="true"
                            Runat="server"  ValidationGroup="Add"  Display="Dynamic"/> 
                        <asp:CustomValidator ID="cvEmailExist" runat="server" Display="Dynamic"
                        ErrorMessage="This email has already been used for sign up." ForeColor="Red" OnServerValidate="cvEmailExist_ServerValidate"
                        ClientValidationFunction="chkEmailExist"  ValidationGroup="Add" >
                        </asp:CustomValidator>
                  </div>
                  <div class="form-group">
                      <label class="control-label">Phone Number</label>
                      <asp:TextBox ID="tbxPhoneNumber"  runat="server" CssClass="form-control" placeholder="Phone Number" title="Enter your phone number"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ErrorMessage="Phone Number is required" ForeColor="Red" ControlToValidate="tbxPhoneNumber" 
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
