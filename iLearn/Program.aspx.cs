using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Program : System.Web.UI.Page
{
    db_conn conn = new db_conn();
    general_function gf = new general_function();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            bindgrid();
            bindprgcor();
            disable_up_del();
        }

    }

    

    private void disable_up_del()
    {
        btnupdate.Visible = false;
        btndelete.Visible = false;
    }
    public void enable_up_del()
    {  
        btnupdate.Visible = true; 
        btndelete.Visible = true;
    }
    private void bindprgcor()
    {
        gf.fillcombo("select * from Registration r, Login l where r.Email = l.Email and l.Type='pcoordinator'", prgconame, "f_name","reg_id","");
    }
    private void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = conn.select("select * from Program p , Registration r where p.Pro_Cor_Id=r.Reg_Id order by p.Program_Id desc");
        gf.fill_grid(ds, Grdprogram);
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "insert into Program (Program_Name,Pro_Cor_Id) values('" + txtpname.Text + "', '" + prgconame.SelectedValue + "')";
            conn.modify(qry);
            Response.Write("<script>alert('Program Inserted Successfully')</script>");
            bindgrid();
            clearall(this);
            disable_up_del();

        }
        catch(Exception ex)
        { Response.Write("<script>alert('Program Not Inserted & Something Went Wrong...!')</script>"); }

    }

    private void clearall(Control Parent)
    {
        foreach(Control x in Parent.Controls)
        {
            if((x).GetType() == typeof(TextBox))
            {
                ((TextBox)(x)).Text = "";
            }
            if ((x).GetType() == typeof(DropDownList))
            {
                ((DropDownList)(x)).SelectedIndex = 0;
            }
            if(x.HasControls())
            {
                clearall(x);
            }
        }
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "update Program set Program_Name='" + txtpname.Text + "',Pro_Cor_Id=" + prgconame.SelectedValue + " where Program_Id=" + hdnprogram.Value;
            conn.modify(qry);
            Response.Write("<script>alert('Program Updated Successfully')</script>");
            bindgrid();
            clearall(this);
            disable_up_del();
            btnsubmit.Visible = true;
        }
        catch(Exception ex)
        {
            Response.Write("<script>alert('Program Not Updated and Something Went Wrong...!')</script>");

        }

    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "delete from Program where Program_Id=" + hdnprogram.Value;
            conn.modify(qry);
            Response.Write("<script>alert('Program Deleted Successfully')</script>");
            bindgrid();
            clearall(this);
            disable_up_del();
            btnsubmit.Visible = true;
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Program Not Deleted and Something Went Wrong...!')</script>");

        }

    }

    protected void Grdprogram_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if(e.CommandName == "Program_Id")
            {
                hdnprogram.Value = e.CommandArgument.ToString();
                string str3 = "select * from Program where Program_Id ='" + hdnprogram.Value + "'";
                DataSet ds = new DataSet();
                ds = conn.select(str3);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtpname.Text = ds.Tables[0].Rows[0]["Program_Name"].ToString();
                    prgconame.SelectedValue = ds.Tables[0].Rows[0]["Pro_Cor_Id"].ToString();
                }
                enable_up_del();
                btnsubmit.Visible = false;
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Something Went Wrong...!')</script>");
        }

    }

    protected void Grdprogram_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Grdprogram.PageIndex = e.NewSelectedIndex;
        bindgrid();

    }

    protected void Grdprogram_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Grdprogram.PageIndex = e.NewPageIndex;
        bindgrid();

    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        clearall(this);
        disable_up_del();
        btnsubmit.Visible = true;
    }
}