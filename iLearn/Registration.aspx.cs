using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                cmd.Connection = con; //assigning connection to command
                cmd.CommandType = CommandType.Text; //representing type of command
                                                    //cmd.CommandText = "INSERT INTO UserDetails (Fname,Lname,Email,Password,Gender,Dob,Mobile,Address) values
                                                    // (@Fname,@Lname,@Email,@Password,@Gender,@Dob,@Mobile,@Address)";
                cmd.CommandText = "INSERT INTO Registration values(@Email,@F_Name,@L_Name,@Gender,@DOB,@CityId,@Add_1,@Add_2,@Password)";

                //adding parameters with value
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.ToString());
                cmd.Parameters.AddWithValue("@F_Name", txtFirstName.Text.ToString());
                cmd.Parameters.AddWithValue("@L_Name", txtLastName.Text.ToString());
                cmd.Parameters.AddWithValue("@Gender", RdoGender.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@DOB", txtDob.Text.ToString());
                cmd.Parameters.AddWithValue("@CityId", txtCityId.Text.ToString());
                cmd.Parameters.AddWithValue("@Add_1", txtAddress1.Text.ToString());
                cmd.Parameters.AddWithValue("@Add_2", txtAddress2.Text.ToString());
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text.ToString());
                con.Open(); //opening connection
                cmd.ExecuteNonQuery();  //executing query
                con.Close(); //closing connection
                lblMsg.Text = "Registered Successfully..";
                Response.Redirect("Login.aspx");

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
