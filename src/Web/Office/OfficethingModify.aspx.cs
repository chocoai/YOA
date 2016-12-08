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

public partial class Office_OfficethingModify : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			ZWL.Common.PublicMethod.CheckSession();
			ZWL.BLL.ERPOfficething Model = new ZWL.BLL.ERPOfficething();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.txtShenQingThing.Text=Model.ShenQingThing.ToString();
			this.txtTypeStr.Text=Model.TypeStr.ToString();
			this.txtShengQingNum.Text=Model.ShengQingNum.ToString();
			this.txtNowState.Text=Model.NowState.ToString();
			this.txtUserName.Text=Model.UserName.ToString();
			this.txtTimeStr.Text=Model.TimeStr.ToString();
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		ZWL.BLL.ERPOfficething Model = new ZWL.BLL.ERPOfficething();
		
		Model.ID = int.Parse(Request.QueryString["ID"].ToString());
		Model.ShenQingThing=this.txtShenQingThing.Text.ToString();
		Model.TypeStr=this.txtTypeStr.Text.ToString();
		Model.ShengQingNum=this.txtShengQingNum.Text.ToString();
		Model.NowState=this.txtNowState.Text.ToString();
		Model.UserName=this.txtUserName.Text.ToString();
		Model.TimeStr=DateTime.Parse(this.txtTimeStr.Text);
		
		Model.Update();
		
		//写系统日志
		ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
		MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户修改办公用品信息(" + this.txtShenQingThing.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "办公用品信息修改成功！", "OfficeShengQing.aspx");
	}
}
