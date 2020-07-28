using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using Microsoft.SqlServer.Server;

/// <summary>
/// Summary description for depoitems
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class depoitems : System.Web.Services.WebService
{
    SqlConnection _cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["bastebandi"].ConnectionString);
    SqlConnection _fcnn = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);
    [WebMethod]
    public string GetDepoItems()
    {
        _cnn.Open();
        var sel = new SqlCommand("SELECT top 20 depo.id,case when depo.darb = 1 then N'درب ' + Item.nam else Item.nam end as nam " +
                                 ",case when depo.arr = 0 then N'فله' when depo.arr = 1 then N'سرویس' end as arrange, depo.arr, depo.darb, " +
                                 "Darajeh.dar, fl.gol, tedad, depo.shelf, depo.basket, depo.item as itemid, depo.gol as golid, " +
                                 "depo.darage as darageid ,depo.abgoriz ,depo.antibacterial FROM " +
                                 "bastebandi.dbo.depo INNER JOIN bastebandi.dbo.Item ON Item.ID = depo.item " +
                                 "INNER JOIN bastebandi.dbo.Darajeh ON Darajeh.ID = depo.darage " +
                                 "left join(SELECT flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                 "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format AS gol, flower_entry.id " +
                                 "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON " +
                                 "flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                 "flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                 "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN " +
                                 "flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                 "flower_depot.dbo.flower_formats.flowformat_id) as fl on depo.gol = fl.id order by depo.id desc", _cnn);
        var r = sel.ExecuteReader();
        var list = new List<DepoItems>();
        while (r.Read())
        {
            list.Add(new DepoItems()
            {
                Id = Convert.ToInt32(r["id"]),
                ItemName = r["nam"].ToString(),
                ItemId = Convert.ToInt32(r["itemid"]),
                Arrange = r["arrange"].ToString(),
                GolName = r["gol"].ToString(),
                GolId = Convert.ToInt32(r["golid"]),
                DarageId = Convert.ToInt32(r["darageid"]),
                ArrangeId = Convert.ToInt32(r["arr"]),
                Darage = r["dar"].ToString(),
                Tedad = r["tedad"].ToString(),
                Shelf = r["shelf"].ToString(),
                Basket = r["basket"].ToString(),
                Darb = Convert.ToBoolean(r["darb"]),
                Abgoriz = r["abgoriz"] != DBNull.Value && Convert.ToBoolean(r["abgoriz"]),
                AntiBacterial = r["antibacterial"] != DBNull.Value && Convert.ToBoolean(r["antibacterial"])
            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public string SearchInDepoItem(string item, string gol, int rang, int darage, int format, int type, int moshtari, bool abgoriz, bool antibacterial)
    {
        _cnn.Open();
        var sel = new SqlCommand("select * from(SELECT depo.id,case when depo.darb = 1 then N'درب ' + Item.nam else Item.nam end as nam " +
                                 ",case when depo.arr = 0 then N'فله' when depo.arr = 1 then N'سرویس' end as arrange, depo.arr, depo.darb, " +
                                 "Darajeh.dar, fl.gol, tedad, depo.shelf, depo.basket, depo.item as itemid, depo.gol as golid, " +
                                 "depo.darage as darageid ,depo.abgoriz , depo.antibacterial FROM " +
                                 "bastebandi.dbo.depo INNER JOIN bastebandi.dbo.Item ON Item.ID = depo.item " +
                                 "INNER JOIN bastebandi.dbo.Darajeh ON Darajeh.ID = depo.darage " +
                                 "left join(SELECT flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                 "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format AS gol, flower_entry.id, " +
                                 "flower_colors.flowcolor_id, flower_colortypes.colortype_id, flower_formats.flowformat_id,customer_name " +
                                 "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON " +
                                 "flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                 "flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                 "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN " +
                                 "flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                 "flower_depot.dbo.flower_formats.flowformat_id) as fl on depo.gol = fl.id " +
                                 "where (fl.flowcolor_id = " + rang + " or " + rang + " = -1) " +
                                 "and (fl.customer_name = " + moshtari + " or " + moshtari + " = -1) " +
                                 "and (fl.colortype_id = " + type + " or " + type + " = -1) " +
                                 "and (fl.flowformat_id = " + format + " or " + format + " = -1))depo " +
                                 "where (depo.nam like N'%" + item + "%' and depo.gol like N'%" + gol + "%') " +
                                 "and (depo.darageid = " + darage + " or " + darage + " = -1) " +
                                 "and (depo.abgoriz = " + (abgoriz ? "1" : "0") + " and depo.antibacterial = " + (antibacterial ? "1" : "0") + ") " +
                                 "order by depo.nam, depo.gol", _cnn);
        var r = sel.ExecuteReader();
        var list = new List<DepoItems>();
        while (r.Read())
        {
            list.Add(new DepoItems()
            {
                Id = Convert.ToInt32(r["id"]),
                ItemName = r["nam"].ToString(),
                ItemId = Convert.ToInt32(r["itemid"]),
                Arrange = r["arrange"].ToString(),
                GolName = r["gol"].ToString(),
                GolId = Convert.ToInt32(r["golid"]),
                DarageId = Convert.ToInt32(r["darageid"]),
                ArrangeId = Convert.ToInt32(r["arr"]),
                Darage = r["dar"].ToString(),
                Tedad = r["tedad"].ToString(),
                Shelf = r["shelf"].ToString(),
                Basket = r["basket"].ToString(),
                Darb = Convert.ToBoolean(r["darb"]),
                Abgoriz = r["abgoriz"] != DBNull.Value && Convert.ToBoolean(r["abgoriz"]),
                AntiBacterial = r["antibacterial"] != DBNull.Value && Convert.ToBoolean(r["antibacterial"])
            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public string FilterItems(string partName)
    {
        var farsiPart1 = partName.Replace("ک", "ك").Replace("ی", "ي").Replace("ة", "ه");
        var farsiPart2 = partName.Replace("ك", "ک").Replace("ي", "ی").Replace("ه", "ة");
        _cnn.Open();
        var sel = new SqlCommand("SELECT [ID],[nam]FROM [dbo].[Item] where nam like N'%" + partName + "%' " +
                                 "OR nam like N'%" + farsiPart2 + "%' OR nam like N'%" + farsiPart1 + "%'  ", _cnn);
        var r = sel.ExecuteReader();
        var lis = new List<Items>();
        while (r.Read())
        {
            lis.Add(new Items()
            {
                ItemName = r["nam"].ToString(),
                ItemId = Convert.ToInt32(r["ID"])
            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(lis);
    }

    [WebMethod]
    public string FilterGol(string golName)
    {
        var farsiPart1 = golName.Replace("ک", "ك").Replace("ی", "ي").Replace("ة", "ه");
        var farsiPart2 = golName.Replace("ك", "ک").Replace("ي", "ی").Replace("ه", "ة");
        _cnn.Open();
        var sel = new SqlCommand("SELECT flower_entry.flower_name,flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / '  " +
                                 "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format AS gol, flower_entry.id " +
                                 "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON " +
                                 "flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                 "flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                 "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN " +
                                 "flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                 "flower_depot.dbo.flower_formats.flowformat_id where flower_name like N'%" + golName + "%' OR " +
                                 " flower_name like N'%" + farsiPart2 + "%' OR flower_name like N'" + farsiPart1 + "'  order by flower_entry.flower_color", _cnn);
        var r = sel.ExecuteReader();
        var ls = new List<Gol>();
        while (r.Read())
        {
            ls.Add(new Gol()
            {
                Id = Convert.ToInt32(r["id"]),
                Name = r["gol"].ToString()
            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(ls);
    }

    [WebMethod]
    public string SaveItem(ItemToDB obj)
    {
        _cnn.Open();
        string ItemId = FindRahroDuplicateItem(obj);
        if (ItemId != "null")
        {
            return new JavaScriptSerializer().Serialize(GetRahroDuplicateItem(ItemId));
        }
        var ins = new SqlCommand("insert into depo (item,darage,gol,tedad,shelf,basket,arr,darb,abgoriz,antibacterial)values" +
                                 "(" + obj.ItemId + "," + obj.Darage + "," + obj.GolId + "," + obj.Tedad + ",N'" + obj.Shelf + "'," +
                                 "N'" + obj.Basket + "'," + obj.ArrangeId + "," + Convert.ToInt32(obj.Darb) + " " +
                                 ", '" + obj.Abgoriz.ToString().ToLower() + "' , '" + obj.AntiBacterial.ToString().ToLower() + "')", _cnn);
        ins.ExecuteNonQuery();
        _cnn.Close();
        return "";
    }

    private string FindRahroDuplicateItem(ItemToDB obj)
    {
        var checkDup = new SqlCommand("if (select id from depo where item = " + obj.ItemId + " and darage = " + obj.Darage + " and" +
                                      " gol = " + obj.GolId + " and darb = " + Convert.ToInt32(obj.Darb) + " and arr = " + obj.ArrangeId + " " +
                                      "and abgoriz = " + (obj.Abgoriz ? 1 : 0) + " and antibacterial = " + (obj.AntiBacterial ? 1 : 0) + " and" +
                                      " shelf = '" + obj.Shelf + "' and basket = '" + obj.Basket + "') > 0 " +
                                      " begin " +
                                      "select id from depo where item = " + obj.ItemId + " and darage = " + obj.Darage + " and " +
                                      "gol = " + obj.GolId + " and darb = " + Convert.ToInt32(obj.Darb) + " and arr = " + obj.ArrangeId + " " +
                                      "and abgoriz = " + (obj.Abgoriz ? 1 : 0) + " and antibacterial = " + (obj.AntiBacterial ? 1 : 0) + " and " +
                                      " shelf = '" + obj.Shelf + "' and basket = '" + obj.Basket + "' " +
                                      "end  " +
                                      "else begin select 'null' end", _cnn);
        return checkDup.ExecuteScalar().ToString();
    }

    private List<DepoItems> GetRahroDuplicateItem(string ItemId)
    {
        var sel = new SqlCommand("select * from(SELECT depo.id,case when depo.darb = 1 then N'درب ' + Item.nam else Item.nam end as nam " +
                                 ",case when depo.arr = 0 then N'فله' when depo.arr = 1 then N'سرویس' end as arrange, depo.arr, depo.darb, " +
                                 "Darajeh.dar, fl.gol, tedad, depo.shelf, depo.basket, depo.item as itemid, depo.gol as golid, " +
                                 "depo.darage as darageid, depo.abgoriz , depo.antibacterial FROM bastebandi.dbo.depo INNER JOIN bastebandi.dbo.Item ON Item.ID = depo.item " +
                                 "INNER JOIN bastebandi.dbo.Darajeh ON Darajeh.ID = depo.darage " +
                                 "left join(SELECT flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                 "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format AS gol, flower_entry.id " +
                                 "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON " +
                                 "flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                 "flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                 "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN " +
                                 "flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                 "flower_depot.dbo.flower_formats.flowformat_id) as fl on depo.gol = fl.id)depo " +
                                 " where depo.id = " + ItemId + " " +
                                 " order by depo.id desc", _cnn);
        var r = sel.ExecuteReader();
        var list = new List<DepoItems>();
        while (r.Read())
        {
            list.Add(new DepoItems()
            {
                Id = Convert.ToInt32(r["id"]),
                ItemName = r["nam"].ToString(),
                ItemId = Convert.ToInt32(r["itemid"]),
                Arrange = r["arrange"].ToString(),
                GolName = r["gol"].ToString(),
                GolId = Convert.ToInt32(r["golid"]),
                DarageId = Convert.ToInt32(r["darageid"]),
                ArrangeId = Convert.ToInt32(r["arr"]),
                Darage = r["dar"].ToString(),
                Tedad = r["tedad"].ToString(),
                Shelf = r["shelf"].ToString(),
                Basket = r["basket"].ToString(),
                Darb = Convert.ToBoolean(r["darb"]),
                Abgoriz = r["abgoriz"] != DBNull.Value && Convert.ToBoolean(r["abgoriz"]),
                AntiBacterial = r["antibacterial"] != DBNull.Value && Convert.ToBoolean(r["antibacterial"])
            });
        }
        _cnn.Close();
        return list;
    }

    [WebMethod]
    public string UpdateItem(ItemToDB obj)
    {
        _cnn.Open();
        string ItemId = FindRahroDuplicateItem(obj);
        if (ItemId != "null")
        {
            return new JavaScriptSerializer().Serialize(GetRahroDuplicateItem(ItemId));
        }
        var up = new SqlCommand("UPDATE [dbo].[depo] " +
                                "SET [item] = " + obj.ItemId + " " +
                                ",[darage] = " + obj.Darage + " " +
                                ",[gol] = " + obj.GolId + " " +
                                ",[tedad] = " + obj.Tedad + " " +
                                ",[shelf] = N'" + obj.Shelf + "' " +
                                ",[basket] = N'" + obj.Basket + "' " +
                                ",[arr] = " + obj.ArrangeId + " " +
                                ",[darb] = " + Convert.ToInt32(obj.Darb) + "" +
                                ",[abgoriz] = '" + obj.Abgoriz.ToString().ToLower() + "' " +
                                ",[antibacterial] = '" + obj.AntiBacterial.ToString().ToLower() + "' " +
                                " WHERE id = " + obj.Id + " " +
                                " delete from depo where tedad = 0 ", _cnn);
        up.ExecuteNonQuery();
        _cnn.Close();
        return "";
    }

    [WebMethod]
    public void Minus(int val, int rowid)
    {
        _cnn.Open();
        var up = new SqlCommand("UPDATE [dbo].[depo] " +
                                "SET tedad = tedad - " + val + " where id = " + rowid + "" +
                                " delete from depo where tedad = 0 ", _cnn);
        up.ExecuteNonQuery();
        _cnn.Close();
    }

    [WebMethod]
    public void Plus(int val, int rowid)
    {
        _cnn.Open();
        var up = new SqlCommand("UPDATE [dbo].[depo] " +
                                "SET tedad = tedad + " + val + " where id = " + rowid + "" +
                                " delete from depo where tedad = 0 ", _cnn);
        up.ExecuteNonQuery();
        _cnn.Close();
    }

    [WebMethod]
    public string GetBastebandiDepo()
    {
        _cnn.Open();
        var list = new List<BasteBandiDepo>();
        var getKala = new SqlCommand("select top 20 kala , dar  , TedadK  , Tedadd ,tedadkol,id,idi , ids, idg, idd,abgoriz,antibacterial, Tedad from (  " +
                                     "select id,abgoriz,antibacterial, orderType + ' - ' + Golname as kala, Golname, dar, typee, Tedad, idg, idi, ids, " +
                                     "case when l30 = 1 then cast(TedadK as nvarchar(10)) + N' سرویس' else cast(TedadK as nvarchar(10)) end as TedadK, idd, " +
                                     "case when l30 = 1 then cast(tedadkol as nvarchar(10)) + N' سرویس' else cast(tedadkol as nvarchar(10)) end as tedadkol, " +
                                     "cast(Tedad as nvarchar(10)) + ' ' + typee as Tedadd  from(SELECT basdepo.id, Item.low30 as l30, case when Item.nam = '----' " +
                                     "then Service.nam when Service.nam = '----' then Item.nam end as orderType,case when Item.nam = '----' then N'سرویس' when Service.nam = '----' " +
                                     "then N'کارتن' end as typee, idg, idd, idi, ids,abgoriz,antibacterial, g.gol collate SQL_Latin1_General_CP1_CI_AS AS Golname, Darajeh.dar, basdepo.TedadK, " +
                                     "basdepo.Tedad, basdepo.TedadK * basdepo.Tedad AS tedadkol FROM basdepo INNER JOIN  Item ON basdepo.idi = Item.ID INNER JOIN Service ON basdepo.ids " +
                                     "= Service.ID INNER join Darajeh ON basdepo.idd = Darajeh.ID inner join(SELECT flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                     "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format + ' / ' + flower_entry.flower_code AS gol, flower_entry.id " +
                                     "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON flower_depot.dbo.flower_entry.flower_color = " +
                                     "flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                     "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN  flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                     "flower_depot.dbo.flower_formats.flowformat_id)g on basdepo.idg = g.id)i)h order by id desc", _cnn);
        var r = getKala.ExecuteReader();
        while (r.Read())
        {
            list.Add(new BasteBandiDepo()
            {
                Kala = r["kala"].ToString(),
                Darage = r["dar"].ToString(),
                TedadKarton = r["TedadK"].ToString(),
                Tedadd = r["Tedadd"].ToString(),
                TedadKol = r["tedadkol"].ToString(),
                Id = r["id"].ToString(),
                ItemId = r["idi"].ToString(),
                ServiceId = r["ids"].ToString(),
                GolId = r["idg"].ToString(),
                DarageId = r["idd"].ToString(),
                Tedad = r["Tedad"].ToString(),
                Abgoriz = r["abgoriz"] != DBNull.Value && Convert.ToBoolean(r["abgoriz"]),
                AntiBacterial = r["antibacterial"] != DBNull.Value && Convert.ToBoolean(r["antibacterial"])
            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public string SabtMojoodiDepoBastebandi(orderCheck.Kala obj)
    {
        _cnn.Open();
        var kalaId = CheckDuplicateMojoodiBastebandi(obj);
        if (kalaId > 0)
        {
            return new JavaScriptSerializer().Serialize(GetDuplicateKala(kalaId));
        }
        if (obj.ItemId == 0)
        {
            var insertService = new SqlCommand(
                "INSERT INTO [dbo].[basdepo]([idi],[ids],[idg],[idd],[TedadK],[Tedad],[abgoriz],[antibacterial]) " +
                "SELECT  0 , " + obj.ServiceId + " , " + obj.Gol + "," +
                "" + obj.Darage + " ,SUM(ted) AS tedadK , " + obj.Karton + " ," +
                "'" + obj.Abgoriz.ToString().ToLower() + "','" + obj.AntiBacterial.ToString().ToLower() + "' " +
                " FROM dbo.RizSer WHERE(idS = " + obj.ServiceId + ") ", _cnn);
            insertService.ExecuteNonQuery();
            _cnn.Close();
            return "";
        }
        var insertFalleh = new SqlCommand(
            "INSERT INTO [dbo].[basdepo]([idi],[ids],[idg],[idd],[TedadK],[Tedad],[abgoriz],[antibacterial]) " +
            "SELECT " + obj.ItemId + " , 0 , " + obj.Gol + "," +
            "" + obj.Darage + " , TDK , " + obj.Karton + ", " +
            "'" + obj.Abgoriz.ToString().ToLower() + "','" + obj.AntiBacterial.ToString().ToLower() + "' " +
            " FROM Item WHERE(ID = " + obj.ItemId + ") ", _cnn);
        insertFalleh.ExecuteNonQuery();
        _cnn.Close();
        return "";
    }

    private int CheckDuplicateMojoodiBastebandi(orderCheck.Kala data)
    {
        var check = new SqlCommand("if (select id from basdepo where idi = " + data.ItemId + " and ids = " + data.ServiceId + " " +
                                   "and idg = " + data.Gol + " and idd = " + data.Darage + " and " +
                                   "abgoriz = " + (data.Abgoriz ? "1" : "0") + " and antibacterial = " + (data.AntiBacterial ? "1" : "0") + ")" +
                                   " is null begin select 0 end else " +
                                   "begin select id from basdepo where idi = " + data.ItemId + " and ids = " + data.ServiceId + " " +
                                   "and idg = " + data.Gol + " and idd = " + data.Darage + " and " +
                                   "abgoriz = " + (data.Abgoriz ? "1" : "0") + " and antibacterial = " + (data.AntiBacterial ? "1" : "0") + " end", _cnn);
        return Convert.ToInt32(check.ExecuteScalar());
    }

    private List<BasteBandiDepo> GetDuplicateKala(int id)
    {
        var list = new List<BasteBandiDepo>();
        var getKala = new SqlCommand("select kala , dar  , TedadK  , Tedadd ,tedadkol,id,idi , ids, idg, idd,abgoriz , antibacterial, Tedad from (  " +
                                     "select id,abgoriz , antibacterial, orderType + ' - ' + Golname as kala, Golname, dar, typee, Tedad, idg, idi, ids, " +
                                     "case when l30 = 1 then cast(TedadK as nvarchar(10)) + N' سرویس' else cast(TedadK as nvarchar(10)) end as TedadK, idd, " +
                                     "case when l30 = 1 then cast(tedadkol as nvarchar(10)) + N' سرویس' else cast(tedadkol as nvarchar(10)) end as tedadkol, " +
                                     "cast(Tedad as nvarchar(10)) + ' ' + typee as Tedadd  from(SELECT basdepo.id, Item.low30 as l30, case when Item.nam = '----' " +
                                     "then Service.nam when Service.nam = '----' then Item.nam end as orderType,case when Item.nam = '----' then N'سرویس' when Service.nam = '----' " +
                                     "then N'کارتن' end as typee, idg, idd, idi, ids,abgoriz , antibacterial, g.gol collate SQL_Latin1_General_CP1_CI_AS AS Golname, Darajeh.dar, basdepo.TedadK, " +
                                     "basdepo.Tedad, basdepo.TedadK * basdepo.Tedad AS tedadkol FROM basdepo INNER JOIN  Item ON basdepo.idi = Item.ID INNER JOIN Service ON basdepo.ids " +
                                     "= Service.ID INNER join Darajeh ON basdepo.idd = Darajeh.ID inner join(SELECT flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                     "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format + ' / ' + flower_entry.flower_code AS gol, flower_entry.id " +
                                     "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON flower_depot.dbo.flower_entry.flower_color = " +
                                     "flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                     "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN  flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                     "flower_depot.dbo.flower_formats.flowformat_id)g on basdepo.idg = g.id)i)h where id = " + id + " ", _cnn);
        var r = getKala.ExecuteReader();
        while (r.Read())
        {
            list.Add(new BasteBandiDepo()
            {
                Kala = r["kala"].ToString(),
                Darage = r["dar"].ToString(),
                TedadKarton = r["TedadK"].ToString(),
                Tedadd = r["Tedadd"].ToString(),
                TedadKol = r["tedadkol"].ToString(),
                Id = r["id"].ToString(),
                ItemId = r["idi"].ToString(),
                ServiceId = r["ids"].ToString(),
                GolId = r["idg"].ToString(),
                DarageId = r["idd"].ToString(),
                Tedad = r["Tedad"].ToString(),
                Abgoriz = r["abgoriz"] != DBNull.Value && Convert.ToBoolean(r["abgoriz"]),
                AntiBacterial = r["antibacterial"] != DBNull.Value && Convert.ToBoolean(r["antibacterial"])
            });
        }
        return list;
    }

    [WebMethod]
    public string UpdateBasDepoKala(orderCheck.Kala obj)
    {
        _cnn.Open();
        var kalaId = CheckDuplicateMojoodiBastebandi(obj);
        if (kalaId > 0)
        {
            return new JavaScriptSerializer().Serialize(GetDuplicateKala(kalaId));
        }
        if (obj.ItemId == 0)
        {
            var update = new SqlCommand("UPDATE [dbo].[basdepo] " +
                                        "SET[idi] = 0 " +
                                        ",[ids] = i.sid " +
                                        ",[idg] = i.gid " +
                                        ",[idd] = i.did " +
                                        ",[Tedad] = i.karton " +
                                        ",[TedadK] = i.tedadK " +
                                        ",[abgoriz] = i.abgoriz " +
                                        ",[antibacterial] = i.antibacterial " +
                                        "from (SELECT  " + obj.ServiceId + " as sid, " + obj.Gol + " as gid," +
                                        "" + obj.Darage + " as did ,SUM(ted) AS tedadK , " + obj.Karton + " as karton," +
                                        "'" + obj.Abgoriz.ToString().ToLower() + "' as abgoriz," +
                                        "'" + obj.AntiBacterial.ToString().ToLower() + "' as antibacterial " +
                                        " FROM dbo.RizSer WHERE(idS = " + obj.ServiceId + "))i" +
                                        " WHERE id = " + obj.Hid + " ", _cnn);
            update.ExecuteNonQuery();
        }
        else
        {
            var update = new SqlCommand("UPDATE [dbo].[basdepo] " +
                                        "SET[idi] = i.iid " +
                                        ",[ids] = 0 " +
                                        ",[idg] = i.gid " +
                                        ",[idd] = i.did " +
                                        ",[Tedad] = i.karton " +
                                        ",[TedadK] = i.tdk " +
                                        ",[abgoriz] = i.abgoriz " +
                                        ",[antibacterial] = i.antibacterial " +
                                        "from (SELECT " + obj.ItemId + " as iid, " + obj.Gol + " as gid," +
                                        "" + obj.Darage + " as did, TDK  as  tdk, " + obj.Karton + " as karton," +
                                        "'" + obj.Abgoriz.ToString().ToLower() + "' as abgoriz," +
                                        "'" + obj.AntiBacterial.ToString().ToLower() + "' as antibacterial " +
                                        " FROM Item WHERE(ID = " + obj.ItemId + "))i" +
                                        " WHERE id = " + obj.Hid + " ", _cnn);
            update.ExecuteNonQuery();
        }
        _cnn.Close();
        return "";
    }

    [WebMethod]
    public void DeleteKala(int kid)
    {
        _cnn.Open();
        var del = new SqlCommand("delete from basdepo where id = " + kid + " ", _cnn);
        del.ExecuteNonQuery();
        _cnn.Close();
    }

    [WebMethod]
    public void EditBasMojoodiTedadKarton(int kid, int tk, bool b)
    {
        _cnn.Open();
        if (b)
        {
            var plus = new SqlCommand("update basdepo set Tedad = Tedad + " + tk + " where id = " + kid + " ", _cnn);
            plus.ExecuteNonQuery();
            _cnn.Close();
            return;
        }
        var minus = new SqlCommand("update basdepo set Tedad = Tedad - " + tk + " where id = " + kid + " ", _cnn);
        minus.ExecuteNonQuery();
        _cnn.Close();
    }

    [WebMethod]
    public string SearchInBasDepo(string item, string gol, int rang, int darage, int format, int type, int moshtari, bool abgoriz, bool antibacterial)
    {
        var list = new List<BasteBandiDepo>();
        _cnn.Open();
        var sr = new SqlCommand("select kala , dar  , TedadK  , Tedadd ,tedadkol,id,idi , ids, idg, idd,abgoriz,antibacterial, Tedad from (  " +
                                "select id,abgoriz,antibacterial, orderType + ' - ' + Golname as kala, Golname, dar, typee, Tedad, idg, idi, ids, " +
                                "case when l30 = 1 then cast(TedadK as nvarchar(10)) + N' سرویس' else cast(TedadK as nvarchar(10)) end as TedadK, idd, " +
                                "case when l30 = 1 then cast(tedadkol as nvarchar(10)) + N' سرویس' else cast(tedadkol as nvarchar(10)) end as tedadkol, " +
                                "cast(Tedad as nvarchar(10)) + ' ' + typee as Tedadd  from(SELECT basdepo.id, Item.low30 as l30, case when Item.nam = '----' " +
                                "then Service.nam when Service.nam = '----' then Item.nam end as orderType,case when Item.nam = '----' then N'سرویس' when Service.nam = '----' " +
                                "then N'کارتن' end as typee, idg, idd, idi, ids,abgoriz,antibacterial, g.gol collate SQL_Latin1_General_CP1_CI_AS AS Golname, Darajeh.dar, basdepo.TedadK, " +
                                "basdepo.Tedad, basdepo.TedadK * basdepo.Tedad AS tedadkol FROM basdepo INNER JOIN  Item ON basdepo.idi = Item.ID INNER JOIN Service ON basdepo.ids " +
                                "= Service.ID INNER join Darajeh ON basdepo.idd = Darajeh.ID inner join(SELECT flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format + ' / ' + flower_entry.flower_code AS gol, flower_entry.id, flower_entry.flower_name " +
                                "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON flower_depot.dbo.flower_entry.flower_color = " +
                                "flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN  flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                "flower_depot.dbo.flower_formats.flowformat_id " +
                                "where(flowcolor_id = " + rang + " or " + rang + " = -1) " +
                                "and (customer_name = " + moshtari + " or " + moshtari + " = -1)" +
                                "and(flower_name like N'%" + gol + "%') " +
                                "and(colortype_id = " + type + " or " + type + " = -1) " +
                                "and(flowformat_id = " + format + " or " + format + " = -1))g on basdepo.idg = g.id)i " +
                                "where(orderType like N'%" + item + "%') and(idd = " + darage + " or " + darage + " = -1) " +
                                "and(abgoriz = " + Convert.ToInt32(abgoriz) + " and antibacterial = " + Convert.ToInt32(antibacterial) + "))h order by id desc", _cnn);
        var r = sr.ExecuteReader();
        while (r.Read())
        {
            list.Add(new BasteBandiDepo()
            {
                Kala = r["kala"].ToString(),
                Darage = r["dar"].ToString(),
                TedadKarton = r["TedadK"].ToString(),
                Tedadd = r["Tedadd"].ToString(),
                TedadKol = r["tedadkol"].ToString(),
                Id = r["id"].ToString(),
                ItemId = r["idi"].ToString(),
                ServiceId = r["ids"].ToString(),
                GolId = r["idg"].ToString(),
                DarageId = r["idd"].ToString(),
                Tedad = r["Tedad"].ToString(),
                Abgoriz = r["abgoriz"] != DBNull.Value && Convert.ToBoolean(r["abgoriz"]),
                AntiBacterial = r["antibacterial"] != DBNull.Value && Convert.ToBoolean(r["antibacterial"])
            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public string GetControlsData()
    {
        var darageList = new List<ControlsData>();
        var rangList = new List<ControlsData>();
        var formatList = new List<ControlsData>();
        var moshtariList = new List<ControlsData>();
        _cnn.Open();
        var darage = new SqlCommand("SELECT ID, dar FROM Darajeh", _cnn);
        var r = darage.ExecuteReader();
        while (r.Read())
        {
            darageList.Add(new ControlsData() { Name = r["dar"].ToString(), Id = Convert.ToInt32(r["ID"]) });
        }
        _cnn.Close();
        _fcnn.Open();
        var rang = new SqlCommand("SELECT [flowcolor_id],[flow_color]FROM [dbo].[flower_colors]", _fcnn);
        r = rang.ExecuteReader();
        while (r.Read())
        {
            rangList.Add(new ControlsData() { Name = r["flow_color"].ToString(), Id = Convert.ToInt32(r["flowcolor_id"]) });
        }
        _fcnn.Close();
        _fcnn.Open();
        var format = new SqlCommand("SELECT [flowformat_id],[flow_format]FROM [dbo].[flower_formats]", _fcnn);
        r = format.ExecuteReader();
        while (r.Read())
        {
            formatList.Add(new ControlsData() { Id = Convert.ToInt32(r["flowformat_id"]), Name = r["flow_format"].ToString() });
        }
        _fcnn.Close();
        _fcnn.Open();
        var moshtari = new SqlCommand("SELECT [customer_id],[customer_name]FROM [dbo].[flower_customers]", _fcnn);
        r = moshtari.ExecuteReader();
        while (r.Read())
        {
            moshtariList.Add(new ControlsData() { Id = Convert.ToInt32(r["customer_id"]), Name = r["customer_name"].ToString() });
        }
        var list = new
        {
            DarageList = darageList,
            RangList = rangList,
            FormatList = formatList,
            MoshtariList = moshtariList
        };
        return new JavaScriptSerializer().Serialize(list);
    }

    public class ControlsData
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }

    public class DepoItems
    {
        public int Id { get; set; }
        public string ItemName { get; set; }
        public int ItemId { get; set; }
        public string Darage { get; set; }
        public int DarageId { get; set; }
        public string GolName { get; set; }
        public int GolId { get; set; }
        public string Tedad { get; set; }
        public string Shelf { get; set; }
        public string Basket { get; set; }
        public string Arrange { get; set; }
        public int ArrangeId { get; set; }
        public bool Darb { get; set; }
        public bool Abgoriz { get; set; }
        public bool AntiBacterial { get; set; }
    }

    public class Items : DepoItems
    {
        public new int ItemId { get; set; }
    }

    public class Gol
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }

    public class ItemToDB
    {
        public int Id { get; set; }
        public int GolId { get; set; }
        public int ItemId { get; set; }
        public int Darage { get; set; }
        public int Tedad { get; set; }
        public string Shelf { get; set; }
        public string Basket { get; set; }
        public int ArrangeId { get; set; }
        public bool Darb { get; set; }
        public bool Abgoriz { get; set; }
        public bool AntiBacterial { get; set; }
    }

    public class BasteBandiDepo
    {
        public string Kala { get; set; }
        public string Darage { get; set; }
        public string TedadKarton { get; set; }
        public string Tedad { get; set; }
        public string TedadKol { get; set; }
        public string Id { get; set; }
        public string ItemId { get; set; }
        public string ServiceId { get; set; }
        public string GolId { get; set; }
        public string DarageId { get; set; }
        public string RangId { get; set; }
        public string Tedadd { get; set; }
        public bool Abgoriz { get; set; }
        public bool AntiBacterial { get; set; }
    }
}
