using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentRegistrationProject.pages
{
    public partial class login : System.Web.UI.Page
    {
        DataAccessLayer.userClass uc=new DataAccessLayer.userClass();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["login"] = "";
        }
       
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                bool rs = uc.login(txtUserName.Text, txtPassword.Text);
                if (rs == true)
                {
                    Session["login"] = txtUserName.Text;
                    Response.Redirect("dashboard.aspx");
                    
                }
                else
                    return;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}