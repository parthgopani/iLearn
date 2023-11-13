using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageUser : System.Web.UI.MasterPage
{
    db_conn conn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        //UpdatePanelsVisibility();
    }
    private void UpdatePanelsVisibility()
    {
        DataSet ds = new DataSet();
        string username = Session["Email"].ToString();
        string query = "select F_Name,L_Name from Registration where Email='" + username + "'";
        ds = conn.select(query);
        if (ds.Tables[0].Rows.Count > 0)
        {
            panel1.Visible = false;
            panel2.Visible = true;
        }
        else
        {
            panel1.Visible = true;
            panel2.Visible = false;
            //panel1.Visible = false;
            //panel2.Visible = true;
        }
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session["eid"] = "";
        Session["uid"] = "";
        Session["stime"] = "";
        Session["totq"] = "";
        Session["Reg_Id"] = "";
        UpdatePanelsVisibility();
        Response.Redirect("Login.aspx");
    }
}
