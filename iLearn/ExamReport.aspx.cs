using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ExamReport : System.Web.UI.Page
{
    general_function gf = new general_function();
    db_conn conn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            drpExamName.Items.Add(new ListItem("Select", "0", true));
            binddrpExam();
            binddrpSem();
        }
    }
    public void binddrpSem()
    {
        string sem = "SELECT * from Semester";
        gf.fillcombo(sem, drpSemester, "Sem_Name", "Sem_Id", "--Select--");
    }
    
    public void binddrpExam()
    {
        string semesterId = drpSemester.SelectedValue;
        if (!string.IsNullOrEmpty(semesterId) && semesterId != "0")
        {
            string examQuery = "SELECT distinct(e.Exam_Name), e.Exam_Id FROM Exam e, Attempt_Question a, Course c WHERE e.Exam_Id = a.Exam_Id AND e.Course_Id = c.Course_Id AND c.Sem_Id = " + semesterId;

            DataSet ds = conn.select(examQuery);

            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                drpExamName.DataSource = ds.Tables[0];
                drpExamName.DataTextField = "Exam_Name"; 
                drpExamName.DataValueField = "Exam_Id";   
                drpExamName.DataBind();

                drpExamName.Items.Insert(0, new ListItem("--Select--", "0"));
            }
            else
            {
                drpExamName.Items.Clear();
                drpExamName.Items.Add(new ListItem("-- No Exams Found --", "0"));
            }
        }
        else
        {
            drpExamName.Items.Clear();
            drpExamName.Items.Add(new ListItem("-- Please Select a Semester First --", "0"));
        }
    }


    public void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = conn.select("SELECT r.F_Name 'Name', er.Score 'Marks Obtained', e.Total_Marks 'Total Marks', e.Passing_Marks 'Passing' from Exam_Reg er,Exam e, Registration r WHERE e.Exam_Id = er.Exam_Id AND er.User_Id=r.Reg_Id AND e.Exam_Name='"+drpExamName.SelectedItem +"'");
        gf.fill_grid(ds, GrdExamReport);
    }

    protected void btnResult_Click(object sender, EventArgs e)
    {
        try
        {
            bindgrid();
            //bindlabel();
        }
        catch 
        {
            Response.Write("<script>alert('There is no Exam taken of this Subject')</script>");
        }
    }

    private void bindlabel()
    {
        string examId = "SELECT max(Exam_Id) from Exam WHERE Exam_Name = '"+drpExamName.SelectedItem+"'";
        DataSet ds1 = new DataSet();
        ds1 = conn.select(examId);
        Int64 exam_id = Convert.ToInt64(ds1.Tables[0].Rows[0][0]);

        string report = "SELECT case when er.Status_PF is null then 'Absent' else er.Status_PF end as 'Result Status', COUNT(*) as 'Total' from Exam_Reg er, Exam e, Registration r WHERE e.Exam_Id= er.Exam_Id AND er.User_Id=r.Reg_Id AND e.Exam_Id = " + exam_id + " group by er.Status_PF";
        DataSet ds = new DataSet();
        ds = conn.select(report);

        if (ds.Tables[0].Rows.Count >= 1)
            lblPass.Text = "PASS: " + ds.Tables[0].Rows[1][1].ToString() + "<br/>";
        else
            lblPass.Text = "PASS: 0" + "<br/>";
        if (ds.Tables[0].Rows.Count > 2)
            lblFail.Text = "FAIL: " + ds.Tables[0].Rows[2][1].ToString() + "<br/>";
        else
            lblFail.Text = "FAIL: 0" + "<br/>";

    }

    protected void drpSemester_SelectedIndexChanged(object sender, EventArgs e)
    {
        binddrpExam();
    }

    



    protected void GrdExamReport_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }

    
}