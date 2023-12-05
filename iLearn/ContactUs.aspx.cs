using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    // static int complaintId;
    protected void Page_Load(object sender, EventArgs e)
    {
       // getComplaintID();
        compTime.Text = DateTime.Now.ToLongDateString().ToString() + " " + DateTime.Now.ToLongTimeString().ToString();

    }


    protected void btnCompSub_Click(object sender, EventArgs e)
    {
        String compQry = "INSERT into ComplaintDetails(Complaint_Date,User_Name,Complaint_Email,Complaint_Message,Status) values('" + compTime .Text+ "','" + txtFirstLastName.Text + "','" + txtEmail.Text + "','" + txtComplaint.Text + "','Under Processing') SELECT @@IDENTITY AS NewComplaintId";
        String mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Shivam\\Downloads\\iLearn\\iLearn\\iLearn\\App_Data\\iLearn.mdf;Integrated Security=True";
        SqlConnection sqlcon = new SqlConnection(mycon);
        sqlcon.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = compQry;
        cmd.Connection = sqlcon;
        int newComplaintId = Convert.ToInt32(cmd.ExecuteScalar());
        // cmd.ExecuteNonQuery();
        txtFirstLastName.Text = "";
        txtEmail.Text = "";
        txtComplaint.Text = "";
        complaintID.Text = "You should get a reply within 48hrs on your Email with Complaint Id" + newComplaintId + "";

    }
   

}