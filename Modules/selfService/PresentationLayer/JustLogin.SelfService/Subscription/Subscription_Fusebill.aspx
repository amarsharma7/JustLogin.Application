<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subscription_Fusebill.aspx.cs" Inherits="JustLogin.SelfService.Subscription.Subscription_Fusebill" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Co4mpatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Just Login Sensation</title>	
	<link href="images/favicon.ico" rel="shortcut icon" type="image/x-icon" />	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/pe-icon-7-stroke.css">
	<link rel="stylesheet" href="css/justlogin-theme.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	
	<link rel="stylesheet" href="content/styles/style.css">
	<link rel="stylesheet" href="content/styles/jl-style-eForm.css">
	<link rel="stylesheet" href="content/styles/jl-styles.css">
	<link rel="stylesheet" href="content/styles/jl-subnavigation-styles.css">
	<link rel="stylesheet" href="content/styles/profile-image.css">
	<link rel="stylesheet" href="content/styles/progress-wizard.min.css">
	
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js" ></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.js"></script>
</head>
<body>
    <form id="Form1" runat="server">
	<div id="header" class="header">
		<div class="color-line"></div>
		<div id="logo" class="light-version">
			<asp:HyperLink runat="server" NavigateUrl="javascript:void(0)">
				<img src="<%: ResolveClientUrl("~/Sensation/images/logo.png") %>">
			</asp:HyperLink>
		</div>
		<nav role="navigation">
			<div class="header-link hide-menu"><i class="fa fa-bars"></i></div>
			<div class="small-logo">
				<span class="text-primary">Venkat Test </span>
			</div>
			<div class="navbar-right">
				<ul class="nav navbar-nav no-borders">
					<li>
                        <asp:Hyperlink NavigateUrl="javascript:void(0)" runat="server"  id="sidebar" target="_blank">
							<i class="pe-7s-upload pe-7s-help1"></i>
						</asp:Hyperlink>
					</li>
					<li>
						<asp:HyperLink runat="server" border="0" id="go-modal-top" rel="leanModal" name="signup-top" NavigateUrl="javascript:void(0)">
							<i class="fa fa-comments"></i>
						</asp:HyperLink>
					</li>
					<li><asp:HyperLink runat="server" href="javascript:void(0)"><i class="pe-7s-upload pe-7s-power"></i></asp:HyperLink></li>
				</ul>
			</div>
		</nav>
	</div>	
	<aside id="menu">
		<div id="navigation">
			<div class="profile-picture">
				<div class="initials pfi-box-shadow">
					<h2>SE</h2>
				</div>
				<div class="stats-label text-color">
					<div class="dropdown">
						<asp:HyperLink runat="server" class="dropdown-toggle" NavigateUrl="javascript:void(0)" data-toggle="dropdown">
							<span class="font-extra-bold font-uppercase">SensationSolutions<b class="caret"></b></span>
						</asp:HyperLink>
						<br />
						<small class="text-muted">Venkat Test </small>
						<ul class="dropdown-menu">
							<li><asp:HyperLink runat="server" NavigateUrl="javascript:void(0)"><i class="pe-7s-user"></i> My Profile</asp:HyperLink></li>
							<li><asp:HyperLink runat="server"  NavigateUrl="javascript:void(0)"><i class="pe-7s-id"></i> My Settings</asp:HyperLink></li>
							<li class="divider"></li>
							<li><asp:HyperLink runat="server" NavigateUrl="javascript:void(0)"><i class="pe-7s-paper-plane"></i> Switch to Classic</asp:HyperLink></li>
							<li><asp:HyperLink runat="server" NavigateUrl="javascript:void(0)"><i class="pe-7s-power"></i> Logout</asp:HyperLink></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel-menu-group" id="accordiona">
				<div class="panel panel-default">
					<div class="panel-heading">
						<asp:HyperLink runat="server" class="collapse-title collapsed" data-toggle="collapse" data-parent="#accordiona" NavigateUrl="#collapse1">
							<img src="<%: ResolveClientUrl("images/eleave.png") %>">
							<span class="nav-label">Leave</span>
							<span class="fa arrow"></span>						
						</asp:HyperLink>
					</div>
					<div id="collapse1" class="panel-collapse collapse">
						<ul class="nav nav-second-level">
							<li><asp:HyperLink runat="server" NavigateUrl="javascript:void(0)">My Leave</asp:HyperLink></li>
							<li><asp:HyperLink runat="server" NavigateUrl="javascript:void(0)">Approval</asp:HyperLink></li>
							<li><asp:HyperLink runat="server" NavigateUrl="javascript:void(0)">Staff Calendar View</asp:HyperLink></li>
							<li><asp:HyperLink runat="server" NavigateUrl="javascript:void(0)">Individual Calendar View</asp:HyperLink></li>
							<li><asp:HyperLink runat="server" NavigateUrl="javascript:void(0)">Reports</asp:HyperLink></li>
							<li><asp:HyperLink runat="server" NavigateUrl="javascript:void(0)">Administration</asp:HyperLink></li>
							<li><asp:HyperLink runat="server" NavigateUrl="javascript:void(0)">Configuration</asp:HyperLink></li>
						</ul>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<asp:HyperLink runat="server" class="collapse-title collapsed" data-toggle="collapse" data-parent="#accordiona" NavigateUrl="#collapse2">
							<img src="<%: ResolveClientUrl("images/epayroll.png") %>">
							<span class="nav-label">Payroll</span>
							<span class="fa arrow"></span>
						</asp:HyperLink>
					</div>
					<div id="collapse2" class="panel-collapse collapse">
						<ul class="nav nav-second-level">
							<li><a href="javascript:void(0)">My Payslip</a></li>
						</ul>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<asp:HyperLink runat="server" class="collapse-title collapsed" data-toggle="collapse" data-parent="#accordiona" NavigateUrl="#collapse3">
							<img src="<%: ResolveClientUrl("images/etimeclock.png") %>">
							<span class="nav-label">Attendance</span>
							<span class="fa arrow"></span>						
						</asp:HyperLink>
					</div>
					<div id="collapse3" class="panel-collapse collapse">
						<ul class="nav nav-second-level">
							<li><asp:HyperLink runat="server" NavigateUrl="javascript:void(0)">Dashboard</asp:HyperLink></li>
							<li><asp:HyperLink runat="server" NavigateUrl="javascript:void(0)">Approval Central</asp:HyperLink></li>
							<li><asp:HyperLink runat="server" NavigateUrl="javascript:void(0)">Roster</asp:HyperLink></li>
							<li><asp:HyperLink runat="server" NavigateUrl="javascript:void(0)">Reports</asp:HyperLink></li>
							<li><asp:HyperLink runat="server" NavigateUrl="javascript:void(0)">Administration</asp:HyperLink></li>
							<li><asp:HyperLink runat="server" NavigateUrl="javascript:void(0)">Configuration</asp:HyperLink></li>
						</ul>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<asp:HyperLink runat="server" class="collapse-title active" data-toggle="collapse" data-parent="#accordiona" NavigateUrl="#collapse4">
							<img src="<%: ResolveClientUrl("images/esubscription.png") %>">
							<span class="nav-label">Subscription</span>
							<span class="fa arrow"></span>						
						</asp:HyperLink>
					</div>
					<div id="collapse4" class="panel-collapse collapse in">
						<ul class="nav nav-second-level">
							<li><asp:HyperLink runat="server" NavigateUrl="subscription.html">Dashboard</asp:HyperLink></li>
							<li class="active"><asp:HyperLink runat="server" NavigateUrl="subscription-admin.html">Administration</asp:HyperLink></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="askjustlogin">
			<asp:HyperLink runat="server" border="0" id="go-modal" rel="leanModal" name="signup" NavigateUrl="#contact-modal">
				<img src="<%: ResolveClientUrl("images/ask-justlogin.png") %>" alt="Ask Question">
			</asp:HyperLink>
		</div>
	</aside>
	<div id="wrapper">
		<div class="content">
			<section>
				<div class="row">
					<div class="col-lg-12">
						<div class="hpanel">
							<ul class="nav nav-tabs">
								<li class="active"><asp:HyperLink runat="server" data-toggle="tab" NavigateUrl="#tab1">Customer Details</asp:HyperLink></li>
								<li><asp:HyperLink runat="server" data-toggle="tab" NavigateUrl="#tab2">Plans</asp:HyperLink></li>
								<li><asp:HyperLink runat="server" data-toggle="tab" NavigateUrl="#tab3">Payments Methods</asp:HyperLink></li>
								<li><asp:HyperLink runat="server" data-toggle="tab" NavigateUrl ="#tab4">Invoices</asp:HyperLink></li>
							</ul>
							<div class="tab-content">
								<div id="tab1" class="tab-pane fade in active">
									<div class="panel-body">
										<div class="leave-form" id="applyleaveid">
											<div class="col-lg-6">												
												<div class="subscription-sub-title">General</div>
												<fieldset>
													<label>Company Name</label>
													<asp:TextBox runat="server" name="comapny-name" type="text" placeholder="Company Name" class="form-control input-sm pull-right" />
												</fieldset>
												<fieldset>
													<label>Justlogin URL</label>
													<p  class="detail">Justlogin URL</p>
												</fieldset>
												<fieldset>
													<label>Address</label>
													<textarea name="address"  type="text" placeholder="Address" class="form-control input-sm pull-right" maxlength="1000"></textarea>
												</fieldset>
												
												<div class="subscription-sub-title">Primary Contact</div>											
												<fieldset>
													<label>First Name</label>
                                                    <asp:TextBox runat="server"  name="comapny-name" type="text" placeholder="First Name" class="form-control input-sm pull-right" />
												</fieldset>
												<fieldset>
													<label>Last Name</label>
													<asp:TextBox runat="server" name="comapny-name" type="text" placeholder="Last Name" class="form-control input-sm pull-right" />
												</fieldset>
												<fieldset>
													<label>Phone Number</label>
													<asp:TextBox runat="server" name="comapny-name" type="text" placeholder="Phone Number" class="form-control input-sm pull-right" />
												</fieldset>
												<fieldset>
													<label>Email Address </label>
                                                    <asp:TextBox runat="server" name="comapny-name" type="text" placeholder="Email Address" class="form-control input-sm pull-right" />
												</fieldset>
											</div>
										</div>
										<hr>
										<div class="clearfix">												
											<div class="pull-right">													
												<asp:HyperLink runat="server" class="btn btn-success" type="submit" NavigateUrl="javascript:void(0)">Submit</asp:HyperLink>
												<asp:HyperLink runat="server" class="btn btn-default type="submit" NavigateUrl="javascript:void(0)">Cancel</asp:HyperLink>
											</div>
										</div>
									</div>
								</div>
								<div id="tab2" class="tab-pane fade">
									<div class="panel-body">
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
													<asp:HyperLink runat="server" class="btn" NavigateUrl="javascript:void(0);">Get Starts</asp:HyperLink>
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
												<div class="plan-name">Popular</div>
												<ul class="plan-items">
													<li>Full Statistics</li>
													<li>Max 100 items</li>
													<li>up to five users</li>
													<li>Unlimited Queries</li>
												</ul>
												<div class="btn-group">
													<asp:HyperLink runat="server" class="btn" NavigateUrl="javascript:void(0);">Get Starts</asp:HyperLink>
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
													<asp:HyperLink runat="server" class="btn" NavigateUrl="javascript:void(0);">Get Starts</asp:HyperLink>
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
													<asp:HyperLink runat="server" class="btn" NavigateUrl="javascript:void(0);">Get Starts</asp:HyperLink>
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
													<asp:HyperLink runat="server" class="btn" NavigateUrl="javascript:void(0);">Get Starts</asp:HyperLink>
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
													<asp:HyperLink runat="server" class="btn" NavigateUrl="javascript:void(0);">Get Starts</asp:HyperLink>
												</div>
											</div>
										</div>
										<div class="onboarding-import-staff">	
											<div class="subscription-sub-title">Charges</div>
											<div class="table-responsive aoro">
												<asp:Table class="table table-hover table-striped" cellspacing="0" style="border-style:None;border-collapse:collapse;">
													<asp:TableHeaderRow>
													
															<asp:TableHeaderCell >Plan</asp:TableHeaderCell>
															<asp:TableHeaderCell >Price (Per Month)</asp:TableHeaderCell>
															<asp:TableHeaderCell >Licenses</asp:TableHeaderCell>												
															<asp:TableHeaderCell class="text-right">Total Charges (Billable per month)</asp:TableHeaderCell>
														
													</asp:TableHeaderRow>
													
														<asp:>
															<td>
																<div class="table-plan">
																	<div class="table-plan-name">Basic</div>
																	<ul class="plan-items">
																		<li>Full Statistics</li>
																		<li>Max 100 items</li>
																		<li>up to five users</li>
																		<li>Unlimited Queries</li>
																	</ul>
																</div>
															</td>
															<td>
																<div class="table-price">
																	<div class="amount">
																		<span class="dollar-sign">$</span>
																		<span class="main-amount">99</span>
																		<span class="cent">00</span>
																	</div>
																</div>
															</td>
															<td>
																<asp:TextBox runat="server" name="comapny-name" type="text" value="3" class="form-control table-licence-form-control" />
															</td>
															<td class="text-right">
																<div class="table-price">								
																	<div class="amount">
																		<span class="dollar-sign">$</span>
																		<span class="main-amount">297</span>
																		<span class="cent">00</span>
																	</div>
																</div>
															</td>
														</asp:>
													</tbody>
												</asp:Table>
											</div>
											
											<hr>
											<div class="clearfix">												
												<div class="pull-right">													
													<a class="btn btn-success" type="submit" href="javascript:void(0)">Modify Subscription</a>
													<a class="btn btn-default type="submit" href="javascript:void(0)">Cancel</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div id="tab3" class="tab-pane fade">
									<div class="panel-body">
										<div class="creditcard-group">
											<div class="creditcard-img">
												<img src="images/crdit-card.png" alt="Credit Card">
											</div>
											<div class="creditcard-message">You are currently no credit card please add your credit card</div>
											<div class="creditcard-btn">
												<a href="javascript:void(0)" class="btn btn-success">Add a Credit Card</a>
											</div>
										</div>
						
										
										<div class="leave-form" id="applyleaveid">
											<div class="col-lg-6">												
												<div class="subscription-sub-title">Credit card payment option</div>
												<fieldset>
													<label>Masked Card Number</label>
													<input name="comapny-name" type="text" value="9876 5432 1234 5678" class="form-control input-sm pull-right"  readonly>
												</fieldset>
												<fieldset class="card-fieldset-group">
													<label>Card Type</label>
													<div class="card-fieldset-group">
														<input name="comapny-name" type="text" value="Master Card" class="form-control input-sm pull-right" readonly>
														<div class="card-image">
															<img src="images/mastercard-logo.png">
														</div>
													</div>
												</fieldset>
												<fieldset>
													<label>First Name</label>
													<input name="comapny-name" type="text" value="John" class="form-control input-sm pull-right" readonly>
												</fieldset>
												<fieldset>
													<label>Last Name</label>
													<input name="comapny-name" type="text" value="Doe" class="form-control input-sm pull-right" readonly>
												</fieldset>
											</div>
										</div>
										<hr>
										<div class="clearfix">												
											<div class="pull-right">													
												<a class="btn btn-success" type="submit" href="javascript:void(0)">Change Credit Card </a>
												<a class="btn btn-default type="submit" href="javascript:void(0)">Cancel</a>
											</div>
										</div>
									</div>
								</div>
								<div id="tab4" class="tab-pane fade">
									<div class="panel-body">
										<div class="dataTables_wrapper form-inline dt-bootstrap no-footer">
											<div class="row">
												<div class="col-sm-6">
													<div class="dataTables_length" >
														<label>Show
															<select name="" aria-controls="" class="form-control input-sm">
																<option value="10">10</option>
																<option value="25">25</option>
																<option value="50">50</option>
																<option value="100">100</option>
																<option value="-1">All</option>
															</select> entries</label>
													</div>
												</div>
												<div class="col-sm-6">
													<div  class="dataTables_filter">
														<label>Search:
															<input type="search" class="form-control input-sm" placeholder="" aria-controls="">
														</label>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-12">
													<div class="table-responsive aoro">
														<table class="table table-hover table-striped" cellspacing="0" style="border-style:None;border-collapse:collapse;">
															<thead>
																<tr>
																	<th scope="col">Invoice No. </th>
																	<th scope="col">Invoice Date </th>
																	<th scope="col">Invoice Amount </th>
																	<th scope="col">Due Date </th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td><a href="download/invoice-sample.pdf" target="_blank">May-JustLogin-001</a></td>
																	<td>07-May-2018</td>
																	<td>$99.00</td>
																	<td>14-May-2018</td>
																</tr>
																<tr>
																	<td><a href="download/invoice-sample.pdf" target="_blank">June-JustLogin-002</a></td>
																	<td>07-June-2018</td>
																	<td>$99.00</td>
																	<td>14-June-2018</td>
																</tr>
																<tr>
																	<td><a href="download/invoice-sample.pdf" target="_blank">July-JustLogin-003</a></td>
																	<td>07-July-2018</td>
																	<td>$99.00</td>
																	<td>14-July-2018</td>
																</tr>
																<tr>
																	<td><a href="download/invoice-sample.pdf" target="_blank">August-JustLogin-001</a></td>
																	<td>07-August-2018</td>
																	<td>$99.00</td>
																	<td>14-August-2018</td>
																</tr>
																<tr>
																	<td><a href="download/invoice-sample.pdf" target="_blank">September-JustLogin-001</a></td>
																	<td>07-September-2018</td>
																	<td>$99.00</td>
																	<td>14-September-2018</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-6">
													<div class="dataTables_info"  role="status" aria-live="polite">Showing 1 to 2 of 2 entries</div>
												</div>
												<div class="col-sm-6">
													<div class="dataTables_paginate paging_simple_numbers" >
														<ul class="pagination">
															<li class="paginate_button previous disabled" aria-controls="" tabindex="0" ><a href="#">Previous</a></li>
															<li class="paginate_button active" aria-controls="" tabindex="0"><a href="#">1</a></li>
															<li class="paginate_button next disabled" aria-controls="" tabindex="0" ><a href="#">Next</a></li>
														</ul>
													</div>
												</div>
											</div>
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

	<script src="js/justlogin-theme.js" type="text/javascript" ></script>
        </form>
</body>
</html> 