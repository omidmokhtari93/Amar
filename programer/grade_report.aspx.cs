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

            if ((((string)Session["level"] != "programer") || (Convert.ToInt32(Session["userid"]) != 15)) && (((string)Session["level"] != "mng_product") || (Convert.ToInt32(Session["userid"]) != 16)) && (((string)Session["level"] != "Bana") || (Convert.ToInt32(Session["userid"]) != 34)))
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

            //==================================


            if (rdbglaze.SelectedValue == "1")
            {

                grid_press.DataSource = faz1Press;
                //  grid_press_help.DataSource = faz1Press;

                //-----------------------------------
                grid_Rikht.DataSource = faz1Rikht;
                //  grid_Rikht_help.DataSource = faz1Rikht;
                //-----------------------------------
                grid_falehR.DataSource = faz1falehR;
                //   grid_falehR_help.DataSource = faz1falehR;
                //-----------------------------------
                grid_falehP.DataSource = faz1falehP;
                //    grid_falehP_help.DataSource = faz1falehP;
                //-----------------------------------
                grid_Form.DataSource = faz1fForm;

                //--------------------------------
                grid_other.DataSource = faz1other;
                grid_total.DataSource = totalfaz1;
                grid_koll.DataSource = sqlcol1;

                //-------------------------------
                grid_press.DataBind();
                //   grid_press_help.DataBind();
                grid_Rikht.DataBind();
                //    grid_Rikht_help.DataBind();

                grid_falehR.DataBind();
                //    grid_falehR_help.DataBind();

                grid_falehP.DataBind();
                //    grid_falehP_help.DataBind();

                grid_Form.DataBind();
                grid_koll.DataBind();

                //-------------------------------

                grid_total.DataBind();
                grid_other.DataBind();

                lblfaz.Text = "یک";
                glaze = "glaze1";


            }
            else if (rdbglaze.SelectedValue == "2")
            {

                grid_press.DataSource = faz2Press;
                //   grid_press_help.DataSource = faz2Press;
                //-----------------------------------
                grid_Rikht.DataSource = faz2Rikht;
                //    grid_Rikht_help.DataSource = faz2Rikht;

                //-----------------------------------
                grid_falehR.DataSource = faz2falehR;
                //    grid_falehR_help.DataSource = faz2falehR;
                //-----------------------------------
                grid_falehP.DataSource = faz2falehP;
                //    grid_falehP_help.DataSource = faz2falehP;
                //-----------------------------------
                grid_Form.DataSource = faz2Form;

                //--------------------------------
                grid_total.DataSource = totalfaz2;
                grid_other.DataSource = faz2other;
                grid_koll.DataSource = sqlcol2;
                //-------------------------------
                grid_press.DataBind();
                //      grid_press_help.DataBind();
                grid_Rikht.DataBind();
                //     grid_Rikht_help.DataBind();

                grid_falehR.DataBind();
                //      grid_falehR_help.DataBind();

                grid_falehP.DataBind();
                //      grid_falehP_help.DataBind();

                grid_Form.DataBind();
                grid_koll.DataBind();

                grid_total.DataBind();
                grid_other.DataBind();
                lblfaz.Text = "دو";
                glaze = "glaze2";

            }




        }  

    }
   
    protected void btnshow_Click(object sender, EventArgs e)
    {

        grid_press.Visible = true;
        grid_Rikht.Visible = true;
        grid_falehR.Visible = true;
        grid_falehP.Visible = true;
        grid_Form.Visible = true;
        grid_total.Visible = true;
        grid_other.Visible = true;
        lblerror_show.Visible = false;

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
        //========================================
        cnn.Open();
        SqlCommand cmd_check = new SqlCommand("select id from show_permit where tarikh='" + lbldate_e.Text + "' and permit=1", cnn);
        SqlDataReader drcheck = cmd_check.ExecuteReader();
        if (drcheck.Read())
        {

            if (rdbglaze.SelectedValue == "1")
            {
                if (chktest.Checked == true)
                {
                    grid_press.DataSource = faz1Press_test;
                    //-----------------------------------
                    grid_Rikht.DataSource = faz1Rikht_test;
                    //-----------------------------------
                    grid_falehR.DataSource = faz1falehR_test;
                    //-----------------------------------
                    grid_falehP.DataSource = faz1falehP_test;
                    //-----------------------------------
                    grid_Form.DataSource = faz1Form_test;
                    //--------------------------------
                    grid_total.DataSource = totalfaz1_test;
                    //-------------------------------
                    grid_other.DataSource = faz1othertest;
                }
                else
                {

                    grid_press.DataSource = faz1Press;
                    grid_press_help.DataSource = faz1Press;
                    //-----------------------------------
                    grid_Rikht.DataSource = faz1Rikht;
                    grid_Rikht_help.DataSource = faz1Rikht;
                    //-----------------------------------
                    grid_falehR.DataSource = faz1falehR;
                    grid_falehR_help.DataSource = faz1falehR;
                    //-----------------------------------
                    grid_falehP.DataSource = faz1falehP;
                    grid_falehP_help.DataSource = faz1falehP;
                    //-----------------------------------
                    grid_Form.DataSource = faz1fForm;
                    //--------------------------------
                    grid_total.DataSource = totalfaz1;
                    //-------------------------------
                    grid_other.DataSource = faz1other;
                    grid_koll.DataSource = sqlcol1;

                }
                grid_press.DataBind();
                grid_press_help.DataBind();
                grid_Rikht.DataBind();
                grid_Rikht_help.DataBind();
                grid_falehR.DataBind();
                grid_falehR_help.DataBind();
                grid_falehP.DataBind();
                grid_falehP_help.DataBind();
                grid_Form.DataBind();
                grid_total.DataBind();
                grid_other.DataBind();
                grid_koll.DataBind();
                lblfaz.Text = "یک";
                
                glaze = "glaze1";

            }
            else if (rdbglaze.SelectedValue == "2")
            {

                if (chktest.Checked == true)
                {
                    grid_press.DataSource = faz2Press_test;
                    //-----------------------------------
                    grid_Rikht.DataSource = faz2Rikht_test;
                    //-----------------------------------
                    grid_falehR.DataSource = faz2falehR_test;
                    //-----------------------------------
                    grid_falehP.DataSource = faz2falehP_test;
                    //-----------------------------------
                    grid_Form.DataSource = faz2Form_test;
                    //--------------------------------
                    grid_total.DataSource = totalfaz2_test;
                    //-------------------------------
                    grid_other.DataSource = faz2othertest;
                }
                else
                {
                    grid_press.DataSource = faz2Press;
                    grid_press_help.DataSource = faz2Press;
                    //-----------------------------------
                    grid_Rikht.DataSource = faz2Rikht;
                    grid_Rikht_help.DataSource = faz2Rikht;
                    //-----------------------------------
                    grid_falehR.DataSource = faz2falehR;
                    grid_falehR_help.DataSource = faz2falehR;
                    //-----------------------------------
                    grid_falehP.DataSource = faz2falehP;
                    grid_falehP_help.DataSource = faz2falehP;
                    //-----------------------------------
                    grid_Form.DataSource = faz2Form;
                    //--------------------------------
                    grid_total.DataSource = totalfaz2;
                    //-------------------------------
                    grid_other.DataSource = faz2other;
                    grid_koll.DataSource = sqlcol2;
                }

                grid_press.DataBind();
                grid_press_help.DataBind();
                grid_Rikht.DataBind();
                grid_Rikht_help.DataBind();
                grid_falehR.DataBind();
                grid_falehR_help.DataBind();
                grid_falehP.DataBind();
                grid_falehP_help.DataBind();
                grid_Form.DataBind();
                grid_total.DataBind();
                grid_other.DataBind();
                grid_koll.DataBind();
                lblfaz.Text = "دو";
                glaze = "glaze2";

            }
        }
        else
        {
            lblerror_show.Visible = true;
            grid_press.Visible = false;
            grid_Rikht.Visible = false;
            grid_Rikht_help.Visible = false;
            grid_falehR.Visible = false;
            grid_falehP.Visible = false;
            grid_Form.Visible = false;
            grid_total.Visible = false;
            grid_other.Visible = false;
        }
        cnn.Close();
      
    }






    protected void grid_press_PreRender(object sender, EventArgs e)
    {
        if (grid_press.Rows.Count > 0)
        {
            grid_press.Rows[grid_press.Rows.Count - 1].Font.Size = FontUnit.XSmall;
            grid_press.Columns[0].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_press.Columns[1].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_press.Columns[0].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_press.Columns[1].ItemStyle.Font.Size = FontUnit.XSmall;

            grid_press.Columns[2].ItemStyle.Font.Size = FontUnit.XSmall;

            grid_press.Columns[4].ItemStyle.Font.Size = FontUnit.XSmall;

            grid_press.Columns[6].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_press.Columns[13].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_press.Columns[14].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_press.Columns[16].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_press.Columns[17].ItemStyle.Font.Size = FontUnit.Small;
            grid_press.Columns[30].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_press.Columns[32].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_press.Columns[1].ItemStyle.ForeColor = Color.Blue;
            grid_press.Columns[3].ItemStyle.ForeColor = Color.Blue;
            grid_press.Columns[5].ItemStyle.ForeColor = Color.Blue;
            grid_press.Columns[7].ItemStyle.ForeColor = Color.Blue;
            grid_press.Columns[33].ItemStyle.ForeColor = Color.Blue;

            grid_press.Columns[34].ItemStyle.ForeColor = Color.Blue;


            grid_press.Columns[35].ItemStyle.Wrap = false;


        }
    }
            //***********************************************************
    protected void grid_press_help_PreRender(object sender, EventArgs e)
    {
        if (grid_press.Rows.Count > 0)
        {
            grid_press_help.Rows[grid_press.Rows.Count - 1].Font.Size = FontUnit.XSmall;
            grid_press_help.Columns[0].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_press_help.Columns[1].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_press_help.Columns[0].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_press_help.Columns[1].ItemStyle.Font.Size = FontUnit.XSmall;

            grid_press_help.Columns[2].ItemStyle.Font.Size = FontUnit.XSmall;

            grid_press_help.Columns[4].ItemStyle.Font.Size = FontUnit.XSmall;

            grid_press_help.Columns[6].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_press_help.Columns[13].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_press_help.Columns[14].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_press_help.Columns[16].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_press_help.Columns[17].ItemStyle.Font.Size = FontUnit.Small;
            grid_press_help.Columns[30].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_press_help.Columns[32].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_press_help.Columns[1].ItemStyle.ForeColor = Color.Blue;
            grid_press_help.Columns[3].ItemStyle.ForeColor = Color.Blue;
            grid_press_help.Columns[5].ItemStyle.ForeColor = Color.Blue;
            grid_press_help.Columns[7].ItemStyle.ForeColor = Color.Blue;
            grid_press_help.Columns[33].ItemStyle.ForeColor = Color.Blue;

            grid_press_help.Columns[34].ItemStyle.ForeColor = Color.Blue;


            grid_press_help.Columns[35].ItemStyle.Wrap = false;


        }
    }




    protected void grid_falehP_PreRender(object sender, EventArgs e)
    {
        if (grid_falehP.Rows.Count > 0)
        {
            grid_falehP.Rows[grid_falehP.Rows.Count - 1].Font.Size = FontUnit.XSmall;
            grid_falehP.Columns[0].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_falehP.Columns[1].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_falehP.Columns[0].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehP.Columns[1].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehP.Columns[2].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehP.Columns[4].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehP.Columns[6].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehP.Columns[13].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_falehP.Columns[14].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_falehP.Columns[16].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehP.Columns[30].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehP.Columns[32].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehP.Columns[1].ItemStyle.ForeColor = Color.Blue;
            grid_falehP.Columns[3].ItemStyle.ForeColor = Color.Blue;
            grid_falehP.Columns[5].ItemStyle.ForeColor = Color.Blue;
            grid_falehP.Columns[7].ItemStyle.ForeColor = Color.Blue;
            grid_falehP.Columns[33].ItemStyle.ForeColor = Color.Blue;
            grid_falehP.Columns[34].ItemStyle.ForeColor = Color.Blue;

            grid_falehP.Columns[35].ItemStyle.Wrap = false;


        }
    }
            //**************************************************************
    protected void grid_falehP_help_PreRender(object sender, EventArgs e)
    {
        if (grid_falehP.Rows.Count > 0)
        {
            grid_falehP_help.Rows[grid_falehP.Rows.Count - 1].Font.Size = FontUnit.XSmall;
            grid_falehP_help.Columns[0].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_falehP_help.Columns[1].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_falehP_help.Columns[0].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehP_help.Columns[1].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehP_help.Columns[2].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehP_help.Columns[4].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehP_help.Columns[6].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehP_help.Columns[13].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_falehP_help.Columns[14].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_falehP_help.Columns[16].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehP_help.Columns[30].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehP_help.Columns[32].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehP_help.Columns[1].ItemStyle.ForeColor = Color.Blue;
            grid_falehP_help.Columns[3].ItemStyle.ForeColor = Color.Blue;
            grid_falehP_help.Columns[5].ItemStyle.ForeColor = Color.Blue;
            grid_falehP_help.Columns[7].ItemStyle.ForeColor = Color.Blue;
            grid_falehP_help.Columns[33].ItemStyle.ForeColor = Color.Blue;
            grid_falehP_help.Columns[34].ItemStyle.ForeColor = Color.Blue;

            grid_falehP_help.Columns[35].ItemStyle.Wrap = false;


        }
    }



    protected void grid_Rikht_PreRender(object sender, EventArgs e)
    {
        if (grid_Rikht.Rows.Count > 0)
        {
            grid_Rikht.Rows[grid_Rikht.Rows.Count - 1].Font.Size = FontUnit.XSmall;
            grid_Rikht.Columns[0].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht.Columns[1].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht.Columns[0].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht.Columns[1].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht.Columns[2].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht.Columns[4].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht.Columns[6].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht.Columns[13].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht.Columns[14].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht.Columns[16].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht.Columns[30].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht.Columns[32].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht.Columns[1].ItemStyle.ForeColor = Color.Blue;
            grid_Rikht.Columns[3].ItemStyle.ForeColor = Color.Blue;
            grid_Rikht.Columns[5].ItemStyle.ForeColor = Color.Blue;
            grid_Rikht.Columns[7].ItemStyle.ForeColor = Color.Blue;
            grid_Rikht.Columns[33].ItemStyle.ForeColor = Color.Blue;
            grid_Rikht.Columns[34].ItemStyle.ForeColor = Color.Blue;

            grid_Rikht.Columns[35].ItemStyle.Wrap = false;


        }
    }
    protected void grid_Rikht_help_PreRender(object sender, EventArgs e)
    {
        if (grid_Rikht.Rows.Count > 0)
        {
            grid_Rikht_help.Rows[grid_Rikht.Rows.Count - 1].Font.Size = FontUnit.XSmall;
            grid_Rikht_help.Columns[0].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht_help.Columns[1].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht_help.Columns[0].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht_help.Columns[1].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht_help.Columns[2].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht_help.Columns[4].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht_help.Columns[6].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht_help.Columns[13].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht_help.Columns[14].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht_help.Columns[16].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht_help.Columns[30].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht_help.Columns[32].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Rikht_help.Columns[1].ItemStyle.ForeColor = Color.Blue;
            grid_Rikht_help.Columns[3].ItemStyle.ForeColor = Color.Blue;
            grid_Rikht_help.Columns[5].ItemStyle.ForeColor = Color.Blue;
            grid_Rikht_help.Columns[7].ItemStyle.ForeColor = Color.Blue;
            grid_Rikht_help.Columns[33].ItemStyle.ForeColor = Color.Blue;
            grid_Rikht_help.Columns[34].ItemStyle.ForeColor = Color.Blue;

            grid_Rikht_help.Columns[35].ItemStyle.Wrap = false;


        }

    }
       
    protected void grid_falehR_PreRender(object sender, EventArgs e)
    {
        if (grid_falehR.Rows.Count > 0)
        {
            grid_falehR.Rows[grid_falehR.Rows.Count - 1].Font.Size = FontUnit.XSmall;
            grid_falehR.Columns[0].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehR.Columns[1].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehR.Columns[0].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_falehR.Columns[1].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_falehR.Columns[2].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehR.Columns[4].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehR.Columns[6].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehR.Columns[13].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_falehR.Columns[14].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_falehR.Columns[16].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehR.Columns[30].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehR.Columns[32].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehR.Columns[1].ItemStyle.ForeColor = Color.Blue;
            grid_falehR.Columns[3].ItemStyle.ForeColor = Color.Blue;
            grid_falehR.Columns[5].ItemStyle.ForeColor = Color.Blue;
            grid_falehR.Columns[7].ItemStyle.ForeColor = Color.Blue;
            grid_falehR.Columns[33].ItemStyle.ForeColor = Color.Blue;
            grid_falehR.Columns[34].ItemStyle.ForeColor = Color.Blue;

            grid_falehR.Columns[35].ItemStyle.Wrap = false;
        }
    }
            //*************************************************************



    protected void grid_falehR_help_PreRender(object sender, EventArgs e)
    {
        if (grid_falehR.Rows.Count > 0)
        {
            grid_falehR_help.Rows[grid_falehR.Rows.Count - 1].Font.Size = FontUnit.XSmall;
            grid_falehR_help.Columns[0].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehR_help.Columns[1].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehR_help.Columns[0].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_falehR_help.Columns[1].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_falehR_help.Columns[2].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehR_help.Columns[4].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehR_help.Columns[6].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehR_help.Columns[13].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_falehR_help.Columns[14].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_falehR_help.Columns[16].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehR_help.Columns[30].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehR_help.Columns[32].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_falehR_help.Columns[1].ItemStyle.ForeColor = Color.Blue;
            grid_falehR_help.Columns[3].ItemStyle.ForeColor = Color.Blue;
            grid_falehR_help.Columns[5].ItemStyle.ForeColor = Color.Blue;
            grid_falehR_help.Columns[7].ItemStyle.ForeColor = Color.Blue;
            grid_falehR_help.Columns[33].ItemStyle.ForeColor = Color.Blue;
            grid_falehR_help.Columns[34].ItemStyle.ForeColor = Color.Blue;

            grid_falehR_help.Columns[35].ItemStyle.Wrap = false;
        }
    }

    protected void grid_Form_PreRender(object sender, EventArgs e)
    {
        if (grid_Form.Rows.Count > 0)
        {
            grid_Form.Rows[grid_Form.Rows.Count - 1].Font.Size = FontUnit.XSmall;
            grid_Form.Columns[0].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Form.Columns[1].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Form.Columns[0].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_Form.Columns[1].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_Form.Columns[2].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Form.Columns[4].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Form.Columns[6].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Form.Columns[13].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_Form.Columns[14].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_Form.Columns[16].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Form.Columns[30].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Form.Columns[32].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_Form.Columns[1].ItemStyle.ForeColor = Color.Blue;
            grid_Form.Columns[3].ItemStyle.ForeColor = Color.Blue;
            grid_Form.Columns[5].ItemStyle.ForeColor = Color.Blue;
            grid_Form.Columns[7].ItemStyle.ForeColor = Color.Blue;
            grid_Form.Columns[33].ItemStyle.ForeColor = Color.Blue;
            grid_Form.Columns[34].ItemStyle.ForeColor = Color.Blue;

            grid_Form.Columns[35].ItemStyle.Wrap = false;


        }
    }
    protected void grid_other_PreRender(object sender, EventArgs e)
    {
        if (grid_other.Rows.Count > 0)
        {
            grid_other.Rows[grid_other.Rows.Count - 1].Font.Size = FontUnit.XSmall;
            grid_other.Columns[0].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_other.Columns[1].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_other.Columns[0].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_other.Columns[1].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_other.Columns[2].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_other.Columns[4].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_other.Columns[6].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_other.Columns[13].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_other.Columns[14].HeaderStyle.Font.Size = FontUnit.XSmall;
            grid_other.Columns[16].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_other.Columns[30].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_other.Columns[32].ItemStyle.Font.Size = FontUnit.XSmall;
            grid_other.Columns[1].ItemStyle.ForeColor = Color.Blue;
            grid_other.Columns[3].ItemStyle.ForeColor = Color.Blue;
            grid_other.Columns[5].ItemStyle.ForeColor = Color.Blue;
            grid_other.Columns[7].ItemStyle.ForeColor = Color.Blue;
            grid_other.Columns[33].ItemStyle.ForeColor = Color.Blue;
            grid_other.Columns[34].ItemStyle.ForeColor = Color.Blue;

            grid_other.Columns[35].ItemStyle.Wrap = false;


        }
    }
    protected void btnprint_Click(object sender, EventArgs e)
    {if (chktest.Checked)
        {

        }
        else
        {
            if (grid_press.Rows.Count > 25)
            {
                grid_press_help.Visible = true;

                for (int i = 0; i < 24; i++)
                {
                    grid_press_help.Rows[i].Visible = false;
                }
                for (int i = 24; i < grid_press.Rows.Count; i++)
                {
                    grid_press.Rows[i].Visible = false;
                }

            }
        }
        Session["ctrl"] = pnlpress;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
        Timer1.Enabled = true;
    }
    protected void btnprint_press_s_Click(object sender, EventArgs e)
    {
        if (grid_falehP.Rows.Count > 25)
        {
            grid_falehP_help.Visible = true;

            for (int i = 0; i < 24; i++)
            {
                grid_falehP_help.Rows[i].Visible = false;
            }
            for (int i = 24; i < grid_falehP.Rows.Count; i++)
            {
                grid_falehP.Rows[i].Visible = false;
            }

        }
        Session["ctrl"] = Panel_press_s;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
        Timer1.Enabled = true;
    }
    protected void btnprint_rikht_Click(object sender, EventArgs e)
    {

        if (grid_Rikht.Rows.Count > 25)
        {
            grid_Rikht_help.Visible = true;

            for (int i = 0; i < 24; i++)
            {
                grid_Rikht_help.Rows[i].Visible = false;
            }
            for (int i = 24; i < grid_Rikht.Rows.Count; i++)
            {
                grid_Rikht.Rows[i].Visible = false;
            }

        }
        
        Session["ctrl"] = Panel_rikhtegari;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
        Timer1.Enabled = true;
       
    }
    protected void btnprint_rikhts_Click(object sender, EventArgs e)
    {
        if (grid_falehR.Rows.Count > 25)
        {
            grid_falehR_help.Visible = true;

            for (int i = 0; i < 24; i++)
            {
                grid_falehR_help.Rows[i].Visible = false;
            }
            for (int i = 24; i < grid_falehR.Rows.Count; i++)
            {
                grid_falehR.Rows[i].Visible = false;
            }

        }
        Session["ctrl"] = Panel_rikhtegari_s;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
        Timer1.Enabled = true;
    }
    protected void btnprint_forming_Click(object sender, EventArgs e)
    {
        Session["ctrl"] = Panel_forming;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
    }



    protected void Timer1_Tick(object sender, EventArgs e)
    {
        grid_Rikht_help.Visible = false;
        for (int i = 0; i < grid_Rikht.Rows.Count; i++)
        {
            grid_Rikht.Rows[i].Visible = true;
        }
        grid_Rikht.DataBind();
        //============================================
        grid_press_help.Visible = false;
        for (int i = 0; i < grid_press.Rows.Count; i++)
        {
            grid_press.Rows[i].Visible = true;
        }
        grid_press.DataBind();
        //============================================
        grid_falehP_help.Visible = false;
        for (int i = 0; i < grid_falehP.Rows.Count; i++)
        {
            grid_falehP.Rows[i].Visible = true;
        }
        grid_falehP.DataBind();
        //============================================
        grid_falehR_help.Visible = false;
        for (int i = 0; i < grid_falehR.Rows.Count; i++)
        {
            grid_falehR.Rows[i].Visible = true;
        }
        grid_falehR.DataBind();
        //============================================
        Timer1.Enabled = false;
    }

    
}