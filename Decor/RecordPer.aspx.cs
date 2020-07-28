using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class Decor_RecordPer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();

        DateTime datetimeformat = DateTime.Now;
        PersianCalendar p = new PersianCalendar();


        var date = p.GetYear(datetimeformat).ToString("0000") + '/' + p.GetMonth(datetimeformat).ToString("00") + '/' + p.GetDayOfMonth(datetimeformat).ToString("00");
        if (!Page.IsPostBack)
        {

            txtPerDate.Value = date;
            txtstartdate.Value = date;
            txtenddate.Value = date;
        }
    }

    protected void btnlogin_OnClick(object sender, EventArgs e)
    {
        if (txtpass.Value == "6117")
        {
            pnlaree.Visible = true;
            pnlpass.Visible = false;
        }
    }
}