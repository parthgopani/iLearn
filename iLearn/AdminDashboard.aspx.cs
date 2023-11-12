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
            int totalQuestions = GetTotalQuestions();
            lbltotquestion.Text = totalQuestions.ToString();
            decimal averageScore = GetAverageScore();
            lblaverageScore.Text = averageScore.ToString("0.00");
            ScriptManager.RegisterStartupScript(this, GetType(), "displayChart", $"displayDoughnutChart({averageScore});", true);
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
    private int GetTotalQuestions()
    {
        int totalQuestions = 0;

        try
        {
            string query = "SELECT COUNT(*) FROM Question";
            totalQuestions = Convert.ToInt32(conn.select(query).Tables[0].Rows[0][0]);
        }
        catch (Exception)
        {
        }

        return totalQuestions;
    }
    private decimal GetAverageScore()
    {
        decimal averageScore = 0;

        try
        {
            string query = "SELECT AVG(Score) FROM Exam_Reg WHERE Status_PF = 'Congratulations!!! You Are PASS.'";
            object result = conn.select(query).Tables[0].Rows[0][0];

            if (result != DBNull.Value)
            {
                averageScore = Convert.ToDecimal(result);
            }
        }
        catch (Exception)
        {
        }

        return averageScore;
    }
}