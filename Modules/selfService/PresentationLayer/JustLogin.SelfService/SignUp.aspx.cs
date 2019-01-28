using JustLogin.SelfService.BL;
using JustLogin.SelfService.EmailTemplate;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustLogin.SelfService
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
        }

        [WebMethod]
        public static string WMCheckEmail(string email)
        {
            return "";
        }


        protected void cvEmailExist_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
        }


        protected bool SendEmail(string MyEmail, string MyName, string MyToken)
        {
            return true;
        }



    }
}