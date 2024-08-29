using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentRegistrationProject.pages
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataAccessLayer.courseClass cc= new DataAccessLayer.courseClass();
        protected void btnCreateCourse_Click(object sender, EventArgs e)
        {
            try
            {
                bool rs = cc.manageCourses(0,
                    txtCourseName.Text,
                    txtCourseDescription.Text,
                    DateTime.Parse(txtStartDate.Text), 1);
                if (rs == true) { lblMessage.Text = "Course Successfully Created";
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