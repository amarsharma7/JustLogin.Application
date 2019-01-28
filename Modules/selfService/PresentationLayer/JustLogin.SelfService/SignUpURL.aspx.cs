using JustLogin.SelfService.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustLogin.SelfService
{
    public partial class SignUpURL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //web method to check from client browser whether a domain exist in cloud flare and membership db
        [WebMethod]
        public static string WMCheckSubDomain(string companyId)
        {
            return "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
        }
    }
}