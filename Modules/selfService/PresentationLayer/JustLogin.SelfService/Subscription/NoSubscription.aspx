<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NoSubscription.aspx.cs" Inherits="JustLogin.SelfService.Subscription.Subscription1" %>

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
						<div class="trial-message-group">
							<div class="trial-img">
								<img src="~/Content files/images/subscribe-image.png" alt="No Access" runat="server" />
							</div>
							<div class="trial-message">You are currently running a trial account. Want to unleash the full potential?</div>
							<div class="trial-btn">
								<asp:Button runat="server" PostBackUrl="CustomerDetail.aspx" CssClass="btn btn-success" Text="Subscribe!" ></asp:Button>
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

