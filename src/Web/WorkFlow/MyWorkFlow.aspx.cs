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
using Wuqi.Webdiyer;

public partial class WorkFlow_MyWorkFlow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            DataBindToGridview();

            //设定按钮权限            
            ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|074a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));            
            ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|074d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|074e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
        }
    }
    protected void AspNetPager1_PageChanged(object src, EventArgs e) {
        DataBindToGridview();
    }
    public void DataBindToGridview()
    {
        GVData.PageSize = AspNetPager1.PageSize;
        GVData.PageIndex = AspNetPager1.CurrentPageIndex - 1;
        ZWL.BLL.ERPWorkToDo MyModel = new ZWL.BLL.ERPWorkToDo();
        DataSet ds = MyModel.GetList("WorkName Like '%" + this.TextBox1.Text + "%' and UserName='" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "' order by ID desc");
        GVData.DataSource = ds;
        GVData.DataBind();
        AspNetPager1.RecordCount = ds.Tables[0].Rows.Count;
    }
    
    protected void GVData_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        ZWL.Common.PublicMethod.GridViewRowDataBound(e);
    }
    protected void ImageButton4_Click(object sender, EventArgs e)
    {
        DataBindToGridview();
    }
    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("WorkAdd.aspx");
    }
    protected void ImageButton3_Click(object sender, EventArgs e)
    {
        string IDlist = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        if (ZWL.DBUtility.DbHelperSQL.ExecuteSQL("delete from ERPWorkToDo where StateNow='已被驳回' and ID in (" + IDlist + ")") == -1)
        {
            Response.Write("<script>alert('删除选中记录时发生错误！请重新登陆后重试！');</script>");
        }
        else
        {
            DataBindToGridview();
            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户删除发起的工作";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();
        }
    }
    protected void ImageButton2_Click(object sender, EventArgs e)
    {
        string IDList = "0";
        for (int i = 0; i < GVData.Rows.Count; i++)
        {
            Label LabVis = (Label)GVData.Rows[i].FindControl("LabVisible");
            IDList = IDList + "," + LabVis.Text.ToString();
        }
        Hashtable MyTable = new Hashtable();
        MyTable.Add("WorkName", "工作名称");
        MyTable.Add("FormName", "所用表单");
        MyTable.Add("UserName", "创建人");
        MyTable.Add("TimeStr", "创建人");
        MyTable.Add("JieDianName", "节点名称");
        MyTable.Add("StateNow", "当前状态");
        ZWL.Common.DataToExcel.GridViewToExcel(ZWL.DBUtility.DbHelperSQL.GetDataSet("select WorkName,FormName,UserName,TimeStr,JieDianName,StateNow from ERPWorkToDo where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel报表");
    }
}