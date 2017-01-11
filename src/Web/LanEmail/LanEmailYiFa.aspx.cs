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

public partial class LanEmail_LanEmailYiFa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            DataBindToGridview();

            //设定按钮权限            
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|003e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));            
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
        ZWL.BLL.ERPLanEmail MyLanEmail = new ZWL.BLL.ERPLanEmail();
        DataSet ds = MyLanEmail.GetList("EmailTitle like '%" + this.TextBox1.Text.Trim() + "%'  and ToUser like '%" + this.TextBox2.Text.Trim() + "%'  and EmailState like '%" + this.TextBox3.Text.Trim() + "%' and FromUser='" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "' and EmailState!='草稿' order by ID desc");
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
        MyTable.Add("EmailTitle", "邮件标题");
        MyTable.Add("ToUser", "接收人");
        MyTable.Add("TimeStr", "发送时间");
        MyTable.Add("EmailState", "邮件状态");
        ZWL.Common.DataToExcel.GridViewToExcel(ZWL.DBUtility.DbHelperSQL.GetDataSet("select EmailTitle,ToUser,TimeStr,EmailState from ERPLanEmail where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel报表");   
    }
}
