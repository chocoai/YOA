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

public partial class HR_ShenPi : System.Web.UI.Page
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
                ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|035p|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|035n|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|035e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            }
            else if (Request.QueryString["TypeName"].ToString().Trim() == "ChuChai")
            {
                ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|036p|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|036n|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|036e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            }
            else if (Request.QueryString["TypeName"].ToString().Trim() == "JiaBan")
            {
                ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|037p|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|037n|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|037e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            }
            else if (Request.QueryString["TypeName"].ToString().Trim() == "BingJia")
            {
                ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|038p|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|038n|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|038e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            }
            else
            {
                ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|039p|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|039n|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|039e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
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
        DataSet ds = MyModel.GetList("BackInfo Like '%" + this.TextBox1.Text + "%' and ShenPiRen='" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "' and TypeName='" + Request.QueryString["TypeName"].ToString() + "' order by ID desc");
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
        //通过审批
        string IDlist = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        if (ZWL.DBUtility.DbHelperSQL.ExecuteSQL("update ERPDengJi set StateNow='通过'  where  ID in (" + IDlist + ")") == -1)
        {
            Response.Write("<script>alert('审批选中记录时发生错误！请重新登陆后重试！');</script>");
        }
        else
        {
            DataBindToGridview();
            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户通过考勤登记审批";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();
        }
    }
    protected void ImageButton3_Click(object sender, EventArgs e)
    {
        //拒绝审批
        string IDlist = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        if (ZWL.DBUtility.DbHelperSQL.ExecuteSQL("update ERPDengJi set StateNow='未通过'  where  ID in (" + IDlist + ")") == -1)
        {
            Response.Write("<script>alert('审批选中记录时发生错误！请重新登陆后重试！');</script>");
        }
        else
        {
            DataBindToGridview();
            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户考勤登记审批未通过";
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
