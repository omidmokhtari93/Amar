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
            datetimeformat = p.AddDays(miladi,0);
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
        SqlCommand del1 = new SqlCommand("delete from help_rep_cus", cdf);
        del1.ExecuteScalar();
        SqlCommand del2 = new SqlCommand("delete from help_repcus_tarikh", cdf);
        del2.ExecuteScalar();
        SqlCommand del3 = new SqlCommand("delete from help_repcus2", cdf);
        del3.ExecuteScalar();
        SqlCommand del4 = new SqlCommand("delete from help_repcus_now", cdf);
        del4.ExecuteScalar();
        SqlCommand del5 = new SqlCommand("delete from help_3", cdf);
        del5.ExecuteScalar();
        cdf.Close();
        yearst = yerstart.SelectedValue;
        mounthst = monstart.SelectedValue;
        dayst = daystart.SelectedValue;
        datestart = yearst + "/" + mounthst + "/" + dayst;
        lstart.Text = datestart;
        lstartprint.Text = lstart.Text;
        lfinishprintstart.Text = lstart.Text;
        yearfin = yerfin.SelectedValue;
        mounthfin = monfin.SelectedValue;
        dayfini = dayfin.SelectedValue;
        datefinish = yearfin + "/" + mounthfin + "/" + dayfini;
        lfinish.Text = datefinish;
        lfinishprint.Text = lfinish.Text;        
        cdf.Open();
        SqlDataSource10.SelectCommand = "SELECT TOP (100) PERCENT flow_info.nam_f, flow_info.cod_f, flow_info.date_first_come, flow_info.customer_f, SUM(arrange_gol.remain_barg) AS input, SUM(arrange_gol.remain_barg) AS remain, flow_info.id, flow_info.color_f, flow_info.type_color, flow_info.typ_f FROM flow_info INNER JOIN arrange_gol ON flow_info.id = arrange_gol.id_gol WHERE (flow_info.date_first_come BETWEEN '1375/01/01' AND '" + lstart.Text + "') AND (flow_info.customer_f_id = " + ddlcustomer.SelectedValue + ") GROUP BY flow_info.nam_f, flow_info.cod_f, flow_info.date_first_come, flow_info.customer_f, flow_info.id, flow_info.color_f, flow_info.type_color, flow_info.typ_f ORDER BY flow_info.date_first_come,flow_info.nam_f";
        dv = (System.Data.DataView)SqlDataSource10.Select(DataSourceSelectArguments.Empty);
        count = dv.Count;
        if (dv.Count != 0)
        {
            for (int i = 0; i < count; i++)
            {
                idgol = Convert.ToInt32(dv.ToTable().Rows[i]["id"]);
                cdf.Close();
                cdf.Open();
                SqlCommand selectid = new SqlCommand("INSERT INTO help_rep_cus(idgol,namgol,colorgol,typegol,firstcom,remain,a10070,a2535,a4060,a5070,a5271,a6080,a6585,a7182,a4) "+         
                    " SELECT  ("+idgol+") AS 'idgol', "+               
                    " (SELECT nam_f AS namf FROM dbo.flow_info AS flow_info_10 "+
                   " WHERE  (customer_f_id = " + ddlcustomer.SelectedValue + ") AND (id = " + idgol + ")) AS 'nam_gol' "+
                   " , (SELECT     color_f AS color FROM dbo.flow_info WHERE (customer_f_id = " + ddlcustomer.SelectedValue + ") AND (id = " + idgol + ")) AS 'color_gol', "+
                   " (SELECT     typ_f AS AStype FROM dbo.flow_info AS flow_info_12 WHERE (customer_f_id = " + ddlcustomer.SelectedValue + ") AND (id = " + idgol + ")) AS 'type_gol' "+
                   " ,(SELECT     date_first_come AS come FROM         dbo.flow_info AS flow_info_11  WHERE (customer_f_id = " + ddlcustomer.SelectedValue + ") "+
                   " AND (id = " + idgol + ")) AS 'first_come',(SELECT  case when  SUM(remain_barg)>0 then SUM(remain_barg) else 0 " +
                   " end  AS remain FROM dbo.arrange_gol WHERE     (id_gol = " + idgol + ")) AS 'remain_barg', "+
                   " (SELECT case when  SUM(arrange_gol_9.remain_barg)>0 then SUM(arrange_gol_9.remain_barg) else 0 end AS Expr1 " +
                   " FROM  dbo.flow_info AS flow_info_9 INNER JOIN dbo.arrange_gol AS arrange_gol_9 ON flow_info_9.id = arrange_gol_9.id_gol "+
                   " WHERE   (flow_info_9.customer_f_id = " + ddlcustomer.SelectedValue + ") AND (arrange_gol_9.dim_arr_f = 1) "+
                   " AND (flow_info_9.id = " + idgol + ")) AS '100*70',(SELECT case when  SUM(arrange_gol_1.remain_barg)>0 then " +
                   " SUM(arrange_gol_1.remain_barg) else 0 end AS Expr1  FROM  dbo.flow_info AS flow_info_1 INNER JOIN dbo.arrange_gol " +
                   " AS arrange_gol_1 ON flow_info_1.id = arrange_gol_1.id_gol WHERE  (flow_info_1.customer_f_id = " + ddlcustomer.SelectedValue + ") AND (arrange_gol_1.dim_arr_f = 2) "+
                   " AND (flow_info_1.id = " + idgol + ")) AS '25*35', (SELECT case when  SUM(arrange_gol_2.remain_barg)>0 " +
                   " then SUM(arrange_gol_2.remain_barg) else 0 end  AS Expr1 FROM dbo.flow_info AS flow_info_2 INNER JOIN dbo.arrange_gol " +
                   " AS arrange_gol_2 ON flow_info_2.id = arrange_gol_2.id_gol WHERE (flow_info_2.customer_f_id = " + ddlcustomer.SelectedValue + ") AND "+
                   " (arrange_gol_2.dim_arr_f = 3) AND (flow_info_2.id = " + idgol + ")) AS '40*60',(SELECT  case when "+
                   " SUM(arrange_gol_8.remain_barg)>0 then SUM(arrange_gol_8.remain_barg) else 0 end AS Expr1 FROM dbo.flow_info " +
                   " AS flow_info_8 INNER JOIN dbo.arrange_gol AS arrange_gol_8 ON flow_info_8.id = arrange_gol_8.id_gol WHERE (flow_info_8.customer_f_id = " + ddlcustomer.SelectedValue + ") AND (arrange_gol_8.dim_arr_f = 4)  "+
                   " AND (flow_info_8.id = " + idgol + ")) AS '50*70', (SELECT  case when  SUM(arrange_gol_7.remain_barg)>0 then " +
                   " SUM(arrange_gol_7.remain_barg) else 0 end  AS Expr1 FROM dbo.flow_info AS flow_info_7 INNER JOIN dbo.arrange_gol " +
                   " AS arrange_gol_7 ON flow_info_7.id = arrange_gol_7.id_gol WHERE  (flow_info_7.customer_f_id = " + ddlcustomer.SelectedValue + ") AND "+
                   " (arrange_gol_7.dim_arr_f = 5) AND (flow_info_7.id = " + idgol + ")) AS '52*71', "+
                   " (SELECT   case when  SUM(arrange_gol_6.remain_barg)>0 then SUM(arrange_gol_6.remain_barg) else 0 end AS Expr1  " +
                   " FROM dbo.flow_info AS flow_info_6 INNER JOIN dbo.arrange_gol AS arrange_gol_6 ON flow_info_6.id = arrange_gol_6.id_gol WHERE "+
                   " (flow_info_6.customer_f_id = " + ddlcustomer.SelectedValue + ") AND (arrange_gol_6.dim_arr_f = 6) AND "+
                   " (flow_info_6.id = " + idgol + ")) AS '60*80',(SELECT  case when  SUM(arrange_gol_5.remain_barg)>0 then " +
                   " SUM(arrange_gol_5.remain_barg) else 0 end AS Expr1 FROM dbo.flow_info AS flow_info_5 INNER JOIN dbo.arrange_gol AS " +
                   " arrange_gol_5 ON flow_info_5.id = arrange_gol_5.id_gol WHERE (flow_info_5.customer_f_id = " + ddlcustomer.SelectedValue + ") AND (arrange_gol_5.dim_arr_f = 7) AND "+
                   " (flow_info_5.id = " + idgol + ")) AS '65*85',(SELECT case when  SUM(arrange_gol_4.remain_barg)>0 then " +
                   " SUM(arrange_gol_4.remain_barg) else 0 end  AS Expr1  FROM  dbo.flow_info AS flow_info_4 INNER JOIN dbo.arrange_gol AS " +
                   " arrange_gol_4 ON flow_info_4.id = arrange_gol_4.id_gol WHERE (flow_info_4.customer_f_id = " + ddlcustomer.SelectedValue + ") AND (arrange_gol_4.dim_arr_f = 8) AND "+
                   " (flow_info_4.id = " + idgol + ")) AS '71*82',(SELECT case when  SUM(arrange_gol_3.remain_barg)>0 then " +
                   " SUM(arrange_gol_3.remain_barg) else 0 end AS Expr1 FROM dbo.flow_info AS flow_info_3 INNER JOIN dbo.arrange_gol AS arrange_gol_3 " +
                   " ON flow_info_3.id = arrange_gol_3.id_gol WHERE (flow_info_3.customer_f_id = " + ddlcustomer.SelectedValue + ") AND (arrange_gol_3.dim_arr_f = 9) AND "+
                   " (flow_info_3.id = " + idgol + ")) AS 'A4' ", cdf);
                selectid.ExecuteScalar();
             }
        }
        cdf.Close();
        cdf.Open();
        SqlCommand inser = new SqlCommand("INSERT INTO help_repcus_tarikh ([a10070],[a2535],[a4060],[a5070],[a5271],[a6080],[a6585],[a7182],[a4]) "+
            " SELECT CASE WHEN SUM(a10070) IS NULL THEN 0 ELSE SUM(a10070) END ,CASE WHEN SUM(a2535) IS NULL THEN 0 ELSE SUM(a2535) END "+
        " ,CASE WHEN SUM(a4060) IS NULL THEN 0 ELSE SUM(a4060) END ,CASE WHEN SUM(a5070) IS NULL THEN 0 ELSE SUM(a5070) END  "+
        " ,CASE WHEN SUM(a5271) IS NULL THEN 0 ELSE SUM(a5271) END ,CASE WHEN SUM(a6080) IS NULL THEN 0 ELSE SUM(a6080) END  "+
        " ,CASE WHEN SUM(a6585) IS NULL THEN 0 ELSE SUM(a6585) END ,CASE WHEN SUM(a7182) IS NULL THEN 0 ELSE SUM(a7182) END  "+
        " ,CASE WHEN SUM(a4) IS NULL THEN 0 ELSE SUM(a4) END  FROM help_rep_cus  ", cdf);
         inser.ExecuteScalar();
        SqlCommand inserttt = new SqlCommand("INSERT INTO [depogol].[dbo].[help_repcus2] " +
" ([a10070] ,[a2535] ,[a4060] ,[a5070] ,[a5271] ,[a6080] ,[a6585] ,[a7182] ,[a4]) " +
" SELECT     (SELECT     CASE WHEN subsum >= 0 THEN (amount - subsum) ELSE amount + (- subsum) END AS total FROM (SELECT     (SELECT     a10070 "+
" FROM dbo.help_repcus_tarikh) AS amount,(SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ "+
"  FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN  dbo.arrange_gol AS arrange_gol_8 ON "+
" sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN  dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id "+
" WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 1) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total) AS a10070, "+
"  (SELECT     CASE WHEN subsum >= 0 THEN (amount - subsum) ELSE amount + (- subsum) END AS total  FROM         (SELECT     (SELECT     a2535 "+
"  FROM         dbo.help_repcus_tarikh AS help_repcus_tarikh_8) AS amount,(SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE "+
" SUM(sub_arrange_8.remain) END AS summ  FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN "+
" dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN "+
" dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 2) "+
" AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total_8) AS a2535,(SELECT     CASE WHEN subsum >= 0 THEN (amount - subsum) ELSE amount + (- subsum) END AS total "+
" FROM         (SELECT     (SELECT     a4060  FROM         dbo.help_repcus_tarikh AS help_repcus_tarikh_8) AS amount, "+
" (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN "+
" dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN "+
" dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id "+
" WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 3) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total_8_1) "+
" AS a4060, (SELECT     CASE WHEN subsum >= 0 THEN (amount - subsum) ELSE amount + (- subsum) END AS total   FROM         (SELECT     (SELECT     a5070 "+
" FROM         dbo.help_repcus_tarikh AS help_repcus_tarikh_8) AS amount, "+
" (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ "+
" FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN "+
"  dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id "+
" WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 4) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total_8_1_6)  "+
" AS a5070, (SELECT     CASE WHEN subsum >= 0 THEN (amount - subsum) ELSE amount + (- subsum) END AS total  FROM         (SELECT     (SELECT     a5271 "+
" FROM         dbo.help_repcus_tarikh AS help_repcus_tarikh_8) AS amount,(SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ "+
" FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN "+
" dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id "+
" WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 5) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total_8_1_5)  "+
" AS a5271, (SELECT     CASE WHEN subsum >= 0 THEN (amount - subsum) ELSE amount + (- subsum) END AS total  FROM         (SELECT     (SELECT     a6080 "+
" FROM         dbo.help_repcus_tarikh AS help_repcus_tarikh_8) AS amount, "+
" (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN "+
" dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id "+
" WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 6) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total_8_1_4) "+
" AS a6080,(SELECT     CASE WHEN subsum >= 0 THEN (amount - subsum) ELSE amount + (- subsum) END AS total FROM         (SELECT     (SELECT     a6585 "+
" FROM         dbo.help_repcus_tarikh AS help_repcus_tarikh_8) AS amount, "+
" (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ  FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN "+
" dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN  dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id "+
" WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 7) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total_8_1_3) "+
" AS a6585,(SELECT     CASE WHEN subsum >= 0 THEN (amount - subsum) ELSE amount + (- subsum) END AS total  FROM         (SELECT     (SELECT     a7182 "+
" FROM         dbo.help_repcus_tarikh AS help_repcus_tarikh_8) AS amount,(SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ "+
" FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN "+
" dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id "+
" WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 8) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total_8_1_2) "+
" AS a7182,(SELECT     CASE WHEN subsum >= 0 THEN (amount - subsum) ELSE amount + (- subsum) END AS total  FROM         (SELECT     (SELECT     a4 "+
" FROM         dbo.help_repcus_tarikh AS help_repcus_tarikh_8) AS amount,(SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ "+
" FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN  dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN "+
" dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 9) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total_8_1_1) AS a4", cdf);
        inserttt.ExecuteScalar();
    SqlCommand insertha = new SqlCommand("INSERT INTO [depogol].[dbo].[help_repcus_now] " +
        " ([a10070] ,[a2535] ,[a4060] ,[a5070] ,[a5271] ,[a6080] ,[a6585] ,[a7182] ,[a4]) " +
        " SELECT     (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ " +
        " FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN " +
        " dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id " +
        " WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 1) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS a10070, " +
        " (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ " +
        " FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN " +
        " dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id " +
        " WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 2) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS a2535, " +
        " (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ " +
        " FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN " +
        " dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id " +
        " WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 3) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS a4060, " +
        " (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ " +
        " FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN " +
        " dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN " +
        " dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id " +
        " WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 4) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS a5070, " +
        " (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ " +
        "  FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN " +
        " dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN " +
        " dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id " +
        " WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 5) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS a5271, " +
        " (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ " +
        " FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN " +
        " dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN " +
        " dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id " +
        " WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 6) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS a6080, " +
        " (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ " +
        " FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN " +
        " dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN " +
        " dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id " +
        " WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 7) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS a6585, " +
        " (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ  FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN " +
        " dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN  dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id " +
        " WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 8) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS a7182, " +
        " (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ  FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN " +
        " dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id " +
        " WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 9) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS a4", cdf);
        insertha.ExecuteScalar();
        SqlCommand inserthaa = new SqlCommand("INSERT INTO help_3 SELECT * FROM help_repcus_tarikh", cdf);
        inserthaa.ExecuteScalar();
        SqlCommand updaaat = new SqlCommand("UPDATE [depogol].[dbo].[help_repcus_now] SET [a10070] = case when a10070 < 0 then 0 else a10070 end " +
       " ,[a2535] =  case when a2535 < 0 then 0 else a2535 end ,[a4060] =  case when a4060 < 0 then 0 else a4060 end ,[a5070] =  case when a5070 < 0 then 0 else a5070 end " +
       " ,[a5271] =  case when a5271 < 0 then 0 else a5271 end ,[a6080] =  case when a6080 < 0 then 0 else a6080 end ,[a6585] =  case when a6585 < 0 then 0 else a6585 end " +
       " ,[a7182] =  case when a7182 < 0 then 0 else a7182 end ,[a4] =  case when a4 < 0 then 0 else a4 end ", cdf);
        updaaat.ExecuteScalar();
/*

 SqlCommand updat = new SqlCommand("UPDATE hrt SET hrt.a10070 = case when hr2.a10070 < 0 then hrt.a10070 + hr2.a10070 else hrt.a10070 end " +
        "   ,hrt.a2535 = case when hr2.a2535 < 0 then hrt.a2535 + hr2.a2535 else hrt.a2535 + hr2.a2535 end " +
        "   ,hrt.a4060 = case when hr2.a4060 < 0 then hrt.a4060 + hr2.a4060 else hrt.a4060 + hr2.a4060 end " +
        "   ,hrt.a5070 = case when hr2.a5070 < 0 then hrt.a5070 + hr2.a5070 else hrt.a5070 + hr2.a5070 end " +
        "   ,hrt.a5271 = case when hr2.a5271 < 0 then hrt.a5271 + hr2.a5271 else hrt.a5271 + hr2.a5271 end " +
        "   ,hrt.a6080 = case when hr2.a6080 < 0 then hrt.a6080 + hr2.a6080 else hrt.a6080 + hr2.a6080 end " +
        "   ,hrt.a6585 = case when hr2.a6585 < 0 then hrt.a6585 + hr2.a6585 else hrt.a6585 + hr2.a6585 end " +
        "   ,hrt.a7182 = case when hr2.a7182 < 0 then hrt.a7182 + hr2.a7182 else hrt.a7182 + hr2.a7182 end " +
        "   ,hrt.a4 = case when hr2.a4 < 0 then hrt.a4 + hr2.a4 else hrt.a4 + hr2.a4 end " +
       "  from  help_repcus_tarikh hrt , help_repcus2 hr2 ", cdf);
 updat.ExecuteScalar();
 SqlCommand updata = new SqlCommand("UPDATE help_repcus2 SET  a10070 = case when a10070 < 0 then 0 else a10070 end " +
        "  ,a2535 = case when a2535 < 0 then 0 else a2535  end ,a4060 = case when a4060 < 0 then 0 else a4060 end " +
        "  ,a5070 = case when a5070 < 0 then 0 else a5070 end ,a5271 = case when a5271 < 0 then 0 else a5271 end " +
        "  ,a6080 = case when a6080 < 0 then 0 else a6080  end ,a6585 = case when a6585 < 0 then 0 else a6585 end " +
        "  ,a7182 = case when a7182 < 0 then 0 else a7182 end ,a4 = case when a4 < 0 then 0 else a4 end " +
       "  from  help_repcus2 ", cdf);
updata.ExecuteScalar();
        */

      /*   SqlCommand inserttt = new SqlCommand("INSERT INTO [depogol].[dbo].[help_repcus2] "+
            " ([a10070] ,[a2535] ,[a4060] ,[a5070] ,[a5271] ,[a6080] ,[a6585] ,[a7182] ,[a4]) "+
            " SELECT     (SELECT      CASE WHEN subsum >= 0 THEN (amount + subsum) ELSE CASE WHEN (- subsum) > amount THEN amount ELSE amount - (- 1 * subsum) END END AS total "+
 " FROM         (SELECT     (SELECT     a10070 " +
 " FROM  dbo.help_repcus_tarikh) AS amount,(SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ  " +
"  FROM   dbo.sub_arrange AS sub_arrange_8 INNER JOIN dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN " +
"   dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id " +
" WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 1) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total) " +
" AS a10070, (SELECT       CASE WHEN subsum >= 0 THEN (amount + subsum) ELSE CASE WHEN (- subsum) > amount THEN amount ELSE amount - (- 1 * subsum) END END AS total "+
 " FROM (SELECT     (SELECT     a2535  FROM         dbo.help_repcus_tarikh AS help_repcus_tarikh_8) AS amount, " +
"  (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ  FROM dbo.sub_arrange AS sub_arrange_8 INNER JOIN  " +
"  dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN " +
" dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id " +
" WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 2) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total_8) " +
"  AS a2535, (SELECT      CASE WHEN subsum >= 0 THEN (amount + subsum) ELSE CASE WHEN (- subsum) > amount THEN amount ELSE amount - (- 1 * subsum) END END AS total  "+
" FROM         (SELECT     (SELECT     a4060 " +
" FROM  dbo.help_repcus_tarikh AS help_repcus_tarikh_7) AS amount, (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ " +
" FROM  dbo.sub_arrange AS sub_arrange_8 INNER JOIN  dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN " +
" dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id  WHERE (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 3) " +
" AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total_7) AS a4060, (SELECT     CASE WHEN subsum >= 0 THEN (amount + subsum) ELSE CASE WHEN (- subsum) > amount THEN amount ELSE amount - (- 1 * subsum) END END AS total "+
" FROM         (SELECT     (SELECT     a5070  FROM         dbo.help_repcus_tarikh AS help_repcus_tarikh_6) AS amount,  " +
" (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ " +
" FROM dbo.sub_arrange AS sub_arrange_8 INNER JOIN   dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN " +
"  dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id " +
" WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 4) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total_6)  " +
" AS a5070, (SELECT     CASE WHEN subsum >= 0 THEN (amount + subsum) ELSE CASE WHEN (- subsum) > amount THEN amount ELSE amount - (- 1 * subsum) END END AS total "+
"  FROM         (SELECT     (SELECT     a5271 " +
" FROM dbo.help_repcus_tarikh AS help_repcus_tarikh_5) AS amount, (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ " +
" FROM dbo.sub_arrange AS sub_arrange_8 INNER JOIN   dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN " +
" dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id WHERE (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 5) AND " +
" (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total_5) AS a5271, (SELECT      CASE WHEN subsum >= 0 THEN (amount + subsum) ELSE CASE WHEN (- subsum) > amount THEN amount ELSE amount - (- 1 * subsum) END END AS total "+
" FROM         (SELECT     (SELECT     a6080  FROM         dbo.help_repcus_tarikh AS help_repcus_tarikh_4) AS amount, " +
" (SELECT     CASE WHEN SUM(sub_arrange_8.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_8.remain) END AS summ " +
" FROM         dbo.sub_arrange AS sub_arrange_8 INNER JOIN  dbo.arrange_gol AS arrange_gol_8 ON sub_arrange_8.arrange_cod_f = arrange_gol_8.id INNER JOIN " +
" dbo.flow_info AS flow_info_8 ON arrange_gol_8.id_gol = flow_info_8.id " +
" WHERE     (sub_arrange_8.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_8.dim_arr_f = 6) AND (flow_info_8.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total_4) " +
" AS a6080, (SELECT     CASE WHEN subsum >= 0 THEN (amount + subsum) ELSE CASE WHEN (- subsum) > amount THEN amount ELSE amount - (- 1 * subsum) END END AS total "+
" FROM         (SELECT     (SELECT     a6585  FROM         dbo.help_repcus_tarikh AS help_repcus_tarikh_3) AS amount, " +
" (SELECT     CASE WHEN SUM(sub_arrange_3.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_3.remain) END AS summ " +
" FROM         dbo.sub_arrange AS sub_arrange_3 INNER JOIN dbo.arrange_gol AS arrange_gol_3 ON sub_arrange_3.arrange_cod_f = arrange_gol_3.id INNER JOIN " +
" dbo.flow_info AS flow_info_3 ON arrange_gol_3.id_gol = flow_info_3.id " +
" WHERE     (sub_arrange_3.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_3.dim_arr_f = 7) AND (flow_info_3.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total_3)  " +
" AS a6585, (SELECT      CASE WHEN subsum >= 0 THEN (amount + subsum) ELSE CASE WHEN (- subsum) > amount THEN amount ELSE amount - (- 1 * subsum) END END AS total "+
" FROM         (SELECT     (SELECT     a7182  FROM         dbo.help_repcus_tarikh AS help_repcus_tarikh_2) AS amount, " +
" (SELECT     CASE WHEN SUM(sub_arrange_2.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_2.remain) END AS summ " +
" FROM         dbo.sub_arrange AS sub_arrange_2 INNER JOIN dbo.arrange_gol AS arrange_gol_2 ON sub_arrange_2.arrange_cod_f = arrange_gol_2.id INNER JOIN " +
" dbo.flow_info AS flow_info_2 ON arrange_gol_2.id_gol = flow_info_2.id " +
" WHERE     (sub_arrange_2.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_2.dim_arr_f = 8) AND (flow_info_2.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total_2)  " +
" AS a7182,(SELECT     CASE WHEN subsum >= 0 THEN (amount + subsum) ELSE CASE WHEN (- subsum) > amount THEN amount ELSE amount - (- 1 * subsum) END END AS total "+
"  FROM         (SELECT     (SELECT     a4 " +
" FROM         dbo.help_repcus_tarikh AS help_repcus_tarikh_1) AS amount,(SELECT     CASE WHEN SUM(sub_arrange_1.remain) IS NULL THEN 0 ELSE SUM(sub_arrange_1.remain) END AS summ " +
" FROM         dbo.sub_arrange AS sub_arrange_1 INNER JOIN  dbo.arrange_gol AS arrange_gol_1 ON sub_arrange_1.arrange_cod_f = arrange_gol_1.id INNER JOIN " +
" dbo.flow_info AS flow_info_1 ON arrange_gol_1.id_gol = flow_info_1.id " +
" WHERE     (sub_arrange_1.datee BETWEEN '"+lstartprint.Text+"' AND '"+lfinishprint.Text+"') AND (arrange_gol_1.dim_arr_f = 9) AND (flow_info_1.customer_f_id = "+ddlcustomer.SelectedValue+")) AS subsum) AS total_1) AS a4", cdf);
         inserttt.ExecuteScalar();*/
         cdf.Close();
         SqlDataSource1.DataBind();
         SqlDataSource2.DataBind();
         SqlDataSource3.DataBind();
         gridrepcust.DataBind();
         gridrepcusttarikh.DataBind();
         staynow.DataBind();
         gridrepcust.Visible = true;
         lcustomer.Text = Convert.ToString(ddlcustomer.SelectedItem);
         lcustomer2.Text = lcustomer.Text;
         lcustomer3.Text = lcustomer.Text;
         cdf.Open();
         SqlCommand del6 = new SqlCommand("delete from help_rep_cus", cdf);
         del6.ExecuteScalar();
         SqlCommand del7 = new SqlCommand("delete from help_repcus_tarikh", cdf);
         del7.ExecuteScalar();
         SqlCommand del8 = new SqlCommand("delete from help_repcus2", cdf);
         del8.ExecuteScalar();
         SqlCommand del9 = new SqlCommand("delete from help_repcus_now", cdf);
         del9.ExecuteScalar();
         SqlCommand del10 = new SqlCommand("delete from help_3", cdf);
         del10.ExecuteScalar();
         cdf.Close();
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
        Session["ctrl"] = pnlprint;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
    }
}