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

public partial class TelFile_CYFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            DataBindToGridview();

            //设定按钮权限
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|F002e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
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
        ZWL.BLL.ERPCYDIC MyModel = new ZWL.BLL.ERPCYDIC();
        DataSet ds = MyModel.GetList("DicName Like '%" + this.TextBox1.Text + "%' and UserName='" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "' order by ID desc");
        GVData.DataSource = ds;
        GVData.DataBind();
        AspNetPager1.RecordCount = ds.Tables[0].Rows.Count;
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
        MyTable.Add("DicName", "文件夹名称");
        MyTable.Add("Backinfo", "简要说明");
        MyTable.Add("UserName", "创建人");
        MyTable.Add("TimeStr", "创建时间");
        ZWL.Common.DataToExcel.GridViewToExcel(ZWL.DBUtility.DbHelperSQL.GetDataSet("select  DicName,Backinfo,UserName,TimeStr  from ERPCYDIC where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel报表");
    }
}
