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

public partial class Sell_ContractChanPinAdd : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			ZWL.Common.PublicMethod.CheckSession();
            this.txtHeTongName.Text = Request.QueryString["HeTongName"].ToString();
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		ZWL.BLL.ERPContractChanPin Model = new ZWL.BLL.ERPContractChanPin();
		
		Model.HeTongName=this.txtHeTongName.Text.ToString();
		Model.ChanPinName=this.txtChanPinName.Text.ToString();
		Model.DanJia=decimal.Parse(this.txtDanJia.Text);
		Model.ShuLiang=decimal.Parse(this.txtShuLiang.Text);
		Model.ZongJia=decimal.Parse(this.txtZongJia.Text);
		Model.YiFuKuan=decimal.Parse(this.txtYiFuKuan.Text);
		Model.QianKuanShu=decimal.Parse(this.txtQianKuanShu.Text);
		Model.IFJiaoFu=this.RadioButtonList1.SelectedItem.Text;
        Model.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
		Model.TimeStr=DateTime.Now;
		Model.BackInfo=this.txtBackInfo.Text.ToString();

        if (this.RadioButtonList1.SelectedItem.Text == "�ѽ���")
        {
            //�Ӳ�Ʒ����м�ȥ
            string TempSqlStr = "update ERPProduct set  ChuKuSum=ChuKuSum+" + this.txtShuLiang.Text + ",NowKuCun=NowKuCun-" + this.txtShuLiang.Text + " where ProductName='" + this.txtChanPinName.Text.ToString()+"'";
            ZWL.DBUtility.DbHelperSQL.ExecuteSQL(TempSqlStr);
        }
		
		Model.Add();
		
		//дϵͳ��־
		ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
		MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
		MyRiZhi.DoSomething = "�û����Ӻ�ͬ��Ʒ��Ϣ(" + this.txtHeTongName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "��ͬ��Ʒ��Ϣ���ӳɹ���", "SellLog.aspx?HeTongName=" + Request.QueryString["HeTongName"].ToString());
	}
}