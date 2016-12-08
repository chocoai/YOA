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
using System.Data.OleDb;

public partial class Appendix_YouZhengCode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //绑定省份和地区
            OleDbConnection Conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + HttpContext.Current.Server.MapPath("中国邮编区号.mdb"));
            Conn.Open();

            OleDbCommand MyCommand = new OleDbCommand("select distinct 省洲名称 from 中国邮编区号", Conn);
            OleDbDataReader MyReader = MyCommand.ExecuteReader();
            while (MyReader.Read())
            {
                this.DropDownList1.Items.Add(MyReader["省洲名称"].ToString());
            }
            MyReader.Close();

            OleDbCommand MyCommand1 = new OleDbCommand("select distinct 地区 from 中国邮编区号 where 省洲名称='" + this.DropDownList1.SelectedItem.Text + "' order by 地区", Conn);
            OleDbDataReader MyReader1 = MyCommand1.ExecuteReader();
            while (MyReader1.Read())
            {
                this.DropDownList2.Items.Add(MyReader1["地区"].ToString());
            }
            MyReader1.Close();

            Conn.Close();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.DropDownList2.Items.Clear();
        //绑定省份和地区
        OleDbConnection Conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + HttpContext.Current.Server.MapPath("中国邮编区号.mdb"));
        Conn.Open();

        OleDbCommand MyCommand1 = new OleDbCommand("select distinct 地区 from 中国邮编区号 where 省洲名称='" + this.DropDownList1.SelectedItem.Text + "' order by 地区", Conn);
        OleDbDataReader MyReader1 = MyCommand1.ExecuteReader();
        while (MyReader1.Read())
        {
            this.DropDownList2.Items.Add(MyReader1["地区"].ToString());
        }
        MyReader1.Close();

        Conn.Close();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        OleDbConnection Conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + HttpContext.Current.Server.MapPath("中国邮编区号.mdb"));
        Conn.Open();

        OleDbCommand MyCommand1 = new OleDbCommand("select 邮编 from 中国邮编区号 where 省洲名称='" + this.DropDownList1.SelectedItem.Text + "' and 地区='" + this.DropDownList2.SelectedItem.Text + "'", Conn);
        OleDbDataReader MyReader1 = MyCommand1.ExecuteReader();
        if (MyReader1.Read())
        {
            this.Label1.Text = "你所查询的地点的邮政编码为：" + MyReader1["邮编"].ToString();
        }
        MyReader1.Close();

        Conn.Close();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        OleDbConnection Conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + HttpContext.Current.Server.MapPath("中国邮编区号.mdb"));
        Conn.Open();

        this.Label1.Text = "你所查询的邮政编码对应的地点为：<br>";
        OleDbCommand MyCommand1 = new OleDbCommand("select 省洲名称,地区 from 中国邮编区号 where 邮编='" + this.TextBox2.Text + "'", Conn);
        OleDbDataReader MyReader1 = MyCommand1.ExecuteReader();
        string SerchInfo = "";
        while (MyReader1.Read())
        {
            if (SerchInfo == "")
            {
                SerchInfo = MyReader1["省洲名称"].ToString() + "&nbsp;&nbsp;" + MyReader1["地区"].ToString();
            }
            else
            {
                SerchInfo = SerchInfo + "<BR>" + MyReader1["省洲名称"].ToString() + "&nbsp;&nbsp;" + MyReader1["地区"].ToString();
            }
        }
        this.Label1.Text = this.Label1.Text + SerchInfo;
        if (this.Label1.Text == "你所查询的邮政编码对应的地点为：<br>")
        {
            this.Label1.Text = "该邮政编码没有查询到对应的地区信息";
        }
        MyReader1.Close();

        Conn.Close();
    }
}