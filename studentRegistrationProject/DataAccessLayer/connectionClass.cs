using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
namespace studentRegistrationProject.DataAccessLayer
{
    public class connectionClass
    {
        public static String connectionString
        {
            get
            {
                return System.Configuration.ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
            }
        }
    }
}