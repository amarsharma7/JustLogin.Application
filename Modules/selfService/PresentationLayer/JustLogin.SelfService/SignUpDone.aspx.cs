﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustLogin.SelfService
{
    public partial class SignUpDone : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            litEmail.Text = Server.HtmlEncode(Request.QueryString["email"]);
        }
    }
}