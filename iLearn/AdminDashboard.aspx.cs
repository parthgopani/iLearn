using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminDashboard : System.Web.UI.Page
{
    general_function gf = new general_function();
    db_conn conn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            int userCount = GetUserCount();
            lblUserCount.Text = userCount.ToString();
            int examCount = GetExamCount();
            lblExamCount.Text = examCount.ToString();
        }
    }
    private int GetUserCount()
    {
        int userCount = 0;

        db_conn dbConn = new db_conn();

        try
        {
            string query = "SELECT COUNT(*) FROM Registration WHERE Email != 'a@a.com'";
            userCount = Convert.ToInt32(dbConn.select(query).Tables[0].Rows[0][0]);
        }
        catch (Exception)
        {
        }

        return userCount;
    }
    private int GetExamCount()
    {
        int examCount = 0;

        db_conn dbConn = new db_conn();

        try
        {
            string query = "SELECT COUNT(*) FROM Exam";
            examCount = Convert.ToInt32(dbConn.select(query).Tables[0].Rows[0][0]);
        }
        catch (Exception)
        {
        }

        return examCount;
    }
}