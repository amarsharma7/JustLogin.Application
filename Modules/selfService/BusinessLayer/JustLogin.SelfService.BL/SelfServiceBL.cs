using JustLogin.SelfService.DL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JustLogin.SelfService.BL
{
    public class SelfServiceBL
    {
        public bool Company_CheckEmail(string Email)
        { 
            return SelfServiceDAL.Company_CheckEmail(Email);
        }

        public int Company_UpdateInfo(string Email, string CompanyURL, string Password)
        { 
            return SelfServiceDAL.Company_UpdateInfo(Email,CompanyURL, Password);
        }

        public string Company_Add(string Email, string CompanyName, string FullName, string PhoneNumber)
        {
            return SelfServiceDAL.Company_Add(Email, CompanyName, FullName, PhoneNumber);
        }       
        
        private string GetNoOfEmployee(int SubscriptionPlan)
        {
            /* 
            <asp:ListItem Value="1">1 - 10</asp:ListItem>
            <asp:ListItem Value="2">11 - 25</asp:ListItem>
            <asp:ListItem Value="3">26 - 50</asp:ListItem>
            <asp:ListItem Value="4">51 - 100</asp:ListItem>
            <asp:ListItem Value="5">101 - 200</asp:ListItem>
            <asp:ListItem Value="6">201 - 500</asp:ListItem>
            <asp:ListItem Value="7">501 - 1000</asp:ListItem>
            <asp:ListItem Value="8">1001 - 2000</asp:ListItem>
            <asp:ListItem Value="9">2000+</asp:ListItem>
             */
            string NoOfEmployee = "-1";

            if (SubscriptionPlan >= 1 && SubscriptionPlan <= 10)
                NoOfEmployee = "1";
            else if (SubscriptionPlan >= 11 && SubscriptionPlan <= 25)
                NoOfEmployee = "2";
            else if (SubscriptionPlan >= 26 && SubscriptionPlan <= 50)
                NoOfEmployee = "3";
            else if (SubscriptionPlan >= 51 && SubscriptionPlan <= 100)
                NoOfEmployee = "4";
            else if (SubscriptionPlan >= 101 && SubscriptionPlan <= 200)
                NoOfEmployee = "5";
            else if (SubscriptionPlan >= 201 && SubscriptionPlan <= 500)
                NoOfEmployee = "6";
            else if (SubscriptionPlan >= 501 && SubscriptionPlan <= 1000)
                NoOfEmployee = "7";
            else if (SubscriptionPlan >= 1001 && SubscriptionPlan <= 2000)
                NoOfEmployee = "8";
            else
                NoOfEmployee = "9";

            return NoOfEmployee;

        }
    }
}
