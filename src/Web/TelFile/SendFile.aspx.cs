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

public partial class TelFile_SendFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            DataBindToGridview();

            //设定按钮权限
            ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|058a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|058d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|058e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
        }
    }

    protected void AspNetPager1_PageChanged(object src, EventArgs e)
    {
        DataBindToGridview();
    }

    public string  GetDicNameCondition()
    {
        string ReturnStr = " 0=0 ";
        try
        {
            //this.Label1.Text = "归档文件夹："+Request.QueryString["DicName"].ToString();
            ReturnStr = " ','+ChuanYueHouIDList1+',' like '%," + Request.QueryString["DicID"].ToString() + ",%' ";
        }
        catch
        { }
        return ReturnStr;
    }

    public void DataBindToGridview()
    {
        GVData.PageSize = AspNetPager1.PageSize;
        GVData.PageIndex = AspNetPager1.CurrentPageIndex - 1;
        ZWL.BLL.ERPTelFile MyERPTelFile = new ZWL.BLL.ERPTelFile();
        DataSet ds = MyERPTelFile.GetList("TitleStr like '%" + this.TextBox1.Text.Trim() + "%' and FromUser='" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "' and " + GetDicNameCondition() + " order by ID desc");
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
        Response.Redirect("TelFileAdd.aspx");
    }
    protected void ImageButton3_Click(object sender, EventArgs e)
    {
        string IDlist = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        if (ZWL.DBUtility.DbHelperSQL.ExecuteSQL("delete ERPTelFile where ID in (" + IDlist + ")") == -1)
        {
            Response.Write("<script>alert('删除选中记录时发生错误！请重新登陆后重试！');</script>");
        }
        else
        {
            DataBindToGridview();
            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户删除电子会签文件";
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
        MyTable.Add("TitleStr", "文件主题");
        MyTable.Add("FromUser", "发送人");
        MyTable.Add("TimeStr", "发送时间");
        MyTable.Add("YiJieShouRen", "已签收人");
        ZWL.Common.DataToExcel.GridViewToExcel(ZWL.DBUtility.DbHelperSQL.GetDataSet("select TitleStr,FromUser,TimeStr,YiJieShouRen from ERPTelFile where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel报表");
    }
}