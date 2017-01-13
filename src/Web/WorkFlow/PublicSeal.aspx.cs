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

public partial class WorkFlow_PublicSeal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            DataBindToGridview();

            if (Request.QueryString["Type"].ToString() == "公共印章")
            {
                //设定按钮权限            
                ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|082a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton5.Visible = ZWL.Common.PublicMethod.StrIFIn("|082m|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|082d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|082e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            }
            else
            {
                //设定按钮权限            
                ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|083a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton5.Visible = ZWL.Common.PublicMethod.StrIFIn("|083m|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|083d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|083e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            }
        }
    }
    protected void AspNetPager1_PageChanged(object src, EventArgs e) {
        DataBindToGridview();
    }
    public void DataBindToGridview() {
        GVData.PageSize = AspNetPager1.PageSize;
        GVData.PageIndex = AspNetPager1.CurrentPageIndex - 1;
        ZWL.BLL.ERPYinZhang MyModel = new ZWL.BLL.ERPYinZhang();
        DataSet ds = new DataSet();
        if (Request.QueryString["Type"].ToString() == "公共印章")
        {
             ds = MyModel.GetList("YinZhangName Like '%" + this.TextBox1.Text + "%' and YinZhangLeiBie='公共印章' order by ID desc");
        }
        else
        {
             ds = MyModel.GetList("YinZhangName Like '%" + this.TextBox1.Text + "%' and YinZhangLeiBie='私人印章' and UserName='"+ZWL.Common.PublicMethod.GetSessionValue("UserName")+"' order by ID desc");
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
        Response.Redirect("YinZhangAdd.aspx?Type="+Request.QueryString["Type"].ToString());
    }
    protected void ImageButton3_Click(object sender, EventArgs e)
    {
        string IDlist = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        if (ZWL.DBUtility.DbHelperSQL.ExecuteSQL("delete from ERPYinZhang where ID in (" + IDlist + ")") == -1)
        {
            Response.Write("<script>alert('删除选中记录时发生错误！请重新登陆后重试！');</script>");
        }
        else
        {
            DataBindToGridview();
            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户删除印章数据";
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
        MyTable.Add("YinZhangName", "印章名称");
        MyTable.Add("YinZhangLeiBie", "印章类别");
        MyTable.Add("UserName", "创建人");
        MyTable.Add("TimeStr", "创建时间");
        ZWL.Common.DataToExcel.GridViewToExcel(ZWL.DBUtility.DbHelperSQL.GetDataSet("select YinZhangName,YinZhangLeiBie,UserName,TimeStr from ERPYinZhang where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel报表");
    }
    protected void ImageButton5_Click(object sender, EventArgs e)
    {
        string CheckStr = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        string[] CheckStrArray = CheckStr.Split(',');
        Response.Redirect("YinZhangModify.aspx?Type=" + Request.QueryString["Type"].ToString() + "&ID=" + CheckStrArray[0].ToString());
    }
}