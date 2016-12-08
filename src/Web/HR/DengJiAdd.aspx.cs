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

public partial class HR_DengJiAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ZWL.BLL.ERPDengJi Model = new ZWL.BLL.ERPDengJi();
        Model.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");        
        Model.ShenPiRen = this.TextBox1.Text;
        Model.ShenQingTime = DateTime.Now;
        Model.BackInfo = this.TextBox2.Text;
        Model.StartTime = DateTime.Parse(this.TextBox3.Text.Trim() + " " + this.DropDownList1.SelectedItem.Text + ":" + this.DropDownList2.SelectedItem.Text + ":00");
        Model.EndTime = DateTime.Parse(this.TextBox4.Text.Trim() + " " + this.DropDownList3.SelectedItem.Text + ":" + this.DropDownList4.SelectedItem.Text + ":00");
        Model.StateNow = "待批";        
        Model.TypeName = Request.QueryString["TypeName"].ToString();
        
        Model.Add();

        //写系统日志
        ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
        MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户添加考勤登记信息(" + this.TextBox2.Text + ")";
        MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
        MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "考勤登记信息添加成功！", "DengJi.aspx?TypeName=" + Request.QueryString["TypeName"].ToString());
    }
}
