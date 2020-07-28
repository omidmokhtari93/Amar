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
    string date = "1393/01/01";
  
    string year = "";
    string mounth = "";
    string day = "";
    string id = "";
    string glaze = "";
    int jame = 0;
    int naghs = 0;
    string sub1, sub2 = "";
    static String itemid = "";
    static String tarikh = "";
    static string fazkind = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Visible = false;
        lblcompair.Visible = false;
        lblcompair.Text = "";
        Page.MaintainScrollPositionOnPostBack = true;
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
        date = p.GetYear(datetimeformat).ToString("0000") + '/' + p.GetMonth(datetimeformat).ToString("00") + '/' + p.GetDayOfMonth(datetimeformat).ToString("00");
                

        if (!Page.IsPostBack)
        {
            labldate.Text = date;
            year = date.Substring(0, 4);
            dryear.SelectedValue = year;
            mounth = date.Substring(5, 2);
            drmounth.SelectedValue = mounth;
            day = date.Substring(8, 2);
            drday.SelectedValue = day;
        }
        
       

       
        

    }
   

    protected void drday_SelectedIndexChanged(object sender, EventArgs e)
    {
        year = dryear.SelectedValue;
        mounth = drmounth.SelectedValue;
        day = drday.SelectedValue;
        date = year + "/" + mounth + "/" + day;
        labldate.Text = date;
    }
    protected void drmounth_SelectedIndexChanged(object sender, EventArgs e)
    {
        year = dryear.SelectedValue;
        mounth = drmounth.SelectedValue;
        day = drday.SelectedValue;
        date = year + "/" + mounth + "/" + day;
        labldate.Text = date;
    }
    protected void dryear_SelectedIndexChanged(object sender, EventArgs e)
    {
        year = dryear.SelectedValue;
        mounth = drmounth.SelectedValue;
        day = drday.SelectedValue;
        date = year + "/" + mounth + "/" + day;
        labldate.Text = date;
    }
    protected void Edit_grade_Click(object sender, EventArgs e)
    {
        if (rdbglaze.SelectedValue == "1")
        {
            grid_sort2.Visible = false;
            grid_sort2test.Visible = false;
            grid_sort1.Visible = true;
            grid_sort1test.Visible = true;
            
            lblfaz.Text = "یک";
            Session["faz"] = "faz1";
            Session["numfaz"] = 1;

            cnn.Open();
            SqlCommand cmd_search1 = new SqlCommand("select tarikh from grade_faz1 where tarikh='" + labldate.Text + "'", cnn);
            SqlDataReader dr1 = cmd_search1.ExecuteReader();

            if (!dr1.Read())
            {
                cnn.Close();
                cnn.Open();

                SqlCommand cmd_insert_grade1 = new SqlCommand("insert into  grade_faz1 (  tarikh, faz, item_id, tedad, gradea, ahan, khlabeh, kharegi, noglaze, pin, khglaze ,rageh,kafsefid, deformation, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab,khash, gradeB, gradeC, wastage, return_glaze) " +
               "(SELECT     tarikh, faz, itemid, tedad, A, ahan, khlabeh, khareji, noglaze, pin, khglaze, rageh, kafsefid, deformegi, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh ,labpar, rizesh, hobab, khash, " +
                         " 0 AS gradeB, 0 AS gradeC, 0 AS wastage, 0 AS return_glaze " +
                         " FROM         (SELECT     tarikh, faz, itemid, " +
                                                    "A + ahan + khlabeh + khareji + noglaze + pin + khglaze + kafsefid + deformegi + tarak + dorangi + sarsozani + oftadegi + payeh + khbadaneh + tarpayeh + tardasteh +labpar + rizesh + hobab + rageh +" +
                                                  "khash AS tedad, A, ahan, khlabeh, khareji, noglaze, pin, khglaze, rageh, kafsefid, deformegi, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab, khash" +
                            "  FROM         (SELECT     TOP (100) PERCENT MAX(dbo.grade_per.tarikh) AS tarikh, MAX(dbo.grade_per.faz) AS faz, dbo.item.id AS itemid, SUM(dbo.grade_per.gradea) AS A, SUM(dbo.grade_per.ahan) " +
                                                                           " AS ahan, SUM(dbo.grade_per.khlabeh) AS khlabeh, SUM(dbo.grade_per.kharegi) AS khareji, SUM(dbo.grade_per.noglaze) AS noglaze, SUM(dbo.grade_per.pin) AS pin," +
                                                                         "   SUM(dbo.grade_per.khglaze) AS khglaze, SUM(dbo.grade_per.kafsefid) AS kafsefid, SUM(dbo.grade_per.deformation) AS deformegi, SUM(dbo.grade_per.tarak) AS tarak, " +
                                                                         "   SUM(dbo.grade_per.dorangi) AS dorangi, SUM(dbo.grade_per.sarsozani) AS sarsozani, SUM(dbo.grade_per.oftadegi) AS oftadegi, SUM(dbo.grade_per.payeh) AS payeh, " +
                                                                        "   SUM(dbo.grade_per.khbadaneh) AS khbadaneh, SUM(dbo.grade_per.tarpayeh) AS tarpayeh,sum(dbo.grade_per.tardasteh)as tardasteh, SUM(dbo.grade_per.labpar) AS labpar, SUM(dbo.grade_per.rizesh) AS rizesh, " +
                                                                        "    SUM(grade_per.hobab) AS hobab, SUM(dbo.grade_per.rageh) AS rageh, SUM(dbo.grade_per.khash) AS khash" +
                                                   "   FROM         dbo.grade_per INNER JOIN" +
                                                                     "       dbo.item ON dbo.grade_per.item_id = dbo.item.id" +
                                                    "  WHERE     (dbo.grade_per.faz = 1) AND (dbo.grade_per.tarikh = '" + labldate.Text + "') AND (dbo.grade_per.test=0)" +
                                                    "  GROUP BY dbo.item.id, dbo.item.item_name, dbo.item.sector_product" +
                                                     " ORDER BY item.sector_product) AS darsad)AS darage)", cnn);
                cmd_insert_grade1.ExecuteNonQuery();
                //--------------------------------------
                SqlCommand cmd_insert_grade1_test = new SqlCommand("insert into  grade_faz1test (  tarikh, faz, item_id, tedad, gradea, ahan, khlabeh, kharegi, noglaze, pin, khglaze ,rageh,kafsefid, deformation, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab,khash, gradeB, gradeC, wastage, return_glaze) " +
              "(SELECT     tarikh, faz, itemid, tedad, A, ahan, khlabeh, khareji, noglaze, pin, khglaze, rageh, kafsefid, deformegi, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh ,labpar, rizesh, hobab, khash, " +
                        " 0 AS gradeB, 0 AS gradeC, 0 AS wastage, 0 AS return_glaze " +
                        " FROM         (SELECT     tarikh, faz, itemid, " +
                                                   "A + ahan + khlabeh + khareji + noglaze + pin + khglaze + kafsefid + deformegi + tarak + dorangi + sarsozani + oftadegi + payeh + khbadaneh + tarpayeh + tardasteh +labpar + rizesh + hobab + rageh +" +
                                                 "khash AS tedad, A, ahan, khlabeh, khareji, noglaze, pin, khglaze, rageh, kafsefid, deformegi, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab, khash" +
                           "  FROM         (SELECT     TOP (100) PERCENT MAX(dbo.grade_per.tarikh) AS tarikh, MAX(dbo.grade_per.faz) AS faz, dbo.item.id AS itemid, SUM(dbo.grade_per.gradea) AS A, SUM(dbo.grade_per.ahan) " +
                                                                          " AS ahan, SUM(dbo.grade_per.khlabeh) AS khlabeh, SUM(dbo.grade_per.kharegi) AS khareji, SUM(dbo.grade_per.noglaze) AS noglaze, SUM(dbo.grade_per.pin) AS pin," +
                                                                        "   SUM(dbo.grade_per.khglaze) AS khglaze, SUM(dbo.grade_per.kafsefid) AS kafsefid, SUM(dbo.grade_per.deformation) AS deformegi, SUM(dbo.grade_per.tarak) AS tarak, " +
                                                                        "   SUM(dbo.grade_per.dorangi) AS dorangi, SUM(dbo.grade_per.sarsozani) AS sarsozani, SUM(dbo.grade_per.oftadegi) AS oftadegi, SUM(dbo.grade_per.payeh) AS payeh, " +
                                                                       "   SUM(dbo.grade_per.khbadaneh) AS khbadaneh, SUM(dbo.grade_per.tarpayeh) AS tarpayeh,sum(dbo.grade_per.tardasteh)as tardasteh, SUM(dbo.grade_per.labpar) AS labpar, SUM(dbo.grade_per.rizesh) AS rizesh, " +
                                                                       "    SUM(grade_per.hobab) AS hobab, SUM(dbo.grade_per.rageh) AS rageh, SUM(dbo.grade_per.khash) AS khash" +
                                                  "   FROM         dbo.grade_per INNER JOIN" +
                                                                    "       dbo.item ON dbo.grade_per.item_id = dbo.item.id" +
                                                   "  WHERE     (dbo.grade_per.faz = 1) AND (dbo.grade_per.tarikh = '" + labldate.Text + "') AND (dbo.grade_per.test=1)" +
                                                   "  GROUP BY dbo.item.id, dbo.item.item_name, dbo.item.sector_product" +
                                                    " ORDER BY item.sector_product) AS darsad)AS darage)", cnn);
                cmd_insert_grade1_test.ExecuteNonQuery();


            }
            else
            {
                cnn.Close();
                cnn.Open();
                SqlCommand cmd_insert_after = new SqlCommand("insert into  grade_faz1 (  tarikh, faz, item_id, tedad, gradea, ahan, khlabeh, kharegi, noglaze, pin, khglaze ,rageh,kafsefid, deformation, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab,khash, gradeB, gradeC, wastage, return_glaze) " +
              "(SELECT     tarikh, faz, itemid, tedad, A, ahan, khlabeh, khareji, noglaze, pin, khglaze, rageh, kafsefid, deformegi, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh, tardasteh , labpar, rizesh, hobab, khash, " +
                        " 0 AS gradeB, 0 AS gradeC, 0 AS wastage, 0 AS return_glaze " +
                        " FROM         (SELECT     tarikh, faz, itemid, " +
                                                   "A + ahan + khlabeh + khareji + noglaze + pin + khglaze + kafsefid + deformegi + tarak + dorangi + sarsozani + oftadegi + payeh + khbadaneh + tarpayeh + tardasteh + labpar + rizesh + hobab + rageh +" +
                                                 "khash AS tedad, A, ahan, khlabeh, khareji, noglaze, pin, khglaze, rageh, kafsefid, deformegi, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab, khash" +
                           "  FROM         (SELECT     TOP (100) PERCENT MAX(dbo.grade_per.tarikh) AS tarikh, MAX(dbo.grade_per.faz) AS faz, dbo.item.id AS itemid, SUM(dbo.grade_per.gradea) AS A, SUM(dbo.grade_per.ahan) " +
                                                                          " AS ahan, SUM(dbo.grade_per.khlabeh) AS khlabeh, SUM(dbo.grade_per.kharegi) AS khareji, SUM(dbo.grade_per.noglaze) AS noglaze, SUM(dbo.grade_per.pin) AS pin," +
                                                                        "   SUM(dbo.grade_per.khglaze) AS khglaze, SUM(dbo.grade_per.kafsefid) AS kafsefid, SUM(dbo.grade_per.deformation) AS deformegi, SUM(dbo.grade_per.tarak) AS tarak, " +
                                                                        "   SUM(dbo.grade_per.dorangi) AS dorangi, SUM(dbo.grade_per.sarsozani) AS sarsozani, SUM(dbo.grade_per.oftadegi) AS oftadegi, SUM(dbo.grade_per.payeh) AS payeh, " +
                                                                       "   SUM(dbo.grade_per.khbadaneh) AS khbadaneh, SUM(dbo.grade_per.tarpayeh) AS tarpayeh,sum(dbo.grade_per.tardasteh)as tardasteh, SUM(dbo.grade_per.labpar) AS labpar, SUM(dbo.grade_per.rizesh) AS rizesh, " +
                                                                       "    SUM(grade_per.hobab) AS hobab, SUM(dbo.grade_per.rageh) AS rageh, SUM(dbo.grade_per.khash) AS khash" +
                                                  "   FROM         dbo.grade_per INNER JOIN" +
                                                                    "       dbo.item ON dbo.grade_per.item_id = dbo.item.id" +
                                                   "      WHERE     (dbo.grade_per.faz = 1) AND (dbo.grade_per.tarikh = '" + labldate.Text + "') AND (dbo.grade_per.test=0) AND (dbo.grade_per.item_id IN" +
                                               "   (SELECT     item_id "+
                                                "     FROM         dbo.grade_per AS grade_per_1"+
                                                 "    WHERE     (item_id NOT IN "+
                                                  "                             (SELECT     item_id "+
                                                   "                                FROM         dbo.grade_faz1 "+
                                                    "                              WHERE     (tarikh ='" + labldate.Text + "' ))) AND (tarikh = '" + labldate.Text + "')  " +
                                                    " GROUP BY item_id))"+

                                                   "  GROUP BY dbo.item.id, dbo.item.item_name, dbo.item.sector_product" +
                                                    " ORDER BY item.sector_product) AS darsad)AS darage)", cnn);
                cmd_insert_after.ExecuteNonQuery();
                //---------------------------------------
                SqlCommand cmd_insert_aftertest = new SqlCommand("insert into  grade_faz1test (  tarikh, faz, item_id, tedad, gradea, ahan, khlabeh, kharegi, noglaze, pin, khglaze ,rageh,kafsefid, deformation, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab,khash, gradeB, gradeC, wastage, return_glaze) " +
             "(SELECT     tarikh, faz, itemid, tedad, A, ahan, khlabeh, khareji, noglaze, pin, khglaze, rageh, kafsefid, deformegi, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh, tardasteh , labpar, rizesh, hobab, khash, " +
                       " 0 AS gradeB, 0 AS gradeC, 0 AS wastage, 0 AS return_glaze " +
                       " FROM         (SELECT     tarikh, faz, itemid, " +
                                                  "A + ahan + khlabeh + khareji + noglaze + pin + khglaze + kafsefid + deformegi + tarak + dorangi + sarsozani + oftadegi + payeh + khbadaneh + tarpayeh + tardasteh + labpar + rizesh + hobab + rageh +" +
                                                "khash AS tedad, A, ahan, khlabeh, khareji, noglaze, pin, khglaze, rageh, kafsefid, deformegi, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab, khash" +
                          "  FROM         (SELECT     TOP (100) PERCENT MAX(dbo.grade_per.tarikh) AS tarikh, MAX(dbo.grade_per.faz) AS faz, dbo.item.id AS itemid, SUM(dbo.grade_per.gradea) AS A, SUM(dbo.grade_per.ahan) " +
                                                                         " AS ahan, SUM(dbo.grade_per.khlabeh) AS khlabeh, SUM(dbo.grade_per.kharegi) AS khareji, SUM(dbo.grade_per.noglaze) AS noglaze, SUM(dbo.grade_per.pin) AS pin," +
                                                                       "   SUM(dbo.grade_per.khglaze) AS khglaze, SUM(dbo.grade_per.kafsefid) AS kafsefid, SUM(dbo.grade_per.deformation) AS deformegi, SUM(dbo.grade_per.tarak) AS tarak, " +
                                                                       "   SUM(dbo.grade_per.dorangi) AS dorangi, SUM(dbo.grade_per.sarsozani) AS sarsozani, SUM(dbo.grade_per.oftadegi) AS oftadegi, SUM(dbo.grade_per.payeh) AS payeh, " +
                                                                      "   SUM(dbo.grade_per.khbadaneh) AS khbadaneh, SUM(dbo.grade_per.tarpayeh) AS tarpayeh,sum(dbo.grade_per.tardasteh)as tardasteh, SUM(dbo.grade_per.labpar) AS labpar, SUM(dbo.grade_per.rizesh) AS rizesh, " +
                                                                      "    SUM(grade_per.hobab) AS hobab, SUM(dbo.grade_per.rageh) AS rageh, SUM(dbo.grade_per.khash) AS khash" +
                                                 "   FROM         dbo.grade_per INNER JOIN" +
                                                                   "       dbo.item ON dbo.grade_per.item_id = dbo.item.id" +
                                                  "      WHERE     (dbo.grade_per.faz = 1) AND (dbo.grade_per.tarikh = '" + labldate.Text + "') AND(dbo.grade_per.test=1) AND (dbo.grade_per.item_id IN" +
                                              "   (SELECT     item_id " +
                                               "     FROM         dbo.grade_per AS grade_per_1" +
                                                "    WHERE     (item_id NOT IN " +
                                                 "                             (SELECT     item_id " +
                                                  "                                FROM         dbo.grade_faz1test " +
                                                   "                              WHERE     (tarikh ='" + labldate.Text + "' ))) AND (tarikh = '" + labldate.Text + "') " +
                                                   " GROUP BY item_id))" +

                                                  "  GROUP BY dbo.item.id, dbo.item.item_name, dbo.item.sector_product" +
                                                   " ORDER BY item.sector_product) AS darsad)AS darage)", cnn);
                cmd_insert_aftertest.ExecuteNonQuery();
                //==================================================
                SqlCommand cmd_update = new SqlCommand("update grade_faz1 set tedad=tedadd, gradea=A, ahan=ahann, khlabeh=khlabehh, kharegi=kharejii, noglaze=noglazee, pin=pinn, khglaze=khglazee ,rageh=ragehh,kafsefid=kafsefidd, deformation=deformegii, tarak=tarakk, dorangi=dorangii, sarsozani=sarsozanii, oftadegi=oftadegii, payeh=payehh, khbadaneh=khbadanehh, tarpayeh=tarpayehh,tardasteh=tardastehh, labpar=labparr, rizesh=rizeshh, hobab=hobabb,khash=khashh from " +
              "(SELECT     tarikhh, fazz, itemidd, tedadd, A, ahann, khlabehh, kharejii, noglazee, pinn, khglazee, ragehh, kafsefidd, deformegii, tarakk, dorangii, sarsozanii, oftadegii, payehh, khbadanehh, tarpayehh,tardastehh, labparr, rizeshh, hobabb,khashh "+
                          "     FROM         (SELECT     tarikhh, fazz, itemidd, "+
                                             " A + ahann + khlabehh + kharejii + noglazee + pinn + khglazee + kafsefidd + deformegii + tarakk + dorangii + sarsozanii + oftadegii + payehh + khbadanehh + tarpayehh + tardastehh + labparr + rizeshh + hobabb + ragehh + "+
                                              " khashh AS tedadd, A, ahann, khlabehh, kharejii, noglazee, pinn, khglazee, ragehh, kafsefidd, deformegii, tarakk, dorangii, sarsozanii, oftadegii, payehh, khbadanehh, tarpayehh,tardastehh, labparr, rizeshh, hobabb,  khashh "+
                                                  "  FROM         (SELECT     TOP (100) PERCENT MAX(dbo.grade_per.tarikh) AS tarikhh, MAX(dbo.grade_per.faz) AS fazz, dbo.item.id AS itemidd, SUM(dbo.grade_per.gradea) AS A, SUM(dbo.grade_per.ahan) "+
                                                                   "   AS ahann, SUM(dbo.grade_per.khlabeh) AS khlabehh, SUM(dbo.grade_per.kharegi) AS kharejii, SUM(dbo.grade_per.noglaze) AS noglazee, SUM(dbo.grade_per.pin) AS pinn, "+
                                                                    "  SUM(dbo.grade_per.khglaze) AS khglazee, SUM(dbo.grade_per.kafsefid) AS kafsefidd, SUM(dbo.grade_per.deformation) AS deformegii, SUM(dbo.grade_per.tarak) AS tarakk, "+
                                                                    "  SUM(dbo.grade_per.dorangi) AS dorangii, SUM(dbo.grade_per.sarsozani) AS sarsozanii, SUM(dbo.grade_per.oftadegi) AS oftadegii, SUM(dbo.grade_per.payeh) AS payehh, "+
                                                                    "  SUM(dbo.grade_per.khbadaneh) AS khbadanehh, SUM(dbo.grade_per.tarpayeh) AS tarpayehh,sum(dbo.grade_per.tardasteh)as tardastehh, SUM(dbo.grade_per.labpar) AS labparr, SUM(dbo.grade_per.rizesh) AS rizeshh, " +
                                                                  "    SUM(dbo.grade_per.hobab) AS hobabb, SUM(dbo.grade_per.rageh) AS ragehh, SUM(dbo.grade_per.khash) AS khashh "+
                                            "   FROM         dbo.grade_per INNER JOIN "+
                                                     "               dbo.item ON dbo.grade_per.item_id = dbo.item.id "+
                                           "   WHERE     (dbo.grade_per.faz = 1) AND (dbo.grade_per.tarikh = '"+labldate.Text+ "') AND (dbo.grade_per.test=0) " +
                                              "  GROUP BY dbo.item.id, dbo.item.item_name, dbo.item.sector_product "+
                                             "  ORDER BY item.item_name,dbo.item.sector_product) AS darsad) AS darage) as upd  WHERE (grade_faz1.item_id=upd.itemidd) and (grade_faz1.tarikh='" + labldate.Text + "') ", cnn);
                cmd_update.ExecuteNonQuery();
                SqlCommand cmd_updatetest = new SqlCommand("update grade_faz1test set tedad=tedadd, gradea=A, ahan=ahann, khlabeh=khlabehh, kharegi=kharejii, noglaze=noglazee, pin=pinn, khglaze=khglazee ,rageh=ragehh,kafsefid=kafsefidd, deformation=deformegii, tarak=tarakk, dorangi=dorangii, sarsozani=sarsozanii, oftadegi=oftadegii, payeh=payehh, khbadaneh=khbadanehh, tarpayeh=tarpayehh,tardasteh=tardastehh, labpar=labparr, rizesh=rizeshh, hobab=hobabb,khash=khashh from " +
              "(SELECT     tarikhh, fazz, itemidd, tedadd, A, ahann, khlabehh, kharejii, noglazee, pinn, khglazee, ragehh, kafsefidd, deformegii, tarakk, dorangii, sarsozanii, oftadegii, payehh, khbadanehh, tarpayehh,tardastehh, labparr, rizeshh, hobabb,khashh " +
                          "     FROM         (SELECT     tarikhh, fazz, itemidd, " +
                                             " A + ahann + khlabehh + kharejii + noglazee + pinn + khglazee + kafsefidd + deformegii + tarakk + dorangii + sarsozanii + oftadegii + payehh + khbadanehh + tarpayehh + tardastehh + labparr + rizeshh + hobabb + ragehh + " +
                                              " khashh AS tedadd, A, ahann, khlabehh, kharejii, noglazee, pinn, khglazee, ragehh, kafsefidd, deformegii, tarakk, dorangii, sarsozanii, oftadegii, payehh, khbadanehh, tarpayehh,tardastehh, labparr, rizeshh, hobabb,  khashh " +
                                                  "  FROM         (SELECT     TOP (100) PERCENT MAX(dbo.grade_per.tarikh) AS tarikhh, MAX(dbo.grade_per.faz) AS fazz, dbo.item.id AS itemidd, SUM(dbo.grade_per.gradea) AS A, SUM(dbo.grade_per.ahan) " +
                                                                   "   AS ahann, SUM(dbo.grade_per.khlabeh) AS khlabehh, SUM(dbo.grade_per.kharegi) AS kharejii, SUM(dbo.grade_per.noglaze) AS noglazee, SUM(dbo.grade_per.pin) AS pinn, " +
                                                                    "  SUM(dbo.grade_per.khglaze) AS khglazee, SUM(dbo.grade_per.kafsefid) AS kafsefidd, SUM(dbo.grade_per.deformation) AS deformegii, SUM(dbo.grade_per.tarak) AS tarakk, " +
                                                                    "  SUM(dbo.grade_per.dorangi) AS dorangii, SUM(dbo.grade_per.sarsozani) AS sarsozanii, SUM(dbo.grade_per.oftadegi) AS oftadegii, SUM(dbo.grade_per.payeh) AS payehh, " +
                                                                    "  SUM(dbo.grade_per.khbadaneh) AS khbadanehh, SUM(dbo.grade_per.tarpayeh) AS tarpayehh,sum(dbo.grade_per.tardasteh)as tardastehh, SUM(dbo.grade_per.labpar) AS labparr, SUM(dbo.grade_per.rizesh) AS rizeshh, " +
                                                                  "    SUM(dbo.grade_per.hobab) AS hobabb, SUM(dbo.grade_per.rageh) AS ragehh, SUM(dbo.grade_per.khash) AS khashh " +
                                            "   FROM         dbo.grade_per INNER JOIN " +
                                                     "               dbo.item ON dbo.grade_per.item_id = dbo.item.id " +
                                           "   WHERE     (dbo.grade_per.faz = 1) AND (dbo.grade_per.tarikh = '" + labldate.Text + "') AND (dbo.grade_per.test=1) " +
                                              "  GROUP BY dbo.item.id, dbo.item.item_name, dbo.item.sector_product " +
                                             "  ORDER BY item.item_name,dbo.item.sector_product) AS darsad) AS darage) as upd  WHERE (grade_faz1test.item_id=upd.itemidd) and (grade_faz1test.tarikh='" + labldate.Text + "') ", cnn);
                cmd_updatetest.ExecuteNonQuery();  
            }
            System.Data.DataView dv = (System.Data.DataView)faz1.Select(DataSourceSelectArguments.Empty);
            
            for (int i = 0; i < grid_sort1.Rows.Count; i++)//loop the GridView Rows
            {
               
                        id = Convert.ToString(dv.ToTable().Rows[i]["item_id"]);//در صورت اضافه کردن به لیست معایب دقت شود که مقادیر زیر از دیتاسورس استخراج می شود نه از گریدویو
                                             //  ahan, khlabeh, kharegi, noglaze, pin, khglaze, kafsefid, deformation, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh, labpar, rizesh, hobab, 
                                              //        rageh, khash, ahan, gradeC, wastage, return_glaze

                        jame = (Convert.ToInt32(dv.ToTable().Rows[i]["gradeB"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["gradeC"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["wastage"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["return_glaze"]));
                        naghs = (Convert.ToInt32(dv.ToTable().Rows[i]["ahan"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khlabeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["kharegi"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["noglaze"])) +
                            (Convert.ToInt32(dv.ToTable().Rows[i]["pin"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khglaze"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["kafsefid"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["deformation"])) +
                            (Convert.ToInt32(dv.ToTable().Rows[i]["tarak"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["dorangi"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["sarsozani"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["oftadegi"])) +
                            (Convert.ToInt32(dv.ToTable().Rows[i]["payeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khbadaneh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["tarpayeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["tardasteh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["labpar"])) +
                            (Convert.ToInt32(dv.ToTable().Rows[i]["rizesh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["hobab"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["rageh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khash"]));

                        if (jame == naghs)
                        {

                            SqlCommand cmd_update = new SqlCommand("update grade_faz1  set equal=1 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                            cmd_update.ExecuteNonQuery();//update

                        }
                        else
                        {
                            SqlCommand cmd_update = new SqlCommand("update grade_faz1  set equal=0 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                            cmd_update.ExecuteNonQuery();//update
                        }
                    
            }
            System.Data.DataView dvtest = (System.Data.DataView)sqlfaz1_test.Select(DataSourceSelectArguments.Empty);

            for (int i = 0; i < grid_sort1test.Rows.Count; i++)//loop the GridView Rows
            {

                id = Convert.ToString(dvtest.ToTable().Rows[i]["item_id"]);
                jame = (Convert.ToInt32(dvtest.ToTable().Rows[i]["gradeB"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["gradeC"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["wastage"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["return_glaze"]));
                naghs = (Convert.ToInt32(dvtest.ToTable().Rows[i]["ahan"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khlabeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["kharegi"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["noglaze"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["pin"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khglaze"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["kafsefid"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["deformation"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["tarak"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["dorangi"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["sarsozani"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["oftadegi"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["payeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khbadaneh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["tarpayeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["tardasteh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["labpar"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["rizesh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["hobab"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["rageh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khash"]));
                if (jame == naghs)
                {

                    SqlCommand cmd_update = new SqlCommand("update grade_faz1test  set equal=1 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update

                }
                else
                {
                    SqlCommand cmd_update = new SqlCommand("update grade_faz1test  set equal=0 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update
                }

            }
            grid_sort1.DataBind();
            grid_sort1test.DataBind();
            cnn.Close();
        }
        else if (rdbglaze.SelectedValue == "2")
        {
            
            lblfaz.Text = "دو";
            Session["faz"] = "faz2";
            Session["numfaz"] = 2;
            grid_sort2.Visible = true;
            grid_sort2test.Visible = true;
            grid_sort1.Visible = false;
            grid_sort1test.Visible = false;
            cnn.Open();
            SqlCommand cmd_search2 = new SqlCommand("select tarikh from grade_faz2 where tarikh='" + labldate.Text + "'", cnn);
            SqlDataReader dr2 = cmd_search2.ExecuteReader();

            if (!dr2.Read())//
            {
                cnn.Close();
                cnn.Open();


                SqlCommand cmd_insert_grade2 = new SqlCommand("insert into  grade_faz2 (  tarikh, faz, item_id, tedad, gradea, ahan, khlabeh, kharegi, noglaze, pin, khglaze ,rageh,kafsefid, deformation, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab,khash, gradeB, gradeC, wastage, return_glaze) " +
               "(SELECT     tarikh, faz, itemid, tedad, A, ahan, khlabeh, khareji, noglaze, pin, khglaze, rageh, kafsefid, deformegi, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab, khash, " +
                         " 0 AS gradeB, 0 AS gradeC, 0 AS wastage, 0 AS return_glaze " +
                         " FROM         (SELECT     tarikh, faz, itemid, " +
                                                    "A + ahan + khlabeh + khareji + noglaze + pin + khglaze + kafsefid + deformegi + tarak + dorangi + sarsozani + oftadegi + payeh + khbadaneh + tarpayeh + tardasteh + labpar + rizesh + hobab + rageh +" +
                                                  "khash AS tedad, A, ahan, khlabeh, khareji, noglaze, pin, khglaze, rageh, kafsefid, deformegi, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab, khash" +
                            "  FROM         (SELECT     TOP (100) PERCENT MAX(dbo.grade_per.tarikh) AS tarikh, MAX(dbo.grade_per.faz) AS faz, dbo.item.id AS itemid, SUM(dbo.grade_per.gradea) AS A, SUM(dbo.grade_per.ahan) " +
                                                                           " AS ahan, SUM(dbo.grade_per.khlabeh) AS khlabeh, SUM(dbo.grade_per.kharegi) AS khareji, SUM(dbo.grade_per.noglaze) AS noglaze, SUM(dbo.grade_per.pin) AS pin," +
                                                                         "   SUM(dbo.grade_per.khglaze) AS khglaze, SUM(dbo.grade_per.kafsefid) AS kafsefid, SUM(dbo.grade_per.deformation) AS deformegi, SUM(dbo.grade_per.tarak) AS tarak, " +
                                                                         "   SUM(dbo.grade_per.dorangi) AS dorangi, SUM(dbo.grade_per.sarsozani) AS sarsozani, SUM(dbo.grade_per.oftadegi) AS oftadegi, SUM(dbo.grade_per.payeh) AS payeh, " +
                                                                        "   SUM(dbo.grade_per.khbadaneh) AS khbadaneh, SUM(dbo.grade_per.tarpayeh) AS tarpayeh,SUM(dbo.grade_per.tardasteh) as tardasteh, SUM(dbo.grade_per.labpar) AS labpar, SUM(dbo.grade_per.rizesh) AS rizesh, " +
                                                                        "    SUM(grade_per.hobab) AS hobab, SUM(dbo.grade_per.rageh) AS rageh, SUM(dbo.grade_per.khash) AS khash" +
                                                   "   FROM         dbo.grade_per INNER JOIN" +
                                                                     "       dbo.item ON dbo.grade_per.item_id = dbo.item.id" +
                                                    "  WHERE     (dbo.grade_per.faz = 2) AND (dbo.grade_per.tarikh = '" + labldate.Text + "') AND (dbo.grade_per.test=0)" +
                                                    "  GROUP BY dbo.item.id, dbo.item.item_name, dbo.item.sector_product" +
                                                     " ORDER BY item.sector_product) AS darsad)AS darage)", cnn);
                cmd_insert_grade2.ExecuteNonQuery();
                //-------------------------------------
                SqlCommand cmd_insert_grade2_test = new SqlCommand("insert into  grade_faz2test (  tarikh, faz, item_id, tedad, gradea, ahan, khlabeh, kharegi, noglaze, pin, khglaze ,rageh,kafsefid, deformation, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab,khash, gradeB, gradeC, wastage, return_glaze) " +
             "(SELECT     tarikh, faz, itemid, tedad, A, ahan, khlabeh, khareji, noglaze, pin, khglaze, rageh, kafsefid, deformegi, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh ,labpar, rizesh, hobab, khash, " +
                       " 0 AS gradeB, 0 AS gradeC, 0 AS wastage, 0 AS return_glaze " +
                       " FROM         (SELECT     tarikh, faz, itemid, " +
                                                  "A + ahan + khlabeh + khareji + noglaze + pin + khglaze + kafsefid + deformegi + tarak + dorangi + sarsozani + oftadegi + payeh + khbadaneh + tarpayeh + tardasteh +labpar + rizesh + hobab + rageh +" +
                                                "khash AS tedad, A, ahan, khlabeh, khareji, noglaze, pin, khglaze, rageh, kafsefid, deformegi, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab, khash" +
                          "  FROM         (SELECT     TOP (100) PERCENT MAX(dbo.grade_per.tarikh) AS tarikh, MAX(dbo.grade_per.faz) AS faz, dbo.item.id AS itemid, SUM(dbo.grade_per.gradea) AS A, SUM(dbo.grade_per.ahan) " +
                                                                         " AS ahan, SUM(dbo.grade_per.khlabeh) AS khlabeh, SUM(dbo.grade_per.kharegi) AS khareji, SUM(dbo.grade_per.noglaze) AS noglaze, SUM(dbo.grade_per.pin) AS pin," +
                                                                       "   SUM(dbo.grade_per.khglaze) AS khglaze, SUM(dbo.grade_per.kafsefid) AS kafsefid, SUM(dbo.grade_per.deformation) AS deformegi, SUM(dbo.grade_per.tarak) AS tarak, " +
                                                                       "   SUM(dbo.grade_per.dorangi) AS dorangi, SUM(dbo.grade_per.sarsozani) AS sarsozani, SUM(dbo.grade_per.oftadegi) AS oftadegi, SUM(dbo.grade_per.payeh) AS payeh, " +
                                                                      "   SUM(dbo.grade_per.khbadaneh) AS khbadaneh, SUM(dbo.grade_per.tarpayeh) AS tarpayeh,sum(dbo.grade_per.tardasteh)as tardasteh, SUM(dbo.grade_per.labpar) AS labpar, SUM(dbo.grade_per.rizesh) AS rizesh, " +
                                                                      "    SUM(grade_per.hobab) AS hobab, SUM(dbo.grade_per.rageh) AS rageh, SUM(dbo.grade_per.khash) AS khash" +
                                                 "   FROM         dbo.grade_per INNER JOIN" +
                                                                   "       dbo.item ON dbo.grade_per.item_id = dbo.item.id" +
                                                  "  WHERE     (dbo.grade_per.faz = 2) AND (dbo.grade_per.tarikh = '" + labldate.Text + "') AND (dbo.grade_per.test=1)" +
                                                  "  GROUP BY dbo.item.id, dbo.item.item_name, dbo.item.sector_product" +
                                                   " ORDER BY item.sector_product) AS darsad)AS darage)", cnn);
                cmd_insert_grade2_test.ExecuteNonQuery();



            }
            else
            {
                cnn.Close();
                cnn.Open();
                SqlCommand cmd_insert_after2 = new SqlCommand("insert into  grade_faz2 (  tarikh, faz, item_id, tedad, gradea, ahan, khlabeh, kharegi, noglaze, pin, khglaze ,rageh,kafsefid, deformation, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab,khash, gradeB, gradeC, wastage, return_glaze) " +
                             "(SELECT     tarikh, faz, itemid, tedad, A, ahan, khlabeh, khareji, noglaze, pin, khglaze, rageh, kafsefid, deformegi, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab, khash, " +
                                       " 0 AS gradeB, 0 AS gradeC, 0 AS wastage, 0 AS return_glaze " +
                                       " FROM         (SELECT     tarikh, faz, itemid, " +
                                                                  "A + ahan + khlabeh + khareji + noglaze + pin + khglaze + kafsefid + deformegi + tarak + dorangi + sarsozani + oftadegi + payeh + khbadaneh + tarpayeh + tardasteh + labpar + rizesh + hobab + rageh +" +
                                                                "khash AS tedad, A, ahan, khlabeh, khareji, noglaze, pin, khglaze, rageh, kafsefid, deformegi, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab, khash" +
                                          "  FROM         (SELECT     TOP (100) PERCENT MAX(dbo.grade_per.tarikh) AS tarikh, MAX(dbo.grade_per.faz) AS faz, dbo.item.id AS itemid, SUM(dbo.grade_per.gradea) AS A, SUM(dbo.grade_per.ahan) " +
                                                                                         " AS ahan, SUM(dbo.grade_per.khlabeh) AS khlabeh, SUM(dbo.grade_per.kharegi) AS khareji, SUM(dbo.grade_per.noglaze) AS noglaze, SUM(dbo.grade_per.pin) AS pin," +
                                                                                       "   SUM(dbo.grade_per.khglaze) AS khglaze, SUM(dbo.grade_per.kafsefid) AS kafsefid, SUM(dbo.grade_per.deformation) AS deformegi, SUM(dbo.grade_per.tarak) AS tarak, " +
                                                                                       "   SUM(dbo.grade_per.dorangi) AS dorangi, SUM(dbo.grade_per.sarsozani) AS sarsozani, SUM(dbo.grade_per.oftadegi) AS oftadegi, SUM(dbo.grade_per.payeh) AS payeh, " +
                                                                                      "   SUM(dbo.grade_per.khbadaneh) AS khbadaneh, SUM(dbo.grade_per.tarpayeh) AS tarpayeh,SUM(dbo.grade_per.tardasteh) as tardasteh, SUM(dbo.grade_per.labpar) AS labpar, SUM(dbo.grade_per.rizesh) AS rizesh, " +
                                                                                      "    SUM(grade_per.hobab) AS hobab, SUM(dbo.grade_per.rageh) AS rageh, SUM(dbo.grade_per.khash) AS khash" +
                                                                 "   FROM         dbo.grade_per INNER JOIN" +
                                                                                   "       dbo.item ON dbo.grade_per.item_id = dbo.item.id" +
                                                              "      WHERE     (dbo.grade_per.faz = 2) AND (dbo.grade_per.tarikh = '" + labldate.Text + "') AND(dbo.grade_per.test=0) AND (dbo.grade_per.item_id IN" +
                                               "   (SELECT     item_id " +
                                                "     FROM         dbo.grade_per AS grade_per_1" +
                                                 "    WHERE     (item_id NOT IN " +
                                                  "                             (SELECT     item_id " +
                                                   "                               FROM         dbo.grade_faz2 " +
                                                    "                              WHERE     (tarikh = '" + labldate.Text + "'))) AND (tarikh = '" + labldate.Text + "') " +
                                                    " GROUP BY item_id))" +
                                                                  "  GROUP BY dbo.item.id, dbo.item.item_name, dbo.item.sector_product" +
                                                                   " ORDER BY item.sector_product) AS darsad)AS darage)", cnn);
                cmd_insert_after2.ExecuteNonQuery();
                //-------------------------------------------
                SqlCommand cmd_insert_aftertest = new SqlCommand("insert into  grade_faz2test (  tarikh, faz, item_id, tedad, gradea, ahan, khlabeh, kharegi, noglaze, pin, khglaze ,rageh,kafsefid, deformation, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab,khash, gradeB, gradeC, wastage, return_glaze) " +
             "(SELECT     tarikh, faz, itemid, tedad, A, ahan, khlabeh, khareji, noglaze, pin, khglaze, rageh, kafsefid, deformegi, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh, tardasteh , labpar, rizesh, hobab, khash, " +
                       " 0 AS gradeB, 0 AS gradeC, 0 AS wastage, 0 AS return_glaze " +
                       " FROM         (SELECT     tarikh, faz, itemid, " +
                                                  "A + ahan + khlabeh + khareji + noglaze + pin + khglaze + kafsefid + deformegi + tarak + dorangi + sarsozani + oftadegi + payeh + khbadaneh + tarpayeh + tardasteh + labpar + rizesh + hobab + rageh +" +
                                                "khash AS tedad, A, ahan, khlabeh, khareji, noglaze, pin, khglaze, rageh, kafsefid, deformegi, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab, khash" +
                          "  FROM         (SELECT     TOP (100) PERCENT MAX(dbo.grade_per.tarikh) AS tarikh, MAX(dbo.grade_per.faz) AS faz, dbo.item.id AS itemid, SUM(dbo.grade_per.gradea) AS A, SUM(dbo.grade_per.ahan) " +
                                                                         " AS ahan, SUM(dbo.grade_per.khlabeh) AS khlabeh, SUM(dbo.grade_per.kharegi) AS khareji, SUM(dbo.grade_per.noglaze) AS noglaze, SUM(dbo.grade_per.pin) AS pin," +
                                                                       "   SUM(dbo.grade_per.khglaze) AS khglaze, SUM(dbo.grade_per.kafsefid) AS kafsefid, SUM(dbo.grade_per.deformation) AS deformegi, SUM(dbo.grade_per.tarak) AS tarak, " +
                                                                       "   SUM(dbo.grade_per.dorangi) AS dorangi, SUM(dbo.grade_per.sarsozani) AS sarsozani, SUM(dbo.grade_per.oftadegi) AS oftadegi, SUM(dbo.grade_per.payeh) AS payeh, " +
                                                                      "   SUM(dbo.grade_per.khbadaneh) AS khbadaneh, SUM(dbo.grade_per.tarpayeh) AS tarpayeh,sum(dbo.grade_per.tardasteh)as tardasteh, SUM(dbo.grade_per.labpar) AS labpar, SUM(dbo.grade_per.rizesh) AS rizesh, " +
                                                                      "    SUM(grade_per.hobab) AS hobab, SUM(dbo.grade_per.rageh) AS rageh, SUM(dbo.grade_per.khash) AS khash" +
                                                 "   FROM         dbo.grade_per INNER JOIN" +
                                                                   "       dbo.item ON dbo.grade_per.item_id = dbo.item.id" +
                                                  "      WHERE     (dbo.grade_per.faz = 2) AND (dbo.grade_per.tarikh = '" + labldate.Text + "') AND(dbo.grade_per.test=1) AND (dbo.grade_per.item_id IN" +
                                              "   (SELECT     item_id " +
                                               "     FROM         dbo.grade_per AS grade_per_1" +
                                                "    WHERE     (item_id NOT IN " +
                                                 "                             (SELECT     item_id " +
                                                  "                                FROM         dbo.grade_faz2test " +
                                                   "                              WHERE     (tarikh ='" + labldate.Text + "' ))) AND (tarikh = '" + labldate.Text + "') " +
                                                   " GROUP BY item_id))" +

                                                  "  GROUP BY dbo.item.id, dbo.item.item_name, dbo.item.sector_product" +
                                                   " ORDER BY item.sector_product) AS darsad)AS darage)", cnn);
                cmd_insert_aftertest.ExecuteNonQuery();
                //=============================================
                SqlCommand cmd_update = new SqlCommand("update grade_faz2 set tedad=tedadd, gradea=A, ahan=ahann, khlabeh=khlabehh, kharegi=kharejii, noglaze=noglazee, pin=pinn, khglaze=khglazee ,rageh=ragehh,kafsefid=kafsefidd, deformation=deformegii, tarak=tarakk, dorangi=dorangii, sarsozani=sarsozanii, oftadegi=oftadegii, payeh=payehh, khbadaneh=khbadanehh, tarpayeh=tarpayehh,tardasteh=tardastehh, labpar=labparr, rizesh=rizeshh, hobab=hobabb,khash=khashh from " +
            "(SELECT     tarikhh, fazz, itemidd, tedadd, A, ahann, khlabehh, kharejii, noglazee, pinn, khglazee, ragehh, kafsefidd, deformegii, tarakk, dorangii, sarsozanii, oftadegii, payehh, khbadanehh, tarpayehh,tardastehh, labparr, rizeshh, hobabb,khashh " +
                        "     FROM         (SELECT     tarikhh, fazz, itemidd, " +
                                           " A + ahann + khlabehh + kharejii + noglazee + pinn + khglazee + kafsefidd + deformegii + tarakk + dorangii + sarsozanii + oftadegii + payehh + khbadanehh + tarpayehh + tardastehh + labparr + rizeshh + hobabb + ragehh + " +
                                            " khashh AS tedadd, A, ahann, khlabehh, kharejii, noglazee, pinn, khglazee, ragehh, kafsefidd, deformegii, tarakk, dorangii, sarsozanii, oftadegii, payehh, khbadanehh, tarpayehh , tardastehh, labparr, rizeshh, hobabb,  khashh " +
                                                "  FROM         (SELECT     TOP (100) PERCENT MAX(dbo.grade_per.tarikh) AS tarikhh, MAX(dbo.grade_per.faz) AS fazz, dbo.item.id AS itemidd, SUM(dbo.grade_per.gradea) AS A, SUM(dbo.grade_per.ahan) " +
                                                                   "   AS ahann, SUM(dbo.grade_per.khlabeh) AS khlabehh, SUM(dbo.grade_per.kharegi) AS kharejii, SUM(dbo.grade_per.noglaze) AS noglazee, SUM(dbo.grade_per.pin) AS pinn, " +
                                                                    "  SUM(dbo.grade_per.khglaze) AS khglazee, SUM(dbo.grade_per.kafsefid) AS kafsefidd, SUM(dbo.grade_per.deformation) AS deformegii, SUM(dbo.grade_per.tarak) AS tarakk, " +
                                                                    "  SUM(dbo.grade_per.dorangi) AS dorangii, SUM(dbo.grade_per.sarsozani) AS sarsozanii, SUM(dbo.grade_per.oftadegi) AS oftadegii, SUM(dbo.grade_per.payeh) AS payehh, " +
                                                                    "  SUM(dbo.grade_per.khbadaneh) AS khbadanehh, SUM(dbo.grade_per.tarpayeh) AS tarpayehh,SUM(dbo.grade_per.tardasteh) as tardastehh, SUM(dbo.grade_per.labpar) AS labparr, SUM(dbo.grade_per.rizesh) AS rizeshh, " +
                                                                  "    SUM(dbo.grade_per.hobab) AS hobabb, SUM(dbo.grade_per.rageh) AS ragehh, SUM(dbo.grade_per.khash) AS khashh " +
                                            "   FROM         dbo.grade_per INNER JOIN " +
                                                   "               dbo.item ON dbo.grade_per.item_id = dbo.item.id " +
                                         "   WHERE     (dbo.grade_per.faz = 2) AND (dbo.grade_per.tarikh = '" + labldate.Text + "') AND (dbo.grade_per.test=0)" +
                                            "  GROUP BY dbo.item.id, dbo.item.item_name, dbo.item.sector_product " +
                                           "  ORDER BY item.item_name,dbo.item.sector_product) AS darsad) AS darage) as upd  WHERE (grade_faz2.item_id=upd.itemidd) and (grade_faz2.tarikh='" + labldate.Text + "') ", cnn);
                cmd_update.ExecuteNonQuery();  
                //----------------------------------------
                SqlCommand cmd_updatetest = new SqlCommand("update grade_faz2test set tedad=tedadd, gradea=A, ahan=ahann, khlabeh=khlabehh, kharegi=kharejii, noglaze=noglazee, pin=pinn, khglaze=khglazee ,rageh=ragehh,kafsefid=kafsefidd, deformation=deformegii, tarak=tarakk, dorangi=dorangii, sarsozani=sarsozanii, oftadegi=oftadegii, payeh=payehh, khbadaneh=khbadanehh, tarpayeh=tarpayehh,tardasteh=tardastehh, labpar=labparr, rizesh=rizeshh, hobab=hobabb,khash=khashh from " +
              "(SELECT     tarikhh, fazz, itemidd, tedadd, A, ahann, khlabehh, kharejii, noglazee, pinn, khglazee, ragehh, kafsefidd, deformegii, tarakk, dorangii, sarsozanii, oftadegii, payehh, khbadanehh, tarpayehh,tardastehh, labparr, rizeshh, hobabb,khashh " +
                          "     FROM         (SELECT     tarikhh, fazz, itemidd, " +
                                             " A + ahann + khlabehh + kharejii + noglazee + pinn + khglazee + kafsefidd + deformegii + tarakk + dorangii + sarsozanii + oftadegii + payehh + khbadanehh + tarpayehh + tardastehh + labparr + rizeshh + hobabb + ragehh + " +
                                              " khashh AS tedadd, A, ahann, khlabehh, kharejii, noglazee, pinn, khglazee, ragehh, kafsefidd, deformegii, tarakk, dorangii, sarsozanii, oftadegii, payehh, khbadanehh, tarpayehh,tardastehh, labparr, rizeshh, hobabb,  khashh " +
                                                  "  FROM         (SELECT     TOP (100) PERCENT MAX(dbo.grade_per.tarikh) AS tarikhh, MAX(dbo.grade_per.faz) AS fazz, dbo.item.id AS itemidd, SUM(dbo.grade_per.gradea) AS A, SUM(dbo.grade_per.ahan) " +
                                                                   "   AS ahann, SUM(dbo.grade_per.khlabeh) AS khlabehh, SUM(dbo.grade_per.kharegi) AS kharejii, SUM(dbo.grade_per.noglaze) AS noglazee, SUM(dbo.grade_per.pin) AS pinn, " +
                                                                    "  SUM(dbo.grade_per.khglaze) AS khglazee, SUM(dbo.grade_per.kafsefid) AS kafsefidd, SUM(dbo.grade_per.deformation) AS deformegii, SUM(dbo.grade_per.tarak) AS tarakk, " +
                                                                    "  SUM(dbo.grade_per.dorangi) AS dorangii, SUM(dbo.grade_per.sarsozani) AS sarsozanii, SUM(dbo.grade_per.oftadegi) AS oftadegii, SUM(dbo.grade_per.payeh) AS payehh, " +
                                                                    "  SUM(dbo.grade_per.khbadaneh) AS khbadanehh, SUM(dbo.grade_per.tarpayeh) AS tarpayehh,sum(dbo.grade_per.tardasteh)as tardastehh, SUM(dbo.grade_per.labpar) AS labparr, SUM(dbo.grade_per.rizesh) AS rizeshh, " +
                                                                  "    SUM(dbo.grade_per.hobab) AS hobabb, SUM(dbo.grade_per.rageh) AS ragehh, SUM(dbo.grade_per.khash) AS khashh " +
                                            "   FROM         dbo.grade_per INNER JOIN " +
                                                     "               dbo.item ON dbo.grade_per.item_id = dbo.item.id " +
                                           "   WHERE     (dbo.grade_per.faz = 2) AND (dbo.grade_per.tarikh = '" + labldate.Text + "') AND (dbo.grade_per.test=1) " +
                                              "  GROUP BY dbo.item.id, dbo.item.item_name, dbo.item.sector_product " +
                                             "  ORDER BY item.item_name,dbo.item.sector_product) AS darsad) AS darage) as upd  WHERE (grade_faz2test.item_id=upd.itemidd) and (grade_faz2test.tarikh='" + labldate.Text + "') ", cnn);
                cmd_updatetest.ExecuteNonQuery();  
            }
            System.Data.DataView dv = (System.Data.DataView)faz2.Select(DataSourceSelectArguments.Empty);

            for (int i = 0; i < grid_sort2.Rows.Count; i++)//loop the GridView Rows
            {

                id = Convert.ToString(dv.ToTable().Rows[i]["item_id"]);
                jame = (Convert.ToInt32(dv.ToTable().Rows[i]["gradeB"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["gradeC"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["wastage"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["return_glaze"]));
                naghs = (Convert.ToInt32(dv.ToTable().Rows[i]["ahan"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khlabeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["kharegi"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["noglaze"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["pin"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khglaze"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["kafsefid"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["deformation"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["tarak"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["dorangi"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["sarsozani"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["oftadegi"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["payeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khbadaneh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["tarpayeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["tardasteh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["labpar"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["rizesh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["hobab"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["rageh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khash"]));
                if (jame == naghs)
                {

                    SqlCommand cmd_update = new SqlCommand("update grade_faz2  set equal=1 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update

                }
                else
                {
                    SqlCommand cmd_update = new SqlCommand("update grade_faz2  set equal=0 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update
                }

            }
            System.Data.DataView dvtest = (System.Data.DataView)sqlfaz2_test.Select(DataSourceSelectArguments.Empty);

            for (int i = 0; i < grid_sort2test.Rows.Count; i++)//loop the GridView Rows
            {

                id = Convert.ToString(dvtest.ToTable().Rows[i]["item_id"]);
                jame = (Convert.ToInt32(dvtest.ToTable().Rows[i]["gradeB"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["gradeC"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["wastage"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["return_glaze"]));
                naghs = (Convert.ToInt32(dvtest.ToTable().Rows[i]["ahan"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khlabeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["kharegi"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["noglaze"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["pin"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khglaze"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["kafsefid"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["deformation"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["tarak"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["dorangi"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["sarsozani"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["oftadegi"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["payeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khbadaneh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["tarpayeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["tardasteh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["labpar"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["rizesh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["hobab"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["rageh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khash"]));
                if (jame == naghs)
                {

                    SqlCommand cmd_update = new SqlCommand("update grade_faz2test  set equal=1 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update

                }
                else
                {
                    SqlCommand cmd_update = new SqlCommand("update grade_faz2test  set equal=0 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update
                }

            }
            grid_sort2.DataBind();
            grid_sort2test.DataBind();
            cnn.Close();
        }
        
    }
    protected void grid_sort1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = grid_sort1.Rows[e.RowIndex];
        
        
        int wastage,B,C,ret_glaze = 0;
        string str1 = "";
        string helpstr1 = "";
        int col1 = 0;
        int start1 = 0, count1 = 0, curr1 = 0;
        int last1 =0;
        
       
        //ret_glaze
        sub1 = ((TextBox)(row.Cells[4].Controls[0])).Text;
        str1 = ((TextBox)(row.Cells[4].Controls[0])).Text;
        last1 = sub1.LastIndexOf('+');
        do
        {
            curr1 = sub1.IndexOf('+', start1);
            if (curr1 != -1)
            {
                helpstr1 = str1.Substring(start1, (curr1 - start1));
                col1 += Convert.ToInt32(helpstr1);
                helpstr1 = "";
                count1++;
                start1 = curr1 + 1;
            }
        }
        while (last1 != curr1);
        if (curr1 != (str1.Length - 1))
        {
            helpstr1 = str1.Substring(start1, ((str1.Length - 1) - curr1));
            col1 += Convert.ToInt32(helpstr1);
            ret_glaze = col1;
        }
        else
        {
            ret_glaze = col1;
        }
        str1 = ""; helpstr1 = ""; col1 = 0; start1 = 0; count1 = 0; curr1 = 0; last1 = sub1.LastIndexOf('+');
        sub1 = ((TextBox)(row.Cells[5].Controls[0])).Text;
        str1 = ((TextBox)(row.Cells[5].Controls[0])).Text;
        last1 = sub1.LastIndexOf('+');
        do
        {
            curr1 = sub1.IndexOf('+', start1);
            if (curr1 != -1)
            {
                helpstr1 = str1.Substring(start1, (curr1 - start1));
                col1 += Convert.ToInt32(helpstr1);
                helpstr1 = "";
                count1++;
                start1 = curr1 + 1;
            }
        }
        while (last1 != curr1);
        if (curr1 != (str1.Length - 1))
        {
            helpstr1 = str1.Substring(start1, ((str1.Length - 1) - curr1));
            col1 += Convert.ToInt32(helpstr1);
            wastage = col1;
        }
        else
        {
            wastage = col1;
        }
        //C
        str1 = ""; helpstr1 = ""; col1 = 0; start1 = 0; count1 = 0; curr1 = 0; last1 = sub1.LastIndexOf('+');
        sub1 = ((TextBox)(row.Cells[6].Controls[0])).Text;
        str1 = ((TextBox)(row.Cells[6].Controls[0])).Text;
        last1 = sub1.LastIndexOf('+');
        do
        {
            curr1 = sub1.IndexOf('+', start1);
            if (curr1 != -1)
            {
                helpstr1 = str1.Substring(start1, (curr1 - start1));
                col1 += Convert.ToInt32(helpstr1);
                helpstr1 = "";
                count1++;
                start1 = curr1 + 1;
            }
        }
        while (last1 != curr1);
        if (curr1 != (str1.Length - 1))
        {
            helpstr1 = str1.Substring(start1, ((str1.Length - 1) - curr1));
            col1 += Convert.ToInt32(helpstr1);
            C = col1;
        }
        else
        {
            C = col1;
        }
        //B
        str1 = ""; helpstr1 = ""; col1 = 0; start1 = 0; count1 = 0; curr1 = 0; last1 = sub1.LastIndexOf('+');
        sub1 = ((TextBox)(row.Cells[7].Controls[0])).Text;
        str1 = ((TextBox)(row.Cells[7].Controls[0])).Text;
        last1 = sub1.LastIndexOf('+');
        do
        {
            curr1 = sub1.IndexOf('+', start1);
            if (curr1 != -1)
            {
                helpstr1 = str1.Substring(start1, (curr1 - start1));
                col1 += Convert.ToInt32(helpstr1);
                helpstr1 = "";
                count1++;
                start1 = curr1 + 1;
            }
        }
        while (last1 != curr1);
        if (curr1 != (str1.Length - 1))
        {
            helpstr1 = str1.Substring(start1, ((str1.Length - 1) - curr1));
            col1 += Convert.ToInt32(helpstr1);
            B = col1;
        }
        else
        {
            B = col1;
        }
        //-----
        jame = ret_glaze + wastage + C + B;
        try
        {
            naghs = Convert.ToInt32(((TextBox)(row.Cells[8].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[9].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[10].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[11].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[12].Controls[0])).Text) +
                Convert.ToInt32(((TextBox)(row.Cells[13].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[14].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[15].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[16].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[17].Controls[0])).Text) +
                Convert.ToInt32(((TextBox)(row.Cells[18].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[19].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[20].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[21].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[22].Controls[0])).Text) +
                Convert.ToInt32(((TextBox)(row.Cells[23].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[24].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[25].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[26].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[27].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[28].Controls[0])).Text);


            if (naghs != jame)
            {
                lbladd.Visible = false;
                lblerror.Visible = true;
                lblcompair.Visible = true;
                lblcompair.Text = Convert.ToString(jame - naghs);
                e.NewValues["return_glaze"] = ret_glaze;
                e.NewValues["wastage"] = wastage;
                e.NewValues["gradeC"] = C;
                e.NewValues["gradeB"] = B;
                e.Cancel = true;

            }
            else
            {
                cnn.Open();
                SqlCommand cmd_update1 = new SqlCommand("update grade_faz1  set equal=1 where item_id=" + ((TextBox)(row.Cells[32].Controls[0])).Text + " and tarikh='" + labldate.Text + "' ", cnn);
                cmd_update1.ExecuteNonQuery();//update  
                cnn.Close();
                lbladd.Visible = false;
                e.NewValues["return_glaze"] = ret_glaze;
                e.NewValues["wastage"] = wastage;
                e.NewValues["gradeC"] = C;
                e.NewValues["gradeB"] = B;
            }
        }
        catch
        {
            e.Cancel = true;
            lbladd.Visible = true;
        }
     

        
    }
    protected void grid_sort2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = grid_sort2.Rows[e.RowIndex];


        int wastage, B, C, ret_glaze = 0;
        string str2 = "";
        string helpstr2 = "";
        int col2 = 0;
        int start2 = 0, count2 = 0, curr2 = 0;
        int last2 = 0;


        //ret_glaze
        sub2 = ((TextBox)(row.Cells[4].Controls[0])).Text;
        str2 = ((TextBox)(row.Cells[4].Controls[0])).Text;
        last2 = sub2.LastIndexOf('+');
        do
        {
            curr2 = sub2.IndexOf('+', start2);
            if (curr2 != -1)
            {
                helpstr2 = str2.Substring(start2, (curr2 - start2));
                col2 += Convert.ToInt32(helpstr2);
                helpstr2 = "";
                count2++;
                start2 = curr2 + 1;
            }
        }
        while (last2 != curr2);
        if (curr2 != (str2.Length - 1))
        {
            helpstr2 = str2.Substring(start2, ((str2.Length - 1) - curr2));
            col2 += Convert.ToInt32(helpstr2);
            ret_glaze = col2;
        }
        else
        {
            ret_glaze = col2;
        }
        str2 = ""; helpstr2 = ""; col2 = 0; start2 = 0; count2 = 0; curr2 = 0; last2 = sub2.LastIndexOf('+');
        sub2 = ((TextBox)(row.Cells[5].Controls[0])).Text;
        str2 = ((TextBox)(row.Cells[5].Controls[0])).Text;
        last2 = sub2.LastIndexOf('+');
        do
        {
            curr2 = sub2.IndexOf('+', start2);
            if (curr2 != -1)
            {
                helpstr2 = str2.Substring(start2, (curr2 - start2));
                col2 += Convert.ToInt32(helpstr2);
                helpstr2 = "";
                count2++;
                start2 = curr2 + 1;
            }
        }
        while (last2 != curr2);
        if (curr2 != (str2.Length - 1))
        {
            helpstr2 = str2.Substring(start2, ((str2.Length - 1) - curr2));
            col2 += Convert.ToInt32(helpstr2);
            wastage = col2;
        }
        else
        {
            wastage = col2;
        }
        //C
        str2 = ""; helpstr2 = ""; col2 = 0; start2 = 0; count2 = 0; curr2 = 0; last2 = sub2.LastIndexOf('+');
        sub2 = ((TextBox)(row.Cells[6].Controls[0])).Text;
        str2 = ((TextBox)(row.Cells[6].Controls[0])).Text;
        last2 = sub2.LastIndexOf('+');
        do
        {
            curr2 = sub2.IndexOf('+', start2);
            if (curr2 != -1)
            {
                helpstr2 = str2.Substring(start2, (curr2 - start2));
                col2 += Convert.ToInt32(helpstr2);
                helpstr2 = "";
                count2++;
                start2 = curr2 + 1;
            }
        }
        while (last2 != curr2);
        if (curr2 != (str2.Length - 1))
        {
            helpstr2 = str2.Substring(start2, ((str2.Length - 1) - curr2));
            col2 += Convert.ToInt32(helpstr2);
            C = col2;
        }
        else
        {
            C = col2;
        }
        //B
        str2 = ""; helpstr2 = ""; col2 = 0; start2 = 0; count2 = 0; curr2 = 0; last2 = sub2.LastIndexOf('+');
        sub2 = ((TextBox)(row.Cells[7].Controls[0])).Text;
        str2 = ((TextBox)(row.Cells[7].Controls[0])).Text;
        last2 = sub2.LastIndexOf('+');
        do
        {
            curr2 = sub2.IndexOf('+', start2);
            if (curr2 != -1)
            {
                helpstr2 = str2.Substring(start2, (curr2 - start2));
                col2 += Convert.ToInt32(helpstr2);
                helpstr2 = "";
                count2++;
                start2 = curr2 + 1;
            }
        }
        while (last2 != curr2);
        if (curr2 != (str2.Length - 1))
        {
            helpstr2 = str2.Substring(start2, ((str2.Length - 1) - curr2));
            col2 += Convert.ToInt32(helpstr2);
            B = col2;
        }
        else
        {
            B = col2;
        }
        //-----
        jame = ret_glaze + wastage + C + B;
        try
        {
            naghs = Convert.ToInt32(((TextBox)(row.Cells[8].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[9].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[10].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[11].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[12].Controls[0])).Text) +
                Convert.ToInt32(((TextBox)(row.Cells[13].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[14].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[15].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[16].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[17].Controls[0])).Text) +
                Convert.ToInt32(((TextBox)(row.Cells[18].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[19].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[20].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[21].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[22].Controls[0])).Text) +
                Convert.ToInt32(((TextBox)(row.Cells[23].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[24].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[25].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[26].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[27].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[28].Controls[0])).Text);



            if (naghs != jame)
            {
                lbladd.Visible = false;
                lblerror.Visible = true;
                lblcompair.Visible = true;
                lblcompair.Text = Convert.ToString(jame - naghs);
                e.NewValues["return_glaze"] = ret_glaze;
                e.NewValues["wastage"] = wastage;
                e.NewValues["gradeC"] = C;
                e.NewValues["gradeB"] = B;
                e.Cancel = true;

            }
            else
            {
                cnn.Open();
                SqlCommand cmd_update1 = new SqlCommand("update grade_faz2  set equal=1 where item_id=" + ((TextBox)(row.Cells[32].Controls[0])).Text + " and tarikh='" + labldate.Text + "' ", cnn);
                cmd_update1.ExecuteNonQuery();//update  
                cnn.Close();
                lbladd.Visible = false;
                e.NewValues["return_glaze"] = ret_glaze;
                e.NewValues["wastage"] = wastage;
                e.NewValues["gradeC"] = C;
                e.NewValues["gradeB"] = B;
            }
        }
        catch
        {
            e.Cancel = true;
            lbladd.Visible = true;
        }
    }
    protected void grid_sort1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
         int index = 0;
        String editButton = Request.Params.Get("__EVENTARGUMENT");
        if (editButton != null && editButton.Contains("select"))
        {


            string aplicate = editButton.Substring(6, 4);
            if (aplicate != null && aplicate == "dell")
            {

                index = Convert.ToInt32(editButton.Substring(11, editButton.Length - 11));
                int x = grid_sort1.PageIndex; 
                System.Data.DataView dv = (System.Data.DataView)faz1.Select(DataSourceSelectArguments.Empty);
                x = (x * 10) + (index);
                itemid = Convert.ToString(dv.ToTable().Rows[x]["item_id"]);
                tarikh = Convert.ToString(dv.ToTable().Rows[x]["tarikh"]);
                pnldelete.Visible = true;
                fazkind = "faz1";
            }
        }
    }
    protected void grid_sort2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = 0;
        String editButton = Request.Params.Get("__EVENTARGUMENT");
        if (editButton != null && editButton.Contains("select"))
        {


            string aplicate = editButton.Substring(6, 4);
            if (aplicate != null && aplicate == "dell")
            {

                index = Convert.ToInt32(editButton.Substring(11, editButton.Length - 11));
                int x = grid_sort2.PageIndex;
                System.Data.DataView dv = (System.Data.DataView)faz2.Select(DataSourceSelectArguments.Empty);
                x = (x * 10) + (index);
                itemid = Convert.ToString(dv.ToTable().Rows[x]["item_id"]);
                tarikh = Convert.ToString(dv.ToTable().Rows[x]["tarikh"]);
                pnldelete.Visible = true;
                fazkind = "faz2";
            }
        }
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        cnn.Open();
        if (rdbglaze.SelectedValue == "1")
        {
            if (fazkind == "faz1")
            {

                SqlCommand cmd_del_glaze1 = new SqlCommand("delete from grade_faz1 where item_id=" + itemid + " and tarikh='" + tarikh + "' ", cnn);
                cmd_del_glaze1.ExecuteNonQuery();
            }
            else if (fazkind == "faz1test")
            {
                SqlCommand cmd_del_glaze1test = new SqlCommand("delete from grade_faz1test where item_id=" + itemid + " and tarikh='" + tarikh + "' ", cnn);
                cmd_del_glaze1test.ExecuteNonQuery();
            }
        }
        else if (rdbglaze.SelectedValue == "2")
        {
            if (fazkind == "faz2")
            {
                SqlCommand cmd_del_glaze2 = new SqlCommand("delete from grade_faz2 where item_id=" + itemid + " and tarikh='" + tarikh + "' ", cnn);
                cmd_del_glaze2.ExecuteNonQuery();
            }
            else if (fazkind == "faz2test")
            {
                SqlCommand cmd_del_glaze2test = new SqlCommand("delete from grade_faz2test where item_id=" + itemid + " and tarikh='" + tarikh + "' ", cnn);
                cmd_del_glaze2test.ExecuteNonQuery();
            }
        }
        cnn.Close();
        pnldelete.Visible = false;
        grid_sort1.DataBind();
        grid_sort2.DataBind();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        grid_sort1.DataBind();
        grid_sort1test.DataBind();
        grid_sort2test.DataBind();
        grid_sort2.DataBind();
        pnldelete.Visible = false;
    }

    protected void nochange_Click(object sender, EventArgs e)
    {
        cnn.Open();
        if (rdbglaze.SelectedValue == "1")
        {
            System.Data.DataView dv = (System.Data.DataView)faz1.Select(DataSourceSelectArguments.Empty);

            for (int i = 0; i < grid_sort1.Rows.Count; i++)//loop the GridView Rows
            {

                id = Convert.ToString(dv.ToTable().Rows[i]["item_id"]);
                jame = (Convert.ToInt32(dv.ToTable().Rows[i]["gradeB"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["gradeC"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["wastage"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["return_glaze"]));
                naghs = (Convert.ToInt32(dv.ToTable().Rows[i]["ahan"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khlabeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["kharegi"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["noglaze"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["pin"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khglaze"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["kafsefid"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["deformation"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["tarak"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["dorangi"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["sarsozani"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["oftadegi"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["payeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khbadaneh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["tarpayeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["tardasteh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["labpar"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["rizesh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["hobab"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["rageh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khash"]));
                if (jame == naghs)
                {

                    SqlCommand cmd_update = new SqlCommand("update grade_faz1  set equal=1 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update

                }
                else
                {
                    SqlCommand cmd_update = new SqlCommand("update grade_faz1  set equal=0 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update
                }

            }
            System.Data.DataView dvtest = (System.Data.DataView)sqlfaz1_test.Select(DataSourceSelectArguments.Empty);

            for (int i = 0; i < grid_sort1test.Rows.Count; i++)//loop the GridView Rows
            {

                id = Convert.ToString(dvtest.ToTable().Rows[i]["item_id"]);
                jame = (Convert.ToInt32(dvtest.ToTable().Rows[i]["gradeB"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["gradeC"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["wastage"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["return_glaze"]));
                naghs = (Convert.ToInt32(dvtest.ToTable().Rows[i]["ahan"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khlabeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["kharegi"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["noglaze"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["pin"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khglaze"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["kafsefid"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["deformation"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["tarak"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["dorangi"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["sarsozani"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["oftadegi"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["payeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khbadaneh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["tarpayeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["tardasteh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["labpar"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["rizesh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["hobab"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["rageh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khash"]));
                if (jame == naghs)
                {

                    SqlCommand cmd_update = new SqlCommand("update grade_faz1test  set equal=1 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update

                }
                else
                {
                    SqlCommand cmd_update = new SqlCommand("update grade_faz1test  set equal=0 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update
                }

            }
            grid_sort1.DataBind();
            grid_sort2.Visible = false;
            grid_sort2test.Visible = false;
            grid_sort1.Visible = true;
            grid_sort1test.Visible = true;

            lblfaz.Text = "یک";
            Session["faz"] = "faz1";
            Session["numfaz"] = 1;
        }
        else if (rdbglaze.SelectedValue == "2")
        {
            System.Data.DataView dv = (System.Data.DataView)faz2.Select(DataSourceSelectArguments.Empty);

            for (int i = 0; i < grid_sort2.Rows.Count; i++)//loop the GridView Rows
            {

                id = Convert.ToString(dv.ToTable().Rows[i]["item_id"]);
                jame = (Convert.ToInt32(dv.ToTable().Rows[i]["gradeB"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["gradeC"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["wastage"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["return_glaze"]));
                naghs = (Convert.ToInt32(dv.ToTable().Rows[i]["ahan"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khlabeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["kharegi"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["noglaze"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["pin"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khglaze"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["kafsefid"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["deformation"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["tarak"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["dorangi"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["sarsozani"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["oftadegi"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["payeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khbadaneh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["tarpayeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["tardasteh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["labpar"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["rizesh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["hobab"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["rageh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khash"]));
                if (jame == naghs)
                {

                    SqlCommand cmd_update = new SqlCommand("update grade_faz2  set equal=1 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update

                }
                else
                {
                    SqlCommand cmd_update = new SqlCommand("update grade_faz2  set equal=0 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update
                }

            }
            System.Data.DataView dvtest = (System.Data.DataView)sqlfaz2_test.Select(DataSourceSelectArguments.Empty);

            for (int i = 0; i < grid_sort2test.Rows.Count; i++)//loop the GridView Rows
            {

                id = Convert.ToString(dvtest.ToTable().Rows[i]["item_id"]);
                jame = (Convert.ToInt32(dvtest.ToTable().Rows[i]["gradeB"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["gradeC"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["wastage"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["return_glaze"]));
                naghs = (Convert.ToInt32(dvtest.ToTable().Rows[i]["ahan"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khlabeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["kharegi"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["noglaze"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["pin"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khglaze"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["kafsefid"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["deformation"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["tarak"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["dorangi"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["sarsozani"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["oftadegi"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["payeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khbadaneh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["tarpayeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["tardasteh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["labpar"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["rizesh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["hobab"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["rageh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khash"]));
                if (jame == naghs)
                {

                    SqlCommand cmd_update = new SqlCommand("update grade_faz2test  set equal=1 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update

                }
                else
                {
                    SqlCommand cmd_update = new SqlCommand("update grade_faz2test  set equal=0 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update
                }

            }
            grid_sort2.DataBind();
            grid_sort2.Visible = true;
            grid_sort2test.Visible = true;
            grid_sort1.Visible = false;
            grid_sort1test.Visible = false;

            lblfaz.Text = "دو";
            Session["faz"] = "faz2";
            Session["numfaz"] = 2;
            cnn.Close();
        }
    }
    protected void compare_Click(object sender, EventArgs e)
    {

        cnn.Open();
        if (rdbglaze.SelectedValue == "1")
        {
            System.Data.DataView dv = (System.Data.DataView)faz1.Select(DataSourceSelectArguments.Empty);

            for (int i = 0; i < grid_sort1.Rows.Count; i++)//loop the GridView Rows
            {

                id = Convert.ToString(dv.ToTable().Rows[i]["item_id"]);
                jame = (Convert.ToInt32(dv.ToTable().Rows[i]["gradeB"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["gradeC"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["wastage"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["return_glaze"]));
                naghs = (Convert.ToInt32(dv.ToTable().Rows[i]["ahan"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khlabeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["kharegi"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["noglaze"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["pin"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khglaze"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["kafsefid"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["deformation"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["tarak"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["dorangi"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["sarsozani"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["oftadegi"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["payeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khbadaneh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["tarpayeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["tardasteh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["labpar"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["rizesh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["hobab"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["rageh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khash"]));
                if (jame == naghs)
                {

                    SqlCommand cmd_update = new SqlCommand("update grade_faz1  set equal=1 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update

                }
                else
                {
                    SqlCommand cmd_update = new SqlCommand("update grade_faz1  set equal=0 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update
                }

            }
            System.Data.DataView dvtest = (System.Data.DataView)sqlfaz1_test.Select(DataSourceSelectArguments.Empty);

            for (int i = 0; i < grid_sort1test.Rows.Count; i++)//loop the GridView Rows
            {

                id = Convert.ToString(dvtest.ToTable().Rows[i]["item_id"]);
                jame = (Convert.ToInt32(dvtest.ToTable().Rows[i]["gradeB"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["gradeC"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["wastage"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["return_glaze"]));
                naghs = (Convert.ToInt32(dvtest.ToTable().Rows[i]["ahan"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khlabeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["kharegi"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["noglaze"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["pin"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khglaze"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["kafsefid"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["deformation"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["tarak"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["dorangi"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["sarsozani"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["oftadegi"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["payeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khbadaneh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["tarpayeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["tardasteh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["labpar"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["rizesh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["hobab"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["rageh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khash"]));
                if (jame == naghs)
                {

                    SqlCommand cmd_update = new SqlCommand("update grade_faz1test  set equal=1 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update

                }
                else
                {
                    SqlCommand cmd_update = new SqlCommand("update grade_faz1test  set equal=0 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update
                }

            }
            grid_sort1.DataBind();
            grid_sort1test.DataBind();

            lblfaz.Text = "یک";
            Session["faz"] = "faz1";
            Session["numfaz"] = 1;
            gridcompare1.DataBind();
            gridcompare1.Visible = true;
            grid_sort1test.Visible = true;
            gridcompare2.Visible = false;
        }
        else if (rdbglaze.SelectedValue == "2")
        {
            System.Data.DataView dv = (System.Data.DataView)faz2.Select(DataSourceSelectArguments.Empty);

            for (int i = 0; i < grid_sort2.Rows.Count; i++)//loop the GridView Rows
            {

                id = Convert.ToString(dv.ToTable().Rows[i]["item_id"]);
                jame = (Convert.ToInt32(dv.ToTable().Rows[i]["gradeB"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["gradeC"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["wastage"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["return_glaze"]));
                naghs = (Convert.ToInt32(dv.ToTable().Rows[i]["ahan"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khlabeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["kharegi"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["noglaze"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["pin"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khglaze"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["kafsefid"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["deformation"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["tarak"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["dorangi"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["sarsozani"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["oftadegi"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["payeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khbadaneh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["tarpayeh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["tardasteh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["labpar"])) +
                    (Convert.ToInt32(dv.ToTable().Rows[i]["rizesh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["hobab"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["rageh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["khash"]));
                if (jame == naghs)
                {

                    SqlCommand cmd_update = new SqlCommand("update grade_faz2  set equal=1 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update

                }
                else
                {
                    SqlCommand cmd_update = new SqlCommand("update grade_faz2  set equal=0 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update
                }

            }
            System.Data.DataView dvtest = (System.Data.DataView)sqlfaz2_test.Select(DataSourceSelectArguments.Empty);

            for (int i = 0; i < grid_sort2test.Rows.Count; i++)//loop the GridView Rows
            {

                id = Convert.ToString(dvtest.ToTable().Rows[i]["item_id"]);
                jame = (Convert.ToInt32(dvtest.ToTable().Rows[i]["gradeB"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["gradeC"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["wastage"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["return_glaze"]));
                naghs = (Convert.ToInt32(dvtest.ToTable().Rows[i]["ahan"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khlabeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["kharegi"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["noglaze"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["pin"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khglaze"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["kafsefid"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["deformation"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["tarak"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["dorangi"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["sarsozani"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["oftadegi"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["payeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khbadaneh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["tarpayeh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["tardasteh"])) + (Convert.ToInt32(dv.ToTable().Rows[i]["labpar"])) +
                    (Convert.ToInt32(dvtest.ToTable().Rows[i]["rizesh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["hobab"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["rageh"])) + (Convert.ToInt32(dvtest.ToTable().Rows[i]["khash"]));
                if (jame == naghs)
                {

                    SqlCommand cmd_update = new SqlCommand("update grade_faz2test  set equal=1 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update

                }
                else
                {
                    SqlCommand cmd_update = new SqlCommand("update grade_faz2test  set equal=0 where item_id=" + id + " and tarikh='" + labldate.Text + "' ", cnn);
                    cmd_update.ExecuteNonQuery();//update
                }

            }
            grid_sort2.DataBind();
            grid_sort2test.DataBind();

            lblfaz.Text = "دو";
            Session["faz"] = "faz2";
            Session["numfaz"] = 2;

            gridcompare2.DataBind();
            gridcompare2.Visible = true;
            grid_sort2test.Visible = true;
            gridcompare1.Visible = false;
            cnn.Close();


        }
    }

    protected void btnshow_Click(object sender, EventArgs e)
    {
        
        cnn.Open();
        SqlCommand cmd_check = new SqlCommand("select id from show_permit where tarikh='"+labldate.Text+"'", cnn);
        SqlDataReader drcheck = cmd_check.ExecuteReader();
        if (drcheck.Read())
        {
            cnn.Close();
            cnn.Open();
            SqlCommand cmd_show = new SqlCommand("update show_permit set permit=1 where tarikh='" + labldate.Text + "'", cnn);
            cmd_show.ExecuteNonQuery();
            cnn.Close();
        }
        else
        {
            cnn.Close();
            cnn.Open();
            SqlCommand cmd_insert = new SqlCommand("insert into show_permit (permit,tarikh) values (1,'" + labldate.Text + "') ", cnn);
            cmd_insert.ExecuteNonQuery();
            cnn.Close();
        }
       
     

    }
    protected void btndont_show_Click(object sender, EventArgs e)
    {
        cnn.Open();
        SqlCommand cmd_show = new SqlCommand("update show_permit set permit=0 where tarikh='" + labldate.Text + "'", cnn);
        cmd_show.ExecuteNonQuery();
        cnn.Close();
    }
    protected void grid_sort1test_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = grid_sort1test.Rows[e.RowIndex];


        int wastage, B, C, ret_glaze = 0;
        string str1 = "";
        string helpstr1 = "";
        int col1 = 0;
        int start1 = 0, count1 = 0, curr1 = 0;
        int last1 = 0;


        //ret_glaze
        sub1 = ((TextBox)(row.Cells[4].Controls[0])).Text;
        str1 = ((TextBox)(row.Cells[4].Controls[0])).Text;
        last1 = sub1.LastIndexOf('+');
        do
        {
            curr1 = sub1.IndexOf('+', start1);
            if (curr1 != -1)
            {
                helpstr1 = str1.Substring(start1, (curr1 - start1));
                col1 += Convert.ToInt32(helpstr1);
                helpstr1 = "";
                count1++;
                start1 = curr1 + 1;
            }
        }
        while (last1 != curr1);
        if (curr1 != (str1.Length - 1))
        {
            helpstr1 = str1.Substring(start1, ((str1.Length - 1) - curr1));
            col1 += Convert.ToInt32(helpstr1);
            ret_glaze = col1;
        }
        else
        {
            ret_glaze = col1;
        }
        str1 = ""; helpstr1 = ""; col1 = 0; start1 = 0; count1 = 0; curr1 = 0; last1 = sub1.LastIndexOf('+');
        sub1 = ((TextBox)(row.Cells[5].Controls[0])).Text;
        str1 = ((TextBox)(row.Cells[5].Controls[0])).Text;
        last1 = sub1.LastIndexOf('+');
        do
        {
            curr1 = sub1.IndexOf('+', start1);
            if (curr1 != -1)
            {
                helpstr1 = str1.Substring(start1, (curr1 - start1));
                col1 += Convert.ToInt32(helpstr1);
                helpstr1 = "";
                count1++;
                start1 = curr1 + 1;
            }
        }
        while (last1 != curr1);
        if (curr1 != (str1.Length - 1))
        {
            helpstr1 = str1.Substring(start1, ((str1.Length - 1) - curr1));
            col1 += Convert.ToInt32(helpstr1);
            wastage = col1;
        }
        else
        {
            wastage = col1;
        }
        //C
        str1 = ""; helpstr1 = ""; col1 = 0; start1 = 0; count1 = 0; curr1 = 0; last1 = sub1.LastIndexOf('+');
        sub1 = ((TextBox)(row.Cells[6].Controls[0])).Text;
        str1 = ((TextBox)(row.Cells[6].Controls[0])).Text;
        last1 = sub1.LastIndexOf('+');
        do
        {
            curr1 = sub1.IndexOf('+', start1);
            if (curr1 != -1)
            {
                helpstr1 = str1.Substring(start1, (curr1 - start1));
                col1 += Convert.ToInt32(helpstr1);
                helpstr1 = "";
                count1++;
                start1 = curr1 + 1;
            }
        }
        while (last1 != curr1);
        if (curr1 != (str1.Length - 1))
        {
            helpstr1 = str1.Substring(start1, ((str1.Length - 1) - curr1));
            col1 += Convert.ToInt32(helpstr1);
            C = col1;
        }
        else
        {
            C = col1;
        }
        //B
        str1 = ""; helpstr1 = ""; col1 = 0; start1 = 0; count1 = 0; curr1 = 0; last1 = sub1.LastIndexOf('+');
        sub1 = ((TextBox)(row.Cells[7].Controls[0])).Text;
        str1 = ((TextBox)(row.Cells[7].Controls[0])).Text;
        last1 = sub1.LastIndexOf('+');
        do
        {
            curr1 = sub1.IndexOf('+', start1);
            if (curr1 != -1)
            {
                helpstr1 = str1.Substring(start1, (curr1 - start1));
                col1 += Convert.ToInt32(helpstr1);
                helpstr1 = "";
                count1++;
                start1 = curr1 + 1;
            }
        }
        while (last1 != curr1);
        if (curr1 != (str1.Length - 1))
        {
            helpstr1 = str1.Substring(start1, ((str1.Length - 1) - curr1));
            col1 += Convert.ToInt32(helpstr1);
            B = col1;
        }
        else
        {
            B = col1;
        }
        //-----
        jame = ret_glaze + wastage + C + B;
        try
        {
            naghs = Convert.ToInt32(((TextBox)(row.Cells[8].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[9].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[10].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[11].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[12].Controls[0])).Text) +
                Convert.ToInt32(((TextBox)(row.Cells[13].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[14].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[15].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[16].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[17].Controls[0])).Text) +
                Convert.ToInt32(((TextBox)(row.Cells[18].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[19].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[20].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[21].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[22].Controls[0])).Text) +
                Convert.ToInt32(((TextBox)(row.Cells[23].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[24].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[25].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[26].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[27].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[28].Controls[0])).Text);


            if (naghs != jame)
            {
                lbladd.Visible = false;
                lblerror.Visible = true;
                lblcompair.Visible = true;
                lblcompair.Text = Convert.ToString(jame - naghs);
                e.NewValues["return_glaze"] = ret_glaze;
                e.NewValues["wastage"] = wastage;
                e.NewValues["gradeC"] = C;
                e.NewValues["gradeB"] = B;
                e.Cancel = true;

            }
            else
            {
                cnn.Open();
                SqlCommand cmd_update1 = new SqlCommand("update grade_faz1test  set equal=1 where item_id=" + ((TextBox)(row.Cells[32].Controls[0])).Text + " and tarikh='" + labldate.Text + "' ", cnn);
                cmd_update1.ExecuteNonQuery();//update  
                cnn.Close();
                lbladd.Visible = false;
                e.NewValues["return_glaze"] = ret_glaze;
                e.NewValues["wastage"] = wastage;
                e.NewValues["gradeC"] = C;
                e.NewValues["gradeB"] = B;
            }
        }
        catch
        {
            e.Cancel = true;
            lbladd.Visible = true;
        }
    }
    protected void grid_sort2test_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = grid_sort2test.Rows[e.RowIndex];


        int wastage, B, C, ret_glaze = 0;
        string str1 = "";
        string helpstr1 = "";
        int col1 = 0;
        int start1 = 0, count1 = 0, curr1 = 0;
        int last1 = 0;


        //ret_glaze
        sub1 = ((TextBox)(row.Cells[4].Controls[0])).Text;
        str1 = ((TextBox)(row.Cells[4].Controls[0])).Text;
        last1 = sub1.LastIndexOf('+');
        do
        {
            curr1 = sub1.IndexOf('+', start1);
            if (curr1 != -1)
            {
                helpstr1 = str1.Substring(start1, (curr1 - start1));
                col1 += Convert.ToInt32(helpstr1);
                helpstr1 = "";
                count1++;
                start1 = curr1 + 1;
            }
        }
        while (last1 != curr1);
        if (curr1 != (str1.Length - 1))
        {
            helpstr1 = str1.Substring(start1, ((str1.Length - 1) - curr1));
            col1 += Convert.ToInt32(helpstr1);
            ret_glaze = col1;
        }
        else
        {
            ret_glaze = col1;
        }
        str1 = ""; helpstr1 = ""; col1 = 0; start1 = 0; count1 = 0; curr1 = 0; last1 = sub1.LastIndexOf('+');
        sub1 = ((TextBox)(row.Cells[5].Controls[0])).Text;
        str1 = ((TextBox)(row.Cells[5].Controls[0])).Text;
        last1 = sub1.LastIndexOf('+');
        do
        {
            curr1 = sub1.IndexOf('+', start1);
            if (curr1 != -1)
            {
                helpstr1 = str1.Substring(start1, (curr1 - start1));
                col1 += Convert.ToInt32(helpstr1);
                helpstr1 = "";
                count1++;
                start1 = curr1 + 1;
            }
        }
        while (last1 != curr1);
        if (curr1 != (str1.Length - 1))
        {
            helpstr1 = str1.Substring(start1, ((str1.Length - 1) - curr1));
            col1 += Convert.ToInt32(helpstr1);
            wastage = col1;
        }
        else
        {
            wastage = col1;
        }
        //C
        str1 = ""; helpstr1 = ""; col1 = 0; start1 = 0; count1 = 0; curr1 = 0; last1 = sub1.LastIndexOf('+');
        sub1 = ((TextBox)(row.Cells[6].Controls[0])).Text;
        str1 = ((TextBox)(row.Cells[6].Controls[0])).Text;
        last1 = sub1.LastIndexOf('+');
        do
        {
            curr1 = sub1.IndexOf('+', start1);
            if (curr1 != -1)
            {
                helpstr1 = str1.Substring(start1, (curr1 - start1));
                col1 += Convert.ToInt32(helpstr1);
                helpstr1 = "";
                count1++;
                start1 = curr1 + 1;
            }
        }
        while (last1 != curr1);
        if (curr1 != (str1.Length - 1))
        {
            helpstr1 = str1.Substring(start1, ((str1.Length - 1) - curr1));
            col1 += Convert.ToInt32(helpstr1);
            C = col1;
        }
        else
        {
            C = col1;
        }
        //B
        str1 = ""; helpstr1 = ""; col1 = 0; start1 = 0; count1 = 0; curr1 = 0; last1 = sub1.LastIndexOf('+');
        sub1 = ((TextBox)(row.Cells[7].Controls[0])).Text;
        str1 = ((TextBox)(row.Cells[7].Controls[0])).Text;
        last1 = sub1.LastIndexOf('+');
        do
        {
            curr1 = sub1.IndexOf('+', start1);
            if (curr1 != -1)
            {
                helpstr1 = str1.Substring(start1, (curr1 - start1));
                col1 += Convert.ToInt32(helpstr1);
                helpstr1 = "";
                count1++;
                start1 = curr1 + 1;
            }
        }
        while (last1 != curr1);
        if (curr1 != (str1.Length - 1))
        {
            helpstr1 = str1.Substring(start1, ((str1.Length - 1) - curr1));
            col1 += Convert.ToInt32(helpstr1);
            B = col1;
        }
        else
        {
            B = col1;
        }
        //-----
        jame = ret_glaze + wastage + C + B;
        try
        {
            naghs = Convert.ToInt32(((TextBox)(row.Cells[8].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[9].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[10].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[11].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[12].Controls[0])).Text) +
                Convert.ToInt32(((TextBox)(row.Cells[13].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[14].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[15].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[16].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[17].Controls[0])).Text) +
                Convert.ToInt32(((TextBox)(row.Cells[18].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[19].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[20].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[21].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[22].Controls[0])).Text) +
                Convert.ToInt32(((TextBox)(row.Cells[23].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[24].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[25].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[26].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[27].Controls[0])).Text) + Convert.ToInt32(((TextBox)(row.Cells[28].Controls[0])).Text);


            if (naghs != jame)
            {
                lbladd.Visible = false;
                lblerror.Visible = true;
                lblcompair.Visible = true;
                lblcompair.Text = Convert.ToString(jame - naghs);
                e.NewValues["return_glaze"] = ret_glaze;
                e.NewValues["wastage"] = wastage;
                e.NewValues["gradeC"] = C;
                e.NewValues["gradeB"] = B;
                e.Cancel = true;

            }
            else
            {
                cnn.Open();
                SqlCommand cmd_update1 = new SqlCommand("update grade_faz2test  set equal=1 where item_id=" + ((TextBox)(row.Cells[32].Controls[0])).Text + " and tarikh='" + labldate.Text + "' ", cnn);
                cmd_update1.ExecuteNonQuery();//update  
                cnn.Close();
                lbladd.Visible = false;
                e.NewValues["return_glaze"] = ret_glaze;
                e.NewValues["wastage"] = wastage;
                e.NewValues["gradeC"] = C;
                e.NewValues["gradeB"] = B;
            }
        }
        catch
        {
            e.Cancel = true;
            lbladd.Visible = true;
        }
    }
    protected void grid_sort2test_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = 0;
        String editButton = Request.Params.Get("__EVENTARGUMENT");
        if (editButton != null && editButton.Contains("select"))
        {


            string aplicate = editButton.Substring(6, 4);
            if (aplicate != null && aplicate == "dell")
            {

                index = Convert.ToInt32(editButton.Substring(11, editButton.Length - 11));
                int x = grid_sort2.PageIndex;
                System.Data.DataView dv = (System.Data.DataView)sqlfaz2_test.Select(DataSourceSelectArguments.Empty);
                x = (x * 10) + (index);
                itemid = Convert.ToString(dv.ToTable().Rows[x]["item_id"]);
            }
        }
    }
    protected void grid_sort1test_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = 0;
        String editButton = Request.Params.Get("__EVENTARGUMENT");
        if (editButton != null && editButton.Contains("select"))
        {


            string aplicate = editButton.Substring(6, 4);
            if (aplicate != null && aplicate == "dell")
            {

                index = Convert.ToInt32(editButton.Substring(11, editButton.Length - 11));
                int x = grid_sort2.PageIndex;
                System.Data.DataView dv = (System.Data.DataView)sqlfaz1_test.Select(DataSourceSelectArguments.Empty);
                x = (x * 10) + (index);
                itemid = Convert.ToString(dv.ToTable().Rows[x]["item_id"]);
                tarikh = Convert.ToString(dv.ToTable().Rows[x]["tarikh"]);
                pnldelete.Visible = true;
                fazkind = "faz1test";
            }
        }
    }
}