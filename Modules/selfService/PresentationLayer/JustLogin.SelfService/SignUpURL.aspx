<%@ Page Title="" Language="C#" MasterPageFile="./JustLogin.SelfService.Master" AutoEventWireup="true" CodeBehind="SignUpURL.aspx.cs" Inherits="JustLogin.SelfService.SignUpURL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="<%: ResolveClientUrl("~/selfService/Content/vendor/jquery/dist/jquery.min.js") %>"></script>
   <script src="js/SignUpUrl.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-lg-4 col-lg-offset-4">
        <img src="<%: ResolveClientUrl("~/selfService/Content/images/plane.png") %>" class="plane">
        <div class="text-center m-b-md">
          <h3>Sign Up to ePayroll</h3>
        </div>
        <div class="hpanel">
          <div class="panel-body url-container">
            <div class="row">
              <div class="col-lg-12">
                <h5>Pick out a company URL name.</h5>
                <div class="form-inline">
                  <div class="form-group" id="fgComUrl">
                    <label class="sr-only" for="exampleInputAmount">Your company url</label>
                    <div class="input-group">
                        
                      <asp:TextBox ID="tbxCompanyURL"  runat="server" CssClass="form-control" style="width: 250px;" placeholder="companyurl" title="Enter your company url" ValidationGroup="Add" ></asp:TextBox>
                      
                        <div class="input-group-addon">.justlogin.com</div>
                    </div>
                        <asp:RequiredFieldValidator ID="rfvCompanyURL" runat="server" ErrorMessage="Company URL is required" ForeColor="Red" ControlToValidate="tbxCompanyURL" 
                                 ValidationGroup="Add" Display="Dynamic" SetFocusOnError="true" Enabled="true"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="revUserName" runat="server" ErrorMessage= "Company URL may not contain space or \\()*%_/,+=;|#:&quot;'<>" ForeColor="Red" 
            ValidationExpression="^[a-zA-Z0-9]+$" ControlToValidate="tbxCompanyURL"  ValidationGroup="Add" Display="Dynamic" SetFocusOnError="true" Enabled="true"></asp:RegularExpressionValidator>
                        <asp:CustomValidator ID="cvCompanyURL" runat="server" Display="Dynamic"
                        ErrorMessage="Company url already taken." ForeColor="Red" 
                        ClientValidationFunction="chk_URL_Exist"  ValidationGroup="Add" >
                        </asp:CustomValidator>
                  </div>
                </div><br>
                <div class="form-group">
                  <label class="control-label" for="password1">Password <a class="text-info" data-toggle="popover" title="" data-html="true" data-content="Password should contain the following: <ul><li>Minimum 8 characters</li><li>At least 1 uppercase letter</li><li>At least 1 lowercase letter</li><li>At least 1 number</li><li>At least 1 special character</li>" ><i class="fa fa-info-circle" ></i></a></label>
                  <asp:TextBox ID="tbxPassword"  runat="server" CssClass="form-control" placeholder="******" title="Enter your password" ValidationGroup="Add" TextMode="Password"></asp:TextBox>
                   
                     <asp:CustomValidator ID="cvPassword" runat="server" Display="Dynamic"
                        ErrorMessage="Invalid Password." ForeColor="Red" 
                        ClientValidationFunction="chk_Password"  ValidationGroup="Add"  ValidateEmptyText="true">
                        </asp:CustomValidator>
                    <asp:RegularExpressionValidator ID="regPassword" runat="server" ControlToValidate="tbxPassword"
                        ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,15}"
                        ErrorMessage="Password must contain: Minimum 8 and Maximum 15 characters, atleast 1 UpperCase Character, 1 LowerCase Character, 1 Number and 1 Special Character"
                    ForeColor="Red" ValidationGroup="Add" Display="Dynamic" SetFocusOnError="true" Enabled="true"/>

                    
                </div>
                <div class="form-group">
                  <label class="control-label" for="password2">Confirm Password</label>
                  <asp:TextBox ID="tbxConfirmedPassword"  runat="server" CssClass="form-control" placeholder="******" title="Enter your password" ValidationGroup="Add" TextMode="Password"></asp:TextBox>
                    
                     <asp:CustomValidator ID="cvConfirmedPassword" runat="server" Display="Dynamic"
                        ErrorMessage="Invalid Password." ForeColor="Red" 
                        ClientValidationFunction="chk_Confirmed_Password"  ValidationGroup="Add"  ValidateEmptyText="true">
                        </asp:CustomValidator>
                      <asp:CompareValidator id="comparePasswords" runat="server" ForeColor="Red"
                          ControlToCompare="tbxPassword" ControlToValidate="tbxConfirmedPassword"
                          ErrorMessage="Your passwords do not match up!"
                          ValidationGroup="Add" Display="Dynamic" SetFocusOnError="true" Enabled="true"/>
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
</asp:Content>
