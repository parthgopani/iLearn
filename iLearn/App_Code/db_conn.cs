using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

public class db_conn
{
    SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\iLearn\\iLearn\\App_Data\\iLearn.mdf;Integrated Security=True");


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

    public DataSet select(string q)
    {
        try
        {
            DataSet ds = new DataSet();
            cmd.CommandText = q;
            cmd.Connection = cn;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cn.Open();
            cmd.ExecuteNonQuery();
            da.Fill(ds);
            cn.Close();
            return ds;
        }
        catch (Exception)
        {
            cn.Close();
            return null;
        }
    }
    public int getid(string q)
    {
        cmd.CommandText = q;
        cmd.Connection = cn;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        cn.Open();
        int id = (int)cmd.ExecuteNonQuery();
        cn.Close();
        return id;
    }
}