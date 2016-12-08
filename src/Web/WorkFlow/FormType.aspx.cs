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

public partial class WorkFlow_FormType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            TextBox1.Text = ZWL.DBUtility.DbHelperSQL.GetSHSL("select top 1 FormTypeList from ERPFormType");

            //设定按钮权限
            ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|080m|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ZWL.DBUtility.DbHelperSQL.ExecuteSQL("update ERPFormType set FormTypeList='"+this.TextBox1.Text+"'");
        ZWL.Common.MessageBox.Show(this, "修改表单类别设置成功！");

        //写系统日志
        ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
        MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户设置表单类别";
        MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
        MyRiZhi.Add();
    }
}