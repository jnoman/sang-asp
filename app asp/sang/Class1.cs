using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace sang
{
    public class Class1
    {
        public static SqlConnection cn = new SqlConnection(@"Data Source=HITMAN-PC\SQLEXPRESS;Initial Catalog=blood;Integrated Security=True");
    }
}