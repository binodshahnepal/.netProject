using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentRegistrationProject.pages
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        DataAccessLayer.userClass uc=new DataAccessLayer.userClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvUserDetails.DataSource=uc.getAllUsers();
            gvUserDetails.DataBind();
        }
    }
}