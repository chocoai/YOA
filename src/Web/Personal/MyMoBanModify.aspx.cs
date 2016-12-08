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

public partial class Personal_MyMoBanModify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            ZWL.BLL.ERPMoBan MyModel = new ZWL.BLL.ERPMoBan();
            MyModel.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            this.TextBox1.Text = MyModel.TitleStr;
            this.RadioButtonList1.SelectedValue= MyModel.IFShare;
            this.TxtContent.Text = MyModel.ContentStr;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ZWL.BLL.ERPMoBan Model = new ZWL.BLL.ERPMoBan();
        Model.ID = int.Parse(Request.QueryString["ID"].ToString());
        Model.TitleStr = this.TextBox1.Text;
        Model.ContentStr = this.TxtContent.Text;
        Model.IFShare = this.RadioButtonList1.SelectedItem.Text;
        Model.TimeStr = DateTime.Now;
        Model.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        Model.Update();

        //写系统日志
        ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
        MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户修改常用模板信息(" + this.TextBox1.Text + ")";
        MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
        MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "常用模板修改成功！", "MyMoBan.aspx");
    }
}
