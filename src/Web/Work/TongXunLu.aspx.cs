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

public partial class Work_TongXunLu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            DataBindToGridview();
        }
    }
    protected void AspNetPager1_PageChanged(object src, EventArgs e)
    {
        DataBindToGridview();
    }
    public void DataBindToGridview()
    {
        GVData.PageSize = AspNetPager1.PageSize;
        GVData.PageIndex = AspNetPager1.CurrentPageIndex - 1;
        ZWL.BLL.ERPTongXunLu MyModel = new ZWL.BLL.ERPTongXunLu();
        DataSet ds = new DataSet();
        if (Request.QueryString["TypeStr"].ToString().Trim() == "公共通讯簿")
        {
            ds = MyModel.GetList("TypeStr='" + Request.QueryString["TypeStr"].ToString().Trim() + "' and NameStr Like '%" + this.TextBox1.Text + "%' order by ID desc");

            //设定按钮权限            
            ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|015a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton5.Visible = ZWL.Common.PublicMethod.StrIFIn("|015m|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|015d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|015e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
        }
        else if (Request.QueryString["TypeStr"].ToString().Trim() == "个人通讯簿")
        {
            ds = MyModel.GetList("TypeStr='" + Request.QueryString["TypeStr"].ToString().Trim() + "' and UserName='" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "' and NameStr Like '%" + this.TextBox1.Text + "%' order by ID desc");
            //设定按钮权限            
            ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|017a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton5.Visible = ZWL.Common.PublicMethod.StrIFIn("|017m|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|017d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|017e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
        }
        else
        {
            //所有共享的通讯录
            ds = MyModel.GetList("IfShare='是' and NameStr Like '%" + this.TextBox1.Text + "%' order by ID desc");
            //隐藏添加、修改、删除
            this.ImageButton1.Visible = false;
            this.ImageButton5.Visible = false;
            this.ImageButton3.Visible = false;
            //设定按钮权限
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|016e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
        }
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
        Response.Redirect("TongXunLuAdd.aspx?TypeStr=" + Request.QueryString["TypeStr"].ToString());
    }
    protected void ImageButton3_Click(object sender, EventArgs e)
    {
        string IDlist = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        if (ZWL.DBUtility.DbHelperSQL.ExecuteSQL("delete from ERPTongXunLu where ID in (" + IDlist + ")") == -1)
        {
            Response.Write("<script>alert('删除选中记录时发生错误！请重新登陆后重试！');</script>");
        }
        else
        {
            DataBindToGridview();
            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户删除通讯录信息";
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
        MyTable.Add("NameStr", "姓名");
        MyTable.Add("Sex", "性别");
        MyTable.Add("DanWeiMingCheng", "单位名称");
        MyTable.Add("DanWieDianHua", "单位电话");
        MyTable.Add("JiaTingDianHua", "家庭电话");
        MyTable.Add("ShouJi", "手机");
        MyTable.Add("Email", "电子邮件");

        ZWL.Common.DataToExcel.GridViewToExcel(ZWL.DBUtility.DbHelperSQL.GetDataSet("select NameStr,Sex,DanWeiMingCheng,DanWieDianHua,JiaTingDianHua,ShouJi,Email from ERPTongXunLu where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel报表");
    }
    protected void ImageButton5_Click(object sender, EventArgs e)
    {
        string CheckStr = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        string[] CheckStrArray = CheckStr.Split(',');
        Response.Redirect("TongXunLuModify.aspx?TypeStr=" + Request.QueryString["TypeStr"].ToString() + "&ID=" + CheckStrArray[0].ToString());
    }
}