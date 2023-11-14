using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Course : System.Web.UI.Page
{
    db_conn con = new db_conn();
    general_function gf = new general_function();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind_grid();
            bind_drop();
        }
        UpdateDeleteHide();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            String qry = "insert into Course(Course_Name,Course_Code,Sem_Id) values('" + txtcoursename.Text + "','" + txtcoursecode.Text + "'," + drpsem.SelectedValue + ")";
            con.modify(qry);
            Response.Write("<script>alert('Course Inserted Successfully')</script>");
            bind_grid();
            ClearAll(this);
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Course Not Inserted & Something Went Wrong...!')</script>");
        }
    }
    public void bind_grid()
    {
        DataSet ds = new DataSet();
        ds = con.select("select * from Course sub,Semester sem where sub.Sem_Id=sem.Sem_Id order by sub.Course_Id desc");
        gf.fill_grid(ds, grid_Course);
    }
    public void bind_drop()
    {
        gf.fillcombo("select * from Semester", drpsem, "Sem_Name", "Sem_Id", "select semester");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {

        ClearAll(this);
        SubmitShow();
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            String qry = "update Course set Course_Name='" + txtcoursename.Text + "',Course_Code='" + txtcoursecode.Text + "',Sem_Id=" + drpsem.SelectedValue + " where Course_Id=" + hiddensubid.Value;
            con.modify(qry);
            Response.Write("<script>alert('Course Updated Successfully')</script>");
            bind_grid();
            SubmitShow();
            ClearAll(this);
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Course Not Updated & Something Went Wrong...!')</script>");
        }
    }
    protected void sub_rowcmd(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Course_Id")
            {
                hiddensubid.Value = e.CommandArgument.ToString();
                string str3 = "select * from Course WHERE Course_Id ='" + hiddensubid.Value + "' ";
                DataSet ds = new DataSet();
                ds = con.select(str3);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtcoursename.Text = ds.Tables[0].Rows[0]["Course_Name"].ToString();
                    txtcoursecode.Text = ds.Tables[0].Rows[0]["Course_Code"].ToString();
                    drpsem.SelectedValue = ds.Tables[0].Rows[0]["Sem_Id"].ToString();
                }
                UpdateDeleteShow();
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Something Went Wrong...!')</script>");
        }
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        try
        {
            String qry = "delete from Course where Course_Id=" + hiddensubid.Value;
            con.modify(qry);
            Response.Write("<script>alert('Course Deleted Successfully')</script>");
            bind_grid();
            SubmitShow();
            ClearAll(this);
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Course Not Deleted & Something Went Wrong...!')</script>");
        }
    }
    public void ClearAll(Control parent)
    {

        foreach (Control x in parent.Controls)
        {
            if ((x.GetType() == typeof(TextBox)))
            {
                ((TextBox)(x)).Text = "";
            }
            if ((x.GetType() == typeof(DropDownList)))
            {
                ((DropDownList)(x)).SelectedIndex = 0;
            }

            if (x.HasControls())
            {
                ClearAll(x);
            }

        }
    }
    public void UpdateDeleteHide()
    {
        btnupdate.Visible = false;
        btndelete.Visible = false;
    }
    public void UpdateDeleteShow()
    {
        btnupdate.Visible = true;
        btndelete.Visible = true;
        btnsubmit.Visible = false;
    }
    public void SubmitShow()
    {
        btnsubmit.Visible = true;
    }
    protected void grid_Course_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grid_Course.PageIndex = e.NewPageIndex;
    }
}