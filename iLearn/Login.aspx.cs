using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    general_function gf = new general_function();
    db_conn conn = new db_conn();

    public void clearall()
    {
        txtEmail.Text = "";
        txtPassword.Text = "";

    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet ds = new DataSet();

           // string qry = "select L.Email, L.Password, L.Type from Login L, Registeration R where L.Email = '" + txtEmail.Text + "' and L.Password = '" + txtPassword.Text + "' and L.Email = R.Email";

			string qry = "select l.Email,l.Password,Type, Reg_id  from Login l, Registeration r where l.Email = '" + txtEmail.Text + "' and l.Password = '" + txtPassword.Text + "' and l.Email=r.Email";
			ds = conn.select(qry);
            // String type = ds.Tables[0].Rows[0][2].ToString();
            /*if (type == "student")
            {
                string qry1 = "Update Login set status=1"
            }*/
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["Email"] = txtEmail.Text;
                Session["Reg_Id"] = ds.Tables[0].Rows[0]["Reg_Id"].ToString();
                string userType = ds.Tables[0].Rows[0]["Type"].ToString();

                lblmsg.Text = "Login Success";
                if (userType.ToString().ToLower().Trim() == "u")
                {
                    Server.Transfer("UserDashboard.aspx", false);
                }
                else if (userType.ToString().ToLower().Trim() == "a")
                {
                    Response.Redirect("AdminDashboard.aspx");
                }
                else
                {
                    Response.Write("<script>alert('You are Already LoggedIn !')</script>");
                }

            }
            else
            {
                lblmsg.Text = "Incorrect Email or Password !!!";
                lblmsg.ForeColor = System.Drawing.Color.Black;
                Response.Write("<script>alert('Incorrect Email or Password !!! ')</script>");
            }
            

        }
        
        catch (Exception)
        {
            lblmsg.Text = "Incorrect Email or Password !!!";
            lblmsg.ForeColor = System.Drawing.Color.Black;

        }
    }

    protected void btnCancle_Click(object sender, EventArgs e)
    {
        clearall();
    }
}