using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Configuration;
using System.IO;
using System.Text;
using System.Drawing;
public partial class _Default : System.Web.UI.Page
{
    
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["taghdis_amar"].ConnectionString);
    string date_end = "1393/01/01";
    string date_start = "1393/01/01";
    string year = "";
    string mounth = "";
    string day = "";
    string id = "";
    string glaze = ""; 

    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
        if (!Page.IsPostBack)

            if (((string)Session["level"] != "programer") || (Convert.ToInt32(Session["userid"]) != 15) && (((string)Session["level"] != "mng_product") || (Convert.ToInt32(Session["userid"]) != 16)) && (((string)Session["level"] != "Bana") || (Convert.ToInt32(Session["userid"]) != 34))) 
            {
               Response.Redirect("../login.aspx");
               Session.Clear();
            }
      System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();
      

        DateTime miladi;
        DateTime datetimeformat = DateTime.Now;
        PersianCalendar p = new PersianCalendar();

        miladi = datetimeformat;
        datetimeformat = p.AddDays(miladi, -1);
        date_end = p.GetYear(datetimeformat).ToString("0000") + '/' + p.GetMonth(datetimeformat).ToString("00") + '/' + p.GetDayOfMonth(datetimeformat).ToString("00");
                

        if (!Page.IsPostBack)
        {

            year = date_end.Substring(0, 4);
            dryearstart.SelectedValue = year;
            mounth = date_end.Substring(5, 2);
            drmounthstart.SelectedValue = mounth;
            day = date_end.Substring(8, 2);
            drdaystart.SelectedValue = day;
            year = date_end.Substring(0, 4);
            dryear.SelectedValue = year;
            mounth = date_end.Substring(5, 2);
            drmounth.SelectedValue = mounth;
            day = date_end.Substring(8, 2);
            drday.SelectedValue = day;
        }
        if (rdbglaze.SelectedValue == "1")
        {
            lblfaz.Text = "فاز یک";
        }
        else if (rdbglaze.SelectedValue == "2")
        {
            lblfaz.Text = "فاز دو";
         
        }
        

       
        

    }
   
    protected void btnshow_Click(object sender, EventArgs e)
    {
        grid_Ahan.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_Ahan.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_Ahan.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_Ahan.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_Ahan.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_Ahan.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_khlabeh.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_khlabeh.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khlabeh.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_khlabeh.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khlabeh.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khlabeh.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_kharegi.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_kharegi.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_kharegi.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_kharegi.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_kharegi.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_kharegi.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_noglaze.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_noglaze.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_noglaze.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_noglaze.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_noglaze.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_noglaze.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_pin.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_pin.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_pin.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_pin.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_pin.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_pin.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_khglaze.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_khglaze.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khglaze.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_khglaze.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khglaze.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khglaze.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_kafsefid.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_kafsefid.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_kafsefid.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_kafsefid.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_kafsefid.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_kafsefid.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_deformation.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_deformation.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_deformation.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_deformation.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_deformation.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_deformation.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_tarak.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_tarak.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_tarak.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_tarak.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_tarak.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_tarak.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_dorangi.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_dorangi.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_dorangi.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_dorangi.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_dorangi.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_dorangi.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_sarsozani.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_sarsozani.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_sarsozani.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_sarsozani.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_sarsozani.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_sarsozani.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_oftadegi.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_oftadegi.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_oftadegi.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_oftadegi.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_oftadegi.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_oftadegi.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_payeh.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_payeh.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_payeh.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_payeh.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_payeh.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_payeh.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_khbadaneh.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_khbadaneh.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khbadaneh.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_khbadaneh.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khbadaneh.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khbadaneh.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_tarpayeh.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_tarpayeh.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_tarpayeh.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_tarpayeh.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_tarpayeh.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_tarpayeh.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_labpar.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_labpar.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_labpar.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_labpar.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_labpar.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_labpar.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_rizesh.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_rizesh.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_rizesh.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_rizesh.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_rizesh.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_rizesh.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_hobab.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_hobab.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_hobab.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_hobab.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_hobab.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_hobab.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_rageh.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_rageh.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_rageh.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_rageh.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_rageh.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_rageh.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_khash.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_khash.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khash.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_khash.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khash.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khash.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
       
        year = dryear.SelectedValue;
        mounth = drmounth.SelectedValue;
        day = drday.SelectedValue;
        date_end = year + "/" + mounth + "/" + day;
        lbldate_e.Text = date_end;
        year=dryearstart.SelectedValue;
        mounth = drmounthstart.SelectedValue;
        day = drdaystart.SelectedValue;
        date_start = year + "/" + mounth + "/" + day;
        lbldate_s.Text = date_start;
       
        if (rdbglaze.SelectedValue == "1")
        {
            Session["faz"] = "faz1";
            //=====================================//session faz
            if (ddlsector.SelectedValue == "1")
            {
                Session["sector"] = "3";//press
                Session["sector_name"] = "press";
            }
            else if (ddlsector.SelectedValue == "2")
            {
                Session["sector"] = "2";//forming
                Session["sector_name"] = "forming";

            }
            else if (ddlsector.SelectedValue == "3")
            {
                Session["sector"] = "1";//rikhtegari
                Session["sector_name"] = "rikht";
            }
            //=====================================//session sector
            if (ddlfault.SelectedValue == "1")
            {
                Session["faults"] = "ahan";
                Session["faults_num"] = "1";
            }
            else if (ddlfault.SelectedValue == "2")
            {
                Session["faults"] = "khlabeh";
                Session["faults_num"] = "2";
            }
            else if (ddlfault.SelectedValue == "3")
            {
                Session["faults"] = "kharegi";
                Session["faults_num"] = "3";
            }
            else if (ddlfault.SelectedValue == "4")
            {
                Session["faults"] = "noglaze";
                Session["faults_num"] = "4";
            }
            else if (ddlfault.SelectedValue == "5")
            {
                Session["faults"] = "pin";
                Session["faults_num"] = "5";
            }
            else if (ddlfault.SelectedValue == "6")
            {
                Session["faults"] = "khglaze";
                Session["faults_num"] = "6";
            }
            else if (ddlfault.SelectedValue == "7")
            {
                Session["faults"] = "kafsefid";
                Session["faults_num"] = "7";
            }
            else if (ddlfault.SelectedValue == "8")
            {
                Session["faults"] = "deformation";
                Session["faults_num"] = "8";
            }
            else if (ddlfault.SelectedValue == "9")
            {
                Session["faults"] = "tarak";
                Session["faults_num"] = "9";
            }
            else if (ddlfault.SelectedValue == "10")
            {
                Session["faults"] = "dorangi";
                Session["faults_num"] = "10";
            }
            else if (ddlfault.SelectedValue == "11")
            {
                Session["faults"] = "sarsozani";
                Session["faults_num"] = "11";
            }
            else if (ddlfault.SelectedValue == "12")
            {
                Session["faults"] = "oftadegi";
                Session["faults_num"] = "12";
            }
            else if (ddlfault.SelectedValue == "13")
            {
                Session["faults"] = "payeh";
                Session["faults_num"] = "13";
            }
            else if (ddlfault.SelectedValue == "14")
            {
                Session["faults"] = "khbadaneh";
                Session["faults_num"] = "14";
            }
            else if (ddlfault.SelectedValue == "15")
            {
                Session["faults"] = "tarpayeh";
                Session["faults_num"] = "15";
            }
            else if (ddlfault.SelectedValue == "16")
            {
                Session["faults"] = "labpar";
                Session["faults_num"] = "16";
            }
            else if (ddlfault.SelectedValue == "17")
            {
                Session["faults"] = "rizesh";
                Session["faults_num"] = "17";
            }
            else if (ddlfault.SelectedValue == "18")
            {
                Session["faults"] = "hobab";
                Session["faults_num"] = "18";
            }
            else if (ddlfault.SelectedValue == "19")
            {
                Session["faults"] = "rageh";
                Session["faults_num"] = "19";
            }
            else if (ddlfault.SelectedValue == "20")
            {
                Session["faults"] = "khash";
                Session["faults_num"] = "20";

            }

        }//END faz1
        else if (rdbglaze.SelectedValue == "2")
        {
            Session["faz"] = "faz2";
            //====================================//session faz
            if (ddlsector.SelectedValue == "1")
            {
                Session["sector"] = "3";//press
                Session["sector_name"] = "press";
            }
            else if (ddlsector.SelectedValue == "2")
            {
                Session["sector"] = "2";//forming
                Session["sector_name"] = "forming";

            }
            else if (ddlsector.SelectedValue == "3")
            {
                Session["sector"] = "1";//rikhtegari
                Session["sector_name"] = "rikht";
            }
            //=====================================//session sector
            if (ddlfault.SelectedValue == "1")
            {
                Session["faults"] = "ahan";
                Session["faults_num"] = "1";
            }
            else if (ddlfault.SelectedValue == "2")
            {
                Session["faults"] = "khlabeh";
                Session["faults_num"] = "2";
            }
            else if (ddlfault.SelectedValue == "3")
            {
                Session["faults"] = "kharegi";
                Session["faults_num"] = "3";
            }
            else if (ddlfault.SelectedValue == "4")
            {
                Session["faults"] = "noglaze";
                Session["faults_num"] = "4";
            }
            else if (ddlfault.SelectedValue == "5")
            {
                Session["faults"] = "pin";
                Session["faults_num"] = "5";
            }
            else if (ddlfault.SelectedValue == "6")
            {
                Session["faults"] = "khglaze";
                Session["faults_num"] = "6";
            }
            else if (ddlfault.SelectedValue == "7")
            {
                Session["faults"] = "kafsefid";
                Session["faults_num"] = "7";
            }
            else if (ddlfault.SelectedValue == "8")
            {
                Session["faults"] = "deformation";
                Session["faults_num"] = "8";
            }
            else if (ddlfault.SelectedValue == "9")
            {
                Session["faults"] = "tarak";
                Session["faults_num"] = "9";
            }
            else if (ddlfault.SelectedValue == "10")
            {
                Session["faults"] = "dorangi";
                Session["faults_num"] = "10";
            }
            else if (ddlfault.SelectedValue == "11")
            {
                Session["faults"] = "sarsozani";
                Session["faults_num"] = "11";
            }
            else if (ddlfault.SelectedValue == "12")
            {
                Session["faults"] = "oftadegi";
                Session["faults_num"] = "12";
            }
            else if (ddlfault.SelectedValue == "13")
            {
                Session["faults"] = "payeh";
                Session["faults_num"] = "13";
            }
            else if (ddlfault.SelectedValue == "14")
            {
                Session["faults"] = "khbadaneh";
                Session["faults_num"] = "14";
            }
            else if (ddlfault.SelectedValue == "15")
            {
                Session["faults"] = "tarpayeh";
                Session["faults_num"] = "15";
            }
            else if (ddlfault.SelectedValue == "16")
            {
                Session["faults"] = "labpar";
                Session["faults_num"] = "16";
            }
            else if (ddlfault.SelectedValue == "17")
            {
                Session["faults"] = "rizesh";
                Session["faults_num"] = "17";
            }
            else if (ddlfault.SelectedValue == "18")
            {
                Session["faults"] = "hobab";
                Session["faults_num"] = "18";
            }
            else if (ddlfault.SelectedValue == "19")
            {
                Session["faults"] = "rageh";
                Session["faults_num"] = "19";
            }
            else if (ddlfault.SelectedValue == "20")
            {
                Session["faults"] = "khash";
                Session["faults_num"] = "20";

            }
        }

       
                   disadvantage.SelectCommand=" SELECT      '%'+CAST(FLOOR(darsadAhan) AS varchar(10)) + '/' + RIGHT(LEFT(darsadAhan - FLOOR(darsadAhan), 4), 2) AS darsadahan,  ahan, Adarsad, A, tedad, item_name "+
                                        " FROM         (SELECT     TOP (100) PERCENT CASE WHEN SUM(" + Session["faults"] + ") > 0 THEN ((SUM(" + Session["faults"] + ") * 1.0 / SUM(tedad) * 100)) ELSE '0' END AS darsadAhan, SUM(" + Session["faults"] + ") AS ahan, " +
                                           "   CASE WHEN SUM(gradea) > 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(gradea) "+
                                            "  * 1.0 / SUM(tedad) * 100 - FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, SUM(gradea) AS A, "+
                                             " SUM(tedad) AS tedad, dbo.item.item_name "+
                                              " FROM         dbo.item INNER JOIN "+
                                             " dbo.grade_" + Session["faz"] + " ON dbo.item.id = dbo.grade_" + Session["faz"] + ".item_id " +
                                             " WHERE     (tarikh  BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.sector_product = "+Session["sector"]+") "+
                                             "  GROUP BY dbo.item.id, dbo.item.item_name) AS derivedtbl_1 "+
                                             "WHERE     (darsadAhan > "+
                                             " (SELECT     min_alarm FROM         dbo.dis_"+Session["sector_name"]+" WHERE     (id = "+Session["faults_num"]+") AND (permit = 1)))";

        //==========================hiden all gridview
                   grid_Ahan.Visible = false;
                   grid_khlabeh.Visible = false;
                   grid_kharegi.Visible = false;
                   grid_noglaze.Visible = false;
                   grid_pin.Visible = false;
                   grid_khglaze.Visible = false;
                   grid_kafsefid.Visible = false;
                   grid_deformation.Visible = false;
                   grid_tarak.Visible = false;
                   grid_dorangi.Visible = false;
                   grid_sarsozani.Visible = false;
                   grid_oftadegi.Visible = false;
                   grid_payeh.Visible = false;
                   grid_khbadaneh.Visible = false;
                   grid_tarpayeh.Visible = false;
                   grid_labpar.Visible = false;
                   grid_rizesh.Visible = false;
                   grid_hobab.Visible = false;
                   grid_rageh.Visible = false;
                   grid_khash.Visible = false;    
        
        //==========================
                   if (ddlfault.SelectedValue == "1")
                   {
                       grid_Ahan.Visible = true;
                       grid_Ahan.DataSource = disadvantage;
                       grid_Ahan.DataBind();
                       
                   }
                   else if (ddlfault.SelectedValue == "2")
                   {
                       grid_khlabeh.Visible = true;
                       grid_khlabeh.DataSource = disadvantage;
                       grid_khlabeh.DataBind();
                       
                   }
                   else if (ddlfault.SelectedValue == "3")
                   {
                       grid_kharegi.Visible = true;
                       grid_kharegi.DataSource = disadvantage;
                       grid_kharegi.DataBind();
                       
                   }
                   else if (ddlfault.SelectedValue == "4")
                   {
                       grid_noglaze.Visible = true;
                       grid_noglaze.DataSource = disadvantage;
                       grid_noglaze.DataBind();
                      
                   }
                   else if (ddlfault.SelectedValue == "5")
                   {
                       grid_pin.Visible = true;
                       grid_pin.DataSource = disadvantage;
                       grid_pin.DataBind();
                       
                   }
                   else if (ddlfault.SelectedValue == "6")
                   {
                       grid_khglaze.Visible = true;
                       grid_khglaze.DataSource = disadvantage;
                       grid_khglaze.DataBind();
                       
                   }
                   else if (ddlfault.SelectedValue == "7")
                   {
                       grid_kafsefid.Visible = true;
                       grid_kafsefid.DataSource = disadvantage;
                       grid_kafsefid.DataBind();
                
                   }
                   else if (ddlfault.SelectedValue == "8")
                   {
                       grid_deformation.Visible = true;
                       grid_deformation.DataSource = disadvantage;
                       grid_deformation.DataBind();
                      
                   }
                   else if (ddlfault.SelectedValue == "9")
                   {
                       grid_tarak.Visible = true;
                       grid_tarak.DataSource = disadvantage;
                       grid_tarak.DataBind();
                      
                   }
                   else if (ddlfault.SelectedValue == "10")
                   {
                       grid_dorangi.Visible = true;
                       grid_dorangi.DataSource = disadvantage;
                       grid_dorangi.DataBind();
                   }
                   else if (ddlfault.SelectedValue == "11")
                   {
                       grid_sarsozani.Visible = true;
                       grid_sarsozani.DataSource = disadvantage;
                       grid_sarsozani.DataBind();
                   }
                   else if (ddlfault.SelectedValue == "12")
                   {
                       grid_oftadegi.Visible = true;
                       grid_oftadegi.DataSource = disadvantage;
                       grid_oftadegi.DataBind();
                   }
                   else if (ddlfault.SelectedValue == "13")
                   {
                       grid_payeh.Visible = true;
                       grid_payeh.DataSource = disadvantage;
                       grid_payeh.DataBind();
                   }
                   else if (ddlfault.SelectedValue == "14")
                   {
                       grid_khbadaneh.Visible = true;
                       grid_khbadaneh.DataSource = disadvantage;
                       grid_khbadaneh.DataBind();
                   }
                   else if (ddlfault.SelectedValue == "15")
                   {
                       grid_tarpayeh.Visible = true;
                       grid_tarpayeh.DataSource = disadvantage;
                       grid_tarpayeh.DataBind();
                   }
                   else if (ddlfault.SelectedValue == "16")
                   {
                       grid_labpar.Visible = true;
                       grid_labpar.DataSource = disadvantage;
                       grid_labpar.DataBind();
                   }
                   else if (ddlfault.SelectedValue == "17")
                   {
                       grid_rizesh.Visible = true;
                       grid_rizesh.DataSource = disadvantage;
                       grid_rizesh.DataBind();
                   }
                   else if (ddlfault.SelectedValue == "18")
                   {
                       grid_hobab.Visible = true;
                       grid_hobab.DataSource = disadvantage;
                       grid_hobab.DataBind();
                   }
                   else if (ddlfault.SelectedValue == "19")
                   {
                       grid_rageh.Visible = true;
                       grid_rageh.DataSource = disadvantage;
                       grid_rageh.DataBind();
                   }
                   else if (ddlfault.SelectedValue == "20")
                   {
                       grid_khash.Visible = true;
                       grid_khash.DataSource = disadvantage;
                       grid_khash.DataBind();

                   }
      
    }

    protected void btnprint_Click(object sender, EventArgs e)
    {
        Session["ctrl"] = pnlrikhtegari;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
    }




   
    protected void ddlsector_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlsector.SelectedValue == "1")//press
        {
           fault.SelectCommand="SELECT ('%'+cast(min_alarm as varchar(10)) +'__'+name_dis) as faults, id FROM dis_press WHERE (min_alarm > 0) AND (permit = 1) order by id";
           fault.DataBind();
            ddlfault.DataBind();
            lblsecture.Text = "_ پرس";

                  
        }
        if (ddlsector.SelectedValue == "2")//forming
        {
            fault.SelectCommand = "SELECT ('%'+cast(min_alarm as varchar(10)) +'__'+name_dis) as faults, id FROM dis_forming WHERE (min_alarm > 0) AND (permit = 1) order by id";
            fault.DataBind();
            ddlfault.DataBind();
            lblsecture.Text = "_ فرمینگ";

        
        }
        if (ddlsector.SelectedValue == "3")//rikhtegari
        {
            fault.SelectCommand = "SELECT ('%'+cast(min_alarm as varchar(10)) +'__'+name_dis) as faults, id FROM dis_rikht WHERE (min_alarm > 0) AND (permit = 1) order by id";
            fault.DataBind();
            ddlfault.DataBind();
            lblsecture.Text = "_ ریخته گری";

           
        }





    }
    protected void rdbglaze_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rdbglaze.SelectedValue == "1")
        {
            lblfaz.Text = "فاز یک";
        }
        else if (rdbglaze.SelectedValue == "2")
        {

            lblfaz.Text = "فاز دو";

        }
    }
    protected void btnshowall_Click(object sender, EventArgs e)
    {
        //==========================hiden all gridview
        grid_Ahan.Visible = false;
        grid_khlabeh.Visible = false;
        grid_kharegi.Visible = false;
        grid_noglaze.Visible = false;
        grid_pin.Visible = false;
        grid_khglaze.Visible = false;
        grid_kafsefid.Visible = false;
        grid_deformation.Visible = false;
        grid_tarak.Visible = false;
        grid_dorangi.Visible = false;
        grid_sarsozani.Visible = false;
        grid_oftadegi.Visible = false;
        grid_payeh.Visible = false;
        grid_khbadaneh.Visible = false;
        grid_tarpayeh.Visible = false;
        grid_labpar.Visible = false;
        grid_rizesh.Visible = false;
        grid_hobab.Visible = false;
        grid_rageh.Visible = false;
        grid_khash.Visible = false;

        //==========================
        grid_Ahan.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_Ahan.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_Ahan.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_Ahan.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_Ahan.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_Ahan.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_khlabeh.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_khlabeh.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khlabeh.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_khlabeh.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khlabeh.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khlabeh.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_kharegi.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_kharegi.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_kharegi.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_kharegi.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_kharegi.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_kharegi.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_noglaze.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_noglaze.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_noglaze.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_noglaze.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_noglaze.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_noglaze.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_pin.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_pin.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_pin.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_pin.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_pin.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_pin.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_khglaze.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_khglaze.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khglaze.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_khglaze.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khglaze.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khglaze.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_kafsefid.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_kafsefid.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_kafsefid.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_kafsefid.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_kafsefid.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_kafsefid.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_deformation.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_deformation.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_deformation.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_deformation.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_deformation.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_deformation.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_tarak.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_tarak.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_tarak.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_tarak.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_tarak.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_tarak.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_dorangi.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_dorangi.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_dorangi.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_dorangi.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_dorangi.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_dorangi.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_sarsozani.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_sarsozani.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_sarsozani.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_sarsozani.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_sarsozani.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_sarsozani.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_oftadegi.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_oftadegi.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_oftadegi.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_oftadegi.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_oftadegi.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_oftadegi.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_payeh.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_payeh.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_payeh.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_payeh.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_payeh.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_payeh.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_khbadaneh.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_khbadaneh.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khbadaneh.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_khbadaneh.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khbadaneh.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khbadaneh.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_tarpayeh.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_tarpayeh.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_tarpayeh.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_tarpayeh.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_tarpayeh.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_tarpayeh.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_labpar.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_labpar.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_labpar.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_labpar.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_labpar.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_labpar.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_rizesh.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_rizesh.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_rizesh.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_rizesh.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_rizesh.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_rizesh.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_hobab.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_hobab.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_hobab.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_hobab.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_hobab.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_hobab.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_rageh.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_rageh.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_rageh.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_rageh.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_rageh.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_rageh.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================
        grid_khash.Columns[5].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        grid_khash.Columns[4].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khash.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        grid_khash.Columns[2].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khash.Columns[1].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        grid_khash.Columns[0].HeaderStyle.Width = new Unit(15, UnitType.Percentage);
        //========================================================================


        year = dryear.SelectedValue;
        mounth = drmounth.SelectedValue;
        day = drday.SelectedValue;
        date_end = year + "/" + mounth + "/" + day;
        lbldate_e.Text = date_end;
        year = dryearstart.SelectedValue;
        mounth = drmounthstart.SelectedValue;
        day = drdaystart.SelectedValue;
        date_start = year + "/" + mounth + "/" + day;
        lbldate_s.Text = date_start;

        if (rdbglaze.SelectedValue == "1")
        {
            Session["faz"] = "faz1";
            //=====================================//session faz
            if (ddlsector.SelectedValue == "1")
            {
                Session["sector"] = "3";//press
                Session["sector_name"] = "press";
                lblsecture.Text = "_ پرس";
               int count=Convert.ToInt32 (ddlfault.Items.Count.ToString());
               for (int i = 0; i < count; i++)
               {
                   string faultname = ddlfault.Items[i].Value;
                   if ("1" == faultname)
                   {
                       Session["faults"] = "ahan";
                       Session["faults_num"] = "1";
                   }
                   else if ("2" == faultname)
                   {
                       Session["faults"] = "khlabeh";
                       Session["faults_num"] = "2";
                   }
                   else if ("3" == faultname)
                   {
                       Session["faults"] = "kharegi";
                       Session["faults_num"] = "3";
                   }
                   else if ("4" == faultname)
                   {
                       Session["faults"] = "noglaze";
                       Session["faults_num"] = "4";
                   }
                   else if ("5" == faultname)
                   {
                       Session["faults"] = "pin";
                       Session["faults_num"] = "5";
                   }
                   else if ("6" == faultname)
                   {
                       Session["faults"] = "khglaze";
                       Session["faults_num"] = "6";
                   }
                   else if ("7" == faultname)
                   {
                       Session["faults"] = "kafsefid";
                       Session["faults_num"] = "7";
                   }
                   else if ("8" == faultname)
                   {
                       Session["faults"] = "deformation";
                       Session["faults_num"] = "8";
                   }
                   else if ("9" == faultname)
                   {
                       Session["faults"] = "tarak";
                       Session["faults_num"] = "9";
                   }
                   else if ("10" == faultname)
                   {
                       Session["faults"] = "dorangi";
                       Session["faults_num"] = "10";
                   }
                   else if ("11" == faultname)
                   {
                       Session["faults"] = "sarsozani";
                       Session["faults_num"] = "11";
                   }
                   else if ("12" == faultname)
                   {
                       Session["faults"] = "oftadegi";
                       Session["faults_num"] = "12";
                   }
                   else if ("13" == faultname)
                   {
                       Session["faults"] = "payeh";
                       Session["faults_num"] = "13";
                   }
                   else if ("14" == faultname)
                   {
                       Session["faults"] = "khbadaneh";
                       Session["faults_num"] = "14";
                   }
                   else if ("15" == faultname)
                   {
                       Session["faults"] = "tarpayeh";
                       Session["faults_num"] = "15";
                   }
                   else if ("16" == faultname)
                   {
                       Session["faults"] = "labpar";
                       Session["faults_num"] = "16";
                   }
                   else if ("17" == faultname)
                   {
                       Session["faults"] = "rizesh";
                       Session["faults_num"] = "17";
                   }
                   else if ("18" == faultname)
                   {
                       Session["faults"] = "hobab";
                       Session["faults_num"] = "18";
                   }
                   else if ("19" == faultname)
                   {
                       Session["faults"] = "rageh";
                       Session["faults_num"] = "19";
                   }
                   else if ("20" == faultname)
                   {
                       Session["faults"] = "khash";
                       Session["faults_num"] = "20";

                   }
                   disadvantage.SelectCommand = " SELECT      '%'+CAST(FLOOR(darsadAhan) AS varchar(10)) + '/' + RIGHT(LEFT(darsadAhan - FLOOR(darsadAhan), 4), 2) AS darsadahan,  ahan, Adarsad, A, tedad, item_name " +
                             " FROM         (SELECT     TOP (100) PERCENT CASE WHEN SUM(" + Session["faults"] + ") > 0 THEN ((SUM(" + Session["faults"] + ") * 1.0 / SUM(tedad) * 100)) ELSE '0' END AS darsadAhan, SUM(" + Session["faults"] + ") AS ahan, " +
                                "   CASE WHEN SUM(gradea) > 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(gradea) " +
                                 "  * 1.0 / SUM(tedad) * 100 - FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, SUM(gradea) AS A, " +
                                  " SUM(tedad) AS tedad, dbo.item.item_name " +
                                   " FROM         dbo.item INNER JOIN " +
                                  " dbo.grade_" + Session["faz"] + " ON dbo.item.id = dbo.grade_" + Session["faz"] + ".item_id " +
                                  " WHERE     (tarikh  BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.sector_product = " + Session["sector"] + ") " +
                                  "  GROUP BY dbo.item.id, dbo.item.item_name) AS derivedtbl_1 " +
                                  "WHERE     (darsadAhan > " +
                                  " (SELECT     min_alarm FROM         dbo.dis_" + Session["sector_name"] + " WHERE     (id = " + Session["faults_num"] + ") AND (permit = 1)))";
                   if ("1" == faultname)
                   {
                       grid_Ahan.Visible = true;
                       grid_Ahan.DataSource = disadvantage;
                       grid_Ahan.DataBind();
                       if (grid_Ahan.Rows.Count == 0)
                       {
                           grid_Ahan.Visible = false;
                       }
                   }
                   else if ("2" == faultname)
                   {
                       grid_khlabeh.Visible = true;
                       grid_khlabeh.DataSource = disadvantage;
                       grid_khlabeh.DataBind();
                       if (grid_khlabeh.Rows.Count == 0)
                       {
                           grid_khlabeh.Visible = false;
                       }

                   }
                   else if ("3" == faultname)
                   {
                       grid_kharegi.Visible = true;
                       grid_kharegi.DataSource = disadvantage;
                       grid_kharegi.DataBind();
                       if (grid_kharegi.Rows.Count == 0)
                       {
                           grid_kharegi.Visible = false;
                       }
                      

                   }
                   else if ("4" == faultname)
                   {
                       grid_noglaze.Visible = true;
                       grid_noglaze.DataSource = disadvantage;
                       grid_noglaze.DataBind();
                       if (grid_noglaze.Rows.Count == 0)
                       {
                           grid_noglaze.Visible = false;
                       }

                   }
                   else if ("5" == faultname)
                   {
                       grid_pin.Visible = true;
                       grid_pin.DataSource = disadvantage;
                       grid_pin.DataBind();
                       if (grid_pin.Rows.Count == 0)
                       {
                           grid_pin.Visible = false;
                       }

                   }
                   else if ("6" == faultname)
                   {
                       grid_khglaze.Visible = true;
                       grid_khglaze.DataSource = disadvantage;
                       grid_khglaze.DataBind();
                       if (grid_khglaze.Rows.Count == 0)
                       {
                           grid_khglaze.Visible = false;
                       }

                   }
                   else if ("7" == faultname)
                   {
                       grid_kafsefid.Visible = true;
                       grid_kafsefid.DataSource = disadvantage;
                       grid_kafsefid.DataBind();
                       if (grid_kafsefid.Rows.Count == 0)
                       {
                           grid_kafsefid.Visible = false;
                       }

                   }
                   else if ("8" == faultname)
                   {
                       grid_deformation.Visible = true;
                       grid_deformation.DataSource = disadvantage;
                       grid_deformation.DataBind();
                       if (grid_deformation.Rows.Count == 0)
                       {
                           grid_deformation.Visible = false;
                       }

                   }
                   else if ("9" == faultname)
                   {
                       grid_tarak.Visible = true;
                       grid_tarak.DataSource = disadvantage;
                       grid_tarak.DataBind();
                       if (grid_tarak.Rows.Count == 0)
                       {
                           grid_tarak.Visible = false;
                       }

                   }
                   else if ("10" == faultname)
                   {
                       grid_dorangi.Visible = true;
                       grid_dorangi.DataSource = disadvantage;
                       grid_dorangi.DataBind();
                       if (grid_dorangi.Rows.Count == 0)
                       {
                           grid_dorangi.Visible = false;
                       }
                   }
                   else if ("11" == faultname)
                   {
                       grid_sarsozani.Visible = true;
                       grid_sarsozani.DataSource = disadvantage;
                       grid_sarsozani.DataBind();
                       if (grid_sarsozani.Rows.Count == 0)
                       {
                           grid_sarsozani.Visible = false;
                       }
                   }
                   else if ("12" == faultname)
                   {
                       grid_oftadegi.Visible = true;
                       grid_oftadegi.DataSource = disadvantage;
                       grid_oftadegi.DataBind();
                       if (grid_oftadegi.Rows.Count == 0)
                       {
                           grid_oftadegi.Visible = false;
                       }
                   }
                   else if ("13" == faultname)
                   {
                       grid_payeh.Visible = true;
                       grid_payeh.DataSource = disadvantage;
                       grid_payeh.DataBind();
                       if (grid_payeh.Rows.Count == 0)
                       {
                           grid_payeh.Visible = false;
                       }
                   }
                   else if ("14" == faultname)
                   {
                       grid_khbadaneh.Visible = true;
                       grid_khbadaneh.DataSource = disadvantage;
                       grid_khbadaneh.DataBind();
                       if (grid_khbadaneh.Rows.Count == 0)
                       {
                           grid_khbadaneh.Visible = false;
                       }
                   }
                   else if ("15" == faultname)
                   {
                       grid_tarpayeh.Visible = true;
                       grid_tarpayeh.DataSource = disadvantage;
                       grid_tarpayeh.DataBind();
                       if (grid_tarpayeh.Rows.Count == 0)
                       {
                           grid_tarpayeh.Visible = false;
                       }
                   }
                   else if ("16" == faultname)
                   {
                       grid_labpar.Visible = true;
                       grid_labpar.DataSource = disadvantage;
                       grid_labpar.DataBind();
                       if (grid_labpar.Rows.Count == 0)
                       {
                           grid_labpar.Visible = false;
                       }
                   }
                   else if ("17" == faultname)
                   {
                       grid_rizesh.Visible = true;
                       grid_rizesh.DataSource = disadvantage;
                       grid_rizesh.DataBind();
                       if (grid_rizesh.Rows.Count == 0)
                       {
                           grid_rizesh.Visible = false;
                       }
                   }
                   else if ("18" == faultname)
                   {
                       grid_hobab.Visible = true;
                       grid_hobab.DataSource = disadvantage;
                       grid_hobab.DataBind();
                       if (grid_hobab.Rows.Count == 0)
                       {
                           grid_hobab.Visible = false;
                       }
                   }
                   else if ("19" == faultname)
                   {
                       grid_rageh.Visible = true;
                       grid_rageh.DataSource = disadvantage;
                       grid_rageh.DataBind();
                       if (grid_rageh.Rows.Count == 0)
                       {
                           grid_rageh.Visible = false;
                       }
                   }
                   else if ("20" == faultname)
                   {
                       grid_khash.Visible = true;
                       grid_khash.DataSource = disadvantage;
                       grid_khash.DataBind();
                       if (grid_khash.Rows.Count == 0)
                       {
                           grid_khash.Visible = false;
                       }

                   }

               }

            }
            else if (ddlsector.SelectedValue == "2")
            {
                Session["sector"] = "2";//forming
                Session["sector_name"] = "forming";
                lblsecture.Text = "_ فرمینگ";
                 int count=Convert.ToInt32 (ddlfault.Items.Count.ToString());
                 for (int i = 0; i < count; i++)
                 {
                     string faultname = ddlfault.Items[i].Value;
                     if ("1" == faultname)
                     {
                         Session["faults"] = "ahan";
                         Session["faults_num"] = "1";
                     }
                     else if ("2" == faultname)
                     {
                         Session["faults"] = "khlabeh";
                         Session["faults_num"] = "2";
                     }
                     else if ("3" == faultname)
                     {
                         Session["faults"] = "kharegi";
                         Session["faults_num"] = "3";
                     }
                     else if ("4" == faultname)
                     {
                         Session["faults"] = "noglaze";
                         Session["faults_num"] = "4";
                     }
                     else if ("5" == faultname)
                     {
                         Session["faults"] = "pin";
                         Session["faults_num"] = "5";
                     }
                     else if ("6" == faultname)
                     {
                         Session["faults"] = "khglaze";
                         Session["faults_num"] = "6";
                     }
                     else if ("7" == faultname)
                     {
                         Session["faults"] = "kafsefid";
                         Session["faults_num"] = "7";
                     }
                     else if ("8" == faultname)
                     {
                         Session["faults"] = "deformation";
                         Session["faults_num"] = "8";
                     }
                     else if ("9" == faultname)
                     {
                         Session["faults"] = "tarak";
                         Session["faults_num"] = "9";
                     }
                     else if ("10" == faultname)
                     {
                         Session["faults"] = "dorangi";
                         Session["faults_num"] = "10";
                     }
                     else if ("11" == faultname)
                     {
                         Session["faults"] = "sarsozani";
                         Session["faults_num"] = "11";
                     }
                     else if ("12" == faultname)
                     {
                         Session["faults"] = "oftadegi";
                         Session["faults_num"] = "12";
                     }
                     else if ("13" == faultname)
                     {
                         Session["faults"] = "payeh";
                         Session["faults_num"] = "13";
                     }
                     else if ("14" == faultname)
                     {
                         Session["faults"] = "khbadaneh";
                         Session["faults_num"] = "14";
                     }
                     else if ("15" == faultname)
                     {
                         Session["faults"] = "tarpayeh";
                         Session["faults_num"] = "15";
                     }
                     else if ("16" == faultname)
                     {
                         Session["faults"] = "labpar";
                         Session["faults_num"] = "16";
                     }
                     else if ("17" == faultname)
                     {
                         Session["faults"] = "rizesh";
                         Session["faults_num"] = "17";
                     }
                     else if ("18" == faultname)
                     {
                         Session["faults"] = "hobab";
                         Session["faults_num"] = "18";
                     }
                     else if ("19" == faultname)
                     {
                         Session["faults"] = "rageh";
                         Session["faults_num"] = "19";
                     }
                     else if ("20" == faultname)
                     {
                         Session["faults"] = "khash";
                         Session["faults_num"] = "20";

                     }
                     disadvantage.SelectCommand = " SELECT      '%'+CAST(FLOOR(darsadAhan) AS varchar(10)) + '/' + RIGHT(LEFT(darsadAhan - FLOOR(darsadAhan), 4), 2) AS darsadahan,  ahan, Adarsad, A, tedad, item_name " +
                               " FROM         (SELECT     TOP (100) PERCENT CASE WHEN SUM(" + Session["faults"] + ") > 0 THEN ((SUM(" + Session["faults"] + ") * 1.0 / SUM(tedad) * 100)) ELSE '0' END AS darsadAhan, SUM(" + Session["faults"] + ") AS ahan, " +
                                  "   CASE WHEN SUM(gradea) > 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(gradea) " +
                                   "  * 1.0 / SUM(tedad) * 100 - FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, SUM(gradea) AS A, " +
                                    " SUM(tedad) AS tedad, dbo.item.item_name " +
                                     " FROM         dbo.item INNER JOIN " +
                                    " dbo.grade_" + Session["faz"] + " ON dbo.item.id = dbo.grade_" + Session["faz"] + ".item_id " +
                                    " WHERE     (tarikh  BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.sector_product = " + Session["sector"] + ") " +
                                    "  GROUP BY dbo.item.id, dbo.item.item_name) AS derivedtbl_1 " +
                                    "WHERE     (darsadAhan > " +
                                    " (SELECT     min_alarm FROM         dbo.dis_" + Session["sector_name"] + " WHERE     (id = " + Session["faults_num"] + ") AND (permit = 1)))";
                     if ("1" == faultname)
                     {
                         grid_Ahan.Visible = true;
                         grid_Ahan.DataSource = disadvantage;
                         grid_Ahan.DataBind();
                         if (grid_Ahan.Rows.Count == 0)
                         {
                             grid_Ahan.Visible = false;
                         }
                     }
                     else if ("2" == faultname)
                     {
                         grid_khlabeh.Visible = true;
                         grid_khlabeh.DataSource = disadvantage;
                         grid_khlabeh.DataBind();
                         if (grid_khlabeh.Rows.Count == 0)
                         {
                             grid_khlabeh.Visible = false;
                         }

                     }
                     else if ("3" == faultname)
                     {
                         grid_kharegi.Visible = true;
                         grid_kharegi.DataSource = disadvantage;
                         grid_kharegi.DataBind();
                         if (grid_kharegi.Rows.Count == 0)
                         {
                             grid_kharegi.Visible = false;
                         }


                     }
                     else if ("4" == faultname)
                     {
                         grid_noglaze.Visible = true;
                         grid_noglaze.DataSource = disadvantage;
                         grid_noglaze.DataBind();
                         if (grid_noglaze.Rows.Count == 0)
                         {
                             grid_noglaze.Visible = false;
                         }

                     }
                     else if ("5" == faultname)
                     {
                         grid_pin.Visible = true;
                         grid_pin.DataSource = disadvantage;
                         grid_pin.DataBind();
                         if (grid_pin.Rows.Count == 0)
                         {
                             grid_pin.Visible = false;
                         }

                     }
                     else if ("6" == faultname)
                     {
                         grid_khglaze.Visible = true;
                         grid_khglaze.DataSource = disadvantage;
                         grid_khglaze.DataBind();
                         if (grid_khglaze.Rows.Count == 0)
                         {
                             grid_khglaze.Visible = false;
                         }

                     }
                     else if ("7" == faultname)
                     {
                         grid_kafsefid.Visible = true;
                         grid_kafsefid.DataSource = disadvantage;
                         grid_kafsefid.DataBind();
                         if (grid_kafsefid.Rows.Count == 0)
                         {
                             grid_kafsefid.Visible = false;
                         }

                     }
                     else if ("8" == faultname)
                     {
                         grid_deformation.Visible = true;
                         grid_deformation.DataSource = disadvantage;
                         grid_deformation.DataBind();
                         if (grid_deformation.Rows.Count == 0)
                         {
                             grid_deformation.Visible = false;
                         }

                     }
                     else if ("9" == faultname)
                     {
                         grid_tarak.Visible = true;
                         grid_tarak.DataSource = disadvantage;
                         grid_tarak.DataBind();
                         if (grid_tarak.Rows.Count == 0)
                         {
                             grid_tarak.Visible = false;
                         }

                     }
                     else if ("10" == faultname)
                     {
                         grid_dorangi.Visible = true;
                         grid_dorangi.DataSource = disadvantage;
                         grid_dorangi.DataBind();
                         if (grid_dorangi.Rows.Count == 0)
                         {
                             grid_dorangi.Visible = false;
                         }
                     }
                     else if ("11" == faultname)
                     {
                         grid_sarsozani.Visible = true;
                         grid_sarsozani.DataSource = disadvantage;
                         grid_sarsozani.DataBind();
                         if (grid_sarsozani.Rows.Count == 0)
                         {
                             grid_sarsozani.Visible = false;
                         }
                     }
                     else if ("12" == faultname)
                     {
                         grid_oftadegi.Visible = true;
                         grid_oftadegi.DataSource = disadvantage;
                         grid_oftadegi.DataBind();
                         if (grid_oftadegi.Rows.Count == 0)
                         {
                             grid_oftadegi.Visible = false;
                         }
                     }
                     else if ("13" == faultname)
                     {
                         grid_payeh.Visible = true;
                         grid_payeh.DataSource = disadvantage;
                         grid_payeh.DataBind();
                         if (grid_payeh.Rows.Count == 0)
                         {
                             grid_payeh.Visible = false;
                         }
                     }
                     else if ("14" == faultname)
                     {
                         grid_khbadaneh.Visible = true;
                         grid_khbadaneh.DataSource = disadvantage;
                         grid_khbadaneh.DataBind();
                         if (grid_khbadaneh.Rows.Count == 0)
                         {
                             grid_khbadaneh.Visible = false;
                         }
                     }
                     else if ("15" == faultname)
                     {
                         grid_tarpayeh.Visible = true;
                         grid_tarpayeh.DataSource = disadvantage;
                         grid_tarpayeh.DataBind();
                         if (grid_tarpayeh.Rows.Count == 0)
                         {
                             grid_tarpayeh.Visible = false;
                         }
                     }
                     else if ("16" == faultname)
                     {
                         grid_labpar.Visible = true;
                         grid_labpar.DataSource = disadvantage;
                         grid_labpar.DataBind();
                         if (grid_labpar.Rows.Count == 0)
                         {
                             grid_labpar.Visible = false;
                         }
                     }
                     else if ("17" == faultname)
                     {
                         grid_rizesh.Visible = true;
                         grid_rizesh.DataSource = disadvantage;
                         grid_rizesh.DataBind();
                         if (grid_rizesh.Rows.Count == 0)
                         {
                             grid_rizesh.Visible = false;
                         }
                     }
                     else if ("18" == faultname)
                     {
                         grid_hobab.Visible = true;
                         grid_hobab.DataSource = disadvantage;
                         grid_hobab.DataBind();
                         if (grid_hobab.Rows.Count == 0)
                         {
                             grid_hobab.Visible = false;
                         }
                     }
                     else if ("19" == faultname)
                     {
                         grid_rageh.Visible = true;
                         grid_rageh.DataSource = disadvantage;
                         grid_rageh.DataBind();
                         if (grid_rageh.Rows.Count == 0)
                         {
                             grid_rageh.Visible = false;
                         }
                     }
                     else if ("20" == faultname)
                     {
                         grid_khash.Visible = true;
                         grid_khash.DataSource = disadvantage;
                         grid_khash.DataBind();
                         if (grid_khash.Rows.Count == 0)
                         {
                             grid_khash.Visible = false;
                         }

                     }
                 }
            }
            else if (ddlsector.SelectedValue == "3")
            {
                Session["sector"] = "1";//rikhtegari
                Session["sector_name"] = "rikht";
                lblsecture.Text = "_ ریخته گری";
                 int count=Convert.ToInt32 (ddlfault.Items.Count.ToString());
                 for (int i = 0; i < count; i++)
                 {
                     string faultname = ddlfault.Items[i].Value;
                     if ("1" == faultname)
                     {
                         Session["faults"] = "ahan";
                         Session["faults_num"] = "1";
                     }
                     else if ("2" == faultname)
                     {
                         Session["faults"] = "khlabeh";
                         Session["faults_num"] = "2";
                     }
                     else if ("3" == faultname)
                     {
                         Session["faults"] = "kharegi";
                         Session["faults_num"] = "3";
                     }
                     else if ("4" == faultname)
                     {
                         Session["faults"] = "noglaze";
                         Session["faults_num"] = "4";
                     }
                     else if ("5" == faultname)
                     {
                         Session["faults"] = "pin";
                         Session["faults_num"] = "5";
                     }
                     else if ("6" == faultname)
                     {
                         Session["faults"] = "khglaze";
                         Session["faults_num"] = "6";
                     }
                     else if ("7" == faultname)
                     {
                         Session["faults"] = "kafsefid";
                         Session["faults_num"] = "7";
                     }
                     else if ("8" == faultname)
                     {
                         Session["faults"] = "deformation";
                         Session["faults_num"] = "8";
                     }
                     else if ("9" == faultname)
                     {
                         Session["faults"] = "tarak";
                         Session["faults_num"] = "9";
                     }
                     else if ("10" == faultname)
                     {
                         Session["faults"] = "dorangi";
                         Session["faults_num"] = "10";
                     }
                     else if ("11" == faultname)
                     {
                         Session["faults"] = "sarsozani";
                         Session["faults_num"] = "11";
                     }
                     else if ("12" == faultname)
                     {
                         Session["faults"] = "oftadegi";
                         Session["faults_num"] = "12";
                     }
                     else if ("13" == faultname)
                     {
                         Session["faults"] = "payeh";
                         Session["faults_num"] = "13";
                     }
                     else if ("14" == faultname)
                     {
                         Session["faults"] = "khbadaneh";
                         Session["faults_num"] = "14";
                     }
                     else if ("15" == faultname)
                     {
                         Session["faults"] = "tarpayeh";
                         Session["faults_num"] = "15";
                     }
                     else if ("16" == faultname)
                     {
                         Session["faults"] = "labpar";
                         Session["faults_num"] = "16";
                     }
                     else if ("17" == faultname)
                     {
                         Session["faults"] = "rizesh";
                         Session["faults_num"] = "17";
                     }
                     else if ("18" == faultname)
                     {
                         Session["faults"] = "hobab";
                         Session["faults_num"] = "18";
                     }
                     else if ("19" == faultname)
                     {
                         Session["faults"] = "rageh";
                         Session["faults_num"] = "19";
                     }
                     else if ("20" == faultname)
                     {
                         Session["faults"] = "khash";
                         Session["faults_num"] = "20";

                     }
                     disadvantage.SelectCommand = " SELECT      '%'+CAST(FLOOR(darsadAhan) AS varchar(10)) + '/' + RIGHT(LEFT(darsadAhan - FLOOR(darsadAhan), 4), 2) AS darsadahan,  ahan, Adarsad, A, tedad, item_name " +
                               " FROM         (SELECT     TOP (100) PERCENT CASE WHEN SUM(" + Session["faults"] + ") > 0 THEN ((SUM(" + Session["faults"] + ") * 1.0 / SUM(tedad) * 100)) ELSE '0' END AS darsadAhan, SUM(" + Session["faults"] + ") AS ahan, " +
                                  "   CASE WHEN SUM(gradea) > 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(gradea) " +
                                   "  * 1.0 / SUM(tedad) * 100 - FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, SUM(gradea) AS A, " +
                                    " SUM(tedad) AS tedad, dbo.item.item_name " +
                                     " FROM         dbo.item INNER JOIN " +
                                    " dbo.grade_" + Session["faz"] + " ON dbo.item.id = dbo.grade_" + Session["faz"] + ".item_id " +
                                    " WHERE     (tarikh  BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.sector_product = " + Session["sector"] + ") " +
                                    "  GROUP BY dbo.item.id, dbo.item.item_name) AS derivedtbl_1 " +
                                    "WHERE     (darsadAhan > " +
                                    " (SELECT     min_alarm FROM         dbo.dis_" + Session["sector_name"] + " WHERE     (id = " + Session["faults_num"] + ") AND (permit = 1)))";
                     if ("1" == faultname)
                     {
                         grid_Ahan.Visible = true;
                         grid_Ahan.DataSource = disadvantage;
                         grid_Ahan.DataBind();
                         if (grid_Ahan.Rows.Count == 0)
                         {
                             grid_Ahan.Visible = false;
                         }
                     }
                     else if ("2" == faultname)
                     {
                         grid_khlabeh.Visible = true;
                         grid_khlabeh.DataSource = disadvantage;
                         grid_khlabeh.DataBind();
                         if (grid_khlabeh.Rows.Count == 0)
                         {
                             grid_khlabeh.Visible = false;
                         }

                     }
                     else if ("3" == faultname)
                     {
                         grid_kharegi.Visible = true;
                         grid_kharegi.DataSource = disadvantage;
                         grid_kharegi.DataBind();
                         if (grid_kharegi.Rows.Count == 0)
                         {
                             grid_kharegi.Visible = false;
                         }


                     }
                     else if ("4" == faultname)
                     {
                         grid_noglaze.Visible = true;
                         grid_noglaze.DataSource = disadvantage;
                         grid_noglaze.DataBind();
                         if (grid_noglaze.Rows.Count == 0)
                         {
                             grid_noglaze.Visible = false;
                         }

                     }
                     else if ("5" == faultname)
                     {
                         grid_pin.Visible = true;
                         grid_pin.DataSource = disadvantage;
                         grid_pin.DataBind();
                         if (grid_pin.Rows.Count == 0)
                         {
                             grid_pin.Visible = false;
                         }

                     }
                     else if ("6" == faultname)
                     {
                         grid_khglaze.Visible = true;
                         grid_khglaze.DataSource = disadvantage;
                         grid_khglaze.DataBind();
                         if (grid_khglaze.Rows.Count == 0)
                         {
                             grid_khglaze.Visible = false;
                         }

                     }
                     else if ("7" == faultname)
                     {
                         grid_kafsefid.Visible = true;
                         grid_kafsefid.DataSource = disadvantage;
                         grid_kafsefid.DataBind();
                         if (grid_kafsefid.Rows.Count == 0)
                         {
                             grid_kafsefid.Visible = false;
                         }

                     }
                     else if ("8" == faultname)
                     {
                         grid_deformation.Visible = true;
                         grid_deformation.DataSource = disadvantage;
                         grid_deformation.DataBind();
                         if (grid_deformation.Rows.Count == 0)
                         {
                             grid_deformation.Visible = false;
                         }

                     }
                     else if ("9" == faultname)
                     {
                         grid_tarak.Visible = true;
                         grid_tarak.DataSource = disadvantage;
                         grid_tarak.DataBind();
                         if (grid_tarak.Rows.Count == 0)
                         {
                             grid_tarak.Visible = false;
                         }

                     }
                     else if ("10" == faultname)
                     {
                         grid_dorangi.Visible = true;
                         grid_dorangi.DataSource = disadvantage;
                         grid_dorangi.DataBind();
                         if (grid_dorangi.Rows.Count == 0)
                         {
                             grid_dorangi.Visible = false;
                         }
                     }
                     else if ("11" == faultname)
                     {
                         grid_sarsozani.Visible = true;
                         grid_sarsozani.DataSource = disadvantage;
                         grid_sarsozani.DataBind();
                         if (grid_sarsozani.Rows.Count == 0)
                         {
                             grid_sarsozani.Visible = false;
                         }
                     }
                     else if ("12" == faultname)
                     {
                         grid_oftadegi.Visible = true;
                         grid_oftadegi.DataSource = disadvantage;
                         grid_oftadegi.DataBind();
                         if (grid_oftadegi.Rows.Count == 0)
                         {
                             grid_oftadegi.Visible = false;
                         }
                     }
                     else if ("13" == faultname)
                     {
                         grid_payeh.Visible = true;
                         grid_payeh.DataSource = disadvantage;
                         grid_payeh.DataBind();
                         if (grid_payeh.Rows.Count == 0)
                         {
                             grid_payeh.Visible = false;
                         }
                     }
                     else if ("14" == faultname)
                     {
                         grid_khbadaneh.Visible = true;
                         grid_khbadaneh.DataSource = disadvantage;
                         grid_khbadaneh.DataBind();
                         if (grid_khbadaneh.Rows.Count == 0)
                         {
                             grid_khbadaneh.Visible = false;
                         }
                     }
                     else if ("15" == faultname)
                     {
                         grid_tarpayeh.Visible = true;
                         grid_tarpayeh.DataSource = disadvantage;
                         grid_tarpayeh.DataBind();
                         if (grid_tarpayeh.Rows.Count == 0)
                         {
                             grid_tarpayeh.Visible = false;
                         }
                     }
                     else if ("16" == faultname)
                     {
                         grid_labpar.Visible = true;
                         grid_labpar.DataSource = disadvantage;
                         grid_labpar.DataBind();
                         if (grid_labpar.Rows.Count == 0)
                         {
                             grid_labpar.Visible = false;
                         }
                     }
                     else if ("17" == faultname)
                     {
                         grid_rizesh.Visible = true;
                         grid_rizesh.DataSource = disadvantage;
                         grid_rizesh.DataBind();
                         if (grid_rizesh.Rows.Count == 0)
                         {
                             grid_rizesh.Visible = false;
                         }
                     }
                     else if ("18" == faultname)
                     {
                         grid_hobab.Visible = true;
                         grid_hobab.DataSource = disadvantage;
                         grid_hobab.DataBind();
                         if (grid_hobab.Rows.Count == 0)
                         {
                             grid_hobab.Visible = false;
                         }
                     }
                     else if ("19" == faultname)
                     {
                         grid_rageh.Visible = true;
                         grid_rageh.DataSource = disadvantage;
                         grid_rageh.DataBind();
                         if (grid_rageh.Rows.Count == 0)
                         {
                             grid_rageh.Visible = false;
                         }
                     }
                     else if ("20" == faultname)
                     {
                         grid_khash.Visible = true;
                         grid_khash.DataSource = disadvantage;
                         grid_khash.DataBind();
                         if (grid_khash.Rows.Count == 0)
                         {
                             grid_khash.Visible = false;
                         }

                     }
                 }
            }
            //=====================================//session sector
           

        }//END faz1
        else if (rdbglaze.SelectedValue == "2")
        {
            Session["faz"] = "faz2";
            if (ddlsector.SelectedValue == "1")
            {
                Session["sector"] = "3";//press
                Session["sector_name"] = "press";
                lblsecture.Text = "_ پرس";
                int count = Convert.ToInt32(ddlfault.Items.Count.ToString());
                for (int i = 0; i < count; i++)
                {
                    string faultname = ddlfault.Items[i].Value;
                    if ("1" == faultname)
                    {
                        Session["faults"] = "ahan";
                        Session["faults_num"] = "1";
                    }
                    else if ("2" == faultname)
                    {
                        Session["faults"] = "khlabeh";
                        Session["faults_num"] = "2";
                    }
                    else if ("3" == faultname)
                    {
                        Session["faults"] = "kharegi";
                        Session["faults_num"] = "3";
                    }
                    else if ("4" == faultname)
                    {
                        Session["faults"] = "noglaze";
                        Session["faults_num"] = "4";
                    }
                    else if ("5" == faultname)
                    {
                        Session["faults"] = "pin";
                        Session["faults_num"] = "5";
                    }
                    else if ("6" == faultname)
                    {
                        Session["faults"] = "khglaze";
                        Session["faults_num"] = "6";
                    }
                    else if ("7" == faultname)
                    {
                        Session["faults"] = "kafsefid";
                        Session["faults_num"] = "7";
                    }
                    else if ("8" == faultname)
                    {
                        Session["faults"] = "deformation";
                        Session["faults_num"] = "8";
                    }
                    else if ("9" == faultname)
                    {
                        Session["faults"] = "tarak";
                        Session["faults_num"] = "9";
                    }
                    else if ("10" == faultname)
                    {
                        Session["faults"] = "dorangi";
                        Session["faults_num"] = "10";
                    }
                    else if ("11" == faultname)
                    {
                        Session["faults"] = "sarsozani";
                        Session["faults_num"] = "11";
                    }
                    else if ("12" == faultname)
                    {
                        Session["faults"] = "oftadegi";
                        Session["faults_num"] = "12";
                    }
                    else if ("13" == faultname)
                    {
                        Session["faults"] = "payeh";
                        Session["faults_num"] = "13";
                    }
                    else if ("14" == faultname)
                    {
                        Session["faults"] = "khbadaneh";
                        Session["faults_num"] = "14";
                    }
                    else if ("15" == faultname)
                    {
                        Session["faults"] = "tarpayeh";
                        Session["faults_num"] = "15";
                    }
                    else if ("16" == faultname)
                    {
                        Session["faults"] = "labpar";
                        Session["faults_num"] = "16";
                    }
                    else if ("17" == faultname)
                    {
                        Session["faults"] = "rizesh";
                        Session["faults_num"] = "17";
                    }
                    else if ("18" == faultname)
                    {
                        Session["faults"] = "hobab";
                        Session["faults_num"] = "18";
                    }
                    else if ("19" == faultname)
                    {
                        Session["faults"] = "rageh";
                        Session["faults_num"] = "19";
                    }
                    else if ("20" == faultname)
                    {
                        Session["faults"] = "khash";
                        Session["faults_num"] = "20";

                    }
                    disadvantage.SelectCommand = " SELECT      '%'+CAST(FLOOR(darsadAhan) AS varchar(10)) + '/' + RIGHT(LEFT(darsadAhan - FLOOR(darsadAhan), 4), 2) AS darsadahan,  ahan, Adarsad, A, tedad, item_name " +
                              " FROM         (SELECT     TOP (100) PERCENT CASE WHEN SUM(" + Session["faults"] + ") > 0 THEN ((SUM(" + Session["faults"] + ") * 1.0 / SUM(tedad) * 100)) ELSE '0' END AS darsadAhan, SUM(" + Session["faults"] + ") AS ahan, " +
                                 "   CASE WHEN SUM(gradea) > 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(gradea) " +
                                  "  * 1.0 / SUM(tedad) * 100 - FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, SUM(gradea) AS A, " +
                                   " SUM(tedad) AS tedad, dbo.item.item_name " +
                                    " FROM         dbo.item INNER JOIN " +
                                   " dbo.grade_" + Session["faz"] + " ON dbo.item.id = dbo.grade_" + Session["faz"] + ".item_id " +
                                   " WHERE     (tarikh  BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.sector_product = " + Session["sector"] + ") " +
                                   "  GROUP BY dbo.item.id, dbo.item.item_name) AS derivedtbl_1 " +
                                   "WHERE     (darsadAhan > " +
                                   " (SELECT     min_alarm FROM         dbo.dis_" + Session["sector_name"] + " WHERE     (id = " + Session["faults_num"] + ") AND (permit = 1)))";
                    if ("1" == faultname)
                    {
                        grid_Ahan.Visible = true;
                        grid_Ahan.DataSource = disadvantage;
                        grid_Ahan.DataBind();
                        if (grid_Ahan.Rows.Count == 0)
                        {
                            grid_Ahan.Visible = false;
                        }
                    }
                    else if ("2" == faultname)
                    {
                        grid_khlabeh.Visible = true;
                        grid_khlabeh.DataSource = disadvantage;
                        grid_khlabeh.DataBind();
                        if (grid_khlabeh.Rows.Count == 0)
                        {
                            grid_khlabeh.Visible = false;
                        }

                    }
                    else if ("3" == faultname)
                    {
                        grid_kharegi.Visible = true;
                        grid_kharegi.DataSource = disadvantage;
                        grid_kharegi.DataBind();
                        if (grid_kharegi.Rows.Count == 0)
                        {
                            grid_kharegi.Visible = false;
                        }


                    }
                    else if ("4" == faultname)
                    {
                        grid_noglaze.Visible = true;
                        grid_noglaze.DataSource = disadvantage;
                        grid_noglaze.DataBind();
                        if (grid_noglaze.Rows.Count == 0)
                        {
                            grid_noglaze.Visible = false;
                        }

                    }
                    else if ("5" == faultname)
                    {
                        grid_pin.Visible = true;
                        grid_pin.DataSource = disadvantage;
                        grid_pin.DataBind();
                        if (grid_pin.Rows.Count == 0)
                        {
                            grid_pin.Visible = false;
                        }

                    }
                    else if ("6" == faultname)
                    {
                        grid_khglaze.Visible = true;
                        grid_khglaze.DataSource = disadvantage;
                        grid_khglaze.DataBind();
                        if (grid_khglaze.Rows.Count == 0)
                        {
                            grid_khglaze.Visible = false;
                        }

                    }
                    else if ("7" == faultname)
                    {
                        grid_kafsefid.Visible = true;
                        grid_kafsefid.DataSource = disadvantage;
                        grid_kafsefid.DataBind();
                        if (grid_kafsefid.Rows.Count == 0)
                        {
                            grid_kafsefid.Visible = false;
                        }

                    }
                    else if ("8" == faultname)
                    {
                        grid_deformation.Visible = true;
                        grid_deformation.DataSource = disadvantage;
                        grid_deformation.DataBind();
                        if (grid_deformation.Rows.Count == 0)
                        {
                            grid_deformation.Visible = false;
                        }

                    }
                    else if ("9" == faultname)
                    {
                        grid_tarak.Visible = true;
                        grid_tarak.DataSource = disadvantage;
                        grid_tarak.DataBind();
                        if (grid_tarak.Rows.Count == 0)
                        {
                            grid_tarak.Visible = false;
                        }

                    }
                    else if ("10" == faultname)
                    {
                        grid_dorangi.Visible = true;
                        grid_dorangi.DataSource = disadvantage;
                        grid_dorangi.DataBind();
                        if (grid_dorangi.Rows.Count == 0)
                        {
                            grid_dorangi.Visible = false;
                        }
                    }
                    else if ("11" == faultname)
                    {
                        grid_sarsozani.Visible = true;
                        grid_sarsozani.DataSource = disadvantage;
                        grid_sarsozani.DataBind();
                        if (grid_sarsozani.Rows.Count == 0)
                        {
                            grid_sarsozani.Visible = false;
                        }
                    }
                    else if ("12" == faultname)
                    {
                        grid_oftadegi.Visible = true;
                        grid_oftadegi.DataSource = disadvantage;
                        grid_oftadegi.DataBind();
                        if (grid_oftadegi.Rows.Count == 0)
                        {
                            grid_oftadegi.Visible = false;
                        }
                    }
                    else if ("13" == faultname)
                    {
                        grid_payeh.Visible = true;
                        grid_payeh.DataSource = disadvantage;
                        grid_payeh.DataBind();
                        if (grid_payeh.Rows.Count == 0)
                        {
                            grid_payeh.Visible = false;
                        }
                    }
                    else if ("14" == faultname)
                    {
                        grid_khbadaneh.Visible = true;
                        grid_khbadaneh.DataSource = disadvantage;
                        grid_khbadaneh.DataBind();
                        if (grid_khbadaneh.Rows.Count == 0)
                        {
                            grid_khbadaneh.Visible = false;
                        }
                    }
                    else if ("15" == faultname)
                    {
                        grid_tarpayeh.Visible = true;
                        grid_tarpayeh.DataSource = disadvantage;
                        grid_tarpayeh.DataBind();
                        if (grid_tarpayeh.Rows.Count == 0)
                        {
                            grid_tarpayeh.Visible = false;
                        }
                    }
                    else if ("16" == faultname)
                    {
                        grid_labpar.Visible = true;
                        grid_labpar.DataSource = disadvantage;
                        grid_labpar.DataBind();
                        if (grid_labpar.Rows.Count == 0)
                        {
                            grid_labpar.Visible = false;
                        }
                    }
                    else if ("17" == faultname)
                    {
                        grid_rizesh.Visible = true;
                        grid_rizesh.DataSource = disadvantage;
                        grid_rizesh.DataBind();
                        if (grid_rizesh.Rows.Count == 0)
                        {
                            grid_rizesh.Visible = false;
                        }
                    }
                    else if ("18" == faultname)
                    {
                        grid_hobab.Visible = true;
                        grid_hobab.DataSource = disadvantage;
                        grid_hobab.DataBind();
                        if (grid_hobab.Rows.Count == 0)
                        {
                            grid_hobab.Visible = false;
                        }
                    }
                    else if ("19" == faultname)
                    {
                        grid_rageh.Visible = true;
                        grid_rageh.DataSource = disadvantage;
                        grid_rageh.DataBind();
                        if (grid_rageh.Rows.Count == 0)
                        {
                            grid_rageh.Visible = false;
                        }
                    }
                    else if ("20" == faultname)
                    {
                        grid_khash.Visible = true;
                        grid_khash.DataSource = disadvantage;
                        grid_khash.DataBind();
                        if (grid_khash.Rows.Count == 0)
                        {
                            grid_khash.Visible = false;
                        }

                    }

                }

            }
            else if (ddlsector.SelectedValue == "2")
            {
                Session["sector"] = "2";//forming
                Session["sector_name"] = "forming";
                lblsecture.Text = "_ فرمینگ";
                int count = Convert.ToInt32(ddlfault.Items.Count.ToString());
                for (int i = 0; i < count; i++)
                {
                    string faultname = ddlfault.Items[i].Value;
                    if ("1" == faultname)
                    {
                        Session["faults"] = "ahan";
                        Session["faults_num"] = "1";
                    }
                    else if ("2" == faultname)
                    {
                        Session["faults"] = "khlabeh";
                        Session["faults_num"] = "2";
                    }
                    else if ("3" == faultname)
                    {
                        Session["faults"] = "kharegi";
                        Session["faults_num"] = "3";
                    }
                    else if ("4" == faultname)
                    {
                        Session["faults"] = "noglaze";
                        Session["faults_num"] = "4";
                    }
                    else if ("5" == faultname)
                    {
                        Session["faults"] = "pin";
                        Session["faults_num"] = "5";
                    }
                    else if ("6" == faultname)
                    {
                        Session["faults"] = "khglaze";
                        Session["faults_num"] = "6";
                    }
                    else if ("7" == faultname)
                    {
                        Session["faults"] = "kafsefid";
                        Session["faults_num"] = "7";
                    }
                    else if ("8" == faultname)
                    {
                        Session["faults"] = "deformation";
                        Session["faults_num"] = "8";
                    }
                    else if ("9" == faultname)
                    {
                        Session["faults"] = "tarak";
                        Session["faults_num"] = "9";
                    }
                    else if ("10" == faultname)
                    {
                        Session["faults"] = "dorangi";
                        Session["faults_num"] = "10";
                    }
                    else if ("11" == faultname)
                    {
                        Session["faults"] = "sarsozani";
                        Session["faults_num"] = "11";
                    }
                    else if ("12" == faultname)
                    {
                        Session["faults"] = "oftadegi";
                        Session["faults_num"] = "12";
                    }
                    else if ("13" == faultname)
                    {
                        Session["faults"] = "payeh";
                        Session["faults_num"] = "13";
                    }
                    else if ("14" == faultname)
                    {
                        Session["faults"] = "khbadaneh";
                        Session["faults_num"] = "14";
                    }
                    else if ("15" == faultname)
                    {
                        Session["faults"] = "tarpayeh";
                        Session["faults_num"] = "15";
                    }
                    else if ("16" == faultname)
                    {
                        Session["faults"] = "labpar";
                        Session["faults_num"] = "16";
                    }
                    else if ("17" == faultname)
                    {
                        Session["faults"] = "rizesh";
                        Session["faults_num"] = "17";
                    }
                    else if ("18" == faultname)
                    {
                        Session["faults"] = "hobab";
                        Session["faults_num"] = "18";
                    }
                    else if ("19" == faultname)
                    {
                        Session["faults"] = "rageh";
                        Session["faults_num"] = "19";
                    }
                    else if ("20" == faultname)
                    {
                        Session["faults"] = "khash";
                        Session["faults_num"] = "20";

                    }
                    disadvantage.SelectCommand = " SELECT      '%'+CAST(FLOOR(darsadAhan) AS varchar(10)) + '/' + RIGHT(LEFT(darsadAhan - FLOOR(darsadAhan), 4), 2) AS darsadahan,  ahan, Adarsad, A, tedad, item_name " +
                              " FROM         (SELECT     TOP (100) PERCENT CASE WHEN SUM(" + Session["faults"] + ") > 0 THEN ((SUM(" + Session["faults"] + ") * 1.0 / SUM(tedad) * 100)) ELSE '0' END AS darsadAhan, SUM(" + Session["faults"] + ") AS ahan, " +
                                 "   CASE WHEN SUM(gradea) > 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(gradea) " +
                                  "  * 1.0 / SUM(tedad) * 100 - FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, SUM(gradea) AS A, " +
                                   " SUM(tedad) AS tedad, dbo.item.item_name " +
                                    " FROM         dbo.item INNER JOIN " +
                                   " dbo.grade_" + Session["faz"] + " ON dbo.item.id = dbo.grade_" + Session["faz"] + ".item_id " +
                                   " WHERE     (tarikh  BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.sector_product = " + Session["sector"] + ") " +
                                   "  GROUP BY dbo.item.id, dbo.item.item_name) AS derivedtbl_1 " +
                                   "WHERE     (darsadAhan > " +
                                   " (SELECT     min_alarm FROM         dbo.dis_" + Session["sector_name"] + " WHERE     (id = " + Session["faults_num"] + ") AND (permit = 1)))";
                    if ("1" == faultname)
                    {
                        grid_Ahan.Visible = true;
                        grid_Ahan.DataSource = disadvantage;
                        grid_Ahan.DataBind();
                        if (grid_Ahan.Rows.Count == 0)
                        {
                            grid_Ahan.Visible = false;
                        }
                    }
                    else if ("2" == faultname)
                    {
                        grid_khlabeh.Visible = true;
                        grid_khlabeh.DataSource = disadvantage;
                        grid_khlabeh.DataBind();
                        if (grid_khlabeh.Rows.Count == 0)
                        {
                            grid_khlabeh.Visible = false;
                        }

                    }
                    else if ("3" == faultname)
                    {
                        grid_kharegi.Visible = true;
                        grid_kharegi.DataSource = disadvantage;
                        grid_kharegi.DataBind();
                        if (grid_kharegi.Rows.Count == 0)
                        {
                            grid_kharegi.Visible = false;
                        }


                    }
                    else if ("4" == faultname)
                    {
                        grid_noglaze.Visible = true;
                        grid_noglaze.DataSource = disadvantage;
                        grid_noglaze.DataBind();
                        if (grid_noglaze.Rows.Count == 0)
                        {
                            grid_noglaze.Visible = false;
                        }

                    }
                    else if ("5" == faultname)
                    {
                        grid_pin.Visible = true;
                        grid_pin.DataSource = disadvantage;
                        grid_pin.DataBind();
                        if (grid_pin.Rows.Count == 0)
                        {
                            grid_pin.Visible = false;
                        }

                    }
                    else if ("6" == faultname)
                    {
                        grid_khglaze.Visible = true;
                        grid_khglaze.DataSource = disadvantage;
                        grid_khglaze.DataBind();
                        if (grid_khglaze.Rows.Count == 0)
                        {
                            grid_khglaze.Visible = false;
                        }

                    }
                    else if ("7" == faultname)
                    {
                        grid_kafsefid.Visible = true;
                        grid_kafsefid.DataSource = disadvantage;
                        grid_kafsefid.DataBind();
                        if (grid_kafsefid.Rows.Count == 0)
                        {
                            grid_kafsefid.Visible = false;
                        }

                    }
                    else if ("8" == faultname)
                    {
                        grid_deformation.Visible = true;
                        grid_deformation.DataSource = disadvantage;
                        grid_deformation.DataBind();
                        if (grid_deformation.Rows.Count == 0)
                        {
                            grid_deformation.Visible = false;
                        }

                    }
                    else if ("9" == faultname)
                    {
                        grid_tarak.Visible = true;
                        grid_tarak.DataSource = disadvantage;
                        grid_tarak.DataBind();
                        if (grid_tarak.Rows.Count == 0)
                        {
                            grid_tarak.Visible = false;
                        }

                    }
                    else if ("10" == faultname)
                    {
                        grid_dorangi.Visible = true;
                        grid_dorangi.DataSource = disadvantage;
                        grid_dorangi.DataBind();
                        if (grid_dorangi.Rows.Count == 0)
                        {
                            grid_dorangi.Visible = false;
                        }
                    }
                    else if ("11" == faultname)
                    {
                        grid_sarsozani.Visible = true;
                        grid_sarsozani.DataSource = disadvantage;
                        grid_sarsozani.DataBind();
                        if (grid_sarsozani.Rows.Count == 0)
                        {
                            grid_sarsozani.Visible = false;
                        }
                    }
                    else if ("12" == faultname)
                    {
                        grid_oftadegi.Visible = true;
                        grid_oftadegi.DataSource = disadvantage;
                        grid_oftadegi.DataBind();
                        if (grid_oftadegi.Rows.Count == 0)
                        {
                            grid_oftadegi.Visible = false;
                        }
                    }
                    else if ("13" == faultname)
                    {
                        grid_payeh.Visible = true;
                        grid_payeh.DataSource = disadvantage;
                        grid_payeh.DataBind();
                        if (grid_payeh.Rows.Count == 0)
                        {
                            grid_payeh.Visible = false;
                        }
                    }
                    else if ("14" == faultname)
                    {
                        grid_khbadaneh.Visible = true;
                        grid_khbadaneh.DataSource = disadvantage;
                        grid_khbadaneh.DataBind();
                        if (grid_khbadaneh.Rows.Count == 0)
                        {
                            grid_khbadaneh.Visible = false;
                        }
                    }
                    else if ("15" == faultname)
                    {
                        grid_tarpayeh.Visible = true;
                        grid_tarpayeh.DataSource = disadvantage;
                        grid_tarpayeh.DataBind();
                        if (grid_tarpayeh.Rows.Count == 0)
                        {
                            grid_tarpayeh.Visible = false;
                        }
                    }
                    else if ("16" == faultname)
                    {
                        grid_labpar.Visible = true;
                        grid_labpar.DataSource = disadvantage;
                        grid_labpar.DataBind();
                        if (grid_labpar.Rows.Count == 0)
                        {
                            grid_labpar.Visible = false;
                        }
                    }
                    else if ("17" == faultname)
                    {
                        grid_rizesh.Visible = true;
                        grid_rizesh.DataSource = disadvantage;
                        grid_rizesh.DataBind();
                        if (grid_rizesh.Rows.Count == 0)
                        {
                            grid_rizesh.Visible = false;
                        }
                    }
                    else if ("18" == faultname)
                    {
                        grid_hobab.Visible = true;
                        grid_hobab.DataSource = disadvantage;
                        grid_hobab.DataBind();
                        if (grid_hobab.Rows.Count == 0)
                        {
                            grid_hobab.Visible = false;
                        }
                    }
                    else if ("19" == faultname)
                    {
                        grid_rageh.Visible = true;
                        grid_rageh.DataSource = disadvantage;
                        grid_rageh.DataBind();
                        if (grid_rageh.Rows.Count == 0)
                        {
                            grid_rageh.Visible = false;
                        }
                    }
                    else if ("20" == faultname)
                    {
                        grid_khash.Visible = true;
                        grid_khash.DataSource = disadvantage;
                        grid_khash.DataBind();
                        if (grid_khash.Rows.Count == 0)
                        {
                            grid_khash.Visible = false;
                        }

                    }
                }
            }
            else if (ddlsector.SelectedValue == "3")
            {
                Session["sector"] = "1";//rikhtegari
                Session["sector_name"] = "rikht";
                lblsecture.Text = "_ ریخته گری";
                int count = Convert.ToInt32(ddlfault.Items.Count.ToString());
                for (int i = 0; i < count; i++)
                {
                    string faultname = ddlfault.Items[i].Value;
                    if ("1" == faultname)
                    {
                        Session["faults"] = "ahan";
                        Session["faults_num"] = "1";
                    }
                    else if ("2" == faultname)
                    {
                        Session["faults"] = "khlabeh";
                        Session["faults_num"] = "2";
                    }
                    else if ("3" == faultname)
                    {
                        Session["faults"] = "kharegi";
                        Session["faults_num"] = "3";
                    }
                    else if ("4" == faultname)
                    {
                        Session["faults"] = "noglaze";
                        Session["faults_num"] = "4";
                    }
                    else if ("5" == faultname)
                    {
                        Session["faults"] = "pin";
                        Session["faults_num"] = "5";
                    }
                    else if ("6" == faultname)
                    {
                        Session["faults"] = "khglaze";
                        Session["faults_num"] = "6";
                    }
                    else if ("7" == faultname)
                    {
                        Session["faults"] = "kafsefid";
                        Session["faults_num"] = "7";
                    }
                    else if ("8" == faultname)
                    {
                        Session["faults"] = "deformation";
                        Session["faults_num"] = "8";
                    }
                    else if ("9" == faultname)
                    {
                        Session["faults"] = "tarak";
                        Session["faults_num"] = "9";
                    }
                    else if ("10" == faultname)
                    {
                        Session["faults"] = "dorangi";
                        Session["faults_num"] = "10";
                    }
                    else if ("11" == faultname)
                    {
                        Session["faults"] = "sarsozani";
                        Session["faults_num"] = "11";
                    }
                    else if ("12" == faultname)
                    {
                        Session["faults"] = "oftadegi";
                        Session["faults_num"] = "12";
                    }
                    else if ("13" == faultname)
                    {
                        Session["faults"] = "payeh";
                        Session["faults_num"] = "13";
                    }
                    else if ("14" == faultname)
                    {
                        Session["faults"] = "khbadaneh";
                        Session["faults_num"] = "14";
                    }
                    else if ("15" == faultname)
                    {
                        Session["faults"] = "tarpayeh";
                        Session["faults_num"] = "15";
                    }
                    else if ("16" == faultname)
                    {
                        Session["faults"] = "labpar";
                        Session["faults_num"] = "16";
                    }
                    else if ("17" == faultname)
                    {
                        Session["faults"] = "rizesh";
                        Session["faults_num"] = "17";
                    }
                    else if ("18" == faultname)
                    {
                        Session["faults"] = "hobab";
                        Session["faults_num"] = "18";
                    }
                    else if ("19" == faultname)
                    {
                        Session["faults"] = "rageh";
                        Session["faults_num"] = "19";
                    }
                    else if ("20" == faultname)
                    {
                        Session["faults"] = "khash";
                        Session["faults_num"] = "20";

                    }
                    disadvantage.SelectCommand = " SELECT      '%'+CAST(FLOOR(darsadAhan) AS varchar(10)) + '/' + RIGHT(LEFT(darsadAhan - FLOOR(darsadAhan), 4), 2) AS darsadahan,  ahan, Adarsad, A, tedad, item_name " +
                              " FROM         (SELECT     TOP (100) PERCENT CASE WHEN SUM(" + Session["faults"] + ") > 0 THEN ((SUM(" + Session["faults"] + ") * 1.0 / SUM(tedad) * 100)) ELSE '0' END AS darsadAhan, SUM(" + Session["faults"] + ") AS ahan, " +
                                 "   CASE WHEN SUM(gradea) > 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(gradea) " +
                                  "  * 1.0 / SUM(tedad) * 100 - FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, SUM(gradea) AS A, " +
                                   " SUM(tedad) AS tedad, dbo.item.item_name " +
                                    " FROM         dbo.item INNER JOIN " +
                                   " dbo.grade_" + Session["faz"] + " ON dbo.item.id = dbo.grade_" + Session["faz"] + ".item_id " +
                                   " WHERE     (tarikh  BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.sector_product = " + Session["sector"] + ") " +
                                   "  GROUP BY dbo.item.id, dbo.item.item_name) AS derivedtbl_1 " +
                                   "WHERE     (darsadAhan > " +
                                   " (SELECT     min_alarm FROM         dbo.dis_" + Session["sector_name"] + " WHERE     (id = " + Session["faults_num"] + ") AND (permit = 1)))";
                    if ("1" == faultname)
                    {
                        grid_Ahan.Visible = true;
                        grid_Ahan.DataSource = disadvantage;
                        grid_Ahan.DataBind();
                        if (grid_Ahan.Rows.Count == 0)
                        {
                            grid_Ahan.Visible = false;
                        }
                    }
                    else if ("2" == faultname)
                    {
                        grid_khlabeh.Visible = true;
                        grid_khlabeh.DataSource = disadvantage;
                        grid_khlabeh.DataBind();
                        if (grid_khlabeh.Rows.Count == 0)
                        {
                            grid_khlabeh.Visible = false;
                        }

                    }
                    else if ("3" == faultname)
                    {
                        grid_kharegi.Visible = true;
                        grid_kharegi.DataSource = disadvantage;
                        grid_kharegi.DataBind();
                        if (grid_kharegi.Rows.Count == 0)
                        {
                            grid_kharegi.Visible = false;
                        }


                    }
                    else if ("4" == faultname)
                    {
                        grid_noglaze.Visible = true;
                        grid_noglaze.DataSource = disadvantage;
                        grid_noglaze.DataBind();
                        if (grid_noglaze.Rows.Count == 0)
                        {
                            grid_noglaze.Visible = false;
                        }

                    }
                    else if ("5" == faultname)
                    {
                        grid_pin.Visible = true;
                        grid_pin.DataSource = disadvantage;
                        grid_pin.DataBind();
                        if (grid_pin.Rows.Count == 0)
                        {
                            grid_pin.Visible = false;
                        }

                    }
                    else if ("6" == faultname)
                    {
                        grid_khglaze.Visible = true;
                        grid_khglaze.DataSource = disadvantage;
                        grid_khglaze.DataBind();
                        if (grid_khglaze.Rows.Count == 0)
                        {
                            grid_khglaze.Visible = false;
                        }

                    }
                    else if ("7" == faultname)
                    {
                        grid_kafsefid.Visible = true;
                        grid_kafsefid.DataSource = disadvantage;
                        grid_kafsefid.DataBind();
                        if (grid_kafsefid.Rows.Count == 0)
                        {
                            grid_kafsefid.Visible = false;
                        }

                    }
                    else if ("8" == faultname)
                    {
                        grid_deformation.Visible = true;
                        grid_deformation.DataSource = disadvantage;
                        grid_deformation.DataBind();
                        if (grid_deformation.Rows.Count == 0)
                        {
                            grid_deformation.Visible = false;
                        }

                    }
                    else if ("9" == faultname)
                    {
                        grid_tarak.Visible = true;
                        grid_tarak.DataSource = disadvantage;
                        grid_tarak.DataBind();
                        if (grid_tarak.Rows.Count == 0)
                        {
                            grid_tarak.Visible = false;
                        }

                    }
                    else if ("10" == faultname)
                    {
                        grid_dorangi.Visible = true;
                        grid_dorangi.DataSource = disadvantage;
                        grid_dorangi.DataBind();
                        if (grid_dorangi.Rows.Count == 0)
                        {
                            grid_dorangi.Visible = false;
                        }
                    }
                    else if ("11" == faultname)
                    {
                        grid_sarsozani.Visible = true;
                        grid_sarsozani.DataSource = disadvantage;
                        grid_sarsozani.DataBind();
                        if (grid_sarsozani.Rows.Count == 0)
                        {
                            grid_sarsozani.Visible = false;
                        }
                    }
                    else if ("12" == faultname)
                    {
                        grid_oftadegi.Visible = true;
                        grid_oftadegi.DataSource = disadvantage;
                        grid_oftadegi.DataBind();
                        if (grid_oftadegi.Rows.Count == 0)
                        {
                            grid_oftadegi.Visible = false;
                        }
                    }
                    else if ("13" == faultname)
                    {
                        grid_payeh.Visible = true;
                        grid_payeh.DataSource = disadvantage;
                        grid_payeh.DataBind();
                        if (grid_payeh.Rows.Count == 0)
                        {
                            grid_payeh.Visible = false;
                        }
                    }
                    else if ("14" == faultname)
                    {
                        grid_khbadaneh.Visible = true;
                        grid_khbadaneh.DataSource = disadvantage;
                        grid_khbadaneh.DataBind();
                        if (grid_khbadaneh.Rows.Count == 0)
                        {
                            grid_khbadaneh.Visible = false;
                        }
                    }
                    else if ("15" == faultname)
                    {
                        grid_tarpayeh.Visible = true;
                        grid_tarpayeh.DataSource = disadvantage;
                        grid_tarpayeh.DataBind();
                        if (grid_tarpayeh.Rows.Count == 0)
                        {
                            grid_tarpayeh.Visible = false;
                        }
                    }
                    else if ("16" == faultname)
                    {
                        grid_labpar.Visible = true;
                        grid_labpar.DataSource = disadvantage;
                        grid_labpar.DataBind();
                        if (grid_labpar.Rows.Count == 0)
                        {
                            grid_labpar.Visible = false;
                        }
                    }
                    else if ("17" == faultname)
                    {
                        grid_rizesh.Visible = true;
                        grid_rizesh.DataSource = disadvantage;
                        grid_rizesh.DataBind();
                        if (grid_rizesh.Rows.Count == 0)
                        {
                            grid_rizesh.Visible = false;
                        }
                    }
                    else if ("18" == faultname)
                    {
                        grid_hobab.Visible = true;
                        grid_hobab.DataSource = disadvantage;
                        grid_hobab.DataBind();
                        if (grid_hobab.Rows.Count == 0)
                        {
                            grid_hobab.Visible = false;
                        }
                    }
                    else if ("19" == faultname)
                    {
                        grid_rageh.Visible = true;
                        grid_rageh.DataSource = disadvantage;
                        grid_rageh.DataBind();
                        if (grid_rageh.Rows.Count == 0)
                        {
                            grid_rageh.Visible = false;
                        }
                    }
                    else if ("20" == faultname)
                    {
                        grid_khash.Visible = true;
                        grid_khash.DataSource = disadvantage;
                        grid_khash.DataBind();
                        if (grid_khash.Rows.Count == 0)
                        {
                            grid_khash.Visible = false;
                        }

                    }
                }
            }
            //=====================================//session sector
           
        }

      
    }
}