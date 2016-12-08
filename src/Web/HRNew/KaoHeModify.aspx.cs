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

public partial class HRNew_KaoHeModify : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			ZWL.Common.PublicMethod.CheckSession();
			ZWL.BLL.ERPKaoHe Model = new ZWL.BLL.ERPKaoHe();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.txtKaoHeTitle.Text=Model.KaoHeTitle.ToString();
			this.txtKaoHeUser.Text=Model.KaoHeUser.ToString();
			this.txtKaoHeType.Text=Model.KaoHeType.ToString();
			this.txtKaoHeDate.Text=Model.KaoHeDate.ToString();
			this.txtXiangMuFen.Text=Model.XiangMuFen.ToString();
			this.txtRenWuFen.Text=Model.RenWuFen.ToString();
			this.txtKaoHeJieLun.Text=Model.KaoHeJieLun.ToString();
			this.txtBackInfo.Text=Model.BackInfo.ToString();
			this.txtUserName.Text=Model.UserName.ToString();
			this.txtTimeStr.Text=Model.TimeStr.ToString();
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		ZWL.BLL.ERPKaoHe Model = new ZWL.BLL.ERPKaoHe();
		
		Model.ID = int.Parse(Request.QueryString["ID"].ToString());
		Model.KaoHeTitle=this.txtKaoHeTitle.Text.ToString();
		Model.KaoHeUser=this.txtKaoHeUser.Text.ToString();
		Model.KaoHeType=this.txtKaoHeType.Text.ToString();
		Model.KaoHeDate=this.txtKaoHeDate.Text.ToString();
		Model.XiangMuFen=this.txtXiangMuFen.Text.ToString();
		Model.RenWuFen=this.txtRenWuFen.Text.ToString();
		Model.KaoHeJieLun=this.txtKaoHeJieLun.Text.ToString();
		Model.BackInfo=this.txtBackInfo.Text.ToString();
		Model.UserName=this.txtUserName.Text.ToString();
		Model.TimeStr=DateTime.Parse(this.txtTimeStr.Text);
		
		Model.Update();
		
		//写系统日志
		ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
		MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户修改考核管理信息(" + this.txtKaoHeTitle.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "考核管理信息修改成功！", "KaoHe.aspx");
	}
}
