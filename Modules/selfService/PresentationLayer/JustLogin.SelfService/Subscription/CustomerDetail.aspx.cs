using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using JustLogin.SelfService.BL;
using JustLogin.SelfService.BL.Models;
using System.Web.Script.Services;
using System.Web.Script.Serialization;

namespace JustLogin.SelfService
{
    public partial class CustomerDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Convert.ToString(Session["CustomerId"])))
            {
                var result = GetCustomerDetail(Convert.ToInt64(Session["CustomerId"]));
                if (result.Response.StatusCode == (int)HttpStatusCode.OK)
                {
                    tbxFirstName.Text = result.FirstName;
                    tbxLastName.Text = result.LastName;
                    tbxCompanyName.Text = result.CompanyName;
                    tbxEmail.Text = result.PrimaryEmail;
                    tbxPhoneNumber.Text = result.PrimaryPhone;
                    taAddress.Text = result.Reference;
                    divContent.Visible = true;
                    divError.Visible = false;
                }
                else
                {
                    divContent.Visible = true;
                    divError.Visible = false;
                    lblErrorMessage.Text = result.Response.ApiMessage;
                }
            }
            else
            {
                divContent.Visible = false;
                divError.Visible = true;
                lblErrorMessage.Text = "Sorry, Customer Id not defined.";
            }
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
        public static CustomerDetailModel GetCustomerDetail(long customerId)
        {
            CustomerDetailModel customer = new CustomerDetailModel();
            try
            {
                //query parameter
                string status = "Active";
                //Setup API key
                string apiKey = "MDpOeEJEbmpZU0ZESjF3R0xSZ1pIdGMyMjFHVkhPWFczcmxoYUU0Y2xjQUxQZ2VtcHd2MktpTU9wZndvYmU4WkFo";
                //Configure URI
                WebRequest request = WebRequest.Create($"HTTPS://stg-secure.fusebill.com/v1/customers/{customerId}");
                //Add Content type
                request.ContentType = "application/json";
                //Add Api key authorization
                request.Headers.Add(HttpRequestHeader.Authorization, "Basic " + apiKey);
                //Set request method
                request.Method = "GET";
                //Perform the request
                var httpResponse = (HttpWebResponse)request.GetResponse();
                //Record the response from our request
                var result = "";
                using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
                {
                    result = streamReader.ReadToEnd();
                }
                customer = JsonConvert.DeserializeObject<CustomerDetailModel>(result);
                customer.Response = ((int)httpResponse.StatusCode).GetResponse();
                return customer;
            }
            catch(Exception ex)
            {
                var response = (HttpWebResponse)((WebException)ex).Response;
                customer.Response = ((int)response.StatusCode).GetResponse();
                return customer;
            }
        }

        protected void btnSaveCustomer_Click(object sender, EventArgs e)
        {
            try {
                CustomerDetailModel customer = new CustomerDetailModel();
                customer.FirstName = tbxFirstName.Text;
                customer.LastName = tbxLastName.Text;
                customer.CompanyName = tbxCompanyName.Text;
                customer.PrimaryEmail = tbxEmail.Text;
                customer.PrimaryPhone = tbxPhoneNumber.Text;
                string jsonData = new JavaScriptSerializer().Serialize(customer);
                //Json Payload
                //string jsonData = "{'firstName':'"+FullName+"','companyName':'"+Company+"','primaryEmail':'"+EmailId+"'}";
                //Setup API key
                string apiKey = "MDpOeEJEbmpZU0ZESjF3R0xSZ1pIdGMyMjFHVkhPWFczcmxoYUU0Y2xjQUxQZ2VtcHd2MktpTU9wZndvYmU4WkFoA";
                //Configure URI
                WebRequest request = WebRequest.Create("HTTPS://stg-secure.fusebill.com/v1/customers");
                //Add Content type
                request.ContentType = "application/json";
                //Add Api key authorization
                request.Headers.Add(HttpRequestHeader.Authorization, "Basic " + apiKey);
                //Set request method
                request.Method = "POST";
                //Add the json data to request
                using (var streamWriter = new StreamWriter(request.GetRequestStream()))
                {
                    streamWriter.Write(jsonData);
                    streamWriter.Flush();
                    streamWriter.Close();
                }
                //Perform the request
                var httpResponse = (HttpWebResponse)request.GetResponse();
                //Record the response from our request
                var result = "";
                using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
                {
                    result = streamReader.ReadToEnd();
                }
                var response = ((int)httpResponse.StatusCode).GetResponse();
                if (response.StatusCode == (int)HttpStatusCode.OK)
                {
                    Response.Redirect("PlanSelection.aspx");
                }
                else
                {
                    divContent.Visible = false;
                    divError.Visible = true;
                    lblErrorMessage.Text = response.ApiMessage;
                }
            }
            catch(Exception ex)
            {
                var response = (HttpWebResponse)((WebException)ex).Response;
                var result = ((int)response.StatusCode).GetResponse();
                divContent.Visible = false;
                divError.Visible = true;
                lblErrorMessage.Text = result.ApiMessage;
            }
        }
    }
}