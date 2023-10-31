using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace Registration
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //declaring connection string and command
        //here we are extracting connection string from web.config file
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ToString());
        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd1 = new SqlCommand();

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO Registration values(@Email,@F_Name,@L_Name,@Gender,@DOB,@Add_1,@Add_2,@City,@Password)";

                //adding parameters with value
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.ToString());
                cmd.Parameters.AddWithValue("@F_Name", txtFirstName.Text.ToString());
                cmd.Parameters.AddWithValue("@L_Name", txtLastName.Text.ToString());
                cmd.Parameters.AddWithValue("@Gender", RdoGender.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@DOB", txtDob.Text.ToString());
                cmd.Parameters.AddWithValue("@Add_1", txtAddress1.Text.ToString());
                cmd.Parameters.AddWithValue("@Add_2", txtAddress2.Text.ToString());
                cmd.Parameters.AddWithValue("@City", Textcity.Text.ToString());
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text.ToString());



                cmd1.Connection = con;
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "INSERT INTO Login values(@Email,@Password,@Type)";

                //adding parameters with value
                cmd1.Parameters.AddWithValue("@Email", txtEmail.Text.ToString());
                cmd1.Parameters.AddWithValue("@Password", txtFirstName.Text.ToString());
                cmd1.Parameters.AddWithValue("@Type", "u");


                con.Open(); //opening connection
                cmd.ExecuteNonQuery();  //executing query
                cmd1.ExecuteNonQuery();  //executing query
                con.Close(); //closing connection
                lblMsg.Text = "User has been registered successfully..";

            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message.ToString();
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            //refreshing/reloading page to clear all the controls
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

    }
}