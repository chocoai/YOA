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

public partial class Work_ManageRiCheng : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            DataBindToGridview();           

            //设定按钮权限
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|R013e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
        }
    }
    protected void AspNetPager1_PageChanged(object src, EventArgs e)
    {
        DataBindToGridview();
    }
    public string SetIfShare()
    {
        try
        {
            string tempStr = Request.QueryString["Type"].ToString();            
            return " and  ','+GongXiangWho+',' like '%," + ZWL.Common.PublicMethod.GetSessionValue("UserName") + ",%' ";
        }
        catch
        {
            return "";
        }
    }

    public void DataBindToGridview()
    {
        GVData.PageSize = AspNetPager1.PageSize;
        GVData.PageIndex = AspNetPager1.CurrentPageIndex - 1;
        ZWL.BLL.ERPAnPai MyModel = new ZWL.BLL.ERPAnPai();
        DataSet ds = MyModel.GetList("TitleStr Like '%" + this.TextBox1.Text + "%' and UserName like '%" + this.TextBox2.Text + "%' " + SetIfShare() + " order by ID desc");
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
    protected void ImageButton2_Click(object sender, EventArgs e)
    {
        string IDList = "0";
        for (int i = 0; i < GVData.Rows.Count; i++)
        {
            Label LabVis = (Label)GVData.Rows[i].FindControl("LabVisible");
            IDList = IDList + "," + LabVis.Text.ToString();
        }
        Hashtable MyTable = new Hashtable();
        MyTable.Add("TitleStr", "主题");
        MyTable.Add("TypeStr", "类型");
        MyTable.Add("TimeStart", "开始时间");
        MyTable.Add("TimeEnd", "结束时间");
        MyTable.Add("TimeTiXing", "提醒时间");
        MyTable.Add("UserName", "业务员");

        ZWL.Common.DataToExcel.GridViewToExcel(ZWL.DBUtility.DbHelperSQL.GetDataSet("select TitleStr,TypeStr,TimeStart,TimeEnd,TimeTiXing,UserName from ERPAnPai where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel报表");
    }
}