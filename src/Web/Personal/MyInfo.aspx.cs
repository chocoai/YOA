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

public partial class Personal_MyInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("../SystemManage/SystemUserView.aspx?ID=" + ZWL.DBUtility.DbHelperSQL.GetSHSL("select ID from ERPUser Where UserName='" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "'"));
    }
}
