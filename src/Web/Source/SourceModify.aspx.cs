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

public partial class Source_SourceModify : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			ZWL.Common.PublicMethod.CheckSession();
			ZWL.BLL.ERPSource Model = new ZWL.BLL.ERPSource();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.txtSourceName.Text=Model.SourceName.ToString();
			this.txtShengQingUser.Text=Model.ShengQingUser.ToString();
			this.txtShiYongUser.Text=Model.ShiYongUser.ToString();
			this.txtShiYongShiXian.Text=Model.ShiYongShiXian.ToString();
			this.txtSourceMiaoShu.Text=Model.SourceMiaoShu.ToString();
			this.txtNowState.Text=Model.NowState.ToString();
			this.txtUserName.Text=Model.UserName.ToString();
			this.txtTimeStr.Text=Model.TimeStr.ToString();
			this.txtBackInfo.Text=Model.BackInfo.ToString();
		}
	}
	protected void ImageButton1_Click(object sender, EventArgs e)
	{
		ZWL.BLL.ERPSource Model = new ZWL.BLL.ERPSource();
		
		Model.ID = int.Parse(Request.QueryString["ID"].ToString());
		Model.SourceName=this.txtSourceName.Text.ToString();
		Model.ShengQingUser=this.txtShengQingUser.Text.ToString();
		Model.ShiYongUser=this.txtShiYongUser.Text.ToString();
		Model.ShiYongShiXian=this.txtShiYongShiXian.Text.ToString();
		Model.SourceMiaoShu=this.txtSourceMiaoShu.Text.ToString();
		Model.NowState=this.txtNowState.Text.ToString();
		Model.UserName=this.txtUserName.Text.ToString();
		Model.TimeStr=DateTime.Parse(this.txtTimeStr.Text);
		Model.BackInfo=this.txtBackInfo.Text.ToString();
		
		Model.Update();
		
		//写系统日志
		ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
		MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户修改资源申请信息(" + this.txtSourceName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "资源申请信息修改成功！", "Source.aspx");
	}
}
