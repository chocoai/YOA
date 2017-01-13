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

public partial class WorkFlow_SerchWorkFlow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            DataBindToGridview();

            //设定按钮权限
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|076e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
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
        DataSet ds = MyModel.GetList("WorkName Like '%" + this.TextBox1.Text + "%' and FormName Like '%" + this.TextBox2.Text + "%' and UserName Like '%" + this.TextBox3.Text + "%' order by ID desc");
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
        MyTable.Add("WorkName", "工作名称");
        MyTable.Add("FormName", "所用表单");
        MyTable.Add("UserName", "创建人");
        MyTable.Add("TimeStr", "创建人");
        MyTable.Add("JieDianName", "节点名称");
        MyTable.Add("StateNow", "当前状态");
        ZWL.Common.DataToExcel.GridViewToExcel(ZWL.DBUtility.DbHelperSQL.GetDataSet("select WorkName,FormName,UserName,TimeStr,JieDianName,StateNow from ERPWorkToDo where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel报表");
    }
}