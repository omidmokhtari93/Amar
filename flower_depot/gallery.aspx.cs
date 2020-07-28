using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class flower_depot_gallery : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        BindRepeater();
    }
    private void BindRepeater()
    {
        var list = new List<string>();
        var folder = Server.MapPath("../flower_depot/uploaded_pictures/");
        var files = Directory.GetFiles(folder, "*.jpg");
        foreach (string s in files)
        {
            list.Add("../flower_depot/uploaded_pictures/"+Path.GetFileName(s));
        }
        rpt.DataSource = list;
        rpt.DataBind();
    }
}