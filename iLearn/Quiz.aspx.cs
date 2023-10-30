using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Quiz : System.Web.UI.Page
{
    Int32 total_Que = 0;
    string answer = "";
    DateTime time;

    public void unchacked()
    {
        o1.Checked = false;
        o2.Checked = false;
        o3.Checked = false;
        o4.Checked = false;
    }
    general_function gf = new general_function();
    db_conn conn = new db_conn();
    Int16 lastduration;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString != null)
            {
                Session["starttime"] = DateTime.Now.ToString();
                Session["totalque"] = 0;

                DataSet ds = new DataSet();
                ds = conn.select("select S_Duration from Exam_Reg where User_Id = " + Session["Reg_Id"] + " and Exam_Id = " + Session["eid"] + "");
                lastduration = 0;
            }
        }
        else
        {
            Response.Redirect("ExamList.aspx");
        }
        check_quiz();
        display();
        unchacked();
    }
    public void check_quiz()
    {
        DataSet ds1 = new DataSet();
        ds1 = conn.select("select * from Quiz where User_Id = '" + Session["Reg_Id"].ToString() + "' and Exam_Id='" + Session["eid"].ToString() + "'");
        Session["totalque"] = ds1.Tables[0].Rows.Count - 1;

        DataSet ds2 = new DataSet();
        ds2 = conn.select("select count(*) from Quiz q, Question q1, Exam_Reg e where q.User_id = " + Session["Reg_Id"] + " and q.Que_Id = q1.Que_Id and q.Exam_Id = " + Session["eid"] + " group by q.Que_Id ");
        DataSet ds3 = new DataSet();
        string str = "select Total_Question from Exam where Exam_Id = " + Session["eid"] + "";
        ds3 = conn.select(str);

        if (Convert.ToInt16(ds2.Tables[0].Rows.Count) >= Convert.ToInt16(ds3.Tables[0].Rows[0]["Total_Question"]))
        {
            Response.Redirect("");

        }

        else if (Convert.ToInt16(ds2.Tables[0].Rows.Count) <= Convert.ToInt16(ds3.Tables[0].Rows[0]["Total_Question"]))
        {
            display();

        }
    }
    public void increment()
    {
        DataSet ds = new DataSet();
        string str = "select Total_Question, Duration from Exam where Exam_Id = " + Session["eid"] + "";
        ds = conn.select(str);
        total_Que = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
        Session["totalque"] = Convert.ToInt16(Session["totalque"]) + 1;
        if (hdntotque.Value == "0" && Session["totalque"].ToString() != "-1")
        {
            if (Convert.ToInt16(Session["totalque"].ToString()) > 0)
                hdntotque.Value = Convert.ToInt16(Session["totalque"].ToString()).ToString();
        }
        lblque.Text = "Question : " + hdntotque.Value + "/" + total_Que + "";
        if (Convert.ToInt16(hdntotque.Value) > total_Que)
        {
            Response.Redirect("ExamResult.aspx?User_Id=" + Session["Reg_Id"] + "&Exam_Id=" + Session["eid"] + "&Course_Id=" + Session["cid"] + "");
        }
        else if (Convert.ToInt32(hdntotque.Value) == total_Que)
        {
            btnnext.Visible = false;
            btnsubmit.Visible = true;
        }
        else if (hdntotque.Value == "2")
        {
        }
    }
    public void display()
    {
        DataSet ds1 = new DataSet();
        string startstop = "select Start_Stop from Exam where Exam_Id=" + Session["eid"];
        ds1 = conn.select(startstop);
        if (ds1.Tables[0].Rows.Count > 0 && ds1.Tables[0].Rows[0][0].ToString() == "True")
            //if (ds1.Tables[0].Rows[0][0].ToString() == "True")
        {
            DataSet dslastQ = new DataSet();
            dslastQ = conn.select("select count(*)+1 from Quiz where User_Id = '" + Session["Reg_Id"].ToString() + "' and Exam_Id = " + Session["eid"] + "");
            hdntotque.Value = dslastQ.Tables[0].Rows[0][0].ToString();
            increment();

            Session["StartTime"] = DateTime.Now.ToString();
            Random rnd = new Random();
            DataSet ds = new DataSet();
            string dt = DateTime.Now.ToString("yyyy/MM/dd");

            ds = conn.select("select MIN(Que_Id), MAX(Que_Id) from Question where Course_Id = " + Session["cid"] + "");
            Int16 tot;

            tot = Convert.ToInt16(rnd.Next(1, 10));

            string str = "select * from Question where Course_Id = '" + Session["cid"] + "' " + "AND Que_Id NOT IN (Select Que_Id FROM Quiz " + "WHERE User_Id = '" + Session["Reg_Id"].ToString() + "' AND Exam_Id = '" + Session["eid"] + "') " + "ORDER BY Que_Id " + (tot % 2 == 0 ? "" : "DESC");
            ds = conn.select(str);

            if (ds.Tables[0].Rows.Count < 0)
            { 
                Response.Write("<script>alert('There Is No Question Availaible!')</script>"); 
            }
            else
            {
                string m1, m2, m3, m4;
                if (ds.Tables[0].Rows.Count > 0)
                {
                    int r = 0;
                    m1 = ds.Tables[0].Rows[r]["o1"].ToString();
                    m2 = ds.Tables[0].Rows[r]["o2"].ToString();
                    m3 = ds.Tables[0].Rows[r]["o3"].ToString();
                    m4 = ds.Tables[0].Rows[r]["o4"].ToString();
                    if (m1.Trim().ToLower() == "true" && m2.Trim().ToLower() == "false" || m2.Trim().ToLower() == "false" && m1.Trim().ToLower() == "true")
                    {
                        o1.Text = m1;
                        o2.Text = m2;
                        o3.Visible = false;
                        o4.Visible = false;
                    }
                    else
                    {
                        o3.Visible = true;
                        o4.Visible = true;
                        o1.Text = m1;
                        o2.Text = m2;
                        o3.Text = m3;
                        o4.Text = m4;
                    }
                    string s = ds.Tables[0].Rows[0]["Que_Text"].ToString();
                    string s1 = s.Substring(0, 1).ToUpper();
                    string s2 = s.Substring(1);
                    hdnqueid.Value = ds.Tables[0].Rows[0]["Que_Id"].ToString();
                    lblquestion.Text = "Q. " + s1 + s2 + "<br /><br/> <font size=3 color=red> Please Select Any One Option.</font>";
                }

            }
        }
        else
        {
            Response.Write("<script>alert('Please Wait Exam Is Not Started!!')</script>");
        }
    }
    public void clearall(Control Parent)
    {
        foreach (Control x in Parent.Controls)
        {
            if ((x).GetType() == typeof(CheckBox))
            {
                ((CheckBox)(x)).Checked = false;
            }
            if (x.HasControls())
            {
                clearall(x);
            }
        }
        lblmsg.Text = "";
    }
    protected void btnnext_Click(object sender, EventArgs e)
    {
        if (o1.Checked == false && o2.Checked == false && o3.Checked == false && o4.Checked == false)
        {
            Response.Write("<script>alert('Please select any option!!')</script>");
        }
        else
        {
            DataSet ds = new DataSet();
            try
            {
                if (o1.Checked)
                {
                    answer = "a";
                }
                else if (o2.Checked)
                {
                    answer = "b";
                }
                else if (o3.Checked)
                {
                    answer = "c";
                }
                else if (o4.Checked)
                {
                    answer = "d";
                }
                string qry = "if not exists (select  * from Quiz  where User_Id = '" + Session["Reg_Id"].ToString() + "' and Exam_Id ='" + Session["eid"].ToString() + "' and Que_Id = '" + hdnqueid.Value + "' ) insert into Quiz (User_Id, Que_Id, Given_Ans, Exam_Id, Start_Time) values ('" + Session["User_Id"].ToString() + "','" + hdnqueid.Value + "','" + answer + "','" + Session["eid"] + "','" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "')";
                conn.modify(qry);
                qry = "update Exam_Reg set S_Duration = '" + Session["duration"] + "' where User_Id = '" + Session["Reg_Id"] + "' and Exam_Id='" + Session["eid"] + "'";
                conn.modify(qry);
            }
            catch (Exception ex)
            {
                lblmsg.Text = ex.ToString();
            }
            unchacked();
            display();
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        unchacked();
    }
    protected void btncancel_Click1(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        try
        {
            string dt = DateTime.Now.ToString("yyyy/MM/dd");
            if (o1.Checked)
            {
                answer = "a";
            }
            else if (o2.Checked)
            {
                answer = "b";
            }
            else if (o3.Checked)
            {
                answer = "c";
            }
            else if (o4.Checked)
            {
                answer = "d";
            }
            string qry = "if not exists (select  * from Quiz  where User_Id = '" + Session["Reg_Id"].ToString() + "' and Exam_Id ='" + Session["eid"].ToString() + "' and Que_Id = '" + hdnqueid.Value + "' )insert into Quiz (User_Id, Que_Id, Given_Ans, Exam_Id, Start_Time) values ('" + Session["Reg_Id"].ToString() + "','" + hdnqueid.Value + "','" + answer + "','" + Session["eid"] + "','" + time + "')";
            conn.modify(qry);
            ds = conn.select("select Start_Time from Quiz where User_Id = '" + Session["Reg_Id"] + "' and Que_Id = " + hdnqueid.Value + " and Exam_Id='" + Session["eid"] + "'");

            string qry1 = "update Quiz set Given_Ans= '" + answer + "' where User_Id = '" + Session["Reg_Id"] + "' and Que_Id = " + hdnqueid.Value + " and Exam_Id='" + Session["eid"] + "'";
            conn.modify(qry1);
            Server.Transfer("ExamResult.aspx?User_Id = " + Session["Reg_Id"] + "&Exam_Id = " + Session["eid"] + "&Course_Id=" + Session["cid"] + "", false);
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.ToString();
        }
        string qry2 = "update Exam_Reg set S_Duration = '" + Session["duration"] + "' where User_Id = '" + Session["Reg_Id"] + "' and Exam_Id='" + Session["eid"] + "'";
        conn.modify(qry2);
    }
}