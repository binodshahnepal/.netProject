using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace studentRegistrationProject.DataAccessLayer
{
    public class userClass
    {
        SqlConnection conn = new SqlConnection(connectionClass.connectionString);
        public bool manageUsers(int userId, String fullName,
            String userName, String password, int mode)
        {
            try
            {
                String txtSql = "";
                switch (mode)
                {
                    case 1:
                        txtSql = @"insert into userTable(fullName,userName,password) 
                                 values(@fullName,@userName,@password)";
                        break;
                    case 2:
                        txtSql = @"update userTable set fullName=@fullName,
                                 userName=@userName,password=@password
                                 where userId=@userId";
                        break;
                    case 3:
                        txtSql = @"Delete from userTable where userId=@userId";
                        break;
                }
                SqlCommand cmd = new SqlCommand(txtSql, conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@userId", userId);
                cmd.Parameters.AddWithValue("@fullName", fullName);
                cmd.Parameters.AddWithValue("@userName", userName);
                cmd.Parameters.AddWithValue("@password", password);
                conn.Open();
                int result = cmd.ExecuteNonQuery();
                conn.Close();
                if (result > 0) { return true; }
                else { return false; }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { conn.Close(); }
        }
        public DataTable getAllUsers()
        {
            try
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand(@"Select * from userTable", conn);
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
        public bool login(String userName, String password)
        {
            try
            {
                bool result = false;
                SqlCommand cmd = new SqlCommand(@"Select * from userTable where
                                    userName=@userName and password=@password", conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@userName", userName);
                cmd.Parameters.AddWithValue("@password", password);
                DataTable dt = new DataTable();
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                dt.Load(dr);
                conn.Close();
                if (dt.Rows.Count > 0) { result = true; }
                else
                {
                    result = false;
                }
                return result;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { conn.Close(); }
        }
    }
            
}