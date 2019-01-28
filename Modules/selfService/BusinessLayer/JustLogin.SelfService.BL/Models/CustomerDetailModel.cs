using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JustLogin.SelfService.BL.Models
{
    public class CustomerDetailModel : ResponseModel
    {
        //  Customer model base on Fusebill Api
        public long Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string CompanyName { get; set; }
        public string PrimaryEmail { get; set; }
        public string PrimaryPhone { get; set; }
        public string Reference { get; set; }   //  Traeted as Customer Address
        public ResponseModel Response { get; set; }
    }
}
