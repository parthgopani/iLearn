using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageUser : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session["eid"] = "";
        Session["cid"] = "";
        Session["starttime"] = "";
        Session["totalque"] = "";
        Session["Reg_Id"] = "";
        Response.Redirect("Login.aspx");
    }
}
