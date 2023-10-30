using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ExamList : System.Web.UI.Page
{
    general_function gf = new general_function();
    db_conn conn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void bindgrid(DataSet ds)
    {
        gf.fill_grid(ds, grdcurrexam);
    }

    protected void btnresult_Click(object sender, EventArgs e)
    {
        int i = 0;
        grdcurrexam.Visible = false;
        grdresult.Visible = true;
        DataSet ds = new DataSet();
        ds = conn.select("select e.Exam_Id, Exam_Name, Reg_Date, Exam_Date, Exam_Given_Date, Status_PF 'Result', Score, Percentage , Total_Marks, Passing_Marks, Total_Question from Exam_Reg er, Exam e where er.Exam_Id = e.Exam_Id and er.User_Id = " + Session["Reg_Id"] + " and Exam_Given_Date is not null and Score is not null");

        if (ds.Tables[0].Rows.Count > 0)
        {
            gf.fill_grid(ds, grdresult);
            for (i = 0; i <= grdresult.Rows.Count; i++)
            {
                lblmsg.Text = i + " " + "Record Appear in Results";
                grdresult.Visible = true;
            }
        }
        else
        {
            lblmsg.Visible = true;
            lblmsg.Text = "Any Exam Is Not Given By You Yet!!! ";
            grdresult.Visible = false;
        }

    }

    protected void btncurrexam_Click(object sender, EventArgs e)
    {
        grdcurrexam.Visible = true;
        grdresult.Visible = false;
        Int16 i;
        DataSet ds = new DataSet();
        ds = conn.select("SELECT e.Exam_id, e.Exam_Name, c.Course_Name, e.Exam_Start_Date, e.Exam_End_Date, er.Reg_Date, e.Total_Marks, e.Passing_Marks FROM Exam AS e INNER JOIN Exam_Reg AS er ON e.Exam_Id = er.Exam_Id INNER JOIN Course AS c ON e.Course_Id = c.Course_Id  WHERE (er.User_id = " + Session["Reg_Id"] + ")");
        bindgrid(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            for (i = 0; i <= grdcurrexam.Rows.Count; i++)
            {
                lblmsg.Text = i + " " + "Record Appear in Current exam";
                grdcurrexam.Visible = true;
            }
        }
        else
        {
            lblmsg.Visible = true;
            lblmsg.Text = "Currently No Exam Available For You !!! ";
            grdcurrexam.Visible = false;
        }

    }

    protected void grdcurrexam_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Exam_Id")
            {
                hdnexamlist.Value = e.CommandArgument.ToString();
                string str1 = "select * from Exam e, Exam_Reg er, Question q WHERE e.Exam_Id ='" + hdnexamlist.Value + "' and e.exam_id = er.exam_id and e.Course_Id = q.Course_Id";
                DataSet ds = new DataSet();
                ds = conn.select(str1);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["eid"] = hdnexamlist.Value;
                    Session["cid"] = ds.Tables[0].Rows[0]["Course_Id"].ToString();
                    Server.Transfer("Quiz.aspx");
                }
                else if (ds.Tables[0].Rows.Count <= 0)
                {
                    Response.Redirect("");
                }
            }
        }
        catch (Exception)
        {
        }
    }

    protected void grdresult_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if(e.CommandName == "Exam_Id")
            {
                hdnexamlist.Value = e.CommandArgument.ToString();
                Session["eid"] = hdnexamlist.Value;
                Server.Transfer("ViewAnswer.aspx?" + Session["eid"] + " & " + Session["Reg_Id"] + "");
            }
        }
        catch (Exception)
        {

        }
    }
}