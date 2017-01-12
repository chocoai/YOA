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
using System.Data.SqlClient;
using Wuqi.Webdiyer;

public partial class Work_RiCheng : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            DataBindToGridview();
            this.Calendar1.SelectedDate = DateTime.Now.Date;

            //设定按钮权限            
            ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|013a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton5.Visible = ZWL.Common.PublicMethod.StrIFIn("|013m|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|013d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|013e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
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
        ZWL.BLL.ERPAnPai MyModel = new ZWL.BLL.ERPAnPai();
        DataSet ds = MyModel.GetList("TitleStr Like '%" + this.TextBox1.Text + "%' and UserName='"+ZWL.Common.PublicMethod.GetSessionValue("UserName")+"' order by ID desc");
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
        Response.Redirect("RiChengAdd.aspx");
    }
    protected void ImageButton3_Click(object sender, EventArgs e)
    {
        string IDlist = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        if (ZWL.DBUtility.DbHelperSQL.ExecuteSQL("delete from ERPAnPai where ID in (" + IDlist + ")") == -1)
        {
            Response.Write("<script>alert('删除选中记录时发生错误！请重新登陆后重试！');</script>");
        }
        else
        {
            DataBindToGridview();
            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户删除日程安排信息";
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
        MyTable.Add("TitleStr", "主题");
        MyTable.Add("TypeStr", "类型");
        MyTable.Add("TimeStart", "开始时间");
        MyTable.Add("TimeEnd", "结束时间");
        MyTable.Add("TimeTiXing", "提醒时间");

        ZWL.Common.DataToExcel.GridViewToExcel(ZWL.DBUtility.DbHelperSQL.GetDataSet("select TitleStr,TypeStr,TimeStart,TimeEnd,TimeTiXing from ERPAnPai where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel报表");
    }
    protected void ImageButton5_Click(object sender, EventArgs e)
    {
        string CheckStr = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        string[] CheckStrArray = CheckStr.Split(',');
        Response.Redirect("RiChengModify.aspx?ID=" + CheckStrArray[0].ToString());
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (this.LinkButton1.Text == "列表显示模式")
        {
            this.Panel1.Visible = true;
            this.Panel2.Visible = false;
            this.LinkButton1.Text = "日历显示模式";
        }
        else
        {
            this.Panel1.Visible = false;
            this.Panel2.Visible = true;
            this.LinkButton1.Text = "列表显示模式";
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        DataSet MYDT = ZWL.DBUtility.DbHelperSQL.GetDataSet("select TitleStr,ID from ERPAnPai where datediff(day,TimeStart,'" + e.Day.Date.ToString() + "')=0 and UserName='" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "'");
        for (int i = 0; i < MYDT.Tables[0].Rows.Count; i++)
        {
            e.Cell.BackColor = System.Drawing.Color.AntiqueWhite;
            e.Cell.ToolTip = MYDT.Tables[0].Rows[i]["TitleStr"].ToString();
            Label MyContent = new Label();
            MyContent.Text = "<BR><a href=\"RiChengView.aspx?ID=" + MYDT.Tables[0].Rows[i]["ID"].ToString() + " \">" + MYDT.Tables[0].Rows[i]["TitleStr"].ToString() + "</a>";
            MyContent.ForeColor = System.Drawing.Color.White;
            e.Cell.Controls.Add(MyContent);
        }        
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string CheckStr = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        string[] CheckStrArray = CheckStr.Split(',');
        Response.Redirect("../CRM/LinkLogAdd.aspx?CustomName=&RiChengID=" + CheckStrArray[0].ToString());
    }
}