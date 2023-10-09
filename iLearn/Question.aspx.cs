using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Question : System.Web.UI.Page
{
    db_conn conn = new db_conn();
    general_function gf = new general_function();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindgrid();
            binddrp();
            disabled_up_del();


        }

    }
    protected void grdquestion_RowCommand(object sender,GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Que_Id")
        { 
            hdnquestion.Value=e.CommandArgument.ToString();
            String str1 = "select * from Question WHERE Que_Id='" + hdnquestion.Value + "'";
            DataSet ds = new DataSet(); 
            ds = conn.select(str1);

            try
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    drpsemester.SelectedValue = ds.Tables[0].Rows[0]["Sem_Id"].ToString();
                    drpcourse.SelectedValue = ds.Tables[0].Rows[0]["Course_Id"].ToString();
                    drpcomplexcity.SelectedValue = ds.Tables[0].Rows[0]["Complex_Id"].ToString();
                    txtquestiontext.Text = ds.Tables[0].Rows[0]["Que_Text"].ToString();
                    txtoption1.Text = ds.Tables[0].Rows[0]["O1"].ToString();
                    txtoption2.Text = ds.Tables[0].Rows[0]["O2"].ToString();
                    txtoption3.Text = ds.Tables[0].Rows[0]["O3"].ToString();
                    txtoption4.Text = ds.Tables[0].Rows[0]["O4"].ToString();
                    txtcorrectanswer.Text = ds.Tables[0].Rows[0]["Correct_Ans"].ToString();
                }
                enabled_up_del();
                btnadd.Visible = false;
            }
            catch
            {
                Response.Write("<script>alert(Select semester first which contains this subject..)</script>");
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
        btnupdate.Visible = true;
        btndelete.Visible = true;
    }
    public void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = conn.select("select * from Question q,Course c,Semester sem,Complexity complex where q.Course_Id = c.Course_Id and sem.Sem_Id = C.Sem_Id and complex.Complex_Id = q.Complex_Id order by q.Que_Id desc");
        gf.fill_grid(ds, grdquestion);
    }
    public void binddrp()
    {
        gf.fillcombo("select * from Semester", drpsemester, "Sem_Name", "Sem_Id", "");
        gf.fillcombo("select * from Complexity", drpcomplexcity, "Complex_Type", "Complex_Id", "");
        gf.fillcombo("select * from Course", drpcourse, "Course_Name", "Course_Id", "");
    }


    protected void btnadd_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet ds = new DataSet();
            string qry = "if not exists (select * from Question where Course_Id = " + drpcourse.SelectedValue + " and Que_Text ='" + txtquestiontext.Text + "' and O1 = '" + txtoption1.Text + "' and O2 = '" + txtoption2.Text + "' and O3 = '" + txtoption3.Text + "' and O4 = '" + txtoption4.Text + "'  )insert into Question(Course_Id,Que_Text,O1,O2,O3,O4,Correct_Ans) values(" + drpcourse.SelectedValue + ","  + txtquestiontext.Text + "','" + txtoption1.Text + "','" + txtoption2.Text + "','" + txtoption3.Text + "','" + txtoption4.Text + "','" + txtcorrectanswer.Text + "')";
            conn.modify(qry);
        
        }
        catch {
            Response.Write("<script>alert('Question Not Inserted & Something Went Wrong...!')</script>");
        }
        Response.Write("<script>alert( Question Inserted Successfully')</script>");
        bindgrid();
        clearall(this);
        disabled_up_del();

    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "update Question set Course_Id='" + drpcourse.SelectedValue + "',Complex_Id='" + drpcomplexcity.SelectedValue + "',Que_Text = '" + txtquestiontext.Text + "',O1='" + txtoption1.Text + "',O2='" + txtoption2.Text + "',O3='" + txtoption3.Text + "',O4='" + txtoption4.Text + "',Correct_Ans = '" + txtcorrectanswer.Text + "'  where Que_Id = " + hdnquestion.Value;
            conn.modify(qry);
            Response.Write("<script>alert('Question Updated Successfully')</script>");

            bindgrid();
            clearall(this);
            disabled_up_del();
            btnadd.Visible = true;
        }
        catch
        {
            Response.Write("<script>alert('Objective Question Not Updated & Something Went Wrong...!')</script>");
        }
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "delete from Question where Que_Id = " + hdnquestion.Value;
            conn.modify(qry);
            Response.Write("<script>alert('Question Deleted Successfully')</script>");
            bindgrid();
            clearall(this);
            disabled_up_del();
            btnadd.Visible = true;
        }
        catch 
        {
            Response.Write("<script>alert('Question Not Deleted. Something Went Wrong...!')</script>");
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        clearall(this);

    }
    protected void drpquestiontype_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Convert.ToString(drpquestiontype.SelectedItem) == "True False")
        {
            txtoption3.Enabled = false;
            txtoption4.Enabled = false;
        }
        else
        {
            txtoption3.Enabled = true;
            txtoption4.Enabled = true;
        }
    }
    public void clearall(Control Parent)
    {
        foreach (Control x in Parent.Controls)
        {
            if ((x).GetType() == typeof(TextBox))
            {
                ((TextBox)(x)).Text = "";
            }

            if ((x).GetType() == typeof(DropDownList))
            {
                ((DropDownList)(x)).SelectedIndex = 0;
            }

            if (x.HasControls())
            {
                clearall(x);
            }

        }

    }
    protected void grdquestion_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdquestion.PageIndex = e.NewPageIndex;
        bindgrid();
    }
    protected void drpsemester_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            gf.fillcombo("select * from Course c,Semester s where c.Sem_Id=" + drpsemester.SelectedValue + " and s.Sem_Id=s.Sem_Id", drpcourse, "Course_Name", "Course_Id", "");
        }
        catch
        {
            Response.Write("<script>alert('Please Select Semester First Which Conints This Course.. ')</script>");
        }
    }

}

   