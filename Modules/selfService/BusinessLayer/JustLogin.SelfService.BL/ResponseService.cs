using System.Collections.Generic;
using System.Linq;

namespace JustLogin.SelfService.BL
{
    public static class ResponseService
    {
        //      Error lists based on Fusebill Api
        static List<ResponseModel> errorList = new List<ResponseModel>
        {
            new ResponseModel()
            {
                StatusCode = 200,
                StatusType = "OK",
                ApiMessage = "Everything worked as expected.",
                CustomMessage = string.Empty
            },
            new ResponseModel()
            {
                StatusCode = 400,
                StatusType = "Bad Request",
                ApiMessage = "The request could not be understood by the server due to malformed syntax. The client should not repeat the request without modifications.",
                CustomMessage = string.Empty
            },
            new ResponseModel()
            {
                StatusCode = 401,
                StatusType = "Unauthorized",
                ApiMessage = "Missing or invalid authorization.Check your API Key and which environment the call is being made against.",
                CustomMessage = string.Empty },
            new ResponseModel()
            {
                StatusCode = 404,
                StatusType = "Not Found",
                ApiMessage = "The requested resource could not be found. Verify the endpoint in use, or the resource ID provided.",
                CustomMessage = string.Empty
            },
            new ResponseModel()
            {
                StatusCode = 409,
                StatusType = "Conflict",
                ApiMessage = "The format is valid but the request fails business rules. For example - activating a subscription that is already active.",
                CustomMessage = string.Empty
            },
            new ResponseModel()
            {
                StatusCode = 429,
                StatusType = "Too Many Requests",
                ApiMessage = "API Rate limit has been exceeded.",
                CustomMessage = string.Empty
            },
            new ResponseModel()
            {
                StatusCode = 500,
                StatusType = "Server Error",
                ApiMessage = "System error with Fusebill API.",
                CustomMessage = string.Empty
            }
        };
        
        public static ResponseModel GetResponse(this int code)
        {
            return errorList.FirstOrDefault(x => x.StatusCode == code);
        }
    }
    
    public class ResponseModel
    {
        public int StatusCode { get; set; }
        public string StatusType { get; set; }
        public string ApiMessage { get; set; }
        public string CustomMessage { get; set; }
    }
}
