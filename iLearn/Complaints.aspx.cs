using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Complaints : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //    protected void btnReply_Click(object sender, EventArgs e)
    //    {
    //        try
    //        {
    //            sendEmail();
    //            Response.Redirect("AdminDashboard.aspx");
    //        }
    //        catch (Exception ex)
    //        {

    //        }

    //    }

    //    private void sendEmail()
    //    {
    //        MailMessage mail = new MailMessage();
    //        SmtpClient smtp_Client = new SmtpClient(System.Configuration.ConfigurationSettings.AppSettings["smtpClient"]);

    //        smtpUserName = System.Configuration.ConfigurationSettings.AppSettings["smtpUserName"];
    //        smtpPassword = System.Configuration.ConfigurationSettings.AppSettings["smtpPassword"];
    //        mail.From = new MailAddress(smtpUserName);
    //        mail.To.Add()
    //    }
    //
}