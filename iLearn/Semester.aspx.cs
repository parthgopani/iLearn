using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Semester : System.Web.UI.Page
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
    ds = conn.select("select * from Semester s,Program c where s.Program_Id = c.Program_Id order by s.Sem_Id desc");
    gf.fill_grid(ds, Grdsem);


}

public void binddrp()
{


    gf.fillcombo("select * from Program", drpsem, "Program_Name", "Program_Id", "Select Program");

}


protected void grdsem_RowCommand(object sender, GridViewCommandEventArgs e)
{
    try
    {
        if (e.CommandName == "Sem_Id")
        {
            hdnsem.Value = e.CommandArgument.ToString();
            string str3 = "select * from Semester s,Program c WHERE Sem_Id ='" + hdnsem.Value + "'";
            DataSet ds = new DataSet();
            ds = conn.select(str3);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtsemname.Text = ds.Tables[0].Rows[0]["Sem_Name"].ToString();
                drpsem.SelectedValue = ds.Tables[0].Rows[0]["Program_Id"].ToString();
            }
            enabled_up_del();
            btnsubmit.Visible = false;


        }
    }
    catch (Exception ex)
    {
        Response.Write("<script>alert('Something Went Wrong...!')</script>");
    }
}

public void clearall()
{
    txtsemname.Text = "";

}
protected void btnsubmit_Click(object sender, EventArgs e)
{
    try
    {
        string qry = "insert into Semester (Sem_Name, Program_Id) values ('" + txtsemname.Text + "'," + drpsem.SelectedValue + ")";
        conn.modify(qry);
        Response.Write("<script>alert('Semester Inserted Successfully')</script>");
        bindgrid();
        clearall();
        disabled_up_del();
    }
    catch (Exception ex)
    {
        Response.Write("<script>alert('Semester Not Inserted & Something Went Wrong...!')</script>");
    }
}
protected void btnupdate_Click(object sender, EventArgs e)
{
    try
    {
        string qry = "update Semester set Sem_Name = '" + txtsemname.Text + "', Program_Id=" + drpsem.SelectedValue + " where Sem_Id = " + hdnsem.Value;
        conn.modify(qry);
        Response.Write("<script>alert('Semester Updated Successfully')</script>");

        bindgrid();
        clearall();
        disabled_up_del();
        btnsubmit.Visible = true;
    }
    catch (Exception ex)
    {
        Response.Write("<script>alert('Semester Not Updated & Something Went Wrong...!')</script>");
    }
}
protected void Grdsem_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
{
    Grdsem.PageIndex = e.NewSelectedIndex;
    bindgrid();
}
protected void Grdsem_PageIndexChanging(object sender, GridViewPageEventArgs e)
{
    Grdsem.PageIndex = e.NewPageIndex;
    bindgrid();

}
protected void btndelete_Click(object sender, EventArgs e)
{
    try
    {
        string qry = "delete from Semester where Sem_Id=" + hdnsem.Value;
        conn.modify(qry);
        Response.Write("<script>alert('Semester Deleted Successfully')</script>");
        bindgrid();
        clearall();
        disabled_up_del();
        btnsubmit.Visible = true;
    }
    catch (Exception ex)
    {
        Response.Write("<script>alert('Semester Not Deleted & Something Went Wrong...!')</script>");
    }
}
}