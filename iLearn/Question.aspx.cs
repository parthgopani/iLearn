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
            int courseId = 0;
            int complexityId = 0;

            // Retrieve Course ID
            string selectedCourseName = drpcourse.SelectedItem.Text;
            string courseQuery = "SELECT Course_Id FROM Course WHERE Course_Name = '" + selectedCourseName + "'";
            DataSet courseResult = conn.select(courseQuery);

            if (courseResult != null && courseResult.Tables.Count > 0 && courseResult.Tables[0].Rows.Count > 0)
            {
                courseId = Convert.ToInt32(courseResult.Tables[0].Rows[0]["Course_Id"]);
            }

            // Retrieve Complexity ID
            string selectedComplexityName = drpcomplexcity.SelectedItem.Text;
            string complexityQuery = "SELECT Complex_Id FROM Complexity WHERE Complex_Type = '" + selectedComplexityName + "'";
            DataSet complexityResult = conn.select(complexityQuery);

            if (complexityResult != null && complexityResult.Tables.Count > 0 && complexityResult.Tables[0].Rows.Count > 0)
            {
                complexityId = Convert.ToInt32(complexityResult.Tables[0].Rows[0]["Complex_Id"]);
            }

            // Check if Course ID and Complexity ID are not null or 0
            if (courseId != 0 && complexityId != 0)
            {
                string questionText = txtquestiontext.Text.Trim();
                string option1 = txtoption1.Text.Trim();
                string option2 = txtoption2.Text.Trim();
                string option3 = txtoption3.Text.Trim();
                string option4 = txtoption4.Text.Trim();
                string correctAnswer = txtcorrectanswer.Text.Trim();

                // Check if all fields are filled
                if (!string.IsNullOrEmpty(questionText) && !string.IsNullOrEmpty(option1) &&
                    !string.IsNullOrEmpty(option2) && !string.IsNullOrEmpty(option3) && !string.IsNullOrEmpty(option4) && !string.IsNullOrEmpty(correctAnswer))
                {
                    // Check if the question already exists
                    string existenceQuery = "SELECT COUNT(*) FROM Question WHERE Course_Id = " + courseId +
                        " AND Que_Text = '" + questionText + "' AND O1 = '" + option1 + "' AND O2 = '" + option2 + "'" +
                        " AND O3 = '" + option3 + "' AND O4 = '" + option4 + "'";
                    DataSet result = conn.select(existenceQuery);
                    int questionCount = result != null && result.Tables.Count > 0 && result.Tables[0].Rows.Count > 0 ? 1 : 0;

                    if (questionCount > 0)
                    {
                        Response.Write("<script>alert('Question already exists.')</script>");
                    }
                    else
                    {
                        // Insert the question into the database
                        string insertQuery = "INSERT INTO Question (Course_Id, Complex_Id, Que_Text, O1, O2, O3, O4, Correct_Ans, UploadDateTime) " +
                            "VALUES (" + courseId + ", " + complexityId + ", '" + questionText + "', '" + option1 + "', '" + option2 + "', '" +
                            option3 + "', '" + option4 + "', '" + correctAnswer + "', GETDATE())";

                        conn.modify(insertQuery);

                        Response.Write("<script>alert('Question Inserted Successfully')</script>");
                        bindgrid();
                        clearall(this);
                        disabled_up_del();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Please fill in all required fields.')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Course or Complexity ID.')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Question Not Inserted & Something Went Wrong... " + ex.Message + "')</script>");
        }
    }


    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            int courseId = Convert.ToInt32(drpcourse.SelectedValue);
            int complexityId = Convert.ToInt32(drpcomplexcity.SelectedValue);
            string questionText = txtquestiontext.Text;
            string option1 = txtoption1.Text;
            string option2 = txtoption2.Text;
            string option3 = txtoption3.Text;
            string option4 = txtoption4.Text;
            string correctAnswer = txtcorrectanswer.Text;
            int questionId = Convert.ToInt32(hdnquestion.Value);

            string updateQuery = "UPDATE Question SET Course_Id = " + courseId + ", Complex_Id = " + complexityId + ", Que_Text = '" + questionText + "', O1 = '" + option1 + "', O2 = '" + option2 + "', O3 = '" + option3 + "', O4 = '" + option4 + "', Correct_Ans = '" + correctAnswer + "' WHERE Que_Id = " + questionId;


            conn.modify(updateQuery);
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
            drpcourse.Items.Clear();
            gf.fillcombo("SELECT DISTINCT c.Course_Id, c.Course_Name FROM Course c INNER JOIN Semester s ON c.Sem_Id = s.Sem_Id WHERE s.Sem_Id = " + drpsemester.SelectedValue, drpcourse, "Course_Name", "Course_Id", "");

        }
        catch
        {
            Response.Write("<script>alert('Please Select Semester First Which Conints This Course.. ')</script>");
        }
    }

}

   