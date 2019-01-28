<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="JustLogin.SelfService.Subscription.Payment" %>

   <head runat="server">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Co4mpatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Just Login </title>
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
	<script type="text/javascript" src="<%: ResolveClientUrl("~/Content files/js/popper.min.js") %>" ></script>
	<script type="text/javascript" src="<%: ResolveClientUrl("~/Content files/js/bootstrap.min.js") %>"></script>
    <script src="<%: ResolveClientUrl("~/Content files/js/owl.carousel.js") %>"></script>
</head>

<body>
    <form id="form1" runat="server">
  <div id="wrapper">
		<div class="content">
			<section>
				<div class="row">
					<div class="col-lg-12">
						<div class="subscription-steps">							
							<div class="onboarding-import-staff">
								<div class="row">
									<div class="col-lg-8 col-lg-offset-2">
										<ul class="progress-indicator leave-import-progress">
											<li class="completed"><span class="bubble"></span><span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Information Confirmation</li>
											<li class="completed"><span class="bubble"></span><span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Plan Selection</li>
											<li class="active"><span class="bubble"></span> 3. Credit Card Capture </li>
										</ul>
									</div>
								</div>
								
								<div class="almost-done"><i class="fa fa-thumbs-o-up"></i> You are almost done! </div>
								
								<div class="subscription-sub-title">Charges</div>
								<div class="table-responsive aoro">
									<asp:Table runat="server" CssClass="table table-hover table-striped" cellspacing="0" style="border-style:None;border-collapse:collapse;">
										
											<asp:TableHeaderRow>
												<asp:TableHeaderCell >Plan</asp:TableHeaderCell>
												<asp:TableHeaderCell >Price (Per Month)</asp:TableHeaderCell>
												<asp:TableHeaderCell >Licenses</asp:TableHeaderCell>												
												<asp:TableHeaderCell  HorizontalAlign="Right">Total Charges (Billable per month)</asp:TableHeaderCell>
											</asp:TableHeaderRow>
									
										<asp:TableRow>
										
												<asp:TableCell>
													<div class="table-plan">
														<div class="table-plan-name">Basic</div>
														<ul class="plan-items">
															<li>Full Statistics</li>
															<li>Max 100 items</li>
															<li>up to five users</li>
															<li>Unlimited Queries</li>
														</ul>
													</div>
												</asp:TableCell>
												<asp:TableCell>
													<div class="table-price">
														<div class="amount">
															<span class="dollar-sign">$</span>
															<span class="main-amount">99</span>
															<span class="cent">00</span>
														</div>
													</div>
												</asp:TableCell>
												<asp:TableCell>
													<asp:TextBox ID="tbxLicence" runat="server" name="comapny-name" TextMode="Number" value="3" CssClass="form-control table-licence-form-control" />
                                                    <asp:RequiredFieldValidator ID="rfvLicence" runat="server" ErrorMessage="Licence no. is required" ForeColor="Red" ControlToValidate="tbxLicence" 
                                 ValidationGroup="Add" Display="Dynamic" SetFocusOnError="true" Enabled="true"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="revLicenceNo" ControlToValidate="tbxLicence" runat="server"
    ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" ValidationGroup="Add" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ></asp:RegularExpressionValidator>
                                                    <asp:CompareValidator ID="cmvLicenceNo" runat="server" ValueToCompare="0" ControlToValidate="tbxLicence"
ErrorMessage="Must enter greater than zero" Operator="GreaterThan" Type="Integer" ValidationGroup="Add" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:CompareValidator>
												</asp:TableCell>
												<asp:TableCell HorizontalAlign="Right">
													<div class="table-price">								
														<div class="amount">
															<span class="dollar-sign">$</span>
															<span class="main-amount">297</span>
															<span class="cent">00</span>
														</div>
													</div>
												</asp:TableCell>
											
										</asp:TableRow>
									</asp:Table>
								</div>
								<div class="subscription-sub-title">Payment Method</div>
								<div class="leave-form">
									<div class="col-lg-6">									
										<fieldset>
											<label>Credit Card</label>
											<asp:TextBox ID="tbxCreditCard" runat="server" name="comapny-name" TextMode="Number" placeholder="Credit Card Number" CssClass="form-control input-sm pull-right" />
                                            <asp:RequiredFieldValidator ID="rfvCreditCard" runat="server" ErrorMessage="Credit card number is required" ForeColor="Red" ControlToValidate="tbxCreditCard" 
                                 ValidationGroup="Add" Display="Dynamic" SetFocusOnError="true" Enabled="true"></asp:RequiredFieldValidator>
										</fieldset>
									</div>
								</div>
								<hr>
								<div class="clearfix">
									<asp:Button  runat="server" CssClass="btn btn-default pull-left" type="submit" PostBackUrl="PlanSelection.aspx" Text="Back"></asp:Button>
									<div class="pull-right">
										<asp:Button ValidationGroup="Add" runat="server" CssClass="btn btn-success pull-left" type="submit" PostBackUrl="SucessPage.aspx" Text="Finish"></asp:Button>
									</div>
								</div>
							</div>
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
</body>
