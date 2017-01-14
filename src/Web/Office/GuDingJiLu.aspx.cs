
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

public partial class Office_GuDingJiLu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            this.TextBox1.Text = Request.QueryString["GDName"].ToString();
            DataBindToGridview();

            //�趨��ťȨ��            
            ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|A021a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton5.Visible = ZWL.Common.PublicMethod.StrIFIn("|A021m|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|A021d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|A021e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
        }
    }
    
    protected void GVData_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        ZWL.Common.PublicMethod.GridViewRowDataBound(e);
    }
    protected void ImageButton4_Click(object sender, EventArgs e)
    {
        DataBindToGridview();
    }
    protected void AspNetPager1_PageChanged(object src, EventArgs e)
    {
        DataBindToGridview();
    }
    public void DataBindToGridview()
	{
        GVData.PageSize = AspNetPager1.PageSize;
        GVData.PageIndex = AspNetPager1.CurrentPageIndex - 1;
        ZWL.BLL.ERPGuDingJiLu MyModel = new ZWL.BLL.ERPGuDingJiLu();
        DataSet ds = MyModel.GetList("GDName Like '%" + this.TextBox1.Text + "%' order by ID desc");
        GVData.DataSource = ds;
        GVData.DataBind();
        AspNetPager1.RecordCount = ds.Tables[0].Rows.Count;
    }
	protected void ImageButton1_Click(object sender, EventArgs e)
	{
        Response.Redirect("GuDingJiLuAdd.aspx?GDName=" + Request.QueryString["GDName"].ToString());
	}
	protected void ImageButton3_Click(object sender, EventArgs e)
	{
		string IDlist = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
		if (ZWL.DBUtility.DbHelperSQL.ExecuteSQL("delete from ERPGuDingJiLu where ID in (" + IDlist + ")") == -1)
		{
			Response.Write("<script>alert('ɾ��ѡ�м�¼ʱ�������������µ�½�����ԣ�');</script>");
		}
		else
		{
			DataBindToGridview();
			//дϵͳ��־
			ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
			MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
			MyRiZhi.DoSomething = "�û�ɾ���۾ɼ�¼��Ϣ";
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
		MyTable.Add("GDName", "�ʲ�����");
		MyTable.Add("ZJType", "�۾����");
		MyTable.Add("ZJDate", "�۾�����");
		MyTable.Add("ZJJinE", "�۾ɽ��");
		MyTable.Add("UserName", "¼����");
		MyTable.Add("TimeStr", "¼��ʱ��");
		ZWL.Common.DataToExcel.GridViewToExcel(ZWL.DBUtility.DbHelperSQL.GetDataSet("select  GDName,ZJType,ZJDate,ZJJinE,UserName,TimeStr  from ERPGuDingJiLu where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel����");
	}
	protected void ImageButton5_Click(object sender, EventArgs e)
	{
		string CheckStr = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
		string[] CheckStrArray = CheckStr.Split(',');
        Response.Redirect("GuDingJiLuModify.aspx?GDName=" + Request.QueryString["GDName"].ToString() + "&ID=" + CheckStrArray[0].ToString());
	}
}
