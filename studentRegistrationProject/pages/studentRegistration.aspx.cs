using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentRegistrationProject.pages
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataAccessLayer.studentCLass sc=new DataAccessLayer.studentCLass();
        protected void btnRegisterStudent_Click(object sender, EventArgs e)
        {
            try
            {
                bool rs = sc.manageStudents(0, txtStudentName.Text, txtAddress.Text, txtContact.Text,
                    DateTime.Parse(txtDOB.Text), txtProgram.Text, 1);
                if(rs==true)
                {
                    lblMessage.Text = "Student Successfully Registered";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblMessage.Text = "Error in performing the required operation";
                    lblMessage.ForeColor= System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}