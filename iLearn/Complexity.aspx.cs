using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Complexity : System.Web.UI.Page
{
    db_conn con = new db_conn();
    general_function gf = new general_function();
    protected void Page_Load(object sender, EventArgs e)
    {
        bind_grid();
        UpdateDeleteHide();

    }

    

    private void bind_grid()
    {
        DataSet ds = new DataSet();
        ds = con.select("select * from Complexity order by Complex_Id desc");
        gf.fill_grid(ds, Grdcomplexity);
    }
    public void UpdateDeleteHide()
    {
        btnupdate.Visible =false;
        btndelete.Visible =false;
    }
    public void UpdateDeleteShow()
    {
        btnupdate.Visible =true;
        btndelete.Visible =true;
        btnsubmit.Visible =false;
    }
    public void SubmitShow()
    {
        btnsubmit.Visible = true;
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        ClearAll(this);
        SubmitShow();
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        try
        {
            String qry = "insert into Complexity(Complex_Type) values('" + txtcomplexity.Text + "')";
            con.modify(qry);
            Response.Write("<script>alert('Complexity Inserted Successfully')</script>");
            bind_grid();
            ClearAll(this);
        }
        catch (Exception ex)
        { 
            Response.Write("<script>alert('Complexity Not Inserted & Something Went Wrong...!')</script>");
        }

    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            String qry = "update Complexity set Complex_Type='" + txtcomplexity.Text + "' where Complex_Id=" + hdncomplexityid.Value;
            con.modify(qry);
            Response.Write("<script>alert('Complexity Updated Successfully')</script>");
            bind_grid();
            SubmitShow();
            ClearAll(this);


        }
        catch (Exception ex)
        { Response.Write("<script>alert('Complexity Not Updated & Something Went Wrong...!')</script>"); }

    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "delete from Complexity where Complex_Id=" + hdncomplexityid.Value;
            con.modify(qry);
            Response.Write("<script>alert('Complexity Deleted Successfully')</script>");
            bind_grid();
            SubmitShow();
            ClearAll(this);
            
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Complexity Not Deleted and Something Went Wrong...!')</script>");

        }

    }

    

    private void ClearAll(Control parent)
    {
        foreach (Control x in parent.Controls)
        {
            if ((x.GetType() == typeof(TextBox)))
            {
                ((TextBox)(x)).Text = "";
            }
           
            if (x.HasControls())
            {
                ClearAll(x);
            }
        }
    }



    protected void Grdcomplexity_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Complex_Id")
            {
                hdncomplexityid.Value = e.CommandArgument.ToString();
                string str3 = "select * from Complexity where Complex_Id ='" + hdncomplexityid.Value + "'";
                DataSet ds = new DataSet();
                ds = con.select(str3);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtcomplexity.Text = ds.Tables[0].Rows[0]["Complex_Type"].ToString();
                }
            }
            UpdateDeleteShow();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Something Went Wrong...!')</script>");
        }

    }

   
}