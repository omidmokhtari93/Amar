using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Configuration;
using System.Data;
using System.Security.Permissions;

public partial class _Default : System.Web.UI.Page
{
    string yearst = "";
    string mounthst = "";
    string dayst = "";

    string yearfin = "";
    string mounthfin = "";
    string dayfini = "";

    string datestart = "";
    string datefinish = "";
    string texbox,namgol="",colorgol="",typegol="",firscom="",remain="";
   static string filter;
    int index,id=0,count=0,idgol=0,a10070=0,a2535=0,a4060=0,a5070=0,a5271=0,a6080=0,a6585=0,a7182=0,a4=0;
    System.Data.DataView dv = new DataView();
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["taghdis_amar"].ConnectionString);
    SqlConnection cdf = new SqlConnection(ConfigurationManager.ConnectionStrings["depogol"].ConnectionString);
      protected void Page_Load(object sender,EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
        if (!Page.IsPostBack)
        {
            if ((((string)Session["level"] != "depogol") || (Convert.ToInt32(Session["userid"]) != 24)) && (((string)Session["level"] != "depogol1") || (Convert.ToInt32(Session["userid"]) != 31)) && (((string)Session["level"] != "depogol2") || (Convert.ToInt32(Session["userid"]) != 33)) && (((string)Session["level"] != "Bana") || (Convert.ToInt32(Session["userid"]) != 34)))
            {
                Response.Redirect("../login.aspx");
                Session.Clear();
            }
            DateTime miladi;
            DateTime datetimeformat = DateTime.Now;
            PersianCalendar p = new PersianCalendar();
            string date_end;
            miladi = datetimeformat;
            datetimeformat = p.AddDays(miladi, -1);
            date_end = p.GetYear(datetimeformat).ToString("0000") + '/' + p.GetMonth(datetimeformat).ToString("00") + '/' + p.GetDayOfMonth(datetimeformat).ToString("00");
            yerstart.SelectedValue =date_end.Substring(0, 4);
            yerfin.SelectedValue=date_end.Substring(0, 4);
            monfin.SelectedValue = date_end.Substring(5, 2);           
            dayfin.SelectedValue = date_end.Substring(8, 2);
           
        }
    }
  
    
    protected void gridsumserch_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string fieldtext = (string)DataBinder.Eval(e.Row.DataItem, "cod_f");
        }
    }

    protected void serch_Click1(object sender, EventArgs e)
    {
        cdf.Open();
        SqlCommand dele = new SqlCommand("delete from help_rep_cus", cdf);
        dele.ExecuteScalar();
        cdf.Close();
        yearst = yerstart.SelectedValue;
        mounthst = monstart.SelectedValue;
        dayst = daystart.SelectedValue;
        datestart = yearst + "/" + mounthst + "/" + dayst;
        lstart.Text = datestart;
        lstartprint.Text = lstart.Text;
        yearfin = yerfin.SelectedValue;
        mounthfin = monfin.SelectedValue;
        dayfini = dayfin.SelectedValue;
        datefinish = yearfin + "/" + mounthfin + "/" + dayfini;
        lfinish.Text = datefinish;
        lfinishprint.Text = lfinish.Text;
        
        SqlDataSource1.DataBind();
        gridrepcust.DataBind();

        cdf.Open();
        SqlDataSource10.SelectCommand = "SELECT TOP (100) PERCENT flow_info.nam_f, flow_info.cod_f, flow_info.date_first_come, flow_info.customer_f, SUM(arrange_gol.count_in_barg) AS input, SUM(arrange_gol.remain_barg) AS remain, flow_info.id, flow_info.color_f, flow_info.type_color, flow_info.typ_f FROM flow_info INNER JOIN arrange_gol ON flow_info.id = arrange_gol.id_gol WHERE (flow_info.date_first_come BETWEEN '" + lstart.Text + "' AND '" + lfinish.Text + "') AND (flow_info.customer_f_id = " + ddlcustomer.SelectedValue + ") GROUP BY flow_info.nam_f, flow_info.cod_f, flow_info.date_first_come, flow_info.customer_f, flow_info.id, flow_info.color_f, flow_info.type_color, flow_info.typ_f ORDER BY flow_info.date_first_come,flow_info.nam_f";
        dv = (System.Data.DataView)SqlDataSource10.Select(DataSourceSelectArguments.Empty);
        count = dv.Count;
        if (dv.Count != 0)
        {
            for (int i = 0; i < count; i++)
            {
                idgol = Convert.ToInt32(dv.ToTable().Rows[i]["id"]);
                cdf.Close();
                cdf.Open();
                SqlCommand selectid = new SqlCommand("SELECT  (SELECT nam_f AS namf FROM dbo.flow_info AS flow_info_10 WHERE(date_first_come BETWEEN  '" + lstart.Text + "' AND '" + lfinish.Text + "') AND (customer_f_id = " + ddlcustomer.SelectedValue + ") AND (id = " + idgol + ")) AS 'nam_gol' , (SELECT     color_f AS color FROM dbo.flow_info WHERE (date_first_come BETWEEN '" + lstart.Text + "' AND '" + lfinish.Text + "') AND (customer_f_id = " + ddlcustomer.SelectedValue + ") AND (id = " + idgol + ")) AS 'color_gol',(SELECT     typ_f AS AStype FROM dbo.flow_info AS flow_info_12 WHERE     (date_first_come BETWEEN '" + lstart.Text + "' AND '" + lfinish.Text + "') AND (customer_f_id = " + ddlcustomer.SelectedValue + ") AND (id = " + idgol + ")) AS 'type_gol',(SELECT     date_first_come AS come FROM         dbo.flow_info AS flow_info_11  WHERE     (date_first_come BETWEEN '" + lstart.Text + "' AND '" + lfinish.Text + "') AND (customer_f_id = " + ddlcustomer.SelectedValue + ") AND (id = " + idgol + ")) AS 'first_come',(SELECT  case when  SUM(remain_barg)>0 then SUM(remain_barg) else 0 end  AS remain FROM dbo.arrange_gol WHERE     (id_gol = " + idgol + ")) AS 'remain_barg',(SELECT case when  SUM(arrange_gol_9.remain_barg)>0 then SUM(arrange_gol_9.remain_barg) else 0 end AS Expr1 FROM  dbo.flow_info AS flow_info_9 INNER JOIN dbo.arrange_gol AS arrange_gol_9 ON flow_info_9.id = arrange_gol_9.id_gol WHERE     (flow_info_9.date_first_come  BETWEEN '" + lstart.Text + "' AND '" + lfinish.Text + "') AND (flow_info_9.customer_f_id = " + ddlcustomer.SelectedValue + ") AND (arrange_gol_9.dim_arr_f = 1) AND (flow_info_9.id = " + idgol + ")) AS '100*70',(SELECT case when  SUM(arrange_gol_1.remain_barg)>0 then SUM(arrange_gol_1.remain_barg) else 0 end AS Expr1  FROM         dbo.flow_info AS flow_info_1 INNER JOIN dbo.arrange_gol AS arrange_gol_1 ON flow_info_1.id = arrange_gol_1.id_gol WHERE     (flow_info_1.date_first_come BETWEEN '" + lstart.Text + "' AND '" + lfinish.Text + "') AND (flow_info_1.customer_f_id = " + ddlcustomer.SelectedValue + ") AND (arrange_gol_1.dim_arr_f = 2) AND (flow_info_1.id = " + idgol + ")) AS '25*35', (SELECT case when  SUM(arrange_gol_2.remain_barg)>0 then SUM(arrange_gol_2.remain_barg) else 0 end  AS Expr1 FROM dbo.flow_info AS flow_info_2 INNER JOIN dbo.arrange_gol AS arrange_gol_2 ON flow_info_2.id = arrange_gol_2.id_gol WHERE     (flow_info_2.date_first_come BETWEEN '" + lstart.Text + "' AND '" + lfinish.Text + "') AND (flow_info_2.customer_f_id = " + ddlcustomer.SelectedValue + ") AND (arrange_gol_2.dim_arr_f = 3) AND (flow_info_2.id = " + idgol + ")) AS '40*60',(SELECT  case when  SUM(arrange_gol_8.remain_barg)>0 then SUM(arrange_gol_8.remain_barg) else 0 end AS Expr1 FROM dbo.flow_info AS flow_info_8 INNER JOIN dbo.arrange_gol AS arrange_gol_8 ON flow_info_8.id = arrange_gol_8.id_gol WHERE     (flow_info_8.date_first_come BETWEEN '" + lstart.Text + "' AND '" + lfinish.Text + "') AND (flow_info_8.customer_f_id = " + ddlcustomer.SelectedValue + ") AND (arrange_gol_8.dim_arr_f = 4) AND (flow_info_8.id = " + idgol + ")) AS '50*70', (SELECT  case when  SUM(arrange_gol_7.remain_barg)>0 then SUM(arrange_gol_7.remain_barg) else 0 end  AS Expr1 FROM         dbo.flow_info AS flow_info_7 INNER JOIN dbo.arrange_gol AS arrange_gol_7 ON flow_info_7.id = arrange_gol_7.id_gol WHERE     (flow_info_7.date_first_come BETWEEN '" + lstart.Text + "' AND '" + lfinish.Text + "') AND (flow_info_7.customer_f_id = " + ddlcustomer.SelectedValue + ") AND (arrange_gol_7.dim_arr_f = 5) AND (flow_info_7.id = " + idgol + ")) AS '52*71',(SELECT   case when  SUM(arrange_gol_6.remain_barg)>0 then SUM(arrange_gol_6.remain_barg) else 0 end AS Expr1  FROM         dbo.flow_info AS flow_info_6 INNER JOIN dbo.arrange_gol AS arrange_gol_6 ON flow_info_6.id = arrange_gol_6.id_gol WHERE     (flow_info_6.date_first_come BETWEEN '" + lstart.Text + "' AND '" + lfinish.Text + "') AND (flow_info_6.customer_f_id = " + ddlcustomer.SelectedValue + ") AND (arrange_gol_6.dim_arr_f = 6) AND (flow_info_6.id = " + idgol + ")) AS '60*80',(SELECT  case when  SUM(arrange_gol_5.remain_barg)>0 then SUM(arrange_gol_5.remain_barg) else 0 end AS Expr1 FROM         dbo.flow_info AS flow_info_5 INNER JOIN dbo.arrange_gol AS arrange_gol_5 ON flow_info_5.id = arrange_gol_5.id_gol WHERE     (flow_info_5.date_first_come BETWEEN '" + lstart.Text + "' AND '" + lfinish.Text + "') AND (flow_info_5.customer_f_id = " + ddlcustomer.SelectedValue + ") AND (arrange_gol_5.dim_arr_f = 7) AND (flow_info_5.id = " + idgol + ")) AS '65*85',(SELECT case when  SUM(arrange_gol_4.remain_barg)>0 then SUM(arrange_gol_4.remain_barg) else 0 end  AS Expr1  FROM         dbo.flow_info AS flow_info_4 INNER JOIN dbo.arrange_gol AS arrange_gol_4 ON flow_info_4.id = arrange_gol_4.id_gol WHERE     (flow_info_4.date_first_come BETWEEN '" + lstart.Text + "' AND '" + lfinish.Text + "') AND (flow_info_4.customer_f_id = " + ddlcustomer.SelectedValue + ") AND (arrange_gol_4.dim_arr_f = 8) AND (flow_info_4.id = " + idgol + ")) AS '71*82',(SELECT case when  SUM(arrange_gol_3.remain_barg)>0 then SUM(arrange_gol_3.remain_barg) else 0 end AS Expr1 FROM         dbo.flow_info AS flow_info_3 INNER JOIN dbo.arrange_gol AS arrange_gol_3 ON flow_info_3.id = arrange_gol_3.id_gol WHERE     (flow_info_3.date_first_come BETWEEN '" + lstart.Text + "' AND '" + lfinish.Text + "') AND (flow_info_3.customer_f_id = " + ddlcustomer.SelectedValue + ") AND (arrange_gol_3.dim_arr_f = 9) AND (flow_info_3.id = " + idgol + ")) AS 'A4' ", cdf);
                SqlDataReader dr = selectid.ExecuteReader();
                if (dr.Read())
                {
                    if (Convert.ToString(dr["nam_gol"]) != null)
                        namgol = Convert.ToString(dr["nam_gol"]);
                    if (Convert.ToString(dr["color_gol"]) != null)
                        colorgol = Convert.ToString(dr["color_gol"]);
                    if (Convert.ToString(dr["type_gol"]) != null)
                        typegol = Convert.ToString(dr["type_gol"]);
                    if (Convert.ToString(dr["first_come"]) != null)
                        firscom = Convert.ToString(dr["first_come"]);
                    if (Convert.ToString(dr["remain_barg"]) != null)
                         remain = Convert.ToString(dr["remain_barg"]);
                   
                    a10070 = Convert.ToInt32(dr["100*70"]);
                    a2535 = Convert.ToInt32(dr["25*35"]);
                    a4060 = Convert.ToInt32(dr["40*60"]);
                    a5070 = Convert.ToInt32(dr["50*70"]);
                    a5271 = Convert.ToInt32(dr["52*71"]);
                    a6080 = Convert.ToInt32(dr["60*80"]);
                    a6585 = Convert.ToInt32(dr["65*85"]);
                    a7182 = Convert.ToInt32(dr["71*82"]);
                    a4 = Convert.ToInt32(dr["A4"]);
                                      
                }
                cdf.Close();
                cdf.Open();
                SqlCommand insertt = new SqlCommand("insert into help_rep_cus(idgol,namgol,colorgol,typegol,firstcom,remain,a10070,a2535,a4060,a5070,a5271,a6080,a6585,a7182,a4) values(" + idgol + ",N'" + namgol + "',N'" + colorgol + "',N'" + typegol + "',N'" + firscom + "'," + remain + "," + a10070 + "," + a2535 + "," + a4060 + "," + a5070 + "," + a5271 + "," + a6080 + "," + a6585 + "," + a7182 + "," + a4 + ")", cdf);
                insertt.ExecuteScalar();
                cdf.Close();
            }
        }
        SqlDataSource1.DataBind();
        gridrepcust.DataBind();
        gridrepcust.Visible = true;
        lcustomer.Text =Convert.ToString(ddlcustomer.SelectedItem);
        
    }
    protected void gridsumserch_RowCommand1(object sender, GridViewCommandEventArgs e)
    {/*
        if (e.CommandName == "select")
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            id = (int)this.gridsumserch.DataKeys[rowIndex]["id"];
            lidgol.Text =Convert.ToString(id);
        }
        if (id != 0)
        {
            cdf.Open();
            SqlCommand selecti= new SqlCommand("select * from flow_info where id=" + id + " ", cdf);
            SqlDataReader dr = selecti.ExecuteReader();
            if (dr.Read())
            {
               lname.Text=Convert.ToString(dr["nam_f"]);
               lcolor.Text = Convert.ToString(dr["color_f"]);
               ltarikh.Text = Convert.ToString(dr["date_first_come"]);
            }
        }
        SqlDataSource8.DataBind();
        griddimen.DataBind();
        griddimen.Visible = true;
        gridsumserch.Visible = false;
        back.Visible = true;
        serch.Visible = false;
        Panel1.Visible = true;
       */ 
    }
    protected void back_Click(object sender, EventArgs e)
    {
       /* griddimen.Visible = false;
        gridsumserch.Visible = true;
        back.Visible = false;
        serch.Visible = true;
        Panel1.Visible = false;*/
    }

    protected void btnprint_Click(object sender, EventArgs e)
    {
        
        Session["ctrl"] = Panel1;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
    }

   
}