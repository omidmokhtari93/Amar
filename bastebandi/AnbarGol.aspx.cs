using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bastebandi_AnbarGol : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSearch_OnClick(object sender, EventArgs e)
    {
        TableMojoodi.Visible = false;
        sqlSearchSource.FilterExpression = " (flower_name LIKE '%" + txtFlowerName.Text + "%' OR flower_name = '')";
        grid_show_flowers.DataBind();
        grid_show_flowers.Visible = true;
    }

    protected void grid_show_flowers_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName != "show") return;
        var index = int.Parse(e.CommandArgument.ToString());
        HiddenflowerId.Value = grid_show_flowers.DataKeys[index]["id"].ToString();
        con.Open();
        var cmd = new SqlCommand("update cutted_and_remain set falleh = j.falleh ,service = j.service from " +
                                 "(select item,case when[1] is null then 0 else [1] end as service " +
                                 ",case when[2] is null then 0 else [2] end as falleh from " +
                                 "((select item, arrange_type, (count * tedad) as tedad from new_halfcut " +
                                 "inner join new_halfcutRiz on new_halfcut.id = new_halfcutRiz.hid " +
                                 "inner join flower_forms_entry on new_halfcut.formid = flower_forms_entry.id " +
                                 "where flowid = " + HiddenflowerId.Value + ") union all " +
                                 "(select fai.item_name as item, ffe.arrange_type, " +
                                 "(fai.item_insheet_count * ffe.sheetcount) as tedad " +
                                 "from flower_arrange_items as fai inner join flower_forms_entry as ffe " +
                                 "on fai.form_id = ffe.id where fai.flower_id = " + HiddenflowerId.Value + ")) as src " +
                                 "pivot(sum(tedad) for arrange_type in ([1],[2]))as piv)j " +
                                 "where j.item = cutted_and_remain.item_name and cutted_and_remain.flower_id = " + HiddenflowerId.Value + "" +
                                 " " +
                                 "insert into cutted_and_remain (flower_id, item_name, service, falleh) " +
                                 "select " + HiddenflowerId.Value + ", j.item, j.service, j.falleh from " +
                                 "(select item,case when[1] is null then 0 else [1] end as service " +
                                 ",case when[2] is null then 0 else [2] end as falleh from " +
                                 "((select item, arrange_type, (count * tedad) as tedad from new_halfcut " +
                                 "inner join new_halfcutRiz on new_halfcut.id = new_halfcutRiz.hid " +
                                 "inner join flower_forms_entry on new_halfcut.formid = flower_forms_entry.id " +
                                 "where flowid = " + HiddenflowerId.Value + ") union all(select fai.item_name as item, ffe.arrange_type, " +
                                 "(fai.item_insheet_count * ffe.sheetcount) as tedad " +
                                 "from flower_arrange_items as fai inner join flower_forms_entry as ffe " +
                                 "on fai.form_id = ffe.id where fai.flower_id = " + HiddenflowerId.Value + ")) as src " +
                                 "pivot(sum(tedad) for arrange_type in ([1],[2]))as piv)j " +
                                 "where j.item not in(select item_name as item from " +
                                 "cutted_and_remain where flower_id = " + HiddenflowerId.Value + ")" +
                                 " " +
                                 "update cutted_and_remain set total = falleh + service + cutted  where flower_id = " + HiddenflowerId.Value + " ", con);
        cmd.ExecuteNonQuery();
        con.Close();
        grid_show_flowers.Visible = false;
        TableMojoodi.Visible = true;
    }
}