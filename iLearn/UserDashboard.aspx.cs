using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDashboard : System.Web.UI.Page
{
    general_function gf=new general_function();
    db_conn conn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadUserData();
    }
    protected void LoadUserData()
    {

        Session["sid"] = Convert.ToInt16(Request.QueryString["studentId"]);
        
            
    }    
}