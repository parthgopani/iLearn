﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class PythonTutorial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void btnlearnmore_Click(object sender, EventArgs e)
    {
        Response.Redirect("pythonlearn_files/Part1.aspx");
    }
}