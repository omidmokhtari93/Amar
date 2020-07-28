using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bastebandi_depo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bastebandi"].ConnectionString);
    public string unknown { get; set; }
    public string rikhtegari { get; set; }
    public string press { get; set; }
    public string forming { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            con.Open();
            var cmd = new SqlCommand("select * from (SELECT tedad ,case when Item.ghes = 0 then 'unknown' when Item.ghes = 1 then 'press' "+
                                     "when Item.ghes = 2 then 'rikh' when Item.ghes = 3 then 'form' end as ghes " +
                                     "FROM dbo.depo INNER JOIN dbo.Item ON dbo.depo.item = dbo.Item.ID " +
                                     "WHERE(dbo.Item.ghes in (0, 1, 2, 3))) src pivot(sum(tedad) " +
                                     "for ghes in ([rikh], [unknown], [press], [form])) piv",con);
            var r = cmd.ExecuteReader();
            if (r.Read())
            {
                unknown = r["unknown"].ToString();
                rikhtegari = r["rikh"].ToString();
                press = r["press"].ToString();
                forming = r["form"].ToString();
            }
            con.Close();
        }
    }
}