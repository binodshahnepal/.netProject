using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentRegistrationProject.pages
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        DataAccessLayer.studentCLass sc=new DataAccessLayer.studentCLass();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvStudenDetails.DataSource=sc.getAllStudents();
            gvStudenDetails.DataBind();
        }
    }
}