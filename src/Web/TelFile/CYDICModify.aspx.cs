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

public partial class Car_CYDICModify : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			ZWL.Common.PublicMethod.CheckSession();
			ZWL.BLL.ERPCYDIC Model = new ZWL.BLL.ERPCYDIC();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.txtDicName.Text=Model.DicName.ToString();
			this.txtBackinfo.Text=Model.Backinfo.ToString();
			this.txtUserName.Text=Model.UserName.ToString();
			this.txtTimeStr.Text=Model.TimeStr.ToString();
		}
	}
	protected void ImageButton1_Click(object sender, EventArgs e)
	{
		ZWL.BLL.ERPCYDIC Model = new ZWL.BLL.ERPCYDIC();
		
		Model.ID = int.Parse(Request.QueryString["ID"].ToString());
		Model.DicName=this.txtDicName.Text.ToString();
		Model.Backinfo=this.txtBackinfo.Text.ToString();
		Model.UserName=this.txtUserName.Text.ToString();
		Model.TimeStr=DateTime.Parse(this.txtTimeStr.Text);
		
		Model.Update();
		
		//写系统日志
		ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
		MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户修改传阅文件夹信息(" + this.txtDicName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "传阅文件夹信息修改成功！", "CYDIC.aspx");
	}
}
