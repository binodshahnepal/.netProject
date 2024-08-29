using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace studentRegistrationProject.DataAccessLayer
{
    public class courseClass
    {
        SqlConnection conn = new SqlConnection(connectionClass.connectionString);
        public bool manageCourses(int courseId,
            String courseName,
            String courseDescription,
            DateTime startDate, int mode)
        {
            try
            {
                bool rs = false;
                String txtSql = "";
                switch (mode)
                {
                    case 1:
                        txtSql = @"insert into courseTable(courseName,courseDescription,startDate) 
                                 values(@courseName,@courseDescription,@startDate)";
                        break;
                    case 2:
                        txtSql = @"update courseTable set courseName=@courseName,
                                    courseDescription=@courseDescription,startDate=@startDate 
                                    where courseId=@courseId";
                        break;
                    case 3:
                        txtSql = @"Delete from courseTable where courseId=@courseId";
                        break;
                }
                SqlCommand cmd=new SqlCommand(txtSql, conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@courseId", courseId);
                cmd.Parameters.AddWithValue("@courseName",courseName);
                cmd.Parameters.AddWithValue("@courseDescription", courseDescription);
                cmd.Parameters.AddWithValue("@startDate", startDate);
                conn.Open();
                int result=cmd.ExecuteNonQuery();
                conn.Close();
                if (result > 0) 
                    rs = true;
                else rs = false;
                return rs;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { conn.Close(); }
        }
        public DataTable getAllCourses()
        {
            try
            {
                DataTable dt=new DataTable();
                SqlCommand cmd = new SqlCommand(@"Select * from courseTable", conn);
                conn.Open();
                SqlDataReader dr=cmd.ExecuteReader();
                dt.Load(dr);
                conn.Close();
                return dt;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { conn.Close(); }
        }
    }
}