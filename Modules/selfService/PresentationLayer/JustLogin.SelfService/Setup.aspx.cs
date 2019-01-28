using JustLogin.SelfService.BL;
using Microsoft.Web.Administration;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustLogin.SelfService
{
    public partial class Setup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        [WebMethod]
        public static string WMPing(string companyFullUrl)
        {
            return "";            
        }
        
        static bool TestHttp(string companyFullUrl, ref string errorMessage)
        {
            return true;
        }
    }
}