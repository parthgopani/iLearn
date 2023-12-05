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

        
    }
  
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session["eid"] = "";
        Session["uid"] = "";
        Session["stime"] = "";
        Session["totq"] = "";
        Session["Reg_Id"] = "";
        Response.Redirect("Login.aspx");
    }
    protected void btnprofile_Click(object sender, EventArgs e)
    {
        // Get the user session ID
        string userId = Session["Reg_Id"] as string;

        // Redirect to the profile page with the user session ID as a query parameter
        Response.Redirect("UpdateProfile.aspx?userId=" + userId);
    }



}
