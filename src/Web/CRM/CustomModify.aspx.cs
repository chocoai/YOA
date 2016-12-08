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

public partial class CRM_CustomModify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            ZWL.BLL.ERPCustomInfo model = new ZWL.BLL.ERPCustomInfo();
            model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            this.txtCustomName.Text = model.CustomName;
            this.txtCustomSerils.Text = model.CustomSerils;
            this.txtChargeMan.Text = model.ChargeMan;
            this.txtAddress.Text = model.Address;
            this.txtUrlLink.Text = model.UrlLink;
            this.txtYouBian.Text = model.YouBian;
            this.txtTelStr.Text = model.TelStr;
            this.txtXingZhi.Text = model.XingZhi;
            this.txtLaiYuan.Text = model.LaiYuan;
            this.txtQuYu.Text = model.QuYu;
            this.txtZhuangTai.Text = model.ZhuangTai;
            this.txtRenShu.Text = model.RenShu;
            this.txtBanGongMianJi.Text = model.BanGongMianJi;
            this.txtLeiBie.Text = model.LeiBie;
            this.txtJiBie.Text = model.JiBie;
            this.txtYeWuFanWei.Text = model.YeWuFanWei;
            this.txtHangYe.Text = model.HangYe;
            this.txtMuQianWenTi.Text = model.MuQianWenTi;
            this.txtYuJiDingDanDate.Text = model.YuJiDingDanDate;
            this.txtBackInfoA.Text = model.BackInfoA;
            this.txtBackInfoB.Text = model.BackInfoB;
            this.txtBackInfoC.Text = model.BackInfoC;
            this.txtBackInfoD.Text = model.BackInfoD;
            this.Label1.Text = model.UserName;
            this.Label2.Text = model.TimeStr.ToString();
            this.txtDingDanCount.Text = model.DingDanCount;
            this.txtYuJiTiXing.Text = model.YuJiTiXing;
            this.txtIFShare.Text = model.IFShare;
            this.txtCusBakA.Text = model.CusBakA;
            this.txtCusBakB.Text = model.CusBakB;
            this.txtCusBakC.Text = model.CusBakC;
            this.txtCusBakD.Text = model.CusBakD;
            this.txtCusBakE.Text = model.CusBakE;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (ZWL.Common.PublicMethod.IFExists("CustomName", "ERPCustomInfo", int.Parse(Request.QueryString["ID"].ToString()), this.txtCustomName.Text) == true)
        {
            ZWL.BLL.ERPCustomInfo model = new ZWL.BLL.ERPCustomInfo();
            model.ID = int.Parse(Request.QueryString["ID"].ToString());
            model.CustomName = this.txtCustomName.Text;
            model.CustomSerils = this.txtCustomSerils.Text;
            model.ChargeMan = this.txtChargeMan.Text;
            model.Address = this.txtAddress.Text;
            model.UrlLink = this.txtUrlLink.Text;
            model.YouBian = this.txtYouBian.Text;
            model.TelStr = this.txtTelStr.Text;
            model.XingZhi = this.txtXingZhi.Text;
            model.LaiYuan = this.txtLaiYuan.Text;
            model.QuYu = this.txtQuYu.Text;
            model.ZhuangTai = this.txtZhuangTai.Text;
            model.RenShu = this.txtRenShu.Text;
            model.BanGongMianJi = this.txtBanGongMianJi.Text;
            model.LeiBie = this.txtLeiBie.Text;
            model.JiBie = this.txtJiBie.Text;
            model.YeWuFanWei = this.txtYeWuFanWei.Text;
            model.HangYe = this.txtHangYe.Text;
            model.MuQianWenTi = this.txtMuQianWenTi.Text;
            model.YuJiDingDanDate = this.txtYuJiDingDanDate.Text;
            model.BackInfoA = this.txtBackInfoA.Text;
            model.BackInfoB = this.txtBackInfoB.Text;
            model.BackInfoC = this.txtBackInfoC.Text;
            model.BackInfoD = this.txtBackInfoD.Text;
            model.TimeStr =DateTime.Parse(this.Label2.Text);
            model.UserName = this.Label1.Text;

            model.DingDanCount = this.txtDingDanCount.Text;
            model.YuJiTiXing = this.txtYuJiTiXing.Text;
            model.IFShare = this.txtIFShare.Text;
            model.CusBakA = this.txtCusBakA.Text;
            model.CusBakB = this.txtCusBakB.Text;
            model.CusBakC = this.txtCusBakC.Text;
            model.CusBakD = this.txtCusBakD.Text;
            model.CusBakE = this.txtCusBakE.Text;
            model.Update();

            //写系统日志
            ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
            MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户修改客户信息(" + this.txtCustomName.Text + ")";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();

            ZWL.Common.MessageBox.ShowAndRedirect(this, "客户信息修改成功！", "MyCustom.aspx");
        }
        else
        {
            ZWL.Common.MessageBox.Show(this, "该客户名称已经存在，请查证后再输入！");
        }
    }
}