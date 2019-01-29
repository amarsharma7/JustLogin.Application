using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JustLogin.SelfService.DL
{
    public enum SelfServiceStatus : byte
    {
        New = 1,
        Verified=2,
        URLUpdatedInDB=3,
        CompanyCreated=4,
        DNSCreated=5,
        IISAliasCreated=6,
        Demo=7,
        ClearedDemoData=8,
        Paid=9
    }
}
