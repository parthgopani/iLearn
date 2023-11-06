using iLearn.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Security.Cryptography;


public partial class ExamDeclare : System.Web.UI.Page
{
    general_function gf = new general_function();
    db_conn conn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtstartdatecal.SelectedDate = DateTime.Now;
        
        if (!IsPostBack)
        {
            bindgrid();
            binddrp();
            bindcheck();
            disabled_up_del();
        }
    }
    public void bindcheck()
    {

    }

    public void binddrp()
    {
        gf.fillcombo("select * from Course", drpcourse, "Course_Name", "Course_Id", "");
    }
    public void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = conn.select("Select * from Exam e, Course c where e.Course_Id=c.Course_Id order by Exam_Id desc");
        gf.fill_grid(ds, grdexam);
    }
    public void clearall(Control Parent)
    {
        foreach (Control x in Parent.Controls)
        {
            if((x).GetType() == typeof(TextBox))
            {
                ((TextBox)(x)).Text = "";
            }
            if((x).GetType() == typeof(DropDownList))
            {
                ((DropDownList)(x)).SelectedIndex = 0;
            }
            if (x.HasControls())
            {
                clearall(x);
            }
        }
    }
    public void disabled_up_del()
    {
        btnupdate.Visible = false;
        btndelete.Visible = false;
    }
    public void enabled_up_del()
    {
        btnupdate.Visible= true;
        btndelete.Visible = true;
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            btnsubmit.Enabled = false;
            DataSet ds = new DataSet();
            string q1 = "select * from Question where Course_Id = " + drpcourse.SelectedValue + "";
            ds = conn.select(q1);
            Int32 cnt = 0;

            cnt += ds.Tables[0].Rows.Count;
            if (cnt >= Convert.ToInt32(txttotque.Text))
            {
                //string q = "insert into Exam (Exam_Name, Course_Id, Exam_Start_Date, Exam_End_Date, Total_Marks, Passing_Marks, Duration, Total_Question) values ('" + txtexamname.Text + "'," + drpcourse.SelectedValue + ",'" + txtstartdate.Text + " 10:00:00','" + txtenddate.Text + " 18:00:00'," + txttotmarks.Text + "," + txtpassmarks.Text + "," + txtduration.Text + "," + txttotque.Text + "); select max(exam_id) from exam_m";
                //string q = "insert into Exam (Exam_Name, Course_Id, Exam_Start_Date, Exam_End_Date, Total_Marks, Passing_Marks, Duration, Total_Question) " + "values ('" + txtexamname.Text + "'," + drpcourse.SelectedValue + ",'" + txtstartdate.Text + "','" + txtenddate.Text + "'," + txttotmarks.Text + "," + txtpassmarks.Text + "," + txtduration.Text + "," + txttotque.Text + "); select max(Exam_Id) from Exam";

                //string q = "insert into Exam (Exam_Name, Course_Id, Exam_Start_Date, Exam_End_Date, Total_Marks, Passing_Marks, Duration, Total_Question) values ('" + txtexamname.Text + "', " + drpcourse.SelectedValue + ", '" + txtstartdate.Text + "', '" + txtenddate.Text + "', " + txttotmarks.Text + ", " + txtpassmarks.Text + ", " + txtduration.Text + ", " + txttotque.Text + ")";

                string q = "insert into Exam (Exam_Name, Course_Id, Exam_Start_Date, Exam_End_Date, Total_Marks, Passing_Marks, Duration, Total_Question) values ('" + txtexamname.Text + "'," + drpcourse.SelectedValue + ",'" + txtstartdate.Text + "','" + txtenddate.Text + "'," + txttotmarks.Text + "," + txtpassmarks.Text + "," + txtduration.Text + "," + txttotque.Text + "); select max(exam_id) from exam_m";

                conn.modify(q);

                string selectQuery = "SELECT MAX(exam_id) FROM Exam";
                ds = conn.select(selectQuery);
                string examId = ds.Tables[0].Rows[0][0].ToString();

                bindgrid();
                clearall(this);
                disabled_up_del();

                DataSet ds1 = new DataSet();
                //string qry2 = "select s.Sem_Id, e.Exam_Start_Date from Semester s, Course c, Exam e where c.Course_Id = " + drpcourse.SelectedValue + " and e.Exam_Id = " + examId + " and s.Sem_Id = c.Sem_Id ";
                string qry3 = "SELECT s.Sem_Id, e.Exam_Start_Date FROM Semester s, Course c, Exam e WHERE e.Course_Id = c.Course_Id  AND e.Exam_Id = " + examId + " AND s.Sem_Id = c.Sem_Id";
                ds1 = conn.select(qry3);
                if (ds1.Tables[0].Rows.Count > 0)
                {
                    DateTime start_date = Convert.ToDateTime(ds1.Tables[0].Rows[0]["Exam_Start_Date"]);
                    Int32 sem = Convert.ToInt32(ds1.Tables[0].Rows[0]["Sem_Id"]);

                    string admin = "a@a.com";

                    if (sem >= 1 && sem <= 6)
                    {
                        string userFilter = $"select Reg_Id from Registration where Email != '{admin}'";

                        DataSet userDs = conn.select(userFilter);

                        for (int i = 0; i < userDs.Tables[0].Rows.Count; i++)
                        {
                            string userInsert = "insert into Exam_Reg(User_Id, Exam_Id, Reg_Date, Exam_Date) " + $"values({userDs.Tables[0].Rows[i][0]}, {examId}, " + $"'{start_date.ToString("yyyy/MM/dd")}', '{start_date.ToString("yyyy/MM/dd")}')";

                            conn.modify(userInsert);
                        }
                    }
                }
                Response.Write("<script>alert('Exam Declared Successfully')</script>");
                btnsubmit.Enabled = true;
            }
            else
            {
                Response.Write("<script>alert('There is no question available...!')</script>");
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Exam not declared & Something went wrong...!')</script>");
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            string q = "update Exam set Exam_Name = '" + txtexamname.Text + "',Course_Id='" + drpcourse.SelectedValue + "',Exam_Start_Date = '" + Convert.ToDateTime(txtstartdate.Text).ToString("yyyy/MM/dd") + " 10:00:00',Exam_End_Date = '" + Convert.ToDateTime(txtenddate.Text).ToString("yyyy/MM/dd") + " 18:00:00',Total_Marks = " + txttotmarks.Text + ",Passing_Marks = " + txtpassmarks.Text + ",Duration=" + txtduration.Text + ",Total_Question=" + txttotque.Text + " where Exam_Id = " + hdnexam.Value;
            conn.modify(q);
            Response.Write("<script>alert('Exam Updated Successfully')</script>");
            bindgrid();
            disabled_up_del();
            btnsubmit.Visible = true;
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Exam not updated & Something went wrong...!')</script>");
        }
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        try
        {
            string q = "delete from Exam where Exam_Id = " + hdnexam.Value;
            conn.modify(q);
            Response.Write("<script>alert('Exam Deleted Successfully')</script>");
            bindgrid();
            clearall(this);
            disabled_up_del();
            btnsubmit.Visible = true;
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Exam not deleted & Something went wrong...!')</script>");
        }
    }

    protected void grdexam_Sorting(object sender, GridViewSortEventArgs e)
    {

    }

    protected void grdexam_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdexam.PageIndex = e.NewPageIndex;
        bindgrid();
    }

    protected void grdexam_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Exam_Id")
            {
                hdnexam.Value = e.CommandArgument.ToString();
                string q = "select * from Exam where Exam_Id='" + hdnexam.Value + "'";
                DataSet ds = new DataSet();
                ds = conn.select(q);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtexamname.Text = ds.Tables[0].Rows[0]["Exam_Name"].ToString();
                    drpcourse.SelectedValue= ds.Tables[0].Rows[0]["Course_Id"].ToString();
                    txtstartdate.Text = ds.Tables[0].Rows[0]["Exam_Start_Date"].ToString();
                    txtenddate.Text = ds.Tables[0].Rows[0]["Exam_End_Date"].ToString();
                    txttotmarks.Text = ds.Tables[0].Rows[0]["Total_Marks"].ToString();
                    txtpassmarks.Text = ds.Tables[0].Rows[0]["Passing_Marks"].ToString();
                    txtduration.Text = ds.Tables[0].Rows[0]["Duration"].ToString();
                    txttotque.Text = ds.Tables[0].Rows[0]["Total_Question"].ToString();
                }
                enabled_up_del();
                btnsubmit.Visible = false;
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Something went wrong .... !')</script>");
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        int i = 2;
        if(i < 2)
        {
            DateTime sd = Convert.ToDateTime(txtstartdatecal.SelectedDate);
            hdnfield.Value = txtstartdatecal.SelectedDate.ToString();
            txtenddatecal.SelectedDate = Convert.ToDateTime(hdnfield.Value);
        }
        else
        {
            Timer1.Enabled = false;
        }
    }

    protected void calimgbtn_Click(object sender, ImageClickEventArgs e)
    {
        DateTime sd = Convert.ToDateTime(txtstartdatecal.SelectedDate);
        hdnfield.Value = txtstartdatecal.SelectedDate.ToString();
        txtenddatecal.SelectedDate = Convert.ToDateTime(hdnfield.Value);
    }
}