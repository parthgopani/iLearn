using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace iLearn.App_Start
{
    public class db_conn
    {
        SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\iLearn\\iLearn\\App_Data\\iLearn.mdf;Integrated Security=True;Connect Timeout=30");

        SqlCommand cmd = new SqlCommand();
        public void modify(string q)
        {
            try
            {
                cmd.CommandText = q;
                cmd.Connection = cn;
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            catch 
            { 
                cn.Close();
            }
        }
    }
}