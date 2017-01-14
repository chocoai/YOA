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
using System.IO;
using Wuqi.Webdiyer;

public partial class DocCenter_DocCenter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            DataBindToGridview();
            GetDaoHang(int.Parse(Request.QueryString["DirID"].ToString()));
        }
    }
    public void GetDaoHang(int DirID)
    {
        //if (DirID == 0)
        //{
        //    if (this.Label1.Text.Trim() == "")
        //    {
        //        this.Label1.Text = "<a href=\"DocCenter.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=0\" >" + Request.QueryString["Type"].ToString() + "</a>";
        //    }
        //    else
        //    {
        //        this.Label1.Text = "<a href=\"DocCenter.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=0\" >" + Request.QueryString["Type"].ToString() + "</a>" + "\\" + this.Label1.Text;
        //    }
        //}
        //else
        //{
        //    if (this.Label1.Text.Trim() == "")
        //    {
        //        this.Label1.Text = "<a href=\"DocCenter.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=" + DirID.ToString() + "\" >" + ZWL.DBUtility.DbHelperSQL.GetSHSL("select FileName from ERPFileList where ID=" + DirID.ToString()) + "</a>";
        //    }
        //    else
        //    {
        //        this.Label1.Text = "<a href=\"DocCenter.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=" + DirID.ToString() + "\" >" + ZWL.DBUtility.DbHelperSQL.GetSHSL("select FileName from ERPFileList where ID=" + DirID.ToString()) + "</a>" + "\\" + this.Label1.Text;
        //    }
        //    int FatherID = int.Parse(ZWL.DBUtility.DbHelperSQL.GetSHSLInt("select DirID from ERPFileList where ID=" + DirID.ToString()));
        //    if (FatherID == 0)
        //    {
        //        this.Label1.Text = this.Label1.Text = "<a href=\"DocCenter.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=0\" >" + Request.QueryString["Type"].ToString() + "</a>" + "\\" + this.Label1.Text;
        //    }
        //    else
        //    {
        //        GetDaoHang(FatherID);
        //    }
        //}
    }
    public void DataBindToGridview()
    {
        GVData.PageSize = AspNetPager1.PageSize;
        GVData.PageIndex = AspNetPager1.CurrentPageIndex - 1;
        DataSet ds = new DataSet();
        string DirID = "0";
        try
        {
            DirID = Request.QueryString["DirID"].ToString();
        }
        catch { }

        ZWL.BLL.ERPFileList MyModel = new ZWL.BLL.ERPFileList();
        if (Request.QueryString["Type"].ToString().Trim() == "个人文件")
        {
            //设定按钮权限            
            ImageButton6.Visible = ZWL.Common.PublicMethod.StrIFIn("|046n|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|046a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton5.Visible = ZWL.Common.PublicMethod.StrIFIn("|046m|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|046d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|046e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));

            ds = MyModel.GetList("DirID=" + DirID + " and TypeName='" + Request.QueryString["Type"].ToString().Trim() + "' and IFDel='否' and UserName='" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "' and FileName Like '%" + this.TextBox1.Text + "%' order by DirOrFile desc,ID desc");
        }
        else if (Request.QueryString["Type"].ToString().Trim() == "电子刊物")
        {
            //设定按钮权限            
            ImageButton6.Visible = ZWL.Common.PublicMethod.StrIFIn("|047n|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|047a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton5.Visible = ZWL.Common.PublicMethod.StrIFIn("|047m|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|047d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|047e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));

            ds = MyModel.GetList("DirID=" + DirID + " and TypeName='" + Request.QueryString["Type"].ToString().Trim() + "' and IFDel='否' and FileName Like '%" + this.TextBox1.Text + "%' order by DirOrFile desc,ID desc");
        }
        else if (Request.QueryString["Type"].ToString().Trim() == "单位文件")
        {
            //设定按钮权限            
            ImageButton6.Visible = ZWL.Common.PublicMethod.StrIFIn("|048n|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|048a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton5.Visible = ZWL.Common.PublicMethod.StrIFIn("|048m|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|048d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|048e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ds = MyModel.GetList("DirID=" + DirID + " and TypeName='" + Request.QueryString["Type"].ToString().Trim() + "' and IFDel='否' and FileName Like '%" + this.TextBox1.Text + "%' order by DirOrFile desc,ID desc");
        }
        else if (Request.QueryString["Type"].ToString().Trim() == "共享文件")
        {
            if (DirID == "0")
            {
                ds = MyModel.GetList("TypeName='个人文件' and IFDel='否' and IfShare='是' and FileName Like '%" + this.TextBox1.Text + "%' order by DirOrFile desc,ID desc");
            }
            else
            {
                ds = MyModel.GetList("DirID=" + DirID + " and TypeName='个人文件' and IFDel='否' and FileName Like '%" + this.TextBox1.Text + "%' order by DirOrFile desc,ID desc");
            }
            //隐藏添加、修改、删除
            this.ImageButton1.Visible = false;
            this.ImageButton2.Visible = false;
            this.ImageButton3.Visible = false;
            this.ImageButton5.Visible = false;
            this.ImageButton6.Visible = false;
        }
        else if (Request.QueryString["Type"].ToString().Trim() == "我的硬盘")
        {
            //设定按钮权限            
            ImageButton6.Visible = ZWL.Common.PublicMethod.StrIFIn("|050n|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|050a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton5.Visible = ZWL.Common.PublicMethod.StrIFIn("|050m|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|050d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|050e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ds = MyModel.GetList("DirID=" + DirID + " and TypeName='" + Request.QueryString["Type"].ToString().Trim() + "' and IFDel='否' and UserName='" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "' and FileName Like '%" + this.TextBox1.Text + "%' order by DirOrFile desc,ID desc");
        }
        else if (Request.QueryString["Type"].ToString().Trim() == "共享硬盘")
        {
            if (DirID == "0")
            {
                ds = MyModel.GetList("TypeName='我的硬盘' and IFDel='否' and IfShare='是' and FileName Like '%" + this.TextBox1.Text + "%' order by DirOrFile desc,ID desc");
            }
            else
            {
                ds = MyModel.GetList("DirID=" + DirID + " and TypeName='我的硬盘' and IFDel='否' and FileName Like '%" + this.TextBox1.Text + "%' order by DirOrFile desc,ID desc");
            }
            //隐藏添加、修改、删除
            this.ImageButton1.Visible = false;
            this.ImageButton2.Visible = false;
            this.ImageButton3.Visible = false;
            this.ImageButton5.Visible = false;
            this.ImageButton6.Visible = false;
        }
        GVData.DataSource = ds;
        GVData.DataBind();
        AspNetPager1.RecordCount = ds.Tables[0].Rows.Count;
    }
    protected void AspNetPager1_PageChanged(object src, EventArgs e)
    {
        DataBindToGridview();
    }
    protected void GVData_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        ZWL.Common.PublicMethod.GridViewRowDataBound(e);
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label MyLab = (Label)e.Row.FindControl("LabVisible");
            HyperLink MyHyp = (HyperLink)e.Row.FindControl("HyperLink1");
            Image MyImage = (Image)e.Row.FindControl("Image1");
            string ImagePath = "../images/filetype/" + ZWL.DBUtility.DbHelperSQL.GetSHSL("select FileType from ERPFileList where ID=" + MyLab.Text.Trim()) + ".gif";
            if (File.Exists(Server.MapPath(ImagePath)) == true)
            {
                MyImage.ImageUrl = ImagePath;
                //共享文件夹
                if (ZWL.DBUtility.DbHelperSQL.GetSHSL("select FileType from ERPFileList where ID=" + MyLab.Text.Trim()) == "dir")
                {
                    //设置点击后进入相应文件夹
                    MyHyp.NavigateUrl = "DocCenter.aspx?DirID=" + MyLab.Text.Trim() + "&Type=" + Request.QueryString["Type"].ToString();
                    MyHyp.Text=ZWL.DBUtility.DbHelperSQL.GetSHSL("select FileName from ERPFileList where ID=" + MyLab.Text.Trim());
                    if (ZWL.DBUtility.DbHelperSQL.GetSHSL("select IfShare from ERPFileList where ID=" + MyLab.Text.Trim()) == "是")
                    {
                        MyImage.ImageUrl = "../images/filetype/sharedir.gif";
                    }
                }
            }
            else
            {
                MyImage.ImageUrl = "../images/filetype/unknown.gif";
            }
        }
    }
    protected void ImageButton4_Click(object sender, EventArgs e)
    {
        DataBindToGridview();
    }
    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("DocAdd.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=" + Request.QueryString["DirID"].ToString());
    }
    protected void ImageButton3_Click(object sender, EventArgs e)
    {
        string IDlist = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        if (ZWL.DBUtility.DbHelperSQL.ExecuteSQL("update ERPFileList set IFDel='是' where ID in (" + IDlist + ")") == -1)
        {
            Response.Write("<script>alert('删除选中记录时发生错误！请重新登陆后重试！');</script>");
        }
        else
        {
            DataBindToGridview();
            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户删除文档信息";
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
        MyTable.Add("FileName", "文件名");
        MyTable.Add("BianHao", "文档编号");
        MyTable.Add("DaXiao", "大小(KB)");
        MyTable.Add("ShangChuanTime", "上传时间");
        MyTable.Add("UserName", "上传人");
        MyTable.Add("IfShare", "是否共享");

        ZWL.Common.DataToExcel.GridViewToExcel(ZWL.DBUtility.DbHelperSQL.GetDataSet("select FileName,BianHao,DaXiao,ShangChuanTime,UserName,IfShare from ERPFileList where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel报表");
    }
    protected void ImageButton5_Click(object sender, EventArgs e)
    {
        string CheckStr = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        string[] CheckStrArray = CheckStr.Split(',');
        if (ZWL.DBUtility.DbHelperSQL.GetSHSL("select FileType from ERPFileList where ID=" + CheckStrArray[0].ToString()) == "dir")
        {
            Response.Redirect("DirModify.aspx?Type=" + Request.QueryString["Type"].ToString() + "&ID=" + CheckStrArray[0].ToString() + "&DirID=" + Request.QueryString["DirID"].ToString());
        }
        else
        {
            Response.Redirect("DocModify.aspx?Type=" + Request.QueryString["Type"].ToString() + "&ID=" + CheckStrArray[0].ToString() + "&DirID=" + Request.QueryString["DirID"].ToString());
        }
    }
    protected void ImageButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("DocDirAdd.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=" + Request.QueryString["DirID"].ToString());
    }
}