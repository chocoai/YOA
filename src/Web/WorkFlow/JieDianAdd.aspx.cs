﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class WorkFlow_JieDianAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();    
            //绑定dd7 ，条件字段
            ZWL.Common.PublicMethod.BindDDL(this.DropDownList7, ZWL.DBUtility.DbHelperSQL.GetSHSL("select top 1 TiaoJianList from ERPForm where FormName='" + ZWL.DBUtility.DbHelperSQL.GetSHSL("select top 1 FormName from ERPWorkFlow where ID="+Request.QueryString["WorkFlowID"].ToString()) + "'"));

            //设置条件Session
            ZWL.Common.PublicMethod.SetSessionValue("TiaoJiaoList", "");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //判断开始、结束两个节点的唯一性，中间节点必须指定下一节点
        if (this.DropDownList4.SelectedItem.Text == "开始")
        {
            string ExsistID = ZWL.DBUtility.DbHelperSQL.GetSHSL("select ID from ERPWorkFlowJieDian where WorkFlowID=" + Request.QueryString["WorkFlowID"].ToString() + " and JieDianAddr='开始'");
            if (ExsistID.Trim().Length > 0)
            {
                ZWL.Common.MessageBox.Show(this, "该流程已经存在“开始”节点，请不要重复添加！");
                return;
            }
        }
        if (this.DropDownList4.SelectedItem.Text == "结束")
        {
            string ExsistID = ZWL.DBUtility.DbHelperSQL.GetSHSL("select ID from ERPWorkFlowJieDian where WorkFlowID=" + Request.QueryString["WorkFlowID"].ToString() + " and JieDianAddr='结束'");
            if (ExsistID.Trim().Length > 0)
            {
                ZWL.Common.MessageBox.Show(this, "该流程已经存在“结束”节点，请不要重复添加！");
                return;
            }
        }

        if (this.DropDownList4.SelectedItem.Text == "中间段"||this.DropDownList4.SelectedItem.Text == "开始")
        {
            string ExsistID = this.TextBox3.Text.Trim();
            if (ExsistID.Trim().Length <= 0)
            {
                ZWL.Common.MessageBox.Show(this, "中间段和开始节点必须指定下一节点序号！");
                return;
            }
        }
        //判断节点序号的唯一性
        string NodeSerils = ZWL.DBUtility.DbHelperSQL.GetSHSL("select ID from ERPWorkFlowJieDian where WorkFlowID=" + Request.QueryString["WorkFlowID"].ToString() + " and JieDianSerils='" + this.TextBox1.Text + "'");
        if (NodeSerils.Trim().Length > 0)
        {
            ZWL.Common.MessageBox.Show(this, "该节点序号已经存在，请不要重复添加！");
            return;
        }


        ZWL.BLL.ERPWorkFlowJieDian Model = new ZWL.BLL.ERPWorkFlowJieDian();        
        Model.IFDelFile = this.DropDownList3.SelectedItem.Text;
        Model.IFEditFile = this.DropDownList2.SelectedItem.Text;
        Model.JieDianAddr = this.DropDownList4.SelectedItem.Text;
        Model.JieDianName = this.TextBox2.Text;
        Model.JieDianSerils =this.TextBox1.Text;
        Model.JieShuHours = int.Parse(this.TextBox5.Text.Trim());
        Model.JingBanRenYuanList = this.TextBox6.Text.Trim();
        Model.NextJieDianSerils = this.TextBox3.Text.Trim();
        Model.PingShenMoShi = this.DropDownList1.SelectedItem.Text;
        Model.ShengPiUserSetting = this.DropDownList5.SelectedItem.Text;
        Model.TiaoJianTiaoZhuan = ZWL.Common.PublicMethod.GetSessionValue("TiaoJiaoList");
        Model.WorkFlowID = int.Parse(Request.QueryString["WorkFlowID"].ToString()); 
        Model.Add();

        //写系统日志
        ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
        MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户添加工作流程节点信息(" + this.TextBox2.Text + ")";
        MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
        MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "工作流程节点添加成功！", "WorkFlowDesign.aspx?ID="+Request.QueryString["WorkFlowID"].ToString());
    }   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            ZWL.Common.PublicMethod.SetSessionValue("TiaoJiaoList", ZWL.Common.PublicMethod.GetSessionValue("TiaoJiaoList").Replace(this.DropDownList6.SelectedItem.Text, "").Replace("||", "|"));
            ZWL.Common.PublicMethod.BindDDL(this.DropDownList6, ZWL.Common.PublicMethod.GetSessionValue("TiaoJiaoList"));
        }
        catch
        { }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        //请假天数[数字型] '>' 10→3|请假天数[数字型] '<=' 10→2 | 请假部门[常规型]'=='开发部→5
        if (this.TextBox4.Text.Trim().Length > 0 && this.TextBox7.Text.Trim().Length > 0&&this.DropDownList7.SelectedValue.Trim().Length>0)
        {
            if (ZWL.Common.PublicMethod.GetSessionValue("TiaoJiaoList").Trim() == "")
            {
                ZWL.Common.PublicMethod.SetSessionValue("TiaoJiaoList", this.DropDownList7.SelectedItem.Text + "'" + this.DropDownList8.SelectedItem.Text + "'" + this.TextBox4.Text + "→" + this.TextBox7.Text);
            }
            else
            {
                ZWL.Common.PublicMethod.SetSessionValue("TiaoJiaoList", ZWL.Common.PublicMethod.GetSessionValue("TiaoJiaoList") + "|" + this.DropDownList7.SelectedItem.Text + "'" + this.DropDownList8.SelectedItem.Text + "'" + this.TextBox4.Text + "→" + this.TextBox7.Text);
            }
            ZWL.Common.PublicMethod.BindDDL(this.DropDownList6, ZWL.Common.PublicMethod.GetSessionValue("TiaoJiaoList"));
            this.TextBox4.Text = "";
            this.TextBox7.Text = "";
        }
        else
        {
            ZWL.Common.MessageBox.Show(this, "条件字段、条件比较的值与跳转的节点都不可为空！");
        }
    }
}