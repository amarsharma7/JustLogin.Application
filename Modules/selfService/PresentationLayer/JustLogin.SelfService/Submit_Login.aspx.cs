using LoginPage;
using MSDN;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustLogin.SelfService
{
    //custom login page handler for self service , company id will get from URL of the login
    //for e.g abc.mathewtaylor.net , abc is the company id, if company haven't clear the demo data yet , abc-demo will be company id
    public partial class Submit_Login : SessionPage
    {
        public String UserGUID;
        String CompanyGUID;
        public LoginPage.LoginVo UserVo = new LoginVo();
        LoginPage.Login.LoginPage LoginAction = new LoginPage.Login.LoginPage();
        protected String DeskMultipass;
        protected String strLoginCompanyID;
        protected String strLogginErr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}