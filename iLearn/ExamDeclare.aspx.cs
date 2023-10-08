using iLearn.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ExamDeclare : System.Web.UI.Page
{
    general_function gf = new general_function();
    db_conn conn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {

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
        Int32 cnt = 0;
        if(cnt >= Convert.ToInt32(txttotque.Text))
        {
            try
            {
                string q = "insert into Exam (Exam_Name, Course_Id, Exam_Start_Date, Exam_End_Date, Total_Marks, Passing_Marks, Duration, Total_Question) values ('" + txtexamname.Text + "'," + drpcourse.SelectedValue + ",'" + txtstartdate.Text + "10:00:00', '" + txtenddate.Text + "18:00:00', " + txttotmarks.Text + "," + txtpassmarks.Text + ", " + txtduration.Text + ", " + txttotque.Text + "); select @@IDENTITY;";
                conn.select(q);
                Response.Write("<script>alert('Exam Declared Successfully')</script>");
                bindgrid();
                clearall(this);
                disabled_up_del();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Exam not declared & Something went wrong...!')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('There is no question available...!')</script>");
        }
        
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            string q = "uodate Exam set Exam_Name = '" + txtexamname.Text + "', Courese_Id = '" + drpcourse.SelectedValue + "', Exam_Start_Date = '" + Convert.ToDateTime(txtstartdate.Text).ToString("yyyy/MM/dd") + "10:00:00', Exam_End_Date = '" + Convert.ToDateTime(txtenddate.Text).ToString("yyyy/MM/dd") + "18:00:00', Total_Marks = " + txttotmarks.Text + ", Passing_Marks = " + txtpassmarks.Text + ", Duration =" + txtduration.Text + ", Total_Question = " + txttotque.Text + " where Exam_Id = " + hdnexam.Value;
            conn.modify(q);
            Response.Write("<script>alert('Exam Updated Successfully')</script>");
            bindgrid();
            disabled_up_del();
            btnsubmit.Visible = true;
        }
        catch (Exception ex)
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
        catch (Exception ex)
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
        catch (Exception ex)
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
        }
        else
        {
            Timer1.Enabled = false;
        }
    }
}