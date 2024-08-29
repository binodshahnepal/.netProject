using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
namespace studentRegistrationProject.DataAccessLayer
{
    public class studentCLass
    {
        SqlConnection conn=new SqlConnection(connectionClass.connectionString);
        public bool manageStudents(int studentId,String studentName,
            String address,String contact,DateTime dob,String program,int mode)
        {
            try
            {
                bool rs = false;
                String txtSql = "";
                switch (mode)
                {
                    case 1:
                        txtSql = @"insert into studentTable(studentName,address,contact,dob,program) 
                                   values(@studentName,@address,@contact,@dob,@program)";
                        break;
                    case 2:
                        txtSql = @"update studentTable set studentName=@studentName,address=@address,
                                   contact=@contact,dob=@dob,program=@program where studentId=@studentId";
                        break;
                    case 3:
                        txtSql = @"Delete from studentTable where studentId=@studentId";
                        break;
                }
                SqlCommand cmd= new SqlCommand(txtSql, conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@studentId", studentId);
                cmd.Parameters.AddWithValue("@studentName", studentName);
                cmd.Parameters.AddWithValue("@address", address);
                cmd.Parameters.AddWithValue("@contact", contact);
                cmd.Parameters.AddWithValue("@dob", dob);
                cmd.Parameters.AddWithValue("@program", program);
                conn.Open();
                int result=cmd.ExecuteNonQuery();
                conn.Close();
                if (result > 0) rs = true;
                else rs = false;
                return rs;

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { conn.Close(); }
        }
        public DataTable getAllStudents()
        {
            try
            {
                DataTable dt=new DataTable();
                SqlCommand cmd = new SqlCommand("Select * from studentTable", conn);
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
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