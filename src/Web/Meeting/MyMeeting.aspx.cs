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

public partial class Meeting_MyMeeting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            DataBindToGridview();

            //设定按钮权限 
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|018e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
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
        ZWL.BLL.ERPMeeting MyModel = new ZWL.BLL.ERPMeeting();
        DataSet ds = MyModel.GetList("MeetingTitle Like '%" + this.TextBox1.Text + "%' and ','+ChuXiRen+',' like '%," + ZWL.Common.PublicMethod.GetSessionValue("UserName") + ",%' order by ID desc");
        GVData.DataSource = ds;
        GVData.DataBind();
        AspNetPager1.RecordCount = ds.Tables[0].Rows.Count;
    }
    
    protected void GVData_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        ZWL.Common.PublicMethod.GridViewRowDataBound(e);
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label MyLabel = (Label)e.Row.FindControl("Label111");
            DateTime KaiShiTime = DateTime.Parse(MyLabel.Text.Split('|')[0]);
            DateTime JieShuTime = DateTime.Parse(MyLabel.Text.Split('|')[1]);
            if (DateTime.Now < KaiShiTime)
            {
                MyLabel.Text = "未开始";
            }
            else if (DateTime.Now > JieShuTime)
            {
                MyLabel.Text = "已结束";
            }
            else
            {
                MyLabel.Text = "正在进行";
                MyLabel.ForeColor = System.Drawing.Color.Red;
            }
        }
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
        MyTable.Add("MeetingTitle", "会议标题");
        MyTable.Add("KaiShiTime", "开始时间");
        MyTable.Add("JieShuTime", "结束时间");
        MyTable.Add("HuiYiZhuChi", "会议主持");
        ZWL.Common.DataToExcel.GridViewToExcel(ZWL.DBUtility.DbHelperSQL.GetDataSet("select MeetingTitle,KaiShiTime,JieShuTime,HuiYiZhuChi from ERPMeeting where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel报表");
    }
}