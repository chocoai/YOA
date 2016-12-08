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

public partial class HRNew_KaoHeXMModify : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			ZWL.Common.PublicMethod.CheckSession();
			ZWL.BLL.ERPKaoHeXM Model = new ZWL.BLL.ERPKaoHeXM();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.txtXiangMuName.Text=Model.XiangMuName.ToString();
			this.txtFenZhi.Text=Model.FenZhi.ToString();
			this.txtKaoHeYiJu.Text=Model.KaoHeYiJu.ToString();
			this.txtBackInfo.Text=Model.BackInfo.ToString();
			this.txtUserName.Text=Model.UserName.ToString();
			this.txtTimeStr.Text=Model.TimeStr.ToString();
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		ZWL.BLL.ERPKaoHeXM Model = new ZWL.BLL.ERPKaoHeXM();
		
		Model.ID = int.Parse(Request.QueryString["ID"].ToString());
		Model.XiangMuName=this.txtXiangMuName.Text.ToString();
		Model.FenZhi=this.txtFenZhi.Text.ToString();
		Model.KaoHeYiJu=this.txtKaoHeYiJu.Text.ToString();
		Model.BackInfo=this.txtBackInfo.Text.ToString();
		Model.UserName=this.txtUserName.Text.ToString();
		Model.TimeStr=DateTime.Parse(this.txtTimeStr.Text);
		
		Model.Update();
		
		//写系统日志
		ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
		MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户修改考核项目信息(" + this.txtXiangMuName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "考核项目信息修改成功！", "KaoHeXM.aspx");
	}
}
