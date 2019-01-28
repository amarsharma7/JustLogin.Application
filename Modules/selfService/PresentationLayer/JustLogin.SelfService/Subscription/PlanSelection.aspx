<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlanSelection.aspx.cs" Inherits="JustLogin.SelfService.Subscription.PlanSelection" %>

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
     <script src="<%: ResolveClientUrl("~/Content files/js/justlogin-theme.js") %>"></script>
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
											<li class="active"><span class="bubble"></span> 2. Plan Selection</li>
											<li><span class="bubble"></span> 3. Credit Card Capture </li>
										</ul>
									</div>
								</div>
								<div class="pricing-plan owl-carousel owl-theme">
									<div class="item pricing-box">
										<div class="price">								
											<div class="amount">
												<span class="dollar-sign">$</span>
												<span class="main-amount">99</span>
												<span class="cent">00</span>
												<span class="planperiod">per month</span>
											</div>
										</div>
										<div class="plan-name">Basic</div>
										<ul class="plan-items">
											<li>Full Statistics</li>
											<li>Max 100 items</li>
											<li>up to five users</li>
											<li>Unlimited Queries</li>
										</ul>
										<div class="btn-group">

                                            <asp:Button runat="server" CssClass="btn" PostBackUrl="javascript:void(0);" Text="Get Starts"></asp:Button>
										</div>
									</div>
									<div class="item pricing-box ">
										<div class="price">								
											<div class="amount">
												<span class="dollar-sign">$</span>
												<span class="main-amount">99</span>
												<span class="cent">00</span>
												<span class="planperiod">per month</span>
											</div>
										</div>
										<div class="plan-name">Popular</div>
										<ul class="plan-items">
											<li>Full Statistics</li>
											<li>Max 100 items</li>
											<li>up to five users</li>
											<li>Unlimited Queries</li>
										</ul>
										<div class="btn-group">
											<asp:Button runat="server" CssClass="btn" PostBackUrl ="javascript:void(0);" Text="Get Starts"></asp:Button>
										</div>
									</div>
									<div class="item pricing-box">
										<div class="price">								
											<div class="amount">
												<span class="dollar-sign">$</span>
												<span class="main-amount">99</span>
												<span class="cent">00</span>
												<span class="planperiod">per month</span>
											</div>
										</div>
										<div class="plan-name">Standard</div>
										<ul class="plan-items">
											<li>Full Statistics</li>
											<li>Max 100 items</li>
											<li>up to five users</li>
											<li>Unlimited Queries</li>
										</ul>
										<div class="btn-group">
											<asp:Button runat="server" CssClass="btn" PostBackUrl="javascript:void(0);" Text="Get Starts"></asp:Button>
										</div>
									</div>
									<div class="item pricing-box">
										<div class="price">								
											<div class="amount">
												<span class="dollar-sign">$</span>
												<span class="main-amount">99</span>
												<span class="cent">00</span>
												<span class="planperiod">per month</span>
											</div>
										</div>
										<div class="plan-name">Preminum</div>
										<ul class="plan-items">
											<li>Full Statistics</li>
											<li>Max 100 items</li>
											<li>up to five users</li>
											<li>Unlimited Queries</li>
										</ul>
										<div class="btn-group">
											<asp:Button runat="server" CssClass="btn" PostBackUrl="javascript:void(0);" Text="Get Starts"></asp:Button>
										</div>
									</div>
									
								</div>
								<hr>
								<div class="clearfix">
									<asp:Button runat="server" CssClass="btn btn-default pull-left" type="submit" PostBackUrl="CustomerDetail.aspx" Text="Back"></asp:Button>
									<div class="pull-right">
										<asp:Button runat="server" CssClass="btn btn-success pull-left" type="submit" PostBackUrl="Payment.aspx" Text="Continue" ></asp:Button>
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
