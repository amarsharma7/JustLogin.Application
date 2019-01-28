<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDetail.aspx.cs" Inherits="JustLogin.SelfService.CustomerDetail" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Co4mpatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Just Login</title>


    <link rel="stylesheet" href="<%: ResolveClientUrl("~/selfService/Content/vendor/bootstrap/dist/css/bootstrap.css") %>" />
    <!-- App styles -->
    <link rel="stylesheet" href="<%: ResolveClientUrl("~/selfService/Content/fonts/pe-icon-7-stroke/css/helper.css") %>" />
    <link rel="stylesheet" href="<%: ResolveClientUrl("~/selfService/Content/styles/style.css") %>" />
    <!-- Vendor scripts -->
    <script src="<%: ResolveClientUrl("~/selfService/Content/vendor/jquery/dist/jquery.min.js") %>"></script>
    <script src="<%: ResolveClientUrl("~/selfService/Content/vendor/jquery-ui/jquery-ui.min.js") %>"></script>
    <script src="<%: ResolveClientUrl("~/selfService/Content/vendor/bootstrap/dist/js/bootstrap.min.js") %>"></script>
    <!-- for google -->
    <script src="<%: ResolveClientUrl("~/selfService/Content/scripts/platform.js") %>"></script>
    <link href="<%: ResolveClientUrl("~/Content files/images/favicon.ico") %>" rel="shortcut icon" type="image/x-icon" />
    <link href="<%: ResolveClientUrl("~/Content/bootstrap.min.css") %>" rel="stylesheet" />
    <link href="<%: ResolveClientUrl("~/Content files/css/font-awesome.min.css") %>" rel="stylesheet" />
    <link href="<%: ResolveClientUrl("~/Content files/css/pe-icon-7-stroke.css") %>" rel="stylesheet" />
    <link href="<%: ResolveClientUrl("~/Content files/css/justlogin-theme.css") %>" rel="stylesheet" />
    <link href="<%: ResolveClientUrl("~/Content files/css/owl.carousel.min.css") %>" rel="stylesheet" />
    <link rel="stylesheet" href="<%: ResolveClientUrl("~/Content files/content/styles/style.css") %>" />
    <link rel="stylesheet" href="<%: ResolveClientUrl("~/Content files/content/styles/jl-style-eForm.css") %>" />
    <link rel="stylesheet" href="<%: ResolveClientUrl("~/Content files/content/styles/jl-styles.css") %>" />
    <link rel="stylesheet" href="<%: ResolveClientUrl("~/Content files/content/styles/jl-subnavigation-styles.css") %>" />
    <link rel="stylesheet" href="<%: ResolveClientUrl("~/Content files/content/styles/profile-image.css") %>" />
    <link rel="stylesheet" href="<%: ResolveClientUrl("~/Content files/content/styles/progress-wizard.min.css") %>" />
    <script type="text/javascript" src="<%: ResolveClientUrl("~/Content files/js/jquery.min.js") %>"></script>
    <script type="text/javascript" src="<%: ResolveClientUrl("~/Content files/js/popper.min.js") %>"></script>
    <script type="text/javascript" src="<%: ResolveClientUrl("~/Content files/js/bootstrap.min.js") %>"></script>
    <script src="<%: ResolveClientUrl("~/Content files/js/owl.carousel.js") %>"></script>
</head>
<body>
    <form id="Tab1" runat="server">
        <div id="wrapper">
            <div class="content">
                <section>
                    <div class="row">
                        <div id="divContent" visible="true" runat="server" class="col-lg-12">
                            <div class="subscription-steps">
                                <div class="onboarding-import-staff">
                                    <div class="row">
                                        <div class="col-lg-8 col-lg-offset-2">
                                            <ul class="progress-indicator leave-import-progress">
                                                <li class="active"><span class="bubble"></span>1. Information Confirmation</li>
                                                <li><span class="bubble"></span>2. Plan Selection</li>
                                                <li><span class="bubble"></span>3. Credit Card Capture </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <span id="spanError" class="alert alert-danger" runat="server" visible="false"></span>
                                    </div>
                                    <div class="leave-form" id="applyleaveid">
                                        <div class="col-lg-7">
                                            <div class="subscription-sub-title">General</div>
                                            <fieldset>
                                                <label>Company Name</label>
                                                <asp:TextBox ID="tbxCompanyName" runat="server" name="comapny-name" type="text" placeholder="Company Name" CssClass="form-control input-sm pull-right" />
                                                <asp:RequiredFieldValidator ID="rfvComapanyName" runat="server" ErrorMessage="Company name is required" ForeColor="Red" ControlToValidate="tbxCompanyName"
                                                    ValidationGroup="Add" Display="Dynamic" SetFocusOnError="true" Enabled="true"></asp:RequiredFieldValidator>
                                            </fieldset>
                                            <fieldset>
                                                <label>Justlogin URL</label>
                                                <p class="detail">Justlogin URL</p>
                                            </fieldset>
                                            <fieldset>
                                                <label>Address</label>
                                                <asp:TextBox ID="taAddress" TextMode="MultiLine" runat="server" name="comapny-name" type="text" placeholder="Address" CssClass="form-control input-sm pull-right" />
                                            </fieldset>
                                            <div class="subscription-sub-title">Primary Contact</div>
                                            <fieldset>
                                                <label>First Name</label>
                                                <asp:TextBox ID="tbxFirstName" runat="server" type="text" placeholder="First Name" CssClass="form-control input-sm pull-right" />
                                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="First Name is required" ForeColor="Red" ControlToValidate="tbxFirstName"
                                                    ValidationGroup="Add" Display="Dynamic" SetFocusOnError="true" Enabled="true"></asp:RequiredFieldValidator>
                                            </fieldset>
                                            <fieldset>
                                                <label>Last Name</label>
                                                <asp:TextBox ID="tbxLastName" runat="server" type="text" placeholder="Last Name" CssClass="form-control input-sm pull-right" />
                                                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Last Name is required" ForeColor="Red" ControlToValidate="tbxLastName"
                                                    ValidationGroup="Add" Display="Dynamic" SetFocusOnError="true" Enabled="true"></asp:RequiredFieldValidator>
                                            </fieldset>
                                            <fieldset>
                                                <label>Phone Number</label>
                                                <asp:TextBox ID="tbxPhoneNumber" runat="server" name="comapny-name" TextMode="Number" placeholder="Phone Number" CssClass="form-control input-sm pull-right" />
                                                <asp:RequiredFieldValidator ID="rfv" runat="server" ErrorMessage="Phone number is required" ForeColor="Red" ControlToValidate="tbxPhoneNumber"
                                                    ValidationGroup="Add" Display="Dynamic" SetFocusOnError="true" Enabled="true"></asp:RequiredFieldValidator>
                                            </fieldset>
                                            <fieldset>
                                                <label>Email Address </label>
                                                <asp:TextBox ID="tbxEmail" runat="server" name="comapny-name" TextMode="Email" placeholder="Email Address" CssClass="form-control input-sm pull-right" />
                                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email address is required" ForeColor="Red" ControlToValidate="tbxEmail"
                                                    ValidationGroup="Add" Display="Dynamic" SetFocusOnError="true" Enabled="true"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator
                                                    ID="regEmail"
                                                    ControlToValidate="tbxEmail" ForeColor="Red"
                                                    Text="Invalid email format"
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="true"
                                                    runat="server" ValidationGroup="Add" Display="Dynamic" />
                                            </fieldset>
                                            <div class="theme-checkbox">
                                                <asp:CheckBox ID="cbxTermCondition" runat="server" type="checkbox" name="vehicle1" value="Bike" />
                                                By continuing you agree to the
                                             <asp:HyperLink runat="server" NavigateUrl="https://www.google.com/" Target="_blank">terms and conditions</asp:HyperLink>
                                                of use.
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="clearfix">
                                        <asp:Button runat="server" CssClass="btn btn-default pull-left" type="submit" PostBackUrl="NoSubscription.aspx" Text="Back"></asp:Button>
                                        <div class="pull-right">
                                            <asp:Button runat="server" CssClass="btn btn-success pull-left" type="submit" ValidationGroup="Add" Text="Continue" ID="btnSaveCustomer" OnClick="btnSaveCustomer_Click"></asp:Button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="divError" visible="false" runat="server" class="error-message-group">
							<div class="error-img">
								<img src="../Content files/images/erro-image.png" alt="No Access">
							</div>
							<div class="error-message">
                                <asp:Label ID="lblErrorMessage" runat="server"></asp:Label>
							</div>
							<div class="error-btn">
								<a href="subscription-step1.html" class="btn btn-success" >Go to Home!</a>
							</div>
                        </div>
                    </div>
                </section>
                <footer class="footer">
                    <span class="pull-right">&#169; Copyright 2019 - 1.0</span> Justlogin Pte Ltd.
                </footer>
            </div>
        </div>
    </form>

    <script>
        //$(document).ready(function () {
        //    debugger
        //    $.ajax({
        //        type: "GET",
        //        contentType: "application/json",
                
        //        dataType: "json",
        //        url: "CustomerDetail.aspx/GetCustomerDetail?customerId=123",                
        //        success: function (msg) {
        //            alert(msg)
        //        }
        //    });
        //});
    </script>

</body>
</html>

