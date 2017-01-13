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

public partial class TelFile_GetFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            DataBindToGridview();

            //设定按钮权限
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|057e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
        }
    }


    public string GetDicNameCondition()
    {
        string ReturnStr = " 0=0 ";
        try
        {
            //this.Label1.Text = "归档文件夹：" + Request.QueryString["DicName"].ToString();
            ReturnStr = " ','+QianShouHouIDList+',' like '%," + Request.QueryString["DicID"].ToString() + ",%' ";
        }
        catch
        { }
        return ReturnStr;
    }
    protected void AspNetPager1_PageChanged(object src, EventArgs e)
    {
        DataBindToGridview();
    }

    public void DataBindToGridview()
    {
        GVData.PageSize = AspNetPager1.PageSize;
        GVData.PageIndex = AspNetPager1.CurrentPageIndex - 1;
        ZWL.BLL.ERPTelFile MyERPTelFile = new ZWL.BLL.ERPTelFile();
        DataSet ds = MyERPTelFile.GetList("TitleStr like '%" + this.TextBox1.Text.Trim() + "%' and ','+ToUser+',' like '%," + ZWL.Common.PublicMethod.GetSessionValue("UserName") + ",%'  and  " + GetDicNameCondition() + " order by ID desc");
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
            string NowUser = "," + ZWL.Common.PublicMethod.GetSessionValue("UserName") + ",";
            string JieShouUser = "," + MyLabel.Text + ",";
            if (ZWL.Common.PublicMethod.StrIFIn(NowUser, JieShouUser) == true)
            {
                MyLabel.Text = "已签收";
            }
            else
            {
                MyLabel.Text = "未签收";
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
        MyTable.Add("TitleStr", "文件主题");
        MyTable.Add("FromUser", "发送人");
        MyTable.Add("TimeStr", "发送时间");
        MyTable.Add("YiJieShouRen", "已签收人");
        ZWL.Common.DataToExcel.GridViewToExcel(ZWL.DBUtility.DbHelperSQL.GetDataSet("select TitleStr,FromUser,TimeStr,YiJieShouRen from ERPTelFile where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel报表");
    }
}