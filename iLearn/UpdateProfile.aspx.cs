using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateProfile : System.Web.UI.Page
{
    db_conn conn = new db_conn();
    general_function gf = new general_function();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Load user profile details when the page is loaded
            LoadUserProfile();
        }
    }
        protected void LoadUserProfile()
        {
       
            // Check if the user is logged in (you can use your own session management logic)
            if (Session["Reg_Id"] != null && !string.IsNullOrEmpty(Session["Reg_Id"].ToString()))
            {
                string userId = Session["Reg_Id"].ToString();
                // Fetch user details from the database based on the user ID
                string query = "SELECT * FROM Registration WHERE Reg_Id = " + userId;
                DataSet ds = conn.select(query);

                if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    // Populate the form fields with user details
                    txtFirstName.Text = ds.Tables[0].Rows[0]["F_Name"].ToString();
                    txtLastName.Text = ds.Tables[0].Rows[0]["L_Name"].ToString();
                    txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                string gender = ds.Tables[0].Rows[0]["Gender"].ToString();
                ListItem genderItem = RdoGender.Items.FindByValue(gender);
                if (genderItem != null)
                {
                    genderItem.Selected = true;
                }
                txtDob.Text = ds.Tables[0].Rows[0]["DOB"].ToString();
                txtAddress1.Text = ds.Tables[0].Rows[0]["Add_1"].ToString();
                txtAddress2.Text = ds.Tables[0].Rows[0]["Add_2"].ToString();
                Textcity.Text = ds.Tables[0].Rows[0]["City"].ToString();
      
                }
                else
                {
                    // Handle the case where user details are not found
                    Response.Write("<script>alert('User details not found.')</script>");
                }
            }
            else
            {
                // Handle the case where the user is not logged in
                Response.Write("<script>alert('User not logged in.')</script>");
            }
        }

        protected void btnUpdateProfile_Click(object sender, EventArgs e)
        {
            try
            {
            // Fetch user details from the form
                string userId = Session["uid"].ToString();
                string firstName = txtFirstName.Text.Trim();
                string lastName = txtLastName.Text.Trim();
                string email = txtEmail.Text.Trim();
                string gender = RdoGender.SelectedValue;
                string dob = txtDob.Text.Trim();
            string city=Textcity.Text.Trim();   
            string address = txtAddress1.Text.Trim();
            string address2=txtAddress2.Text.Trim();
          

                // Update user details in the database
                string updateQuery = "UPDATE Registration SET F_Name = '" + firstName + "', L_Name = '" + lastName + "', Email = '" + email + "', Gender = '" + gender + "', DOB = '" + dob + "',Add_1='"+address+"',Add_2='"+address2+"',City='"+city+"' WHERE UserId = " + userId;

                conn.modify(updateQuery);

                Response.Write("<script>alert('Profile Updated Successfully')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Profile not updated. Something went wrong: " + ex.Message + "')</script>");
            }
        }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        // Call a method to clear form fields
        ClearForm();
    }

    private void ClearForm()
    {
        // Clear all input fields
        txtEmail.Text = "";
        txtFirstName.Text = "";
        txtLastName.Text = "";
        RdoGender.ClearSelection(); 
        txtDob.Text = "";
        txtAddress1.Text = "";
        txtAddress2.Text = "";
        Textcity.Text = "";
       


       
    }

}
