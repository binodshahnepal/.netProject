using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentRegistrationProject.pages
{
    
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataAccessLayer.userClass uc=new DataAccessLayer.userClass();
        protected void btnCreateUser_Click(object sender, EventArgs e)
        {
            bool result = uc.manageUsers(0, txtfullName.Text, txtUserName.Text, txtPassword.Text, 1);
            if (result) {
                lblMessage.Text = "User Successfully Created!!!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMessage.Text = "Error in performing the required operation!!!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}