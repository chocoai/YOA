using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Main_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            DataBindList();
        }
    }

    public void DataBindList()
    {
        DataSet nowWorkFlows = ZWL.DBUtility.DbHelperSQL.GetDataSet("select top 6 * from ERPWorkToDo where  StateNow='正在办理' and ','+ShenPiRenList+',' like '%," + ZWL.Common.PublicMethod.GetSessionValue("UserName") + ",%' order by ID desc");
        rptNowWorkFlow.DataSource = nowWorkFlows;
        rptNowWorkFlow.DataBind();

        DataSet noticesOfCompany = ZWL.DBUtility.DbHelperSQL.GetDataSet("select top 5 * from ERPGongGao where TypeStr='部门' and UserBuMen='" + ZWL.Common.PublicMethod.GetSessionValue("Department") + "' order by ID desc");
        rtpNoticeOfCompany.DataSource = noticesOfCompany;
        rtpNoticeOfCompany.DataBind();

        DataSet noticesOfDepart = ZWL.DBUtility.DbHelperSQL.GetDataSet("select top 5 * from ERPGongGao where TypeStr='单位' order by ID desc");
        rtpNoticeOfDepart.DataSource = noticesOfDepart;
        rtpNoticeOfDepart.DataBind();

        DataSet innerMail = ZWL.DBUtility.DbHelperSQL.GetDataSet("select top 6 * from ERPLanEmail where ToUser='" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "' and (EmailState='未读' or EmailState='已读')  order by ID desc");
        rtpInnerMail.DataSource = innerMail;
        rtpInnerMail.DataBind();

        DataSet plans = ZWL.DBUtility.DbHelperSQL.GetDataSet("select top 5 * from ERPAnPai where UserName='" + ZWL.Common.PublicMethod.GetSessionValue("UserName") + "' order by ID desc");
        rptPlan.DataSource = plans;
        rptPlan.DataBind();
    }
}