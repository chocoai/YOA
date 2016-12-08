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

public partial class Office_OfficethingAdd : System.Web.UI.Page
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
		ZWL.BLL.ERPOfficething Model = new ZWL.BLL.ERPOfficething();
		
		Model.ShenQingThing=this.txtShenQingThing.Text.ToString();
		Model.TypeStr=this.txtTypeStr.Text.ToString();
		Model.ShengQingNum=this.txtShengQingNum.Text.ToString();
		Model.NowState="�ȴ����";
		Model.UserName=ZWL.Common.PublicMethod.GetSessionValue("UserName");
		Model.TimeStr=DateTime.Now;
		
		Model.Add();
		
		//дϵͳ��־
		ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
		MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "�û���Ӱ칫��Ʒ��Ϣ(" + this.txtShenQingThing.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "�칫��Ʒ��Ϣ��ӳɹ���", "OfficeShengQing.aspx");
	}
}
