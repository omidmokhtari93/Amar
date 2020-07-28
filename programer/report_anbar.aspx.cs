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

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["taghdis_amar"].ConnectionString);
    string date_end = "1393/01/01";
  

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)

            if (((string)Session["level"] != "Bana") || (Convert.ToInt32(Session["userid"]) != 34))
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
                

        lbldate_e.Text = date_end;
        gridbis_day.DataBind();
        
        

    }
   
   

    protected void btnprint_Click(object sender, EventArgs e)
    {
        Session["ctrl"] = pnlrikhtegari;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
    }

    protected void print_Click(object sender, EventArgs e)
    {
        gridbis_day.UseAccessibleHeader = true;
        gridbis_day.HeaderRow.TableSection = TableRowSection.TableHeader;
        gridbis_day.FooterRow.TableSection = TableRowSection.TableFooter;
        gridbis_day.Attributes["style"] = "border-collapse:separate";
        foreach (GridViewRow row in gridbis_day.Rows)
        {
            if (row.RowIndex % 10 == 0 && row.RowIndex != 0)
            {
                row.Attributes["style"] = "page-break-after:always;";
            }
        }
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        gridbis_day.RenderControl(hw);
        string gridHTML = sw.ToString().Replace("\"", "'").Replace(System.Environment.NewLine, "");
        StringBuilder sb = new StringBuilder();
        sb.Append("<script type = 'text/javascript'>");
        sb.Append("window.onload = new function(){");
        sb.Append("var printWin = window.open('', '', 'left=0");
        sb.Append(",top=0,width=1000,height=600,status=0');");
        sb.Append("printWin.document.write(\"");
        string style = "<style type = 'text/css'>thead {display:table-header-group;} tfoot{display:table-footer-group;}</style>";
        sb.Append(style + gridHTML);
        sb.Append("\");");
        sb.Append("printWin.document.close();");
        sb.Append("printWin.focus();");
        sb.Append("printWin.print();");
        sb.Append("printWin.close();");
        sb.Append("};");
        sb.Append("</script>");
        ClientScript.RegisterStartupScript(this.GetType(), "GridPrint", sb.ToString());
        gridbis_day.DataBind();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /*Verifies that the control is rendered */
    }
}