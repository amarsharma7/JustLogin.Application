<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InvoiceList.aspx.cs" Inherits="JustLogin.SelfService.Subscription.InvoiceList" %>
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
							<div class="dataTables_wrapper form-inline dt-bootstrap no-footer">
								<div class="row">
									<div class="col-sm-12">
										<div  class="dataTables_filter">
											<label>Search:
												<asp:TextBox runat="server" type="search" CssClass="form-control input-sm" placeholder="" aria-controls="" />
											</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12">
										<div class="table-responsive aoro">
											<asp:Table runat="server" CssClass="table table-hover table-striped" cellspacing="0" style="border-style:None;border-collapse:collapse;">
											
													<asp:TableHeaderRow>
														<asp:TableHeaderCell >Company Name</asp:TableHeaderCell>
														<asp:TableHeaderCell >Fusebill ID</asp:TableHeaderCell>
														<asp:TableHeaderCell >Subscription ID </asp:TableHeaderCell>
														<asp:TableHeaderCell >Org ID (Salesforce)</asp:TableHeaderCell>
														<asp:TableHeaderCell>No. of Licenses</asp:TableHeaderCell>
														<asp:TableHeaderCell>Trial or Paid </asp:TableHeaderCell>
													</asp:TableHeaderRow>
													<asp:TableRow>
														<asp:TableCell><asp:HyperLink runat="server" NavigateUrl ="subscription-fusebill.html">Art Advanced Research Technologies Inc.</asp:HyperLink></asp:TableCell>
														<asp:TableCell>543543546</asp:TableCell>
														<asp:TableCell>JLS-1512</asp:TableCell>
														<asp:TableCell>2019-Jan-01AB</asp:TableCell>
														<asp:TableCell>11</asp:TableCell>
														<asp:TableCell>Paid</asp:TableCell>
													</asp:TableRow>
													<asp:TableRow>
														<asp:TableCell><asp:HyperLink runat="server" NavigateUrl="subscription-fusebill.html">Millenium Seacarriers, Inc.</asp:HyperLink></asp:TableCell>
														<asp:TableCell>543534566</asp:TableCell>
														<asp:TableCell>JLS-2151</asp:TableCell>
														<asp:TableCell>2019-Jan-645</asp:TableCell>
														<asp:TableCell>10</asp:TableCell>
														<asp:TableCell>trial</asp:TableCell>
													</asp:TableRow>
													<asp:TableRow>
														<asp:TableCell><asp:HyperLink runat="server" NavigateUrl="subscription-fusebill.html">New Skies Satellites N.V.</asp:HyperLink></asp:TableCell>
														<asp:TableCell>534565654</asp:TableCell>
														<asp:TableCell>JLS-1261</asp:TableCell>
														<asp:TableCell>2019-Jan-01</asp:TableCell>
														<asp:TableCell>5</asp:TableCell>
														<asp:TableCell>Paid</asp:TableCell>
													</asp:TableRow>
													<asp:TableRow>
														<asp:TableCell><asp:HyperLink runat="server" NavigateUrl="subscription-fusebill.html">Origin Energy Ltd.</asp:HyperLink></asp:TableCell>
														<asp:TableCell>567646756</asp:TableCell>
														<asp:TableCell>JLS-5656</asp:TableCell>
														<asp:TableCell>2019-Jan-21</asp:TableCell>
														<asp:TableCell>4</asp:TableCell>
														<asp:TableCell>Paid</asp:TableCell>
													</asp:TableRow>
													<asp:TableRow>
														<asp:TableCell><asp:HyperLink runat="server" NavigateUrl="subscription-fusebill.html">Rio Narcea Gold Mines Ltd.</asp:HyperLink></asp:TableCell>
														<asp:TableCell>543564665</asp:TableCell>
														<asp:TableCell>JLS-0252</asp:TableCell>
														<asp:TableCell>2019-Jan-012</asp:TableCell>
														<asp:TableCell>3</asp:TableCell>
														<asp:TableCell>Trial</asp:TableCell>
													</asp:TableRow>
											</asp:Table>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12">
										<div class="dataTables_paginate paging_simple_numbers" >
											<ul class="pagination">
												<li class="paginate_button previous disabled" aria-controls="" tabindex="0" ><asp:HyperLink runat="server" NavigateUrl="#">Previous</asp:HyperLink></li>
												<li class="paginate_button active" aria-controls="" tabindex="0"><asp:HyperLink runat="server" NavigateUrl="#">1</asp:HyperLink></li>
												<li class="paginate_button next disabled" aria-controls="" tabindex="0" ><asp:HyperLink runat="server" NavigateUrl="#">Next</asp:HyperLink></li>
											</ul>
										</div>
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

