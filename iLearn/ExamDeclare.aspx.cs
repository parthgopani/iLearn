using iLearn.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ExamDeclare : System.Web.UI.Page
{
    general_function gf = new general_function();
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

    }
    public void bindgrid()
    {

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

    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {

    }

    protected void btndelete_Click(object sender, EventArgs e)
    {

    }

    protected void grdexam_Sorting(object sender, GridViewSortEventArgs e)
    {

    }

    protected void grdexam_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }

    protected void grdexam_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
}