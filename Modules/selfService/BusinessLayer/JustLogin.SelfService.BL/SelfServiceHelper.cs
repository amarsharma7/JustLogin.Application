using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace JustLogin.SelfService.BL
{
    public class SelfServiceHelper
    {
        public static string printJson(object obj)
        {
            JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
            jsSerializer.MaxJsonLength = Int32.MaxValue;
            return jsSerializer.Serialize(obj);
        }
    }


    public class ResponseJsonData
    {
        private string _errorMessage = "";
        private object _data = null;

        public string ErrorMessge
        {
            get { return _errorMessage; }
            set { _errorMessage = value; }
        }

        public object Data
        {
            get { return _data; }
            set { _data = value; }
        }
    }
}
