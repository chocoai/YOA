using System;
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

public partial class HR_DengJi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            DataBindToGridview();

            //设定按钮权限
            if (Request.QueryString["TypeName"].ToString().Trim() == "WaiChu")
            {
                ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|030a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|030d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|030e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            }
            else if (Request.QueryString["TypeName"].ToString().Trim() == "ChuChai")
            {
                ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|031a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|031d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|031e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            }
            else if (Request.QueryString["TypeName"].ToString().Trim() == "JiaBan")
            {
                ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|032a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|032d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|032e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            }
            else if (Request.QueryString["TypeName"].ToString().Trim() == "BingJia")
            {
                ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|033a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|033d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|033e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            }
            else
            {
                ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|034a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|034d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|034e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            }
        }
    }
    protected void AspNetPager1_PageChanged(object src, EventArgs e) {
        DataBindToGridview();
    }
    public void DataBindToGridview()
    {
        GVData.PageSize = AspNetPager1.PageSize;
        GVData.PageIndex = AspNetPager1.CurrentPageIndex - 1;
        ZWL.BLL.ERPDengJi MyModel = new ZWL.BLL.ERPDengJi();
        DataSet ds = MyModel.GetList("BackInfo Like '%" + this.TextBox1.Text + "%' and UserName='" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "' and TypeName='" + Request.QueryString["TypeName"].ToString() + "' order by ID desc");
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
        Response.Redirect("DengJiAdd.aspx?TypeName="+Request.QueryString["TypeName"].ToString());
    }
    protected void ImageButton3_Click(object sender, EventArgs e)
    {
        string IDlist = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        if (ZWL.DBUtility.DbHelperSQL.ExecuteSQL("delete from ERPDengJi where StateNow!='通过' and ID in (" + IDlist + ")") == -1)
        {
            Response.Write("<script>alert('删除选中记录时发生错误！请重新登陆后重试！');</script>");
        }
        else
        {
            DataBindToGridview();
            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户删除考勤登记";
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
        MyTable.Add("UserName", "申请人");
        MyTable.Add("ShenPiRen", "审批人");
        MyTable.Add("ShenQingTime", "申请时间");
        MyTable.Add("BackInfo", "申请原因");
        MyTable.Add("StartTime", "开始时间");
        MyTable.Add("EndTime", "结束时间");
        MyTable.Add("StateNow", "当前状态");
        MyTable.Add("TypeName", "登记类型");
        ZWL.Common.DataToExcel.GridViewToExcel(ZWL.DBUtility.DbHelperSQL.GetDataSet("select UserName,ShenPiRen,ShenQingTime,BackInfo,StartTime,EndTime,StateNow,TypeName from ERPDengJi where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel报表");
    }
}
