﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;
using iLearn.App_Start;

public class general_function
{
    public void fillcombo(string query, DropDownList drpList, string drpTextField, string drpValueField, string selectText)
    {
        try
        {
            db_conn obj = new db_conn();
            DataSet ds = new DataSet();

            ds = obj.select(query);
            drpList.Items.Clear();
            if (ds.Tables[0].Rows.Count > 0)
            {
                drpList.DataSource = ds.Tables[0];
                drpList.DataTextField = drpTextField;
                drpList.DataValueField = drpValueField;
                drpList.DataBind();
                drpList.Items.Insert(0, "Select");
                drpList.SelectedIndex = 0;
            }
        }
        catch (Exception)
        {
            drpList.DataSource=null;
            drpList.DataBind();
        }
    }

    public void fill_grid(DataSet ds, GridView dg)
    {
        try
        {
            db_conn obj = new db_conn();
            if (ds.Tables[0].Rows.Count > 0)
            {
                dg.DataSource = ds.Tables[0];
                dg.DataBind();
            }
            else
            {
                dg.DataSource = null;
            }
        }
        catch (Exception)
        {

        }
    }
}