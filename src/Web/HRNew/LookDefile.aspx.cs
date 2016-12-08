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

public partial class HRNew_LookDefile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["Type"].ToString() == "XM")
            {
                ZWL.BLL.ERPKaoHeXM MyModel = new ZWL.BLL.ERPKaoHeXM();
                DataSet MYDT=MyModel.GetList("");
                for (int i = 0; i < MYDT.Tables[0].Rows.Count; i++)
                {
                    this.Label1.Text = this.Label1.Text + "<img src=../images/ico_clip.gif />&nbsp;" + MYDT.Tables[0].Rows[i]["XiangMuName"].ToString() + "&nbsp;&nbsp;&nbsp;&nbsp;所占分值：" + MYDT.Tables[0].Rows[i]["FenZhi"].ToString() + "<BR>";
                }
            }
            else
            {
                ZWL.BLL.ERPKaoHeRW MyModel = new ZWL.BLL.ERPKaoHeRW();
                DataSet MYDT = MyModel.GetList("");
                for (int i = 0; i < MYDT.Tables[0].Rows.Count; i++)
                {
                    this.Label1.Text = this.Label1.Text + "<img src=../images/ico_clip.gif />&nbsp;" + MYDT.Tables[0].Rows[i]["RenWuName"].ToString() + "&nbsp;&nbsp;&nbsp;&nbsp;所占分值：" + MYDT.Tables[0].Rows[i]["FenZhi"].ToString() + "<BR>";
                }
            }
        }
    }
}
