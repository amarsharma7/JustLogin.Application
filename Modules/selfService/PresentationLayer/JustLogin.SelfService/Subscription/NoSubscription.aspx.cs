using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustLogin.SelfService.Subscription
{
    public partial class Subscription1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Convert.ToString(Session["CustomerId"])))
            {
                Response.Redirect("CustomerDetail.aspx");
            }
        }
    }
}