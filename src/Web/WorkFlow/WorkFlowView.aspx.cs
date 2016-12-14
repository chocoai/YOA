﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class WorkFlow_WorkFlowView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();            
            ZWL.BLL.ERPWorkFlow MyModel = new ZWL.BLL.ERPWorkFlow();
            MyModel.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            this.Label1.Text = MyModel.WorkFlowName;
            this.Label2.Text = MyModel.FormName;
            this.Label3.Text = MyModel.UserList;
            this.Label4.Text = MyModel.GuiDangType;
            this.Label5.Text = MyModel.TimeStr.ToString();
            this.Label6.Text = MyModel.UserName;
            this.Label7.Text = MyModel.JianJie;
        }
    }
}