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

public partial class CRM_CustomView : System.Web.UI.Page
{
    public string CustomNameStr = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            ZWL.BLL.ERPCustomInfo model = new ZWL.BLL.ERPCustomInfo();
            model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            this.lblCustomName.Text = model.CustomName;
            CustomNameStr = model.CustomName;
            this.lblCustomSerils.Text = model.CustomSerils;
            this.lblChargeMan.Text = model.ChargeMan;
            this.lblAddress.Text = model.Address;
            this.lblUrlLink.Text = model.UrlLink;
            this.lblYouBian.Text = model.YouBian;
            this.lblTelStr.Text = model.TelStr;
            this.lblXingZhi.Text = model.XingZhi;
            this.lblLaiYuan.Text = model.LaiYuan;
            this.lblQuYu.Text = model.QuYu;
            this.lblZhuangTai.Text = model.ZhuangTai;
            this.lblRenShu.Text = model.RenShu;
            this.lblBanGongMianJi.Text = model.BanGongMianJi;
            this.lblLeiBie.Text = model.LeiBie;
            this.lblJiBie.Text = model.JiBie;
            this.lblYeWuFanWei.Text = model.YeWuFanWei;
            this.lblHangYe.Text = model.HangYe;
            this.lblMuQianWenTi.Text = model.MuQianWenTi;
            this.lblYuJiDingDanDate.Text = model.YuJiDingDanDate;
            this.lblBackInfoA.Text = model.BackInfoA;
            this.lblBackInfoB.Text = model.BackInfoB;
            this.lblBackInfoC.Text = model.BackInfoC;
            this.lblBackInfoD.Text = model.BackInfoD;
            this.lblTimeStr.Text = model.TimeStr.ToString();
            this.lblUserName.Text = model.UserName;

            this.Label2.Text = model.DingDanCount;
            this.Label1.Text = model.YuJiTiXing;
            this.Label3.Text = model.IFShare;
            this.Label4.Text = model.CusBakA;
            this.Label5.Text = model.CusBakB;
            this.Label6.Text = model.CusBakC;
            this.Label7.Text = model.CusBakD;
            this.Label8.Text = model.CusBakE;


            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户查看客户信息(" + this.lblCustomName.Text + ")";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();
        }
    }
}
