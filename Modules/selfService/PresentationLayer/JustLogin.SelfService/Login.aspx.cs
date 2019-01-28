using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JustLogin.SelfService.BL.Models;

namespace JustLogin.SelfService
{ 
    //custom login page for self service , company id will get from URL of the login
    //for e.g abc.mathewtaylor.net , abc is the company id, if company haven't clear the demo data yet , abc-demo will be company id
    public partial class Login : System.Web.UI.Page
    {
        protected bool error = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            LoginUserModel model = new LoginUserModel()
            {
                Id = 1,
                UserName = "test@account.com"
            };
            Session["CustomerId"] = 123;
            Response.Redirect("~/Subscription/NoSubscription.aspx");
        }
    }
}