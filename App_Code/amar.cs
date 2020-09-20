using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.EnterpriseServices.Internal;
using System.Globalization;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

/// <summary>
/// Summary description for amar
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class amar : System.Web.Services.WebService
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);
    [WebMethod]
    public string GetTotal()
    {
        con.Open();
        var totalGol = new SqlCommand("SELECT count(distinct flower_name) FROM [dbo].[flower_entry]", con);
        var tedadGol = totalGol.ExecuteScalar();
        var nimBoresh = new SqlCommand("SELECT sum(sheet_count)FROM [dbo].[half_cut]", con);
        var halfcut = nimBoresh.ExecuteScalar();
        var da = new SqlCommand("SELECT SUM(sheetcount) AS total FROM dbo.flower_forms_entry", con);
        var totalforms = Convert.ToInt32(da.ExecuteScalar());
        var totalBorsh = new SqlCommand("SELECT sum(cutted) FROM [dbo].[cutted_and_remain]", con);
        var boresh = totalBorsh.ExecuteScalar();
        var obj = new
        {
            totalforms,
            tedadGol,
            halfcut,
            boresh
        };
        return new JavaScriptSerializer().Serialize(obj);
    }

    [WebMethod]
    public string MojoodiBoreshKhorde(MojoodiInput e)
    {
        con.Open();
        var golha = new List<Gol>();
        var gols = new SqlCommand("select flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                  "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format AS gol, flower_entry.id " +
                                  "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON " +
                                  "flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                  "flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                  "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN " +
                                  "flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                  "flower_depot.dbo.flower_formats.flowformat_id " +
                                  "where (flower_entry.customer_name = " + e.Moshtari + " or " + e.Moshtari + " = -1)" +
                                  " and (flower_entry.flower_format = " + e.Format + " or " + e.Format + " = -1) " +
                                  " and (flower_entry.flower_colortype = " + e.Type + " or " + e.Type + " = -1)" +
                                  " and (flower_entry.company_name = " + e.Company + " or " + e.Company + " = -1) " +
                                  " and (flower_entry.enter_date between '" + e.EndDate + "' and '" + e.StartDate + "')" +
                                  " order by flower_entry.flower_name", con);
        var r = gols.ExecuteReader();
        while (r.Read())
        {
            golha.Add(new Gol()
            {
                Id = Convert.ToInt32(r["id"]),
                GolName = r["gol"].ToString()
            });
        }
        con.Close();
        var list = new List<MojoodiOutput>();
        foreach (var i in golha)
        {
            con.Open();
            var j = new MojoodiOutput { Gol = i.GolName };
            var mojoodi = new SqlCommand("select items.item_name as item, cutted from cutted_and_remain " +
                                         "inner join items on cutted_and_remain.item_name = items.item_id " +
                                         "where flower_id = " + i.Id + " and (item_id in (" + e.Item + ") or '" + e.Item + "' = '-1')", con);
            var d = mojoodi.ExecuteReader();
            while (d.Read())
            {
                j.Itemses.Add(new Items()
                {
                    Item = d["item"].ToString(),
                    Tedad = d["cutted"].ToString()
                });
            }
            list.Add(j);
            list.RemoveAll(x => x.Itemses.Count == 0);
            con.Close();
        }
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public string GetMojoodiGol(MojoodiInput e)
    {
        con.Open();
        var golha = new List<Gol>();
        var cmd = new SqlCommand("SELECT dbo.flower_colors.flow_color, dbo.flower_colortypes.flow_colortype, flower_entry.id, " +
                                 "dbo.flower_formats.flow_format, dbo.flower_customers.customer_name, dbo.flower_companies.company_name " +
                                 ", flower_entry.flower_name, flower_entry.flower_code, flower_entry.enter_date " +
                                 ", flower_entry.comment FROM dbo.flower_entry INNER JOIN " +
                                 "dbo.flower_colors ON dbo.flower_entry.flower_color = dbo.flower_colors.flowcolor_id INNER JOIN " +
                                 "dbo.flower_colortypes ON dbo.flower_entry.flower_colortype = dbo.flower_colortypes.colortype_id INNER JOIN " +
                                 "dbo.flower_formats ON dbo.flower_entry.flower_format = dbo.flower_formats.flowformat_id INNER JOIN " +
                                 "dbo.flower_customers ON dbo.flower_entry.customer_name = dbo.flower_customers.customer_id INNER JOIN " +
                                 "dbo.flower_companies ON dbo.flower_entry.company_name = dbo.flower_companies.company_id " +
                                  " where (flower_entry.customer_name = " + e.Moshtari + " or " + e.Moshtari + " = -1)" +
                                  " and (flower_entry.flower_format = " + e.Format + " or " + e.Format + " = -1) " +
                                  " and (flower_entry.flower_colortype = " + e.Type + " or " + e.Type + " = -1)" +
                                  " and (flower_entry.company_name = " + e.Company + " or " + e.Company + " = -1) " +
                                  " and (flower_entry.enter_date between '" + e.EndDate + "' and '" + e.StartDate + "')" +
                                  " order by flower_entry.enter_date", con);
        var rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            golha.Add(new Gol()
            {
                Id = Convert.ToInt32(rd["id"]),
                GolName = rd["flower_name"].ToString(),
                Color = rd["flow_color"].ToString(),
                ColorType = rd["flow_colortype"].ToString(),
                Format = rd["flow_format"].ToString(),
                Code = rd["flower_code"].ToString(),
                EnterDate = rd["enter_date"].ToString(),
                Customer = rd["customer_name"].ToString(),
                Company = rd["company_name"].ToString(),
                Comment = rd["comment"].ToString()
            });
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(golha);
    }

    [WebMethod]
    public string FillControls()
    {
        con.Open();
        var list = new List<Controls>();
        var cm = new SqlCommand("select item_id as id ,item_name as name FROM items where item_id <> 0 order by item_name " +
                                "select flowformat_id as id, flow_format as name from flower_formats " +
                                "select customer_id as id, customer_name as name from flower_customers " +
                                "select company_id  as id, company_name as name from flower_companies", con);
        var r = cm.ExecuteReader();
        var items = new Controls();
        while (r.Read())
        {
            items.Id.Add(Convert.ToInt32(r["id"]));
            items.Text.Add(r["name"].ToString());
        }
        list.Add(items);
        r.NextResult();
        items = new Controls();
        while (r.Read())
        {
            items.Id.Add(Convert.ToInt32(r["id"]));
            items.Text.Add(r["name"].ToString());
        }
        list.Add(items);
        r.NextResult();
        items = new Controls();
        while (r.Read())
        {
            items.Id.Add(Convert.ToInt32(r["id"]));
            items.Text.Add(r["name"].ToString());
        }
        list.Add(items);
        r.NextResult();
        items = new Controls();
        while (r.Read())
        {
            items.Id.Add(Convert.ToInt32(r["id"]));
            items.Text.Add(r["name"].ToString());
        }
        list.Add(items);
        con.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public string FilterItems(string itemName)
    {
        var farsiPart1 = itemName.Replace("ک", "ك").Replace("ی", "ي").Replace("ة", "ه");
        var farsiPart2 = itemName.Replace("ك", "ک").Replace("ي", "ی").Replace("ه", "ة");
        con.Open();
        var sel = new SqlCommand("SELECT [item_id],[item_name] FROM [dbo].[items] where item_name like N'%" + itemName + "%' " +
                                 "OR item_name like N'%" + farsiPart2 + "%' OR item_name like N'%" + farsiPart1 + "%'  ", con);
        var r = sel.ExecuteReader();
        var lis = new List<AnbargolItems>();
        while (r.Read())
        {
            lis.Add(new AnbargolItems()
            {
                Id = Convert.ToInt32(r["item_id"]),
                Name = r["item_name"].ToString()
            });
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(lis);
    }

    [WebMethod]
    public string GetItemsByGolId(int gol)
    {
        con.Open();
        var listItems = new List<Items>();
        var cmd = new SqlCommand("select items.item_id , items.item_name from flower_arrange_items " +
                                 "inner join items on flower_arrange_items.item_name = items.item_id  " +
                                 "where flower_id = " + gol + " group by item_id, items.item_name order by items.item_name ", con);
        var rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            listItems.Add(new Items()
            {
                ItemId = Convert.ToInt32(rd["item_id"]),
                Item = rd["item_name"].ToString()
            });
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(listItems);
    }

    [WebMethod]
    public string SearchInGol(string gol)
    {
        var farsi1 = gol.Replace("ک", "ك").Replace("ی", "ي").Replace("ة", "ه");
        var farsi2 = gol.Replace("ك", "ک").Replace("ي", "ی").Replace("ه", "ة");
        con.Open();
        var listGol = new List<Gol>();
        var cmd = new SqlCommand("SELECT dbo.flower_colors.flow_color, dbo.flower_colortypes.flow_colortype, flower_entry.id, " +
                                 "dbo.flower_formats.flow_format, dbo.flower_customers.customer_name, dbo.flower_companies.company_name " +
                                 ", flower_entry.flower_name, flower_entry.flower_code, flower_entry.enter_date " +
                                 ", flower_entry.comment FROM dbo.flower_entry INNER JOIN " +
                                 "dbo.flower_colors ON dbo.flower_entry.flower_color = dbo.flower_colors.flowcolor_id INNER JOIN " +
                                 "dbo.flower_colortypes ON dbo.flower_entry.flower_colortype = dbo.flower_colortypes.colortype_id INNER JOIN " +
                                 "dbo.flower_formats ON dbo.flower_entry.flower_format = dbo.flower_formats.flowformat_id INNER JOIN " +
                                 "dbo.flower_customers ON dbo.flower_entry.customer_name = dbo.flower_customers.customer_id INNER JOIN " +
                                 "dbo.flower_companies ON dbo.flower_entry.company_name = dbo.flower_companies.company_id " +
                                 "where flower_entry.flower_name like N'%" + gol + "%' or " +
                                 "flower_entry.flower_name like N'%" + farsi1 + "%' or " +
                                 "flower_entry.flower_name like N'%" + farsi2 + "%'", con);
        var rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            listGol.Add(new Gol()
            {
                Id = Convert.ToInt32(rd["id"]),
                GolName = rd["flower_name"].ToString(),
                Color = rd["flow_color"].ToString(),
                ColorType = rd["flow_colortype"].ToString(),
                Format = rd["flow_format"].ToString(),
                Code = rd["flower_code"].ToString(),
                EnterDate = rd["enter_date"].ToString(),
                Customer = rd["customer_name"].ToString(),
                Company = rd["company_name"].ToString(),
                Comment = rd["comment"].ToString()
            });
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(listGol);
    }

    [WebMethod]
    public string CustomersItemsCount(MojoodiInput obj)
    {
        con.Open();
        var gols = new List<Gol>();
        var gol = new SqlCommand("SELECT gol.gol, dbo.flower_entry.id FROM dbo.flower_arrange_items INNER JOIN " +
                                  "dbo.flower_entry ON dbo.flower_arrange_items.flower_id = dbo.flower_entry.id INNER JOIN " +
                                  "dbo.flower_forms_entry ON dbo.flower_entry.id = dbo.flower_forms_entry.flower_id " +
                                  "inner join(select flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                  "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format AS gol, flower_entry.id " +
                                  "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON " +
                                  "flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                  "flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                  "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN " +
                                  "flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                  "flower_depot.dbo.flower_formats.flowformat_id) as gol on flower_entry.id = gol.id " +
                                  "WHERE(dbo.flower_arrange_items.item_name IN(" + obj.Item + ") or '" + obj.Item + "' = '-1') " +
                                  "AND(dbo.flower_entry.flower_format = " + obj.Format + " or " + obj.Format + " = -1) " +
                                  "AND(dbo.flower_entry.customer_name = " + obj.Moshtari + " or " + obj.Moshtari + " = -1) " +
                                  "AND(dbo.flower_entry.company_name = " + obj.Company + " or " + obj.Company + " = -1) " +
                                  "and(flower_forms_entry.arrange_type = " + obj.Arrange + " or " + obj.Arrange + " = -1) " +
                                  "GROUP BY dbo.flower_entry.id ,gol.gol", con);
        var r = gol.ExecuteReader();
        while (r.Read())
        {
            gols.Add(new Gol()
            {
                Id = Convert.ToInt32(r["id"]),
                GolName = r["gol"].ToString()
            });
        }
        con.Close();
        var list = new List<MojoodiOutput>();
        foreach (var f in gols)
        {
            var item = new MojoodiOutput() { Gol = f.GolName };
            CalculateItemsByFlowerId(f.Id);
            con.Open();
            var items = new SqlCommand("if (" + obj.Arrange + " = 2) begin select items.item_name , falleh + cutted as falleh" +
                                       " from cutted_and_remain inner join items on cutted_and_remain.item_name = items.item_id " +
                                       "where (cutted_and_remain.flower_id = " + f.Id + ") and (cutted_and_remain.item_name in" +
                                       " (" + obj.Item + ") or '" + obj.Item + "' = '-1') End " +
                                       "if (" + obj.Arrange + " = 1) begin select items.item_name , service from cutted_and_remain " +
                                       "inner join items on cutted_and_remain.item_name = items.item_id " +
                                       "where (cutted_and_remain.flower_id = " + f.Id + ") and (cutted_and_remain.item_name in" +
                                       " (" + obj.Item + ") or '" + obj.Item + "' = '-1') End " +
                                       "if (" + obj.Arrange + " = -1) begin select items.item_name , total from cutted_and_remain " +
                                       "inner join items on cutted_and_remain.item_name = items.item_id " +
                                       "where (cutted_and_remain.flower_id = " + f.Id + ") and (cutted_and_remain.item_name in" +
                                       " (" + obj.Item + ") or '" + obj.Item + "' = '-1') End ", con);
            var d = items.ExecuteReader();
            while (d.Read())
            {
                item.Itemses.Add(new Items()
                {
                    Item = d["item_name"].ToString(),
                    Tedad = obj.Arrange == 1 ? d["service"].ToString() : obj.Arrange == 2 ? d["falleh"].ToString() : d["total"].ToString()
                });
            }
            list.Add(item);
            con.Close();
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public string GetGolAfter93(int customer)
    {
        con.Open();
        var pc = new PersianCalendar();
        var PDate = pc.GetYear(DateTime.Now) + "/" + pc.GetMonth(DateTime.Now) + "/" + pc.GetDayOfMonth(DateTime.Now);
        var today = Convert.ToDateTime(PDate);
        var oldDate = today.AddMonths(-3);
        var orderTime = oldDate.ToString("yyyy/MM/dd");
        var cmd = new SqlCommand("SELECT dbo.flower_colors.flow_color, dbo.flower_colortypes.flow_colortype, flower_entry.id, " +
                                 "dbo.flower_formats.flow_format, dbo.flower_customers.customer_name, " +
                                 "dbo.flower_companies.company_name, flower_entry.flower_name, flower_entry.flower_code, " +
                                 "v.ocd as lastdate, flower_entry.comment FROM dbo.flower_entry " +
                                 "INNER JOIN dbo.flower_colors ON dbo.flower_entry.flower_color = dbo.flower_colors.flowcolor_id " +
                                 "INNER JOIN dbo.flower_colortypes ON dbo.flower_entry.flower_colortype " +
                                 "= dbo.flower_colortypes.colortype_id INNER JOIN dbo.flower_formats " +
                                 "ON dbo.flower_entry.flower_format = dbo.flower_formats.flowformat_id " +
                                 "INNER JOIN dbo.flower_customers ON dbo.flower_entry.customer_name = dbo.flower_customers.customer_id " +
                                 "INNER JOIN dbo.flower_companies ON dbo.flower_entry.company_name = dbo.flower_companies.company_id " +
                                 "inner join(select d.ocd, d.flower_id from(select max(order_complete_date) ocd, flower_id from orders where " +
                                 "flower_id in (select id from flower_entry where customer_name = " + customer + ") group by flower_id)d)v on flower_entry.id = v.flower_id " +
                                 "where flower_entry.id in(select i.flower_id from(select max(order_complete_date) ocd, flower_id from orders " +
                                 "where flower_id in (select id from flower_entry where customer_name = " + customer + ") group by flower_id)i " +
                                 "where i.ocd > '1393/01/01' and ocd < '" + orderTime + "')", con);
        var rd = cmd.ExecuteReader();
        var gols = new List<Gol>();
        while (rd.Read())
        {
            gols.Add(new Gol()
            {
                Id = Convert.ToInt32(rd["id"]),
                GolName = rd["flower_name"].ToString(),
                Color = rd["flow_color"].ToString(),
                ColorType = rd["flow_colortype"].ToString(),
                Format = rd["flow_format"].ToString(),
                Code = rd["flower_code"].ToString(),
                EnterDate = rd["lastdate"].ToString(),
                Customer = rd["customer_name"].ToString(),
                Company = rd["company_name"].ToString(),
                Comment = rd["comment"].ToString()
            });
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(gols);
    }

    [WebMethod]
    public string GetGozareshItems(int[] gols, int arrangeType)
    {
        var listgols = new List<Gol>();
        foreach (var gol in gols)
        {
            con.Open();
            var cmd = new SqlCommand("SELECT gol.gol, dbo.flower_entry.id FROM dbo.flower_arrange_items INNER JOIN " +
                                     "dbo.flower_entry ON dbo.flower_arrange_items.flower_id = dbo.flower_entry.id INNER JOIN " +
                                     "dbo.flower_forms_entry ON dbo.flower_entry.id = dbo.flower_forms_entry.flower_id " +
                                     "inner join(select flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                     "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format AS gol, flower_entry.id " +
                                     "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON " +
                                     "flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                     "flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                     "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN " +
                                     "flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                     "flower_depot.dbo.flower_formats.flowformat_id) as gol on flower_entry.id = gol.id " +
                                     "where flower_entry.id = " + gol + " group by gol.gol, flower_entry.id", con);
            var rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                listgols.Add(new Gol()
                {
                    Id = Convert.ToInt32(rd["id"]),
                    GolName = rd["gol"].ToString()
                });
            }
            con.Close();
        }
        con.Close();
        var listMojoodi = new List<MojoodiOutput>();
        foreach (var f in listgols)
        {
            var item = new MojoodiOutput() { Gol = f.GolName };
            CalculateItemsByFlowerId(f.Id);
            con.Open();
            var cmd = new SqlCommand("if (" + arrangeType + " = 2) begin select items.item_name , falleh + cutted as falleh from cutted_and_remain " +
                                       "inner join items on cutted_and_remain.item_name = items.item_id " +
                                       "where (cutted_and_remain.flower_id = " + f.Id + ") order by items.item_name End " +
                                       "if (" + arrangeType + " = 1) begin select items.item_name , service from cutted_and_remain " +
                                       "inner join items on cutted_and_remain.item_name = items.item_id " +
                                       "where (cutted_and_remain.flower_id = " + f.Id + ") order by items.item_name End " +
                                       "if (" + arrangeType + " = -1) begin select items.item_name , total from cutted_and_remain " +
                                       "inner join items on cutted_and_remain.item_name = items.item_id " +
                                       "where (cutted_and_remain.flower_id = " + f.Id + ") order by items.item_name End ", con);
            var d = cmd.ExecuteReader();
            while (d.Read())
            {
                item.Itemses.Add(new Items()
                {
                    Item = d["item_name"].ToString(),
                    Tedad = arrangeType == 1 ? d["service"].ToString() : arrangeType == 2 ? d["falleh"].ToString() : d["total"].ToString()
                });
            }
            listMojoodi.Add(item);
            con.Close();
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(listMojoodi);
    }

    [WebMethod]
    public string GetGolsByCustomer(int customer)
    {
        con.Open();
        var gols = new List<Gol>();
        var cmd = new SqlCommand("SELECT dbo.flower_colors.flow_color, dbo.flower_colortypes.flow_colortype, flower_entry.id, " +
                                 "dbo.flower_formats.flow_format, dbo.flower_customers.customer_name, dbo.flower_companies.company_name " +
                                 ", flower_entry.flower_name, flower_entry.flower_code, flower_entry.enter_date " +
                                 ", flower_entry.comment FROM dbo.flower_entry INNER JOIN " +
                                 "dbo.flower_colors ON dbo.flower_entry.flower_color = dbo.flower_colors.flowcolor_id INNER JOIN " +
                                 "dbo.flower_colortypes ON dbo.flower_entry.flower_colortype = dbo.flower_colortypes.colortype_id INNER JOIN " +
                                 "dbo.flower_formats ON dbo.flower_entry.flower_format = dbo.flower_formats.flowformat_id INNER JOIN " +
                                 "dbo.flower_customers ON dbo.flower_entry.customer_name = dbo.flower_customers.customer_id INNER JOIN " +
                                 "dbo.flower_companies ON dbo.flower_entry.company_name = dbo.flower_companies.company_id " +
                                 "where flower_entry.customer_name = " + customer + " ", con);
        var rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            gols.Add(new Gol()
            {
                Id = Convert.ToInt32(rd["id"]),
                GolName = rd["flower_name"].ToString(),
                Color = rd["flow_color"].ToString(),
                ColorType = rd["flow_colortype"].ToString(),
                Format = rd["flow_format"].ToString(),
                Code = rd["flower_code"].ToString(),
                EnterDate = rd["enter_date"].ToString(),
                Customer = rd["customer_name"].ToString(),
                Company = rd["company_name"].ToString(),
                Comment = rd["comment"].ToString()
            });
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(gols);
    }

    public void CalculateItemsByFlowerId(int flowerId)
    {
        con.Open();
        var cmd = new SqlCommand("update cutted_and_remain set falleh = j.falleh ,service = j.service from " +
                             "(select item,case when[1] is null then 0 else [1] end as service " +
                             ",case when[2] is null then 0 else [2] end as falleh from " +
                             "((select item, arrange_type, (count * tedad) as tedad from new_halfcut " +
                             "inner join new_halfcutRiz on new_halfcut.id = new_halfcutRiz.hid " +
                             "inner join flower_forms_entry on new_halfcut.formid = flower_forms_entry.id " +
                             "where flowid = " + flowerId + ") union all " +
                             "(select fai.item_name as item, ffe.arrange_type, " +
                             "(fai.item_insheet_count * ffe.sheetcount) as tedad " +
                             "from flower_arrange_items as fai inner join flower_forms_entry as ffe " +
                             "on fai.form_id = ffe.id where fai.flower_id = " + flowerId + ")) as src " +
                             "pivot(sum(tedad) for arrange_type in ([1],[2]))as piv)j " +
                             "where j.item = cutted_and_remain.item_name and cutted_and_remain.flower_id = " + flowerId + "" +
                             " " +
                             "insert into cutted_and_remain (flower_id, item_name, service, falleh) " +
                             "select " + flowerId + ", j.item, j.service, j.falleh from " +
                             "(select item,case when[1] is null then 0 else [1] end as service " +
                             ",case when[2] is null then 0 else [2] end as falleh from " +
                             "((select item, arrange_type, (count * tedad) as tedad from new_halfcut " +
                             "inner join new_halfcutRiz on new_halfcut.id = new_halfcutRiz.hid " +
                             "inner join flower_forms_entry on new_halfcut.formid = flower_forms_entry.id " +
                             "where flowid = " + flowerId + ") union all(select fai.item_name as item, ffe.arrange_type, " +
                             "(fai.item_insheet_count * ffe.sheetcount) as tedad " +
                             "from flower_arrange_items as fai inner join flower_forms_entry as ffe " +
                             "on fai.form_id = ffe.id where fai.flower_id = " + flowerId + ")) as src " +
                             "pivot(sum(tedad) for arrange_type in ([1],[2]))as piv)j " +
                             "where j.item not in(select item_name as item from " +
                             "cutted_and_remain where flower_id = " + flowerId + ")" +
                             " " +
                             "update cutted_and_remain set total = falleh + service + cutted  where flower_id = " + flowerId + " ", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    [WebMethod]
    public string GetProgram(int[] items, int golId, int arrange)
    {
        con.Open();
        var forms = new List<Forms>();
        var halfCuts = new List<Forms>();
        var itemsArray = string.Join(",", items);
        var cmd = new SqlCommand("SELECT ffe.id, ffe.form_number as fn, sheetcount as sc " +
                                 "FROM dbo.flower_arrange_items fai INNER JOIN " +
                                 "dbo.flower_forms_entry ffe ON fai.form_id = ffe.id INNER JOIN " +
                                 "dbo.items ON fai.item_name = dbo.items.item_id " +
                                 "WHERE(ffe.flower_id = " + golId + ") AND (fai.item_name IN(" + itemsArray + ")) " +
                                 "AND(ffe.sheetcount <> 0) and (ffe.arrange_type = " + arrange + " or " + arrange + " = -1) " +
                                 "group by ffe.form_number, ffe.id, sheetcount order by ffe.form_number", con);
        var rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            forms.Add(new Forms()
            {
                Id = Convert.ToInt32(rd["id"]),
                FormName = rd["fn"].ToString(),
                Count = Convert.ToInt32(rd["sc"])
            });
        }
        con.Close();
        con.Open();
        cmd = new SqlCommand("SELECT nh.id, ffe.form_number as fn, nh.tedad as sc , nh.formid " +
                             "FROM dbo.new_halfcutRiz nhr INNER JOIN " +
                             "dbo.items ON nhr.item = dbo.items.item_id " +
                             "INNER JOIN dbo.flower_forms_entry ffe " +
                             "INNER JOIN dbo.new_halfcut nh ON ffe.id = nh.formid ON nhr.hid = nh.id " +
                             "WHERE(ffe.flower_id = " + golId + ") and nhr.item in (" + itemsArray + ") " +
                             "and (ffe.arrange_type = " + arrange + " or " + arrange + " = -1) " +
                             "group by nh.id, ffe.form_number, nh.tedad, nh.formid", con);
        rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            halfCuts.Add(new Forms()
            {
                Id = Convert.ToInt32(rd["id"]),
                FormName = rd["fn"].ToString(),
                Count = Convert.ToInt32(rd["sc"]),
                FormId = Convert.ToInt32(rd["formid"])
            });
        }
        con.Close();
        var formsItems = new List<Forms>();
        foreach (var form in forms)
        {
            var f = new Forms() { FormName = form.FormName, Count = form.Count };
            con.Open();
            cmd = new SqlCommand("select items.item_id,items.item_name , " +
                                 "fai.item_insheet_count from flower_arrange_items fai" +
                                 " inner join items on fai.item_name = items.item_id" +
                                 " where form_id = " + form.Id + " order by items.item_name ", con);
            rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                f.FormItemses.Add(new FormItems()
                {
                    Id = Convert.ToInt32(rd["item_id"]),
                    Name = rd["item_name"].ToString(),
                    ItemInSheet = Convert.ToDecimal(rd["item_insheet_count"])
                });
            }
            formsItems.Add(f);
            con.Close();
        }
        var halfcutItems = new List<Forms>();
        foreach (var item in halfCuts)
        {
            var f = new Forms() { FormName = item.FormName, Count = item.Count, Id = item.Id, FormId = item.FormId };
            con.Open();
            cmd = new SqlCommand("select items.item_name , nhr.count from new_halfcutRiz nhr " +
                                 "inner join items on nhr.item = items.item_id where " +
                                 "hid = " + item.Id + " order by items.item_name", con);
            rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                f.FormItemses.Add(new FormItems()
                {
                    Name = rd["item_name"].ToString(),
                    ItemInSheet = Convert.ToDecimal(rd["count"])
                });
            }
            halfcutItems.Add(f);
            con.Close();
        }
        con.Close();
        con.Open();
        var cuttedItems = new List<Items>();
        cmd = new SqlCommand("select items.item_name , cutted from cutted_and_remain inner join items on" +
                             " cutted_and_remain.item_name = items.item_id where flower_id = " + golId + " " +
                             " and cutted_and_remain.item_name in (" + itemsArray + ") order by items.item_name", con);
        rd = cmd.ExecuteReader();
        while (rd.Read())
        {

            cuttedItems.Add(new Items()
            {
                Item = rd["item_name"].ToString(),
                Tedad = rd["cutted"].ToString()
            });
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(new
        {
            Full = formsItems,
            Half = halfcutItems,
            Cutted = cuttedItems
        });
    }

    [WebMethod]
    public string GolsByDimension(int moshtari, string startDate, string endDate)
    {
        con.Open();
        var cmd = new SqlCommand("select golha.id ,golha.gol from(select flower_id from ( select sum(sheetcount) as tedad , flower_id " +
                        "from flower_forms_entry where flower_id in (select id from flower_entry " +
                        "where (customer_name = " + moshtari + " or " + moshtari + " = -1) " +
                        "and(last_enter_date >= '" + startDate + "' and last_enter_date <= '" + endDate + "'))  " +
                        "group by flower_id)as gols where gols.tedad <> 0 union all " +
                        "select flower_id from(select cast(sum(tedad * 0.7) as int) as tedad, ffe.flower_id " +
                        "from new_halfcut inner join flower_forms_entry ffe on new_halfcut.formid = ffe.id " +
                        "where flowid in (select id from flower_entry where (customer_name = " + moshtari + " or " + moshtari + " = -1) " +
                        "and(last_enter_date >= '" + startDate + "' and last_enter_date <= '" + endDate + "'))  " +
                        "group by ffe.flower_id) as nim)j inner join(select flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' + " +
                        "flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format + ' / ' + flower_customers.customer_name" +
                        " AS gol, flower_entry.id FROM flower_entry INNER JOIN flower_colors ON " +
                        "flower_entry.flower_color = flower_colors.flowcolor_id INNER JOIN " +
                        "flower_colortypes ON flower_entry.flower_colortype = flower_colortypes.colortype_id " +
                        "INNER JOIN flower_customers ON flower_entry.customer_name = flower_customers.customer_id " +
                        "INNER JOIN flower_formats ON flower_entry.flower_format = " +
                        "flower_formats.flowformat_id)golha " +
                        "on j.flower_id = golha.id group by golha.gol , golha.id", con);
        var flowers = new List<MojoodiBaDimension>();
        var rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            flowers.Add(new MojoodiBaDimension()
            {
                Flower = rd["gol"].ToString(),
                Id = Convert.ToInt32(rd["id"])
            });
        }
        con.Close();
        foreach (var flower in flowers)
        {
            con.Open();
            cmd = new SqlCommand("select fd.flow_dimension as dim,  sum(mojoodi.sheetcount) as sheetcount from " +
                                 "(select dimension, sheetcount from flower_forms_entry where flower_id = " + flower.Id + " " +
                                 "and(last_enter_date >= '" + startDate + "' and last_enter_date <= '" + endDate + "') and sheetcount <> 0 " +
                                 "union all select dimension, cast(sum(tedad * 0.7) as int) as sheetcount from new_halfcut " +
                                 "inner join flower_forms_entry as ffe on new_halfcut.formid = ffe.id where new_halfcut.flowid = " + flower.Id + " " +
                                 "and(ffe.last_enter_date >= '" + startDate + "' and ffe.last_enter_date <= '" + endDate + "') " +
                                 "group by dimension)mojoodi inner join flower_dimensions fd on mojoodi.dimension = fd.dimension_id " +
                                 "group by fd.flow_dimension", con);
            rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                flower.Items.Add(new
                {
                    Dimension = rd["dim"],
                    Count = rd["sheetcount"]
                });
            }
            con.Close();
        }
        return new JavaScriptSerializer().Serialize(flowers);
    }

}

public class MojoodiBaDimension
{
    public string Flower { get; set; }
    public int Id { get; set; }
    public List<object> Items { get; set; }

    public MojoodiBaDimension()
    {
        Items = new List<object>();
    }
}

public class Controls
{
    public List<int> Id { get; set; }
    public List<string> Text { get; set; }

    public Controls()
    {
        Id = new List<int>();
        Text = new List<string>();
    }
}

public class MojoodiOutput
{
    public string Gol { get; set; }
    public List<Items> Itemses { get; set; }

    public MojoodiOutput()
    {
        Itemses = new List<Items>();
    }
}

public class Items
{
    public string Item { get; set; }
    public int ItemId { get; set; }
    public string Tedad { get; set; }
}

public class Gol
{
    public int Id { get; set; }
    public string GolName { get; set; }
    public string Code { get; set; }
    public string Color { get; set; }
    public int ColorId { get; set; }
    public string ColorType { get; set; }
    public int ColorTypeId { get; set; }
    public string Format { get; set; }
    public int FormatId { get; set; }
    public string Customer { get; set; }
    public int CustomerId { get; set; }
    public string Company { get; set; }
    public int CompanyId { get; set; }
    public string EnterDate { get; set; }
    public string Comment { get; set; }
}

public class MojoodiInput
{
    public string Item { get; set; }
    public int Format { get; set; }
    public int Moshtari { get; set; }
    public string StartDate { get; set; }
    public string EndDate { get; set; }
    public int Company { get; set; }
    public int Type { get; set; }
    public int Arrange { get; set; }
}

public class AnbargolItems
{
    public int Id { get; set; }
    public string Name { get; set; }
}