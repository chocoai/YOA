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
using ZWL.Common;
using ZWL.DBUtility;

public partial class Main : System.Web.UI.Page
{
    protected string QuanXian = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PublicMethod.CheckSession();
            //Response.Write(ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            QuanXian = ZWL.Common.PublicMethod.GetSessionValue("QuanXian");
            //设置有权限的项才显示

        }
    }
}
