
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

public partial class HRNew_RenShiHeTong : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            DataBindToGridview();

            //设定按钮权限            
            ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|A004a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton5.Visible = ZWL.Common.PublicMethod.StrIFIn("|A004m|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|A004d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|A004e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
        }
    }
    protected void AspNetPager1_PageChanged(object src, EventArgs e) {
        DataBindToGridview();
    }
    protected void GVData_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        ZWL.Common.PublicMethod.GridViewRowDataBound(e);
    }
    protected void ImageButton4_Click(object sender, EventArgs e)
    {
        DataBindToGridview();
    }
	public void DataBindToGridview()
	{
        GVData.PageSize = AspNetPager1.PageSize;
        GVData.PageIndex = AspNetPager1.CurrentPageIndex - 1;
        ZWL.BLL.ERPRenShiHeTong MyModel = new ZWL.BLL.ERPRenShiHeTong();
        DataSet ds = MyModel.GetList("HeTongUser Like '%" + this.TextBox1.Text + "%' order by ID desc");
        GVData.DataSource = ds;
        GVData.DataBind();
        AspNetPager1.RecordCount = ds.Tables[0].Rows.Count;
    }
	protected void ImageButton1_Click(object sender, EventArgs e)
	{
		Response.Redirect("RenShiHeTongAdd.aspx");
	}
	protected void ImageButton3_Click(object sender, EventArgs e)
	{
		string IDlist = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
		if (ZWL.DBUtility.DbHelperSQL.ExecuteSQL("delete from ERPRenShiHeTong where ID in (" + IDlist + ")") == -1)
		{
			Response.Write("<script>alert('删除选中记录时发生错误！请重新登陆后重试！');</script>");
		}
		else
		{
			DataBindToGridview();
			//写系统日志
			ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
			MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户删除人事合同信息";
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
		MyTable.Add("HeTongUser", "员工用户");
		MyTable.Add("NowState", "合同状态");
		MyTable.Add("Serils", "合同编号");
		MyTable.Add("TypeStr", "合同类型");
		MyTable.Add("JingYe", "是否有竞业条款");
		MyTable.Add("BaoMiXieYi", "是否有保密协议");
		MyTable.Add("QianYueDate", "签约日期");
		MyTable.Add("ManYueDate", "满约日期");
		MyTable.Add("JianZhengJiGuan", "鉴证机关");
		MyTable.Add("JianZhengDate", "鉴证日期");
		MyTable.Add("UserName", "录入人");
		MyTable.Add("TimeStr", "录入时间");
		ZWL.Common.DataToExcel.GridViewToExcel(ZWL.DBUtility.DbHelperSQL.GetDataSet("select  HeTongUser,NowState,Serils,TypeStr,JingYe,BaoMiXieYi,QianYueDate,ManYueDate,JianZhengJiGuan,JianZhengDate,UserName,TimeStr  from ERPRenShiHeTong where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel报表");
	}
	protected void ImageButton5_Click(object sender, EventArgs e)
	{
		string CheckStr = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
		string[] CheckStrArray = CheckStr.Split(',');
		Response.Redirect("RenShiHeTongModify.aspx?ID=" + CheckStrArray[0].ToString());
	}
}
