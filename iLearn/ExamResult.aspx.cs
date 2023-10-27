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
                Session["sid"] = Convert.ToInt16(Request.QueryString["studentId"]);
                Session["eid"] = Convert.ToInt16(Request.QueryString["examId"]);
                Session["c_id"] = Convert.ToInt16(Request.QueryString["courseId"]);


            }
            calculate_result();
            insert();
            display();
        }
        catch
        {
           // Response.Redirect("ExamList.aspx?stud_id=" + Session["regid"] + "&examId=" + Session["eid"]);
        }
    }
    public void display()
    {
        DataSet ds = new DataSet();
        string qry = "select Exam_Name,status_pf,score,percentage,Total_Question,Passing_Marks,Total_Marks , e.Exam_Id from stud_exam_reg s inner join exam_m e  on e.Exam_Id = s.Exam_Id where s.Stud_Id = " + Session["regid"] + " and s.Exam_Id = " + Session["eid"] + "";
        ds = conn.select(qry);
        int mks = Convert.ToInt32(ds.Tables[0].Rows[0]["score"]) * 2;
        Session["marks"] = ds.Tables[0].Rows[0]["score"];
        Session["passmarks"] = ds.Tables[0].Rows[0]["passing_marks"];
        Session["percent"] = ds.Tables[0].Rows[0]["percentage"];
        if (ds.Tables[0].Rows.Count > 0)
        {

            lblExamName.Text = ds.Tables[0].Rows[0]["exam_name"].ToString();
            lblTotalQuestions.Text = ds.Tables[0].Rows[0]["tot_que"].ToString();
            lblRightAns.Text = Right.ToString();
            lblWrongAns.Text = Wrong.ToString();
            lblStatus.Text = ds.Tables[0].Rows[0]["status_pf"].ToString();
            lblScore.Text = mks.ToString();
            lblPassing.Text = ds.Tables[0].Rows[0]["passing_marks"].ToString();
            lblTotalmarks.Text = ds.Tables[0].Rows[0]["tot_marks"].ToString();
            lblPercentage.Text = ds.Tables[0].Rows[0]["percentage"].ToString() + "%";
        }
    }

    public void calculate_result()
    {

        DataSet ds1 = new DataSet();

        string qry = "select * from Exam e where e.Exam_Id = " + Session["eid"] + "";
        ds1 = conn.select(qry);
        Total = Convert.ToInt32(ds1.Tables[0].Rows[0]["tot_que"]);


        DataSet ds = new DataSet();
        string qry1 = "select COUNT(*) from Attempt_Question a, Question b where a.Que_Id = b.Que_Id and a.Exam_Id=" + Session["eid"] + " and a.User_Id=" + Session["regid"] + " and a.Given_Answer=b.Correct_Ans";
        ds = conn.select(qry1);
        Right = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
        Wrong = Total - Right;


        TotalPercentage = Right * 100 / Total;

        PassingMarks = Convert.ToInt32(ds1.Tables[0].Rows[0]["passing_marks"]);
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
        string qry = "update stud_exam_reg set status_pf = '" + status + "', score = " + Right + ", percentage = '" + TotalPercentage + "',exam_given_date = '" + gd + "'  where stud_id = " + Session["sid"] + " and Exam_Id = " + Session["eid"].ToString();
        conn.modify(qry);
    }

    protected void btnview_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewAnswer.aspx");
    }

}