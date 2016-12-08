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

public partial class WorkFlow_WorkToDo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            ZWL.BLL.ERPWorkToDo MyModel = new ZWL.BLL.ERPWorkToDo();
            MyModel.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            this.Label1.Text = MyModel.WorkName;
            this.Label2.Text = MyModel.JieDianName;
            this.Label3.Text = MyModel.FormContent;

            ZWL.Common.PublicMethod.SetSessionValue("WenJianList", MyModel.FuJianList);
            ZWL.Common.PublicMethod.BindDDL(this.CheckBoxList1, ZWL.Common.PublicMethod.GetSessionValue("WenJianList"));

            this.Label5.Text = MyModel.ShenPiYiJian;
            this.HyperLink1.NavigateUrl = "JustShowWorkFlow.aspx?ID=" + MyModel.WorkFlowID.ToString();

            //绑定常用审批
            ZWL.DBUtility.DbHelperSQL.BindDropDownList2("select ContentStr from ERPShenPi where UserName='"+ZWL.Common.PublicMethod.GetSessionValue("UserName")+"'", this.DropDownList1, "ContentStr", "ContentStr");

            //根据节点属性判断是否可以编辑附件、删除附件
            if (ZWL.DBUtility.DbHelperSQL.GetSHSL("select IFEditFile from ERPWorkFlowJieDian where ID=" + MyModel.JieDianID.ToString()) == "否")
            {
                this.ImageButton5.Visible = false;
            }
            if (ZWL.DBUtility.DbHelperSQL.GetSHSL("select IFDelFile from ERPWorkFlowJieDian where ID=" + MyModel.JieDianID.ToString()) == "否")
            {
                this.ImageButton3.Visible = false;
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //找到下一节点
        string FileNameStr = ZWL.Common.PublicMethod.UploadFileIntoDir(this.FileUpload1, DateTime.Now.Ticks.ToString() + System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName));
        if (FileNameStr.Trim().Length > 0)
        {
            string PiShiStr = "<font color=#0000FF>" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "&nbsp;&nbsp;" + DateTime.Now.ToString() + "&nbsp;&nbsp;</font><BR>" + this.TextBox1.Text.ToString() + "<br>审批附件：<a href=../UploadFile/" + FileNameStr + ">[右键下载]</a><hr>" + this.Label5.Text;
            ZWL.DBUtility.DbHelperSQL.ExecuteSQL("update ERPWorkToDo set FuJianList='" + ZWL.Common.PublicMethod.GetSessionValue("WenJianList") + "',TongGuoRenList=TongGuoRenList+'," + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "',ShenPiYiJian='" + PiShiStr + "' where ID=" + Request.QueryString["ID"].ToString());
            
            ZWL.BLL.ERPWorkToDo Mymodel = new ZWL.BLL.ERPWorkToDo();
            Mymodel.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            Mymodel.ID = int.Parse(Request.QueryString["ID"].ToString());
            Mymodel.FormContent = this.TextBox3.Text;
            Mymodel.UpdateBD();

            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户审批工作信息(" + this.Label1.Text + ")";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();

            Response.Redirect("GoToNextNode.aspx?Type=0&ID=" + Request.QueryString["ID"].ToString());            
        }
        else if (FileUpload1.PostedFile.FileName.Trim().Length <= 0)
        {
            string PiShiStr = "<font color=#0000FF>" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "&nbsp;&nbsp;" + DateTime.Now.ToString() + "&nbsp;&nbsp;</font><BR>" + this.TextBox1.Text.ToString() + "<hr>" + this.Label5.Text;
            ZWL.DBUtility.DbHelperSQL.ExecuteSQL("update ERPWorkToDo set FuJianList='" + ZWL.Common.PublicMethod.GetSessionValue("WenJianList") + "',TongGuoRenList=TongGuoRenList+'," + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "',ShenPiYiJian='" + PiShiStr + "' where ID=" + Request.QueryString["ID"].ToString());

            ZWL.BLL.ERPWorkToDo Mymodel = new ZWL.BLL.ERPWorkToDo();
            Mymodel.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            Mymodel.ID = int.Parse(Request.QueryString["ID"].ToString());
            Mymodel.FormContent = this.TextBox3.Text;
            Mymodel.UpdateBD();

            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户审批工作信息(" + this.Label1.Text + ")";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();

            Response.Redirect("GoToNextNode.aspx?Type=0&ID=" + Request.QueryString["ID"].ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string FileNameStr = ZWL.Common.PublicMethod.UploadFileIntoDir(this.FileUpload1, DateTime.Now.Ticks.ToString() + System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName));
        if (FileNameStr.Trim().Length > 0)
        {
            string PiShiStr = "<font color=#0000FF>" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "&nbsp;&nbsp;" + DateTime.Now.ToString() + "&nbsp;&nbsp;</font><BR>" + this.TextBox1.Text.ToString() + "<br>审批附件：<a href=../UploadFile/" + FileNameStr + ">[右键下载]</a><hr>" + this.Label5.Text;
            ZWL.DBUtility.DbHelperSQL.ExecuteSQL("update ERPWorkToDo set FuJianList='" + ZWL.Common.PublicMethod.GetSessionValue("WenJianList") + "',ShenPiYiJian='" + PiShiStr + "',StateNow='已被驳回' where ID=" + Request.QueryString["ID"].ToString());

            ZWL.BLL.ERPWorkToDo Mymodel = new ZWL.BLL.ERPWorkToDo();
            Mymodel.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            Mymodel.ID = int.Parse(Request.QueryString["ID"].ToString());
            Mymodel.FormContent = this.TextBox3.Text;
            Mymodel.UpdateBD();

            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户审批工作信息(" + this.Label1.Text + ")";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();

            ZWL.Common.MessageBox.ShowAndRedirect(this, "审批操作完成！", "NowWorkFlow.aspx");
        }
        else if(FileUpload1.PostedFile.FileName.Trim().Length<=0)
        {
            string PiShiStr = "<font color=#0000FF>" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "&nbsp;&nbsp;" + DateTime.Now.ToString() + "&nbsp;&nbsp;</font><BR>" + this.TextBox1.Text.ToString() + "<hr>"+this.Label5.Text;
            ZWL.DBUtility.DbHelperSQL.ExecuteSQL("update ERPWorkToDo set FuJianList='" + ZWL.Common.PublicMethod.GetSessionValue("WenJianList") + "',ShenPiYiJian='" + PiShiStr + "',StateNow='已被驳回' where ID=" + Request.QueryString["ID"].ToString());

            ZWL.BLL.ERPWorkToDo Mymodel = new ZWL.BLL.ERPWorkToDo();
            Mymodel.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            Mymodel.ID = int.Parse(Request.QueryString["ID"].ToString());
            Mymodel.FormContent = this.TextBox3.Text;
            Mymodel.UpdateBD();

            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户审批工作信息(" + this.Label1.Text + ")";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();

            ZWL.Common.MessageBox.ShowAndRedirect(this, "审批操作完成！", "NowWorkFlow.aspx");
        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            for (int i = 0; i < this.CheckBoxList1.Items.Count; i++)
            {
                if (this.CheckBoxList1.Items[i].Selected == true)
                {
                    ZWL.Common.PublicMethod.SetSessionValue("WenJianList", ZWL.Common.PublicMethod.GetSessionValue("WenJianList").Replace(this.CheckBoxList1.Items[i].Text, "").Replace("||", "|"));
                }
            }
            ZWL.Common.PublicMethod.BindDDL(this.CheckBoxList1, ZWL.Common.PublicMethod.GetSessionValue("WenJianList"));
        }
        catch
        { }
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (this.CheckBoxList1.SelectedItem.Text.Trim().Length > 0)
            {
                Response.Write("<script>window.open('../DsoFramer/ReadFile.aspx?FilePath=" + this.CheckBoxList1.SelectedItem.Text + "');</script>");
            }
        }
        catch
        { }
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (this.CheckBoxList1.SelectedItem.Text.Trim().Length > 0)
            {
                Response.Write("<script>window.open('../DsoFramer/EditFile.aspx?FilePath=" + this.CheckBoxList1.SelectedItem.Text + "');</script>");
            }
        }
        catch
        { }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        //找到下一节点
        string FileNameStr = ZWL.Common.PublicMethod.UploadFileIntoDir(this.FileUpload1, DateTime.Now.Ticks.ToString() + System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName));
        if (FileNameStr.Trim().Length > 0)
        {
            string PiShiStr = "<font color=#0000FF>" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "&nbsp;&nbsp;" + DateTime.Now.ToString() + "&nbsp;&nbsp;</font><BR>" + this.TextBox1.Text.ToString() + "<br>审批附件：<a href=../UploadFile/" + FileNameStr + ">[右键下载]</a><hr>" + this.Label5.Text;
            ZWL.DBUtility.DbHelperSQL.ExecuteSQL("update ERPWorkToDo set FuJianList='" + ZWL.Common.PublicMethod.GetSessionValue("WenJianList") + "',TongGuoRenList=TongGuoRenList+'," + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "',ShenPiYiJian='" + PiShiStr + "' where ID=" + Request.QueryString["ID"].ToString());

            ZWL.BLL.ERPWorkToDo Mymodel = new ZWL.BLL.ERPWorkToDo();
            Mymodel.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            Mymodel.ID = int.Parse(Request.QueryString["ID"].ToString());
            Mymodel.FormContent = this.TextBox3.Text;
            Mymodel.UpdateBD();

            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户审批工作信息(" + this.Label1.Text + ")";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();

            Response.Redirect("GoToNextNode.aspx?Type=1&ID=" + Request.QueryString["ID"].ToString());
        }
        else if (FileUpload1.PostedFile.FileName.Trim().Length <= 0)
        {
            string PiShiStr = "<font color=#0000FF>" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "&nbsp;&nbsp;" + DateTime.Now.ToString() + "&nbsp;&nbsp;</font><BR>" + this.TextBox1.Text.ToString() + "<hr>" + this.Label5.Text;
            ZWL.DBUtility.DbHelperSQL.ExecuteSQL("update ERPWorkToDo set FuJianList='" + ZWL.Common.PublicMethod.GetSessionValue("WenJianList") + "',TongGuoRenList=TongGuoRenList+'," + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "',ShenPiYiJian='" + PiShiStr + "' where ID=" + Request.QueryString["ID"].ToString());

            ZWL.BLL.ERPWorkToDo Mymodel = new ZWL.BLL.ERPWorkToDo();
            Mymodel.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            Mymodel.ID = int.Parse(Request.QueryString["ID"].ToString());
            Mymodel.FormContent = this.TextBox3.Text;
            Mymodel.UpdateBD();

            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户审批工作信息(" + this.Label1.Text + ")";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();

            Response.Redirect("GoToNextNode.aspx?Type=1&ID=" + Request.QueryString["ID"].ToString());
        }
    }
}
