using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Answers : System.Web.UI.Page
{
    string ga, ca;
    db_conn conn = new db_conn();
    general_function gf = new general_function();
    protected void Page_Load(object sender, EventArgs e)
    {
        // hdn_stud_id.Value = Convert.ToInt16(Request.QueryString["regid"]).ToString();
        //hdn_e_id.Value   =  Convert.ToInt16(Request.QueryString["eid"]).ToString();
        bindgrid();
        hdn_e_id.Value = Session["eid"].ToString();
        Int16 marks = Convert.ToInt16(Session["marks"]);
        Int16 pmarks = Convert.ToInt16(Session["passmarks"]);
        Int16 percent = Convert.ToInt16(Session["percent"]);

        //if (marks > pmarks && percent < 90)
        //{
        //    bindgrid();
        //    btnback.Text = "Performance Improvement";
        //}
        //else if (marks > pmarks && percent >= 90)
        //{
        //    bindgrid();
        //    btnback.Text = "Back";
        //}
        //else
        //{
        //    bindgrid();
        //    btnback.Text = "Attempt Exam Again";
        //}
    }
    protected void grdview_RowDataBound(object sender, GridViewRowEventArgs e)
    {


    }
    public void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = conn.select("select q.Que_Text,q.O1,q.O2,q.O3,q.O4,q.Correct_Ans,q1.Given_Ans from Question q,Quiz q1 where q.Que_Id = q1.Que_Id and q1.User_Id = " + Session["Reg_Id"] + " and q1.Exam_Id = " + Session["eid"] + "");
        foreach (DataRow row in ds.Tables[0].Rows)
        {
            string queText = row["Que_Text"].ToString();
            row["Que_Text"] = ProcessLatexEquations(queText);
        }
        gf.fill_grid(ds, grdview);
    }
    protected string ProcessLatexEquations(string input)
    {

        if (input.Contains("$"))
        {

            input = $@"{input}";
        }

        return input;
    }
    protected void grdview_RowDataBound11(object sender, GridViewRowEventArgs e)
    {
        DataSet ds = new DataSet();
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.Cells[6].Text.ToUpper() == e.Row.Cells[7].Text.ToUpper())
            {
                e.Row.Cells[7].BackColor = System.Drawing.Color.LightGreen;
                e.Row.Cells[7].ForeColor = System.Drawing.Color.Black;
                e.Row.Cells[7].Font.Bold.ToString();
            }
            else
            {
                e.Row.Cells[7].BackColor = System.Drawing.Color.Orange;
                e.Row.Cells[7].ForeColor = System.Drawing.Color.Black;
                e.Row.Cells[7].Font.Bold.ToString();
            }

        }
    }

    protected void btnback_Click(object sender, EventArgs e)
    {

        if (btnback.Text == "Back")
        {
            Server.Transfer("ExamResult.aspx?User_Id=" + Session["Reg_Id"] + "&Exam_Id=" + Session["eid"] + "&Course_Id=" + Session["cid"] + "", false);
        }
    }
}