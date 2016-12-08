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

public partial class HRNew_KaoHeView : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			ZWL.Common.PublicMethod.CheckSession();
			ZWL.BLL.ERPKaoHe Model = new ZWL.BLL.ERPKaoHe();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.lblKaoHeTitle.Text=Model.KaoHeTitle.ToString();
			this.lblKaoHeUser.Text=Model.KaoHeUser.ToString();
			this.lblKaoHeType.Text=Model.KaoHeType.ToString();
			this.lblKaoHeDate.Text=Model.KaoHeDate.ToString();
			this.lblXiangMuFen.Text=Model.XiangMuFen.ToString();
			this.lblRenWuFen.Text=Model.RenWuFen.ToString();
			this.lblKaoHeJieLun.Text=Model.KaoHeJieLun.ToString();
			this.lblBackInfo.Text=Model.BackInfo.ToString();
			this.lblUserName.Text=Model.UserName.ToString();
			this.lblTimeStr.Text=Model.TimeStr.ToString();
			
			//写系统日志
			ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
			MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户查看考核管理信息(" + this.lblKaoHeTitle.Text + ")";
			MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
			MyRiZhi.Add();
			
		}
	}
}
