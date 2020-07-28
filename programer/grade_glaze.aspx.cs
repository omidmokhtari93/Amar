using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["taghdis_amar"].ConnectionString);
    string date_end = "1393/01/01";
    string date_start = "1393/01/01";
    string year = "";
    string mounth = "";
    string day = "";
    string id = "";
    string glaze = ""; int q, flat, fd, faleh, lueez, pi=0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)

            if (((string)Session["level"] != "programer") || (Convert.ToInt32(Session["userid"]) != 15)) 
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
            q = 0; flat = 0; fd = 0; faleh = 0; lueez = 0; pi = 0;
            grid_falehR.DataSource =faz1falehR;
            grid_falehF.DataSource = faz1falehF;
            grid_falehP.DataSource = faz1falehP;
            grid_falehR0.DataSource = faz1falehR0;
            grid_falehF0.DataSource = faz1falehF0;
            grid_falehP0.DataSource = faz1falehP0;
            //----------------------------------
            grid_QueenR.DataSource = faz1QueenR;
            grid_QueenF.DataSource = faz1QueenF;
            grid_QueenP.DataSource = faz1QueenP;
            grid_QueenR0.DataSource = faz1QueenR0;
            grid_QueenF0.DataSource = faz1QueenF0;
            grid_QueenP0.DataSource = faz1QueenP0;
            //---------------------------------
            grid_FlatR.DataSource = faz1FlatR;
            grid_FlatF.DataSource = faz1FlatF;
            grid_FlatP.DataSource = faz1FlatP;
            grid_FlatR0.DataSource = faz1FlatR0;
            grid_FlatF0.DataSource = faz1FlatF0;
            grid_FlatP0.DataSource = faz1FlatP0;
            //---------------------------------
            grid_PR.DataSource = faz1PR;
            grid_PF.DataSource = faz1PF;
            grid_PP.DataSource = faz1PP;
            grid_PR0.DataSource = faz1PR0;
            grid_PF0.DataSource = faz1PF0;
            grid_PP0.DataSource = faz1PP0;
            //--------------------------------
            grid_FDR.DataSource = faz1FDR;
            grid_FDF.DataSource = faz1FDF;
            grid_FDP.DataSource = faz1FDP;
            grid_FDR0.DataSource = faz1FDR0;
            grid_FDF0.DataSource = faz1FDF0;
            grid_FDP0.DataSource = faz1FDP0;
            //--------------------------------
            grid_LUR.DataSource = faz1LUR;
            grid_LUF.DataSource = faz1LUF;
            grid_LUP.DataSource = faz1LUP;
            grid_LUR0.DataSource = faz1LUR0;
            grid_LUF0.DataSource = faz1LUF0;
            grid_LUP0.DataSource = faz1LUP0;
            //--------------------------------
            grid_total.DataSource = SqlDataSource11;
            griddarsad.DataSource = SqlDataSource111;
            //-------------------------------
            grid_falehR.DataBind();
            grid_falehF.DataBind();
            grid_falehP.DataBind();
            grid_falehR0.DataBind();
            grid_falehF0.DataBind();
            grid_falehP0.DataBind();
            //----------------------------------
            grid_QueenR.DataBind();
            grid_QueenF.DataBind();
            grid_QueenP.DataBind();
            grid_QueenR0.DataBind();
            grid_QueenF0.DataBind();
            grid_QueenP0.DataBind();
            //---------------------------------
            grid_FlatR.DataBind();
            grid_FlatF.DataBind();
            grid_FlatP.DataBind();
            grid_FlatR0.DataBind();
            grid_FlatF0.DataBind();
            grid_FlatP0.DataBind();
            //---------------------------------
            grid_PR.DataBind();
            grid_PF.DataBind();
            grid_PP.DataBind();
            grid_PR0.DataBind();
            grid_PF0.DataBind();
            grid_PP0.DataBind();
            //--------------------------------
            grid_FDR.DataBind();
            grid_FDF.DataBind();
            grid_FDP.DataBind();
            grid_FDR0.DataBind();
            grid_FDF0.DataBind();
            grid_FDP0.DataBind();
            //--------------------------------
            grid_LUR.DataBind();
            grid_LUF.DataBind();
            grid_LUP.DataBind();
            grid_LUR0.DataBind();
            grid_LUF0.DataBind();
            grid_LUP0.DataBind();
            //-------------------------------
            grid_total.DataBind();
            griddarsad.DataBind();
            lblfaz.Text = "یک";
            glaze = "glaze1";
        
        }
        else if (rdbglaze.SelectedValue == "2")
        {
            q = 0; flat = 0; fd = 0; faleh = 0; lueez = 0; pi = 0;
            grid_falehR.DataSource = faz2falehR;
            grid_falehF.DataSource = faz2falehF;
            grid_falehP.DataSource = faz2falehP;
            grid_falehR0.DataSource = faz2falehR0;
            grid_falehF0.DataSource = faz2falehF0;
            grid_falehP0.DataSource = faz2falehP0;
            //----------------------------------
            grid_QueenR.DataSource = faz2QueenR;
            grid_QueenF.DataSource = faz2QueenF;
            grid_QueenP.DataSource = faz2QueenP;
            grid_QueenR0.DataSource = faz2QueenR0;
            grid_QueenF0.DataSource = faz2QueenF0;
            grid_QueenP0.DataSource = faz2QueenP0;
            //---------------------------------
            grid_FlatR.DataSource = faz2FlatR;
            grid_FlatF.DataSource = faz2FlatF;
            grid_FlatP.DataSource = faz2FlatP;
            grid_FlatR0.DataSource = faz2FlatR0;
            grid_FlatF0.DataSource = faz2FlatF0;
            grid_FlatP0.DataSource = faz2FlatP0;
            //---------------------------------
            grid_PR.DataSource = faz2PR;
            grid_PF.DataSource = faz2PF;
            grid_PP.DataSource = faz2PP;
            grid_PR0.DataSource = faz2PR0;
            grid_PF0.DataSource = faz2PF0;
            grid_PP0.DataSource = faz2PP0;
            //--------------------------------
            grid_FDR.DataSource = faz2FDR;
            grid_FDF.DataSource = faz2FDF;
            grid_FDP.DataSource = faz2FDP;
            grid_FDR0.DataSource = faz2FDR0;
            grid_FDF0.DataSource = faz2FDF0;
            grid_FDP0.DataSource = faz2FDP0;
            //--------------------------------
            grid_LUR.DataSource = faz2LUR;
            grid_LUF.DataSource = faz2LUF;
            grid_LUP.DataSource = faz2LUP;
            grid_LUR0.DataSource = faz2LUR0;
            grid_LUF0.DataSource = faz2LUF0;
            grid_LUP0.DataSource = faz2LUP0;
            //--------------------------------
            grid_total.DataSource = SqlDataSource22;
            griddarsad.DataSource = SqlDataSource222;
            //-------------------------------
            grid_falehR.DataBind();
            grid_falehF.DataBind();
            grid_falehP.DataBind();
            grid_falehR0.DataBind();
            grid_falehF0.DataBind();
            grid_falehP0.DataBind();
            //----------------------------------
            grid_QueenR.DataBind();
            grid_QueenF.DataBind();
            grid_QueenP.DataBind();
            grid_QueenR0.DataBind();
            grid_QueenF0.DataBind();
            grid_QueenP0.DataBind();
            //---------------------------------
            grid_FlatR.DataBind();
            grid_FlatF.DataBind();
            grid_FlatP.DataBind();
            grid_FlatR0.DataBind();
            grid_FlatF0.DataBind();
            grid_FlatP0.DataBind();
            //---------------------------------
            grid_PR.DataBind();
            grid_PF.DataBind();
            grid_PP.DataBind();
            grid_PR0.DataBind();
            grid_PF0.DataBind();
            grid_PP0.DataBind();
            //--------------------------------
            grid_FDR.DataBind();
            grid_FDF.DataBind();
            grid_FDP.DataBind();
            grid_FDR0.DataBind();
            grid_FDF0.DataBind();
            grid_FDP0.DataBind();
          
            //--------------------------------
            grid_LUR.DataBind();
            grid_LUF.DataBind();
            grid_LUP.DataBind();
            grid_LUR0.DataBind();
            grid_LUF0.DataBind();
            grid_LUP0.DataBind();

            grid_total.DataBind();
            grid_falehR.DataBind();
            lblfaz.Text = "دو";
            glaze = "glaze2";
           
        }
       

       
        

    }
   
    protected void btnshow_Click(object sender, EventArgs e)
    {

       
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

        q = 0; flat = 0; fd = 0; faleh = 0; lueez = 0; pi = 0;
        lblfaleh.Visible = true;
        lblfd.Visible = true;
        lblflat.Visible = true;
        lbllueez.Visible = true;
        lblprances.Visible = true;
        lblqueen.Visible = true;
        //---------------------------------
        grid_falehR.Visible = true;
        grid_falehF.Visible = true;
        grid_falehP.Visible = true;
        grid_falehR0.Visible = true;
        grid_falehF0.Visible = true;
        grid_falehP0.Visible = true;
        //----------------------------------
        grid_QueenR.Visible = true;
        grid_QueenF.Visible = true;
        grid_QueenP.Visible = true;
        grid_QueenR0.Visible = true;
        grid_QueenF0.Visible = true;
        grid_QueenP0.Visible = true;
        //---------------------------------
        grid_FlatR.Visible = true;
        grid_FlatF.Visible = true;
        grid_FlatP.Visible = true;
        grid_FlatR0.Visible = true;
        grid_FlatF0.Visible = true;
        grid_FlatP0.Visible = true;

        //---------------------------------
        grid_PR.Visible = true;
        grid_PF.Visible = true;
        grid_PP.Visible = true;
        grid_PR0.Visible = true;
        grid_PF0.Visible = true;
        grid_PP0.Visible = true;
        //--------------------------------
        grid_FDR.Visible = true;
        grid_FDF.Visible = true;
        grid_FDP.Visible = true;
        grid_FDR0.Visible = true;
        grid_FDF0.Visible = true;
        grid_FDP0.Visible = true;

        //--------------------------------
        grid_LUR.Visible = true;
        grid_LUF.Visible = true;
        grid_LUP.Visible = true;
        grid_LUR0.Visible = true;
        grid_LUF0.Visible = true;
        grid_LUP0.Visible = true;

        //---------------------------------

        grid_falehR.DataBind();
        grid_falehF.DataBind();
        grid_falehP.DataBind();
        grid_falehR0.DataBind();
        grid_falehF0.DataBind();
        grid_falehP0.DataBind();
        if (grid_falehR.Rows.Count == 0)
        {
            grid_falehR.Visible = false;
            grid_falehR0.Visible = false;
            faleh++;
        }
        if (grid_falehF.Rows.Count == 0)
        {
            grid_falehF.Visible = false;
            grid_falehF0.Visible = false;
            faleh++;
        }
        if (grid_falehP.Rows.Count == 0)
        {
            grid_falehP.Visible = false;
            grid_falehP0.Visible = false;
            faleh++;
            if (faleh == 3)
                lblfaleh.Visible = false;
        }
        //----------------------------------
        grid_QueenR.DataBind();
        grid_QueenF.DataBind();
        grid_QueenP.DataBind();
        grid_QueenR0.DataBind();
        grid_QueenF0.DataBind();
        grid_QueenP0.DataBind();
        if (grid_QueenR.Rows.Count == 0)
        {
            grid_QueenR.Visible = false;
            grid_QueenR0.Visible = false;
            q++;
        }
        if (grid_QueenF.Rows.Count == 0)
        {
            grid_QueenF.Visible = false;
            grid_QueenF0.Visible = false;
            q++;
        }
        if (grid_QueenP.Rows.Count == 0)
        {
            q++;
            grid_QueenP.Visible = false;
            grid_QueenP0.Visible = false;
            if (q == 3)
                lblqueen.Visible = false;
        }
        //---------------------------------
        grid_FlatR.DataBind();
        grid_FlatF.DataBind();
        grid_FlatP.DataBind();
        grid_FlatR0.DataBind();
        grid_FlatF0.DataBind();
        grid_FlatP0.DataBind();
        if (grid_FlatR.Rows.Count == 0)
        {
            grid_FlatR.Visible = false;
            grid_FlatR0.Visible = false;
            flat++;
        }
        if (grid_FlatF.Rows.Count == 0)
        {
            grid_FlatF.Visible = false;
            grid_FlatF0.Visible = false;
            flat++;
        }
        if (grid_FlatP.Rows.Count == 0)
        {
            grid_FlatP.Visible = false;
            grid_FlatP0.Visible = false;
            flat++;
            if (flat == 3)
                lblflat.Visible = false;
        }
        //---------------------------------
        grid_PR.DataBind();
        grid_PF.DataBind();
        grid_PP.DataBind();
        grid_PR0.DataBind();
        grid_PF0.DataBind();
        grid_PP0.DataBind();
        if (grid_PR.Rows.Count == 0)
        {
            grid_PR.Visible = false;
            grid_PR0.Visible = false;
            pi++;
        }
        if (grid_PF.Rows.Count == 0)
        {
            grid_PF.Visible = false;
            grid_PF0.Visible = false;
            pi++;
        }
        if (grid_PP.Rows.Count == 0)
        {
            grid_PP.Visible = false;
            grid_PP0.Visible = false;
            pi++;
            if (pi == 3)
                lblprances.Visible = false;
        }
        //--------------------------------
        grid_FDR.DataBind();
        grid_FDF.DataBind();
        grid_FDP.DataBind();
        grid_FDR0.DataBind();
        grid_FDF0.DataBind();
        grid_FDP0.DataBind();
        if (grid_FDR.Rows.Count == 0)
        {
            grid_FDR.Visible = false;
            grid_FDR0.Visible = false;
            fd++;
        }
        if (grid_FDF.Rows.Count == 0)
        {
            grid_FDF.Visible = false;
            grid_FDF0.Visible = false;
            fd++;
        }
        if (grid_FDP.Rows.Count == 0)
        {
            grid_FDP.Visible = false;
            grid_FDP0.Visible = false;
            fd++;
            if (fd == 3)
                lblfd.Visible = false;
        }
        //--------------------------------
        grid_LUR.DataBind();
        grid_LUF.DataBind();
        grid_LUP.DataBind();
        grid_LUR0.DataBind();
        grid_LUF0.DataBind();
        grid_LUP0.DataBind();
        if (grid_LUR.Rows.Count == 0)
        {
            grid_LUR.Visible = false;
            grid_LUR0.Visible = false;
            lueez++;
        }
        if (grid_LUF.Rows.Count == 0)
        {
            grid_LUF.Visible = false;
            grid_LUF0.Visible = false;
            lueez++;
        }
        if (grid_LUP.Rows.Count == 0)
        {
            grid_LUP.Visible = false;
            grid_LUP0.Visible = false;
            lueez++;
            if (lueez == 3)
                lbllueez.Visible = false;
        }
        grid_total.DataBind();
        griddarsad.DataBind();
    }

    protected void btnprint_Click(object sender, EventArgs e)
    {
        Session["ctrl"] = pnlrikhtegari;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
    }

   
}