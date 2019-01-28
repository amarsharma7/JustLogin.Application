using JustLogin.SelfService.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustLogin.SelfService
{
    //page endpoint for CORS check from test-express.justlogin.com to abc.mathewtaylor.net
    public partial class Check : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ResponseJsonData result = new ResponseJsonData();
            result.Data = "ok";

            string resultJson = SelfServiceHelper.printJson(result);
            Response.Clear();

            Response.AddHeader("Access-Control-Allow-Origin", "*");
            Response.AddHeader("Access-Control-Allow-Methods", "*");
            Response.AddHeader("Access-Control-Allow-Headers", "*");

            Response.CacheControl = "no-cache";
            //Use when you send data in XML   
            Response.ContentType = "text/xml";
            //Or use this content type when send json data
            Response.ContentType = "application/json";
            Response.Write(resultJson);
            Response.End();
        }
    }
}