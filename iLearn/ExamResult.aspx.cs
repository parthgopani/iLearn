using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Data;
using System.IdentityModel.Claims;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ExamResult : System.Web.UI.Page
{
    Int32 Right = 0;
    Int32 Wrong = 0;
    Int32 Total = 0;

    Int32 TotalPercentage = 0, PassingMarks = 0;
    string status;
    general_function gf = new general_function();
    db_conn conn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Request.QueryString != null)
            {
                Session["Reg_Id"] = Convert.ToInt16(Request.QueryString["User_Id"]);
                Session["eid"] = Convert.ToInt16(Request.QueryString["Exam_Id"]);
                Session["cid"] = Convert.ToInt16(Request.QueryString["Course_Id"]);


            }
            calculate_result();
            insert();
            display();
        }
        catch
        {
            Response.Redirect("ExamList.aspx?User_Id=" + Session["Reg_Id"] + "&Exam_Id=" + Session["eid"]);
        }
    }
    public void display()
    {
        DataSet ds = new DataSet();
        string qry = "select Exam_Name, Status_PF, Score, Percentage, Total_Question, Passing_Marks, Total_Marks , e.Exam_Id from Exam_Reg e inner join Exam e1  on e1.Exam_Id = e.Exam_Id where e.User_Id = " + Session["Reg_Id"] + " and e.Exam_Id = " + Session["eid"] + "";
        ds = conn.select(qry);
        int mks = Convert.ToInt32(ds.Tables[0].Rows[0]["Score"]) * 2;
        Session["marks"] = ds.Tables[0].Rows[0]["Score"];
        Session["passmarks"] = ds.Tables[0].Rows[0]["Passing_Marks"];
        Session["percent"] = ds.Tables[0].Rows[0]["Percentage"];
        if (ds.Tables[0].Rows.Count > 0)
        {

            lblExamName.Text = ds.Tables[0].Rows[0]["Exam_Name"].ToString();
            lblTotalQuestions.Text = ds.Tables[0].Rows[0]["Total_Question"].ToString();
            lblRightAns.Text = Right.ToString();
            lblWrongAns.Text = Wrong.ToString();
            lblStatus.Text = ds.Tables[0].Rows[0]["Status_PF"].ToString();
            lblScore.Text = mks.ToString();
            lblPassing.Text = ds.Tables[0].Rows[0]["Passing_Marks"].ToString();
            lblTotalmarks.Text = ds.Tables[0].Rows[0]["Total_Marks"].ToString();
            lblPercentage.Text = ds.Tables[0].Rows[0]["Percentage"].ToString() + "%";
        }
    }

    public void calculate_result()
    {

        DataSet ds1 = new DataSet();

        string qry = "select * from Exam e where e.Exam_Id = " + Session["eid"] + "";
        ds1 = conn.select(qry);
        Total = Convert.ToInt32(ds1.Tables[0].Rows[0]["Total_Question"]);


        DataSet ds = new DataSet();
        string qry1 = "select COUNT(*) from Quiz q, Question q1 where q.Que_Id = q1.Que_Id and q.Exam_Id = " + Session["eid"] + " and q.User_Id = " + Session["Reg_Id"] + " and q.Given_Ans = q1.Correct_Ans";
        ds = conn.select(qry1);
        Right = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
        Wrong = Total - Right;


        TotalPercentage = Right * 100 / Total;

        PassingMarks = Convert.ToInt32(ds1.Tables[0].Rows[0]["Passing_Marks"]);
        if (Right >= PassingMarks)
        {
            status = "Congratulations!!! You Are PASS.";
            lblStatus.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            status = "Sorry!!! Better Luck Next Time.";
            lblStatus.ForeColor = System.Drawing.Color.Red;
        }



    }
    public void insert()
    {
        DataSet ds = new DataSet();
        string gd = DateTime.Now.ToString("yyyy/MM/dd");
        string qry = "update Exam_Reg set Status_PF = '" + status + "', Score = " + Right + ", Percentage = '" + TotalPercentage + "', Exam_Given_Date = '" + gd + "'  where User_Id = " + Session["Reg_Id"] + " and Exam_Id = " + Session["eid"].ToString();
        conn.modify(qry);
    }

    protected void btnview_Click(object sender, EventArgs e)
    {
        Response.Redirect("");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ExamList.aspx");
    }
}