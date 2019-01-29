using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JustLogin.SelfService.DL
{
    public class SelfServiceDAL
    {
        private static string LeaveDBConnStringName = "LeaveConnectionString";
        private static string MembershipDBConnStringName = "MembershipDB";
        private static string CustomizationDBConnStringName = "CustomizationDB";
        

        public static bool Company_CheckEmail(string Email)
        {
            bool flag = false;
            using (SqlConnection dBConn = new SqlConnection(ConfigurationManager.ConnectionStrings[MembershipDBConnStringName].ConnectionString))
            {
                dBConn.Open();
                using (SqlCommand cmd = new SqlCommand("SelfService_Company_CheckEmail", dBConn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@pEmail", Email));

                    object obj = cmd.ExecuteScalar();
                    
                    if (obj != DBNull.Value)
                    {
                        flag = Convert.ToBoolean(obj);
                    }
                }
            }
            return flag;
        }

        public static int Company_UpdateInfo(string Email, string CompanyURL, string Password)
        {
            int rowCount = 0;
            using (SqlConnection dBConn = new SqlConnection(ConfigurationManager.ConnectionStrings[MembershipDBConnStringName].ConnectionString))
            {
                dBConn.Open();
                using (SqlCommand cmd = new SqlCommand("SelfService_Company_UpdateInfo", dBConn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@pEmail", Email));
                    cmd.Parameters.Add(new SqlParameter("@pCompanyURL", CompanyURL));
                    cmd.Parameters.Add(new SqlParameter("@pPassword", Password));
                    rowCount = cmd.ExecuteNonQuery();
                }
            }
            return rowCount;
        }

        public static string Company_Add(string Email, string CompanyName, string FullName, string PhoneNumber)
        {
            
            string token = "";
            using (SqlConnection dBConn = new SqlConnection(ConfigurationManager.ConnectionStrings[MembershipDBConnStringName].ConnectionString))
            {
                dBConn.Open();
                using (SqlCommand cmd = new SqlCommand("SelfService_Company_Add", dBConn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@pEmail", Email));
                    cmd.Parameters.Add(new SqlParameter("@pCompanyName", CompanyName));
                    cmd.Parameters.Add(new SqlParameter("@pFullName", FullName));
                    cmd.Parameters.Add(new SqlParameter("@pPhoneNumber", PhoneNumber));

                    object obj = cmd.ExecuteScalar();
                    if (obj != DBNull.Value)
                    {
                        token = obj.ToString();
                    }
                }
            }
            return token;
        }
    }
}
