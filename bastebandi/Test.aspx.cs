using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bastebandi_Test : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bastebandi"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        var oid = 6;
        con.Open();
        var list = new List<Gol>();
        var gols = new SqlCommand("select flower , j.gol, Darajeh.dar , orders.priority from order_details " +
                                  "inner join Darajeh on order_details.brand = Darajeh.ID " +
                                  "inner join orders on order_details.order_id = orders.id " +
                                  "left join(SELECT flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                  "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format AS gol, flower_entry.id " +
                                  "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON " +
                                  "flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                  "flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                  "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN  flower_depot.dbo.flower_formats " +
                                  "ON flower_depot.dbo.flower_entry.flower_format = " +
                                  "flower_depot.dbo.flower_formats.flowformat_id) as j on order_details.flower = j.id " +
                                  "where order_details.order_id = "+oid+"  group by flower , gol ,priority , Darajeh.dar", con);
        var r = gols.ExecuteReader();
        while (r.Read())
        {
            list.Add(new Gol()
            {
                Id = Convert.ToInt32(r["flower"]),
                Name = r["gol"].ToString(),
                Darage = r["dar"].ToString(),
                Priority = r["priority"].ToString()
            });
        }
        con.Close();
        var l = new List<Gol>();
        foreach (var flow in list)
        {
            var g = new Gol
            {
                Id = flow.Id,
                Name = flow.Name,
                Darage = flow.Darage,
                Priority = flow.Priority
            };
            con.Open();
            var items = new SqlCommand("select Item.nam, sum(tedad) as tedad from( (SELECT order_details.flower, dbo.Item.ID as nam, "+
                                       "dbo.Item.TDK * order_details.[count] as tedad FROM dbo.order_details "+
                                       "INNER JOIN dbo.Item ON dbo.order_details.item_id = dbo.Item.ID WHERE(dbo.order_details.order_id = " + oid + ") AND " +
                                       "(dbo.order_details.item_id <> 0) AND(dbo.Item.ser = 0) and order_details.box = 1) union all " +
                                       "(SELECT order_details.flower, dbo.Item.ID as nam, order_details.[count] as tedad FROM dbo.order_details " +
                                       "INNER JOIN dbo.Item ON dbo.order_details.item_id = dbo.Item.ID WHERE(dbo.order_details.order_id = " + oid + ") AND " +
                                       "(dbo.order_details.item_id <> 0) AND(dbo.Item.ser = 0) and order_details.box = 0) union all " +
                                       "((SELECT order_details.flower, dbo.RizSer.idI as nam, (dbo.RizSer.ted * dbo.Item.TDK) * order_details.[count] AS tedad " +
                                       "FROM dbo.RizSer INNER JOIN dbo.Item ON dbo.RizSer.idS = dbo.Item.idser INNER JOIN dbo.order_details ON " +
                                       "dbo.Item.ID = dbo.order_details.item_id WHERE(dbo.order_details.order_id = " + oid + ") AND(dbo.order_details.item_id <> 0) " +
                                       "AND(dbo.Item.ser = 1) AND(dbo.order_details.box = 1))) union all(SELECT dbo.order_details.flower, dbo.RizSer.idI AS nam, " +
                                       "dbo.RizSer.ted* dbo.order_details.count AS tedad FROM dbo.order_details INNER JOIN " +
                                       "dbo.RizSer ON dbo.order_details.service_id = dbo.RizSer.idS LEFT OUTER JOIN dbo.Item ON dbo.order_details.service_id = dbo.Item.idser " +
                                       "WHERE (dbo.order_details.order_id = " + oid + ") AND(dbo.order_details.service_id <> 0) AND(dbo.order_details.item_id = 0) AND(dbo.Item.low30 IS NULL)) " +
                                       "union all(SELECT dbo.order_details.flower, dbo.RizSer.idI AS nam, dbo.order_details.count* dbo.Item.TDK* dbo.RizSer.ted AS tedad " +
                                       "FROM dbo.order_details INNER JOIN dbo.Item ON dbo.order_details.service_id = dbo.Item.idser INNER JOIN " +
                                       "dbo.RizSer ON dbo.Item.idser = dbo.RizSer.idS WHERE (dbo.order_details.order_id = " + oid + ") AND(dbo.order_details.box = 1) " +
                                       "AND(dbo.order_details.service_id <> 0)))i INNER JOIN dbo.Item ON i.nam = dbo.Item.ID  where flower = "+flow.Id+" group by  i.flower , Item.nam ", con);
            var d = items.ExecuteReader();
            while (d.Read())
            {
                g.Items.Add(new Item()
                {
                    Name = d["nam"].ToString(),
                    Tedad = d["tedad"].ToString()
                });
            }
            l.Add(g);
            con.Close();
        }
    }

    public class Gol
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Darage { get; set; }
        public string Priority { get; set; }
        public List<Item> Items { get; set; }

        public Gol()
        {
            Items = new List<Item>();
        }
    }
    public class Item
    {
        public string Name { get; set; }
        public string Tedad { get; set; }
    }
}