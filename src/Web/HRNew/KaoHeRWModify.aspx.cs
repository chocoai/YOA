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

public partial class HRNew_KaoHeRWModify : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			ZWL.Common.PublicMethod.CheckSession();
			ZWL.BLL.ERPKaoHeRW Model = new ZWL.BLL.ERPKaoHeRW();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.txtRenWuName.Text=Model.RenWuName.ToString();
			this.txtFenZhi.Text=Model.FenZhi.ToString();
			this.txtRenWuNeiRong.Text=Model.RenWuNeiRong.ToString();
			this.txtBackInfo.Text=Model.BackInfo.ToString();
			this.txtUserName.Text=Model.UserName.ToString();
			this.txtTimeStr.Text=Model.TimeStr.ToString();
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		ZWL.BLL.ERPKaoHeRW Model = new ZWL.BLL.ERPKaoHeRW();
		
		Model.ID = int.Parse(Request.QueryString["ID"].ToString());
		Model.RenWuName=this.txtRenWuName.Text.ToString();
		Model.FenZhi=this.txtFenZhi.Text.ToString();
		Model.RenWuNeiRong=this.txtRenWuNeiRong.Text.ToString();
		Model.BackInfo=this.txtBackInfo.Text.ToString();
		Model.UserName=this.txtUserName.Text.ToString();
		Model.TimeStr=DateTime.Parse(this.txtTimeStr.Text);
		
		Model.Update();
		
		//дϵͳ��־
		ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
		MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "�û��޸Ŀ���������Ϣ(" + this.txtRenWuName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "����������Ϣ�޸ĳɹ���", "KaoHeRW.aspx");
	}
}
