using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuestionImport : System.Web.UI.Page
{
    general_function gf = new general_function();
    db_conn cn = new db_conn();
    Int32 course;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            bindsemdrp();
            bindcoursedrp();
        }
    }
    public void bindsemdrp()
    {
        //fill semester to dropdown
        string s = "select * from Semester";
        gf.fillcombo(s, drpsemester, "Sem_Name", "Sem_Id", "--Select--");
    }
    public void bindcoursedrp()
    {
        gf.fillcombo("select * from Course", drpcourse, "Course_Name", "Course_Id", "");
    }
    protected void drpsemester_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpcourse.Items.Clear();
        gf.fillcombo("SELECT DISTINCT c.Course_Id, c.Course_Name FROM Course c INNER JOIN Semester s ON c.Sem_Id = s.Sem_Id WHERE s.Sem_Id = " + drpsemester.SelectedValue, drpcourse, "Course_Name", "Course_Id", "");
    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (fileuploadexcel.FileName.EndsWith(".xlsx"))
        {
            int r = 0;
            String Que, O1, O2, O3, O4, CorrectAnswer;
            String path = Path.GetFileName(fileuploadexcel.FileName);
            path = path.Replace(" ", "");
            String query = "";
            fileuploadexcel.SaveAs(Server.MapPath("~/excel_file/") + path);
            String ExcelPath = Server.MapPath("~/excel_file/") + path;
            OleDbConnection mycon = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + ExcelPath + "; Extended Properties=Excel 8.0; Persist Security Info = False");
            mycon.Open();
            OleDbCommand cmd = new OleDbCommand("select * from [Sheet1$]", mycon);
            OleDbDataAdapter Adapter = new OleDbDataAdapter();
            Adapter.SelectCommand = cmd;
            DataSet dsExcel = new DataSet();
            Adapter.Fill(dsExcel);
            try
            {
                if (dsExcel.Tables.Count > 0)
                {
                    while (r < dsExcel.Tables[0].Rows.Count)
                    {
                        int courseId = 0;
                        string selectedCourseName = drpcourse.SelectedItem.Text;
                        string courseQuery = "SELECT Course_Id FROM Course WHERE Course_Name = '" + selectedCourseName + "'";
                        DataSet courseResult = cn.select(courseQuery);

                        if (courseResult != null && courseResult.Tables.Count > 0 && courseResult.Tables[0].Rows.Count > 0)
                        {
                            courseId = Convert.ToInt32(courseResult.Tables[0].Rows[0]["Course_Id"]);
                        }


                        if (courseId != 0)
                        {

                            int Complexid = Convert.ToInt32(dsExcel.Tables[0].Rows[r][7]); // ComplexId is in the 8th column.
                            Que = dsExcel.Tables[0].Rows[r][1].ToString().Replace("'", "`"); // Question text is in the 2nd column.
                            O1 = dsExcel.Tables[0].Rows[r][2].ToString().Replace("'", "`"); // Option A is in the 3rd column.
                            O2 = dsExcel.Tables[0].Rows[r][3].ToString().Replace("'", "`"); // Option B is in the 4th column.
                            O3 = dsExcel.Tables[0].Rows[r][4].ToString().Replace("'", "`"); // Option C is in the 5th column.
                            O4 = dsExcel.Tables[0].Rows[r][5].ToString().Replace("'", "`"); // Option D is in the 6th column.
                            CorrectAnswer = dsExcel.Tables[0].Rows[r][6].ToString().Replace("'", "`"); // Correct Answer is in the 7th column.

                            // Process LaTeX equations
                            Que = ProcessLatexEquations(Que);
                            O1 = ProcessLatexEquations(O1);
                            O2 = ProcessLatexEquations(O2);
                            O3 = ProcessLatexEquations(O3);
                            O4 = ProcessLatexEquations(O4);

                            query = "if not exists (select * from Question where Course_Id = '" + course + " and Que_text ='" + Que + "' and O1 = '" + O1 + "' and O2 = '" + O2 + "' and O3 = '" + O3 + "' and O4 = '" + O4 + "'  )insert into Question(Course_Id,Complex_Id,Que_Text,O1,O2,O3,O4,Correct_Ans) values(" + course + "," + Complexid + ",'" + Que + "','" + O1 + "','" + O2 + "','" + O3 + "','" + O4 + "','" + CorrectAnswer + "')";
                            cn.modify(query);
                        }
                        r++;
                    }
                    Response.Write("<script>alert('Questions Has Been Imported Successfully')</script>");
                }


            }
            catch (Exception ex){
                lblmsg.Text = ex.ToString() + " Total " + r + " Question Imported";
            }
        }
        else
        {
            Response.Write("<script>alert('This File Is Not .xsl File!!!')</script>");
        }

    }
    private string ProcessLatexEquations(string input)
    {
        string mathJaxScript = "<script type='text/javascript' async src='https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.7/MathJax.js?config=TeX-MML-AM_CHTML'></script>";

        // Check if the input contains LaTeX equations (identified by $$)
        if (input.Contains("$$"))
        {
            // Wrap the input in a MathJax block to render LaTeX equations
            input = $@"{mathJaxScript}
            <span id='latex-container'>{input}</span>
            <script type='text/x-mathjax-config'>
                MathJax.Hub.Config({{tex2jax: {{inlineMath: [['$$','$$']]}});
                MathJax.Hub.Queue(['Typeset', MathJax.Hub, 'latex-container']);
            </script>";
        }

        return input; 
    }
}
