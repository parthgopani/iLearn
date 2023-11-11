using iLearn;
using Microsoft.Ajax.Utilities;
using System;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDashboard : System.Web.UI.Page
{
    general_function gf = new general_function();
    db_conn conn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        if (Session["Email"] != null)
        {
            // User is logged in
            string username = Session["Email"].ToString();
            string query = "select F_Name,L_Name from Registration where Email='" + username + "'";
            ds = conn.select(query);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string fname = ds.Tables[0].Rows[0]["F_Name"].ToString();
                string lname = ds.Tables[0].Rows[0]["L_Name"].ToString();
                lblname.Text = "Hello, " + fname + " " + lname;

                double averageScore = CalculateAverageScore(username);
                string script = $@"
<script>
    // Function to update the circular progress bar
    function updateCircularProgress(percentage) {{
        const circularProgress = document.querySelector('.circular-progress');
        const percentageElement = circularProgress.querySelector('.percentage');

        circularProgress.setAttribute('data-percentage', percentage);
        percentageElement.textContent = percentage + '%';
    }}

    // Update the circular progress to show the average score
    updateCircularProgress({averageScore});
</script>

                ";
                ClientScript.RegisterStartupScript(this.GetType(), "UpdateCircularProgress", script);
            }
            else
            {
                Response.Redirect("Registration.aspx");
            }
        }
        else
        {
            // User is not logged in, redirect to login page
            Response.Redirect("Login.aspx");
        }
    }
    // Function to calculate the average score for a user
    private double CalculateAverageScore(string userEmail)
    {
        double averageScore = 0.0;
        int scoreCount = 0;
        string user = Session["Email"].ToString();
        DataSet ds = new DataSet();
        string query = "SELECT Score FROM Exam_Reg WHERE User_Id = (select Reg_Id from Registration where Email='" + user + "')";
        ds = conn.select(query);

        while (ds.Tables[0].Rows.Count > 0)
        {
            // Retrieve and accumulate scores
            int score = Convert.ToInt32(ds.Tables[0].Rows[0]["Score"]);
            averageScore += score;
            scoreCount++;
        }


        // Calculate the average score (avoid division by zero)
        if (scoreCount > 0)
        {
            averageScore /= scoreCount;
        }

        return averageScore;
    }
}