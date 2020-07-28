using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class flower_depot_Test : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private class HalfCut
    {
        public int Id { get; set; }
        public int FlowId { get; set; }
        public int FormId { get; set; }
        public int Tedad { get; set; }
    }
    private new class Items
    {
        public int Hid { get; set; }
        public int Item { get; set; }
        public decimal Count { get; set; }
    }

    protected void OnClick(object sender, EventArgs e)
    {
        con.Open();
        var hcut = new List<HalfCut>();
        var items = new List<Items>();
        var select = new SqlCommand("SELECT [id],[flower_id],[form_id],[sheet_count] FROM [dbo].[half_cut]", con);
        var r = select.ExecuteReader();
        while (r.Read())
        {
            hcut.Add(new HalfCut()
            {
                Id = Convert.ToInt32(r["id"]),
                FlowId = Convert.ToInt32(r["flower_id"]),
                FormId = Convert.ToInt32(r["form_id"]),
                Tedad = Convert.ToInt32(r["sheet_count"])
            });
        }
        con.Close();
        //con.Open();
        //var columncount = new SqlCommand("select count(id) from half_cut ", con);
        //var rows = Convert.ToInt32(columncount.ExecuteScalar());
        foreach (var item in hcut)
        {
            con.Close();
            con.Open();
            //var selectone = new SqlCommand("select id from (SELECT ROW_NUMBER()over (order by id) as rn," +
            //                               "id FROM [dbo].[half_cut])i where rn =" + i + " ", con);
            //var id = Convert.ToInt32(selectone.ExecuteScalar());
            var cc = new SqlCommand("select column_count from half_cut where id = " + item.Id + " ", con);
            var coco = Convert.ToInt32(cc.ExecuteScalar());
            con.Close();
            for (var j = 0; j < coco; j++)
            {
                con.Open();
                var read = new SqlCommand("select item" + j + " as item, count" + j + " as count from half_cut where id = " + item.Id + " ", con);
                var rd = read.ExecuteReader();
                while (rd.Read())
                {
                    items.Add(new Items()
                    {
                        Hid = item.Id,
                        Item = Convert.ToInt32(rd["item"]),
                        Count = Convert.ToDecimal(rd["count"])
                    });
                }
                con.Close();
            }
        }
        con.Close();
        con.Open();
        foreach (var h in hcut)
        {
            var inserth = new SqlCommand("INSERT INTO [dbo].[new_halfcut]([id],[flowid],[formid],[tedad])VALUES" +
                                         "(" + h.Id + "," + h.FlowId + "," + h.FormId + "," + h.Tedad + ")", con);
            inserth.ExecuteNonQuery();
        }

        foreach (var i in items)
        {
            var insertitem = new SqlCommand("INSERT INTO [dbo].[new_halfcutRiz]([hid],[item],[count])VALUES" +
                                            "(" + i.Hid + "," + i.Item + "," + i.Count + ")", con);
            insertitem.ExecuteNonQuery();
        }
    }
}