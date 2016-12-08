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

public partial class HRNew_KaoHeAdd : System.Web.UI.Page
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
		ZWL.BLL.ERPKaoHe Model = new ZWL.BLL.ERPKaoHe();
		
		Model.KaoHeTitle=this.txtKaoHeTitle.Text.ToString();
		Model.KaoHeUser=this.txtKaoHeUser.Text.ToString();
		Model.KaoHeType=this.txtKaoHeType.Text.ToString();
		Model.KaoHeDate=this.txtKaoHeDate.Text.ToString();
		Model.XiangMuFen=this.txtXiangMuFen.Text.ToString();
		Model.RenWuFen=this.txtRenWuFen.Text.ToString();
		Model.KaoHeJieLun=this.txtKaoHeJieLun.Text.ToString();
		Model.BackInfo=this.txtBackInfo.Text.ToString();
		Model.UserName=ZWL.Common.PublicMethod.GetSessionValue("UserName");
		Model.TimeStr=DateTime.Now;
		
		Model.Add();
		
		//写系统日志
		ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
		MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户添加考核管理信息(" + this.txtKaoHeTitle.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "考核管理信息添加成功！", "KaoHe.aspx");
	}
}
