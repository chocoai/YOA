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

public partial class HR_KaoQingChaXunTongJi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();            
            //设置月初和当前时间
            this.TextBox2.Text = DateTime.Now.AddDays(1 - DateTime.Now.Day).ToShortDateString();
            this.TextBox3.Text = DateTime.Now.Date.ToShortDateString();

            DataBindToGridview();
        }
    }
    protected void AspNetPager1_PageChanged(object src, EventArgs e) {
        DataBindToGridview();
    }
    public void DataBindToGridview()
    {
        GVData.PageSize = AspNetPager1.PageSize;
        GVData.PageIndex = AspNetPager1.CurrentPageIndex - 1;
        ZWL.BLL.ERPUser MyModel = new ZWL.BLL.ERPUser();
        DataSet ds = MyModel.GetList("Department like '%" + this.TextBox1.Text.Trim() + "%' order by UserName asc");
        GVData.DataSource = ds;
        GVData.DataBind();
        AspNetPager1.RecordCount = ds.Tables[0].Rows.Count;
    }
    protected void GVData_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        ZWL.Common.PublicMethod.GridViewRowDataBound(e);
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            
            //绑定正常登记的次数
            Label MyLabel = (Label)e.Row.FindControl("Label1");
            int i1 = 0;
            string s1 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime1<=GuiDingTime1 and DengJiTime1 is not null");
            string s2 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime2>=GuiDingTime2 and DengJiTime2 is not null");
            string s3 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime3<=GuiDingTime3 and DengJiTime3 is not null");
            string s4 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime4>=GuiDingTime4 and DengJiTime4 is not null");
            string s5 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime5<=GuiDingTime5 and DengJiTime5 is not null");
            string s6 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime6>=GuiDingTime6 and DengJiTime6 is not null");
            if (s1.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s1.Trim());
            }
            if (s2.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s2.Trim());
            }
            if (s3.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s3.Trim());
            }
            if (s4.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s4.Trim());
            }
            if (s5.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s5.Trim());
            }
            if (s6.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s6.Trim());
            }
            MyLabel.Text = i1.ToString();
            if (MyLabel.Text == "0")
            {
                MyLabel.Text = "";
            }

            //绑定考勤工作日数量
            Label MyLabelx = (Label)e.Row.FindControl("Label44");
            MyLabelx.Text = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')");
           

            //绑定迟到登记的次数
            Label MyLabel2 = (Label)e.Row.FindControl("Label2");
            i1 = 0;
            s1 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime1>GuiDingTime1 and DengJiTime1 is not null");
            s2 = "0";
            s3 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime3>GuiDingTime3 and DengJiTime3 is not null");
            s4 = "0";
            s5 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime5>GuiDingTime5 and DengJiTime5 is not null");
            s6 = "0";
            if (s1.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s1.Trim());
            }
            if (s2.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s2.Trim());
            }
            if (s3.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s3.Trim());
            }
            if (s4.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s4.Trim());
            }
            if (s5.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s5.Trim());
            }
            if (s6.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s6.Trim());
            }
            MyLabel2.Text = i1.ToString();
            if (MyLabel2.Text == "0")
            {
                MyLabel2.Text = "";
            }

            //绑定早退登记的次数
            Label MyLabel3 = (Label)e.Row.FindControl("Label3");
            i1 = 0;
            s1 = "0";
            s2 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime2<GuiDingTime2 and DengJiTime2 is not null");
            s3 = "0";
            s4 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime4<GuiDingTime4 and DengJiTime4 is not null");
            s5 = "0";
            s6 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime6<GuiDingTime6 and DengJiTime6 is not null");
            if (s1.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s1.Trim());
            }
            if (s2.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s2.Trim());
            }
            if (s3.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s3.Trim());
            }
            if (s4.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s4.Trim());
            }
            if (s5.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s5.Trim());
            }
            if (s6.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s6.Trim());
            }
            MyLabel3.Text = i1.ToString();
            if (MyLabel3.Text == "0")
            {
                MyLabel3.Text = "";
            }
            //绑定未登记的次数
            Label MyLabel4 = (Label)e.Row.FindControl("Label4");
            i1 = 0;

            DataRow MyDataRow = ZWL.DBUtility.DbHelperSQL.GetDataRow("select * from ERPKaoQinSetting");
            if (MyDataRow == null)
            {
                s1 = "0";
                s2 = "0";
                s3 = "0";
                s4 = "0";
                s5 = "0";
                s6 = "0";
            }
            else
            {
                if (ZWL.Common.PublicMethod.StrIFIn("未设置", ZWL.Common.DataValidate.ValidateDataRow_S(MyDataRow, "GuiDingTime1")) == false)
                {
                    s1 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime1 is null");
                }
                else
                {
                    s1 = "0";
                }
                if (ZWL.Common.PublicMethod.StrIFIn("未设置", ZWL.Common.DataValidate.ValidateDataRow_S(MyDataRow, "GuiDingTime2")) == false)
                {
                    s2 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime2 is null");
                }
                else
                {
                    s2 = "0";
                }
                if (ZWL.Common.PublicMethod.StrIFIn("未设置", ZWL.Common.DataValidate.ValidateDataRow_S(MyDataRow, "GuiDingTime3")) == false)
                {
                    s3 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime3 is null");
                }
                else
                {
                    s3 = "0";
                }
                if (ZWL.Common.PublicMethod.StrIFIn("未设置", ZWL.Common.DataValidate.ValidateDataRow_S(MyDataRow, "GuiDingTime4")) == false)
                {
                    s4 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime4 is null");
                }
                else
                {
                    s4 = "0";
                }
                if (ZWL.Common.PublicMethod.StrIFIn("未设置", ZWL.Common.DataValidate.ValidateDataRow_S(MyDataRow, "GuiDingTime5")) == false)
                {
                    s5 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime5 is null");
                }
                else
                {
                    s5 = "0";
                }
                if (ZWL.Common.PublicMethod.StrIFIn("未设置", ZWL.Common.DataValidate.ValidateDataRow_S(MyDataRow, "GuiDingTime6")) == false)
                {
                    s6 = ZWL.DBUtility.DbHelperSQL.GetSHSL("select count(*) from ERPKaoQin where UserName='" + MyLabel.ToolTip.Trim() + "' and (KaoQinRiQi BETWEEN '" + this.TextBox2.Text.Trim() + " 00:00:00' and '" + this.TextBox3.Text.Trim() + " 23:59:59')  and DengJiTime6 is null");
                }
                else
                {
                    s6 = "0";
                }
            }
            if (s1.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s1.Trim());
            }
            if (s2.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s2.Trim());
            }
            if (s3.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s3.Trim());
            }
            if (s4.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s4.Trim());
            }
            if (s5.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s5.Trim());
            }
            if (s6.Trim().Length > 0)
            {
                i1 = i1 + int.Parse(s6.Trim());
            }
            MyLabel4.Text = i1.ToString();
            if (MyLabel4.Text == "0")
            {
                MyLabel4.Text = "";
            }
        }
    }
    protected void ImageButton4_Click(object sender, EventArgs e)
    {
        DataBindToGridview();
    }
    protected void ImageButton2_Click(object sender, EventArgs e)
    {
        DisableControls(GVData);
        Response.ClearContent();
        Response.Charset = "GB2312";
        Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        Response.AddHeader("content-disposition", "attachment; filename=" + DateTime.Now.ToShortDateString() + ".xls");
        Response.ContentType = "application/ms-excel";
        System.IO.StringWriter sw = new System.IO.StringWriter();
        HtmlTextWriter htw = new HtmlTextWriter(sw);
        GVData.RenderControl(htw);
        Response.Write(sw.ToString());
        Response.End();
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        // 空方法，必须有
    }
    private void DisableControls(Control gv)
    {
        LinkButton lb = new LinkButton();
        Literal l = new Literal();
        string name = String.Empty;

        for (int i = 0; i < gv.Controls.Count; i++)
        {
            if (gv.Controls[i].GetType() == typeof(LinkButton))
            {
                l.Text = (gv.Controls[i] as LinkButton).Text;
                gv.Controls.Remove(gv.Controls[i]);
                gv.Controls.AddAt(i, l);
            }
            else if (gv.Controls[i].GetType() == typeof(DropDownList))
            {
                l.Text = (gv.Controls[i] as DropDownList).SelectedItem.Text;
                gv.Controls.Remove(gv.Controls[i]);
                gv.Controls.AddAt(i, l);
            }

            if (gv.Controls[i].HasControls())
            {
                DisableControls(gv.Controls[i]);
            }
        }
    }
}
