using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class half_cut : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);
    int id;
    int sheetCount;
    int formId;
    int columncount;
    int min_id;
    int max_id;
    private string changeRec;
    private string changeTime;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (((string)Session["level"] != "flower_depot") || (Convert.ToInt32(Session["userid"]) != 44))
        {
            Session.Clear();
            Response.Redirect("../login.aspx");
        }
        Page.MaintainScrollPositionOnPostBack = true;
        if (!Page.IsPostBack)
        {
            get_flower_info();
        }
       
    }
    private void get_flower_info()
    {
        if (Session["half_cut_page"] == null) return;
        con.Open();
        SqlCommand selectflower = new SqlCommand(
            " SELECT flower_entry.id, flower_entry.flower_name AS flowname, flower_entry.flower_code AS flowcode, flower_colors.flow_color AS flowcolor, " +
            " flower_colortypes.flow_colortype AS colortype, flower_formats.flow_format AS format, flower_customers.customer_name AS customer, " +
            " flower_companies.company_name AS company " +
            "  FROM flower_entry INNER JOIN " +
            " flower_colors ON flower_entry.flower_color = flower_colors.flowcolor_id INNER JOIN " +
            " flower_colortypes ON flower_entry.flower_colortype = flower_colortypes.colortype_id INNER JOIN " +
            " flower_formats ON flower_entry.flower_format = flower_formats.flowformat_id INNER JOIN " +
            " flower_customers ON flower_entry.customer_name = flower_customers.customer_id INNER JOIN " +
            " flower_companies ON flower_entry.company_name = flower_companies.company_id " +
            " where id = " + Session["half_cut_page"] + "", con);
        SqlDataReader readflow = selectflower.ExecuteReader();
        if (readflow.Read())
        {
            lbl_flowname.Text = readflow["flowname"].ToString();
            lbl_flowcode.Text = readflow["flowcode"].ToString();
            lbl_color.Text = readflow["flowcolor"].ToString();
            lbl_colortype.Text = readflow["colortype"].ToString();
            lbl_format.Text = readflow["format"].ToString();
            lbl_customer.Text = readflow["customer"].ToString();
            lbl_company.Text = readflow["company"].ToString();
        }
        con.Close();
    }
    protected void drp_form_number_SelectedIndexChanged(object sender, EventArgs e)
    {
        grid_without_item.Visible = false;
        pnl_warning.Visible = false;
        pnl_show_form_items.Visible = true;
        pnl_show_edit_halfcut.Visible = false;
        pnl_halfcut_table.Visible = true;
        get_arrange_info();
        if (chk_half.Checked)
        {
            grid_show_items.Columns[4].Visible = true;
            CreateTable();
        }
        else
        {
            grid_show_items.Columns[4].Visible = false;
            CreateTable();
        }
    }
    protected void btn_back_to_previous_OnClick(object sender, EventArgs e)
    {
        Session["back_to_previous_page"] = Session["half_cut_page"];
        Session["half_cut_page"] = "";
        Response.Redirect("search_flower.aspx");
    }
    protected void btn_accept_table_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txt_half_cut_sheetcount.Text) || drp_form_number.SelectedValue == "-1" ||
            Convert.ToInt32(txt_half_cut_sheetcount.Text) == 0)
        {
            pnl_warning.Visible = true;
            return;
        }
        pnl_warning.Visible = false;
        var flowerId = (int)grid_show_items.DataKeys[0]["flower_id"];
        var form_id = (int)grid_show_items.DataKeys[0]["form_id"];
        var halfcutSheetcount = Convert.ToInt32(txt_half_cut_sheetcount.Text);
        con.Open();
        if (chk_old_flow.Checked == false && Convert.ToInt32(txt_half_cut_sheetcount.Text) < Convert.ToInt32(txt_remain_sheetcount.Text) ||
            Convert.ToInt32(txt_half_cut_sheetcount.Text) == Convert.ToInt32(txt_remain_sheetcount.Text))
        {
            var update_form_sheetcount =
                new SqlCommand("update flower_forms_entry set sheetcount = sheetcount - " + halfcutSheetcount +
                               "where id = " + drp_form_number.SelectedValue + "  ", con);
            update_form_sheetcount.ExecuteNonQuery();
        }
        if (chk_old_flow.Checked == false && Convert.ToInt32(txt_half_cut_sheetcount.Text) > Convert.ToInt32(txt_remain_sheetcount.Text))
        {
            pnl_warning.Visible = true;
            return;
        }
        ChangeTime();
        var insert1 = new SqlCommand(
            "insert into half_cut (flower_id,form_id,sheet_count,column_count , time) " +
            "values (" + flowerId + " , '" + form_id + "' , " + halfcutSheetcount + " , 0 , '"+changeTime+"')",
            con);
        insert1.ExecuteNonQuery();
        int rowsCount = grid_show_items.Rows.Count;
        var selectlastId = new SqlCommand("select MAX(id) as id from half_cut", con);
        Session["last_id"] = Convert.ToInt32(selectlastId.ExecuteScalar());
        var help = 0;
        var columncount = 1;
        changeRec =  changeTime + " نیم برش به تعداد " + txt_half_cut_sheetcount.Text + " برگ دارای" ;
        for (int i = 0; i < rowsCount; i++)
        {
            var itemName = (int)grid_show_items.DataKeys[i]["item_id"];
            double countInSheet = (double)grid_show_items.DataKeys[i]["item_count"];
            var row = grid_show_items.Rows[i];
            var txtremainItem = row.Cells[4].FindControl("txt_remain_item") as TextBox;
            var chkRow = row.Cells[3].FindControl("chk_has_item") as CheckBox;
            if (!chkRow.Checked) continue;
            if (string.IsNullOrEmpty(txtremainItem.Text))
            {
                SqlCommand update1 =
                    new SqlCommand("update half_cut set item" + help + " = " + itemName + " , count" +
                                   help + " = " + countInSheet + ", column_count = " + columncount + " " +
                                   "where id = " + Session["last_id"] + " ", con);
                update1.ExecuteNonQuery();
                ChRecords(row.Cells[0].Text , countInSheet);
            }
            else
            {
                var remainItem = Convert.ToDecimal(txtremainItem.Text);
                SqlCommand update1 =
                    new SqlCommand("update half_cut set item" + help + " = " + itemName + " , count" +
                                   help + " = " + remainItem + ", column_count = " + columncount + " " +
                                   "where id = " + Session["last_id"] + "", con);
                update1.ExecuteNonQuery();
                ChRecords(row.Cells[0].Text, Convert.ToDouble(remainItem));
            }
            help++;
            columncount++;
        }
        changeRec += " ایجاد شد ";
        con.Close();
        InsRecord();
        check_duplicate_forms();
        grid_half_cut.DataBind();
        CreateTable();
        con.Open();
        var deleteEmptyRecord = new SqlCommand("delete from half_cut where (item0 = 0)", con);
        deleteEmptyRecord.ExecuteNonQuery();
        con.Close();
        txt_half_cut_sheetcount.Text = "";
        grid_without_item.Visible = false;
        chk_old_flow.Checked = false;
        Session["showIndex"] = 0;
        Session["editIndex"] = 0;
        Session["deleteIndex"] = 0;
    }
    private void ChRecords(string item , double tedad)
    {
        changeRec += " " + item + "(" + tedad + ")";
    }
    private void InsRecord()
    {
        con.Close();
        con.Open();
        var insRecord = new SqlCommand("insert into hcRecords (flid,foid,chng,time)values" +
                                       "(" + Session["half_cut_page"] + "," + drp_form_number.SelectedValue + ",'" + changeRec + "','" + changeTime + "')", con);
        insRecord.ExecuteNonQuery();
        gridsavabegh.DataBind();
        con.Close();
    }
    protected void grid_half_cut_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        pnl_halfcut_edit_warning.Visible = false;
        if (e.CommandName == "edit_halfcut")
        {
            if (Session["PreviousRowIndex"] != null &&
                Convert.ToInt32(Session["PreviousRowIndex"]) < grid_half_cut.Rows.Count)
            {
                var previousRowIndex = (int)Session["PreviousRowIndex"];
                var PreviousRow = grid_half_cut.Rows[previousRowIndex];
                PreviousRow.Cells[2].BackColor = Color.Empty;
            }
            pnl_controls.Visible = false;
            DataTable dt = new DataTable();
            dt.Columns.Add("flower_id");
            dt.Columns.Add("form_id");
            dt.Columns.Add("item_id");
            dt.Columns.Add("item_name");
            dt.Columns.Add("item_count");
            dt.Columns.Add("form_sheetcount");
            int[] itemId = new int[21];
            decimal[] itemcount = new decimal[21];
            string[] itemName = new string[21];
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = grid_half_cut.Rows[index];
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            int column_count = (int)grid_half_cut.DataKeys[rowIndex]["column_count"];
            Session["halfcut_id"] = (int)grid_half_cut.DataKeys[rowIndex]["id"];
            Session["sheet_count"] = (int)grid_half_cut.DataKeys[rowIndex]["sheet_count"];
            Session["formId"] = (int)grid_half_cut.DataKeys[rowIndex]["form_id"];
            con.Open();
            int rowCells = 3;
            for (int i = 0; i < column_count; i++)
            {
                itemName[i] = row.Cells[rowCells].Text;
                SqlCommand selectItem = new SqlCommand("select item"+i+" as item from half_cut where id = "+ Session["halfcut_id"] + " " , con);
                itemId[i] = Convert.ToInt32(selectItem.ExecuteScalar());
                SqlCommand selectCount = new SqlCommand("select count" + i + " as count from half_cut where id = " + Session["halfcut_id"] + " ", con);
                itemcount[i] = Convert.ToDecimal(selectCount.ExecuteScalar());
                var dr = dt.NewRow();
                dr["flower_id"] = Session["half_cut_page"];
                dr["form_id"] = drp_form_number.SelectedValue;
                dr["item_id"] = itemId[i];
                dr["item_name"] = itemName[i];
                dr["item_count"] = itemcount[i];
                dr["form_sheetcount"] = Session["sheet_count"];
                dt.Rows.Add(dr);
                rowCells = rowCells + 2;
            }
            grid_edit_halfcut.DataSource = dt;
            grid_edit_halfcut.DataBind();
            pnl_show_edit_halfcut.Visible = true;
            pnl_show_form_items.Visible = false;
            txt_halfcut_available.Text = Session["sheet_count"].ToString();
            grid_without_item.Visible = false;
            pnl_delete_halfcut.Visible = false;
            txt_halfcut_cutted.Text = "";
            row.Cells[2].BackColor = Color.FromArgb(255, 176, 176);
            Session["PreviousRowIndex"] = row.RowIndex;
        }
        if (e.CommandName == "delete_halfcut")
        {
            if (Session["PreviousRowIndex"] != null &&
                Convert.ToInt32(Session["PreviousRowIndex"]) < grid_half_cut.Rows.Count)
            {
                var previousRowIndex = (int)Session["PreviousRowIndex"];
                var PreviousRow = grid_half_cut.Rows[previousRowIndex];
                PreviousRow.Cells[2].BackColor = Color.Empty;
            }
            grid_without_item.Visible = false;
            int index = int.Parse(e.CommandArgument.ToString());
            Session["hid"] = (int)grid_half_cut.DataKeys[index]["id"];
            Session["cc"] = (int)grid_half_cut.DataKeys[index]["column_count"];
            Session["sc"] = (int)grid_half_cut.DataKeys[index]["sheet_count"];
            pnl_delete_halfcut.Visible = true;
            pnl_show_edit_halfcut.Visible = false;
            pnl_show_form_items.Visible = false;
            var row = grid_half_cut.Rows[index];
            row.Cells[2].BackColor = Color.FromArgb(255, 176, 176);
            Session["PreviousRowIndex"] = row.RowIndex;
        }
        if (e.CommandName == "show_halfcut")
        {
            if (Session["PreviousRowIndex"] != null && 
                Convert.ToInt32(Session["PreviousRowIndex"]) < grid_half_cut.Rows.Count)
            {
                var previousRowIndex = (int)Session["PreviousRowIndex"];
                var PreviousRow = grid_half_cut.Rows[previousRowIndex];
                PreviousRow.Cells[2].BackColor = Color.Empty;
            }
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            int halfcutId = (int)grid_half_cut.DataKeys[rowIndex]["id"];
            int formId = (int)grid_half_cut.DataKeys[rowIndex]["form_id"];
            con.Open();
            SqlCommand deleteCommand = new SqlCommand("begin " +
                                                      "DELETE FROM [flower_depot].[dbo].[program_half] " +
                                                      "end " +
                                                      "begin " +
                                                      "DELETE FROM [flower_depot].[dbo].[program_full] " +
                                                      "end", con);
            deleteCommand.ExecuteNonQuery();
            SqlCommand selectcolumncount = new SqlCommand("select column_count as cc from half_cut where id =" + halfcutId + " ", con);
            int columncount = Convert.ToInt32(selectcolumncount.ExecuteScalar());
            for (int j = 0; j < columncount; j++)
            {
                SqlCommand insert_half =
                    new SqlCommand(
                        "insert into program_half ([item_name],[item_count]) " +
                        "SELECT item" + j + ",count"+j+" from half_cut where id = " + halfcutId + " ", con);
                insert_half.ExecuteNonQuery();
            }
            SqlCommand insert_full = new SqlCommand("insert into program_full (item_name,item_count) " +
                                                    "select item_name , item_insheet_count " +
                                                    "from flower_arrange_items " +
                                                    "where (flower_id = " + Session["half_cut_page"] + ") " +
                                                    "AND (form_id = " + formId + ") ", con);
            insert_full.ExecuteNonQuery();
            SqlDataSource without_item = new SqlDataSource();
            without_item.ConnectionString = "Server=server\\server;Database=flower_depot;User ID=sa;Password=Taghdis000";
            grid_without_item.DataSource = without_item;
            without_item.SelectCommand = "(SELECT dbo.items.item_name, CAST(derivedtbl_1.mines AS NVARCHAR(10)) AS mines "+
                                         "FROM(SELECT dbo.program_full.item_name, dbo.program_full.item_count - dbo.program_half.item_count AS mines " +
                                         "FROM dbo.program_half INNER JOIN " +
                                         "dbo.program_full ON dbo.program_half.item_name = dbo.program_full.item_name) AS derivedtbl_1 INNER JOIN " +
                                         "dbo.items ON derivedtbl_1.item_name = dbo.items.item_id " +
                                         "WHERE(derivedtbl_1.mines > 0)) " +
                                         "union " +
                                         "(SELECT dbo.items.item_name, 'کامل' AS item_count " +
                                         "FROM dbo.program_full INNER JOIN " +
                                         "dbo.items ON dbo.program_full.item_name = dbo.items.item_id " +
                                         "WHERE(dbo.program_full.item_name NOT IN " +
                                         "(SELECT item_name " +
                                         "FROM dbo.program_half)))";  
            grid_without_item.Visible = true;
            grid_without_item.DataBind();
            con.Close();
            pnl_delete_halfcut.Visible = false;
            var row = grid_half_cut.Rows[rowIndex];
            row.Cells[2].BackColor = Color.FromArgb(255, 176, 176);
            Session["PreviousRowIndex"] = row.RowIndex;
        }
    }
    protected void btn_cancel_edit_OnClick(object sender, EventArgs e)
    {
        pnl_halfcut_edit_warning.Visible = false;
        pnl_controls.Visible = true;
        pnl_show_edit_halfcut.Visible = false;
        pnl_show_form_items.Visible = true;
        CreateTable();
    }
    protected void btn_edit_halfcut_OnClick(object sender, EventArgs e)
    {
        ChangeTime();
        if (string.IsNullOrEmpty(txt_halfcut_cutted.Text))
        {
            con.Open();
            SqlCommand updatejustsheetcount = new SqlCommand("update half_cut set sheet_count = " + Convert.ToInt32(txt_halfcut_available.Text) + " , time = '"+changeTime+"' " +
                                                             "where id = "+ Session["halfcut_id"] + " ", con);
            updatejustsheetcount.ExecuteNonQuery();
            changeRec += changeTime + " تغییر تعداد برگ به میزان " + txt_halfcut_available.Text + " برگ انجام شد";
            InsRecord();
            CreateTable();
        }
        else if (Convert.ToInt32(txt_halfcut_cutted.Text) == 0 || Convert.ToInt32(txt_halfcut_cutted.Text) > Convert.ToInt32(txt_halfcut_available.Text))
        {
            pnl_halfcut_edit_warning.Visible = true;
            return;
        }
        else
        {
            pnl_halfcut_edit_warning.Visible = false;
            if (Convert.ToInt32(txt_halfcut_available.Text) == Convert.ToInt32(txt_halfcut_cutted.Text))
            {
                var rowsCount = grid_edit_halfcut.Rows.Count;
                var help = 0;
                changeRec = changeTime + " نیم برش به تعداد " + txt_halfcut_cutted.Text + " برگ دارای";
                var columncount = 1;
                con.Open();
                for (int i = 0; i < rowsCount; i++)
                {
                    var row = grid_edit_halfcut.Rows[i];
                    var itemName = Convert.ToInt32(row.Cells[0].Text);
                    var countInSheet = Convert.ToDecimal(row.Cells[2].Text);
                    var txtremainItem = row.Cells[3].FindControl("txt_remain_item_halfcut") as TextBox;
                    var chkRow = row.Cells[2].FindControl("chk_has_item_halfcut") as CheckBox;
                    if (!chkRow.Checked) continue;
                    if (string.IsNullOrEmpty(txtremainItem.Text))
                    {
                        var update1 =
                            new SqlCommand("update half_cut set item" + help + " = " + itemName + " , count" +
                                           help + " = " + countInSheet + ", column_count = " + columncount +
                                           " " +
                                           "where id = " + Session["halfcut_id"] + " ", con);
                        update1.ExecuteNonQuery();
                        ChRecords(row.Cells[1].Text , Convert.ToDouble(countInSheet));
                    }
                    else
                    {
                        var remainItem = Convert.ToDecimal(txtremainItem.Text);
                        var update2 =
                            new SqlCommand("update half_cut set item" + help + " = " + itemName + " , count" +
                                           help + " = " + remainItem + ", column_count = " + columncount +
                                           " " +
                                           "where id = " + Session["halfcut_id"] + "", con);
                        update2.ExecuteNonQuery();
                        ChRecords(row.Cells[1].Text, Convert.ToDouble(remainItem));
                    }
                    help++;
                    columncount++;
                }
                for (var j = help; j < 21; j++)
                {
                    var update3 =
                        new SqlCommand(
                            "update half_cut set item" + j + " = 0 , count" + j + " = 0 where id = " +
                            Session["halfcut_id"] + " ", con);
                    update3.ExecuteNonQuery();
                }
                var setTime = new SqlCommand("update half_cut set time = '"+changeTime+"' where id = "+Session["halfcut_id"] +" ",con);
                setTime.ExecuteNonQuery();
                changeRec += " ویرایش شد ";
                InsRecord();
                con.Close();
            }

            if (Convert.ToInt32(txt_halfcut_available.Text) != Convert.ToInt32(txt_halfcut_cutted.Text))
            {
                con.Open();
                var updatesheetcount =
                    new SqlCommand(
                        "update half_cut set sheet_count = sheet_count - " +
                        Convert.ToInt32(txt_halfcut_cutted.Text) +
                        " where id =" + Session["halfcut_id"] + " ", con);
                updatesheetcount.ExecuteNonQuery();
                con.Close();
                var halfcutCuttedCount = Convert.ToInt32(txt_halfcut_cutted.Text);
                con.Open();
                var insert1 = new SqlCommand(
                    "insert into half_cut (flower_id,form_id,sheet_count,column_count , time) " +
                    "values (" + Session["half_cut_page"] + " , '" + Session["formId"] + "' , " + halfcutCuttedCount + " , 0 , '"+changeTime+"')",
                    con);
                insert1.ExecuteNonQuery();
                var selectlastId = new SqlCommand("select MAX(id) as id from half_cut", con);
                var maxid = Convert.ToInt32(selectlastId.ExecuteScalar());
                var help = 0;
                changeRec = changeTime + " نیم برش به تعداد " + txt_halfcut_cutted.Text + " برگ دارای";
                var columncount = 1;
                var rowsCount = grid_edit_halfcut.Rows.Count;
                for (var i = 0; i < rowsCount; i++)
                {
                    var row = grid_edit_halfcut.Rows[i];
                    var itemName = Convert.ToInt32(row.Cells[0].Text);
                    var countInSheet = Convert.ToDecimal(row.Cells[2].Text);
                    var txtremainItem = row.Cells[3].FindControl("txt_remain_item_halfcut") as TextBox;
                    var chkRow = row.Cells[2].FindControl("chk_has_item_halfcut") as CheckBox;
                    if (!chkRow.Checked)
                    {
                        ChRecords(row.Cells[1].Text, Convert.ToDouble(countInSheet));
                        continue;
                    }
                    if (string.IsNullOrEmpty(txtremainItem.Text))
                    {
                        var update1 =
                            new SqlCommand("update half_cut set item" + help + " = " + itemName + " , count" +
                                           help + " = " + countInSheet + ", column_count = " + columncount +
                                           " " +
                                           "where id = " + maxid + " ", con);
                        update1.ExecuteNonQuery();
                        ChRecords(row.Cells[1].Text, Convert.ToDouble(countInSheet));
                    }
                    else
                    {
                        var remainItem = Convert.ToDecimal(txtremainItem.Text);
                        var update1 =
                            new SqlCommand("update half_cut set item" + help + " = " + itemName + " , count" +
                                           help + " = " + remainItem + ", column_count = " + columncount +
                                           " " +
                                           "where id = " + maxid + "", con);
                        update1.ExecuteNonQuery();
                        ChRecords(row.Cells[1].Text, Convert.ToDouble(remainItem));
                    }
                    help++;
                    columncount++;
                }
                
                var setTime = new SqlCommand("update half_cut set time = '" + changeTime + "' where id = " + Session["halfcut_id"] + " ", con);
                setTime.ExecuteNonQuery();
                check_duplicate_forms();
                changeRec += " ویرایش شد ";
                InsRecord();
                con.Close();
            }
        }
        con.Close();
        check_duplicate_on_edit();
        grid_half_cut.DataBind();
        con.Close();
        pnl_show_form_items.Visible = true;
        pnl_show_edit_halfcut.Visible = false;
        pnl_controls.Visible = true;
        con.Open();
        var deleteEmptyRecord = new SqlCommand("delete from half_cut where (item0 = 0)", con);
        deleteEmptyRecord.ExecuteNonQuery();
        con.Close();
        CreateTable();
    }
    private void CreateTable()
    {
        con.Close();
        try
        {
            con.Open();
            SqlCommand colomns_count = new SqlCommand("select MAX(column_count) as column_count from half_cut " +
                                                      "where  (flower_id = " + Session["half_cut_page"] + ")" +
                                                      "AND form_id = "+drp_form_number.SelectedValue+" ", con);
            int columns = Convert.ToInt32(colomns_count.ExecuteScalar());
            if (columns != 0)
            {
                columns = columns * 2 + 2;
                for (int i = 44; i > columns; i--)
                {
                    grid_half_cut.Columns[i].Visible = false;
                    for (int j = 0; j <= columns; j++)
                    {
                        grid_half_cut.Columns[j].Visible = true;
                    }
                }
            }
            con.Close();
           
        }
        catch
        {
            con.Close();
        }
        if (drp_form_number.SelectedValue != "-1")
        {
            con.Open();
            SqlCommand readsheetcount = new SqlCommand("select sheetcount as sheetcount from flower_forms_entry " +
                                                       "where id = "+drp_form_number.SelectedValue+" ", con);
            int sheetcount = Convert.ToInt32(readsheetcount.ExecuteScalar());            
                txt_remain_sheetcount.Text = sheetcount.ToString();
            form_items.FilterExpression = "form_id = " +drp_form_number.SelectedValue+"  ";
            half_cut_table.FilterExpression = " form_id = " + drp_form_number.SelectedValue + " ";
            con.Close();
        }
    }
    protected void chk_half_CheckedChanged(object sender, EventArgs e)
    {
        if (chk_half.Checked)
        {
            grid_show_items.Columns[4].Visible = true;
            CreateTable();
        }
        else
        {
            grid_show_items.Columns[4].Visible = false;
            CreateTable();
        }
    }
    protected void btn_cancel_delete_OnClick(object sender, EventArgs e)
    {
        pnl_delete_halfcut.Visible = false;
        pnl_controls.Visible = true;
        pnl_show_form_items.Visible = true;
        var row = grid_half_cut.Rows[Convert.ToInt32(Session["deleteIndex"])];
        row.BackColor = Color.Empty;
    }
    protected void btn_accept_delete_OnClick(object sender, EventArgs e)
    {
        ChangeTime();
        con.Open();
        changeRec = "در تاریخ " + changeTime + " نیم برش به تعداد " + Session["sc"] + " برگ دارای ";
        for (int i = 0; i < Convert.ToInt32(Session["cc"]); i++)
        {
            var Rowinfo = new SqlCommand("SELECT dbo.items.item_name + '(' + cast(cast(half_cut.count"+i+" as int) as nvarchar) + ')' " +
                                         "FROM dbo.half_cut INNER JOIN dbo.items ON dbo.half_cut.item"+i+ " = dbo.items.item_id where half_cut.id = " + Session["hid"]+" " ,con);
            changeRec += Rowinfo.ExecuteScalar().ToString();
        }
        changeRec += " حذف شد ";
        SqlCommand delete_halfcut = new SqlCommand("DELETE FROM [flower_depot].[dbo].[half_cut] WHERE id = " + Session["hid"] + " ",con);
        delete_halfcut.ExecuteNonQuery();
        con.Close();
        InsRecord();
        grid_half_cut.DataBind();
        pnl_delete_halfcut.Visible = false;
        CreateTable();
        pnl_controls.Visible = true;
        pnl_show_form_items.Visible = true;
    }
    protected void chk_header_OnCheckedChanged(object sender, EventArgs e)
    {
        CheckBox headerChkBox = ((CheckBox)grid_show_items.HeaderRow.FindControl("chk_header"));
        bool i;
        if (headerChkBox.Checked)
        {
            i = true;
            CheckState(i);
        }
        else
        {
            i = false;
            CheckState(i);
        }
    }
    private void CheckState(bool p)
    {
        foreach (GridViewRow row in grid_show_items.Rows)
        {
            CheckBox chkcheck = (CheckBox)row.FindControl("chk_has_item");
            chkcheck.Checked = p;
        }
    }
    protected void chk_header_edit_OnCheckedChanged(object sender, EventArgs e)
    {
        CheckBox headerChkBox_edit = ((CheckBox)grid_edit_halfcut.HeaderRow.FindControl("chk_header_edit"));
        bool j;
        if (headerChkBox_edit.Checked)
        {
            j = true;
            CheckState_edit(j);
        }
        else
        {
            j = false;
            CheckState_edit(j);
        }
    }
    private void CheckState_edit(bool c)
    {
        foreach (GridViewRow row in grid_edit_halfcut.Rows)
        {
            CheckBox chkcheck_header = (CheckBox)row.FindControl("chk_has_item_halfcut");
            chkcheck_header.Checked = c;
        }
    }
    private void check_duplicate_forms()
    {
        con.Close();
        string[] item = new String[22];
        string[] count = new String[22];
        for (int i = 0; i < 22; i++)
        {
            item[i] = "0";
            count[i] = "0.0";
        }
        con.Open();
        var selectlastid = new SqlCommand("SELECT column_count AS col , id , sheet_count ," +
                                                 " form_id as formid FROM dbo.half_cut order by id desc ", con);
       var rdDataReader = selectlastid.ExecuteReader();
        if (rdDataReader.Read())
        {
            id = Convert.ToInt32(rdDataReader["id"]);
            sheetCount = Convert.ToInt32(rdDataReader["sheet_count"]);
            formId = Convert.ToInt32(rdDataReader["formid"]);
            columncount = Convert.ToInt32(rdDataReader["col"]);
        }
        con.Close();
        for (int i = 0; i < columncount; i++)
        {
            con.Open();
            var getlastrecorditem = new SqlCommand("SELECT item" + i + " As item ,count" + i + " As count FROM dbo.half_cut where id = "+id+" ", con);
            var rd = getlastrecorditem.ExecuteReader();
            if (rd.Read())
            {
                item[i] = rd["item"].ToString();
                count[i] = rd["count"].ToString();
            }
            con.Close();
        }
        con.Open();
        var selectsimilar = new SqlCommand("select sheet_count , id from half_cut " +
                                                  "where ( form_id = "+formId+" AND column_count = "+columncount+" AND " +
                                                  "item0 = " + item[0] + " AND count0 = " + count[0] + " AND " +
                                                  "item1 = " + item[1] + " AND count1 = " + count[1] + " AND " +
                                                  "item2 = " + item[2] + " AND count2 = " + count[2] + " AND " +
                                                  "item3 = " + item[3] + " AND count3 = " + count[3] + " AND " +
                                                  "item4 = " + item[4] + " AND count4 = " + count[4] + " AND " +
                                                  "item5 = " + item[5] + " AND count5 = " + count[5] + " AND " +
                                                  "item6 = " + item[6] + " AND count6 = " + count[6] + " AND " +
                                                  "item7 = " + item[7] + " AND count7 = " + count[7] + " AND " +
                                                  "item8 = " + item[8] + " AND count8 = " + count[8] + " AND " +
                                                  "item9 = " + item[9] + " AND count9 = " + count[9] + " AND " +
                                                  "item10 = " + item[10] + " AND count10 = " + count[10] + " AND " +
                                                  "item11 = " + item[11] + " AND count11 = " + count[11] + " AND " +
                                                  "item12 = " + item[12] + " AND count12 = " + count[12] + " AND " +
                                                  "item13 = " + item[13] + " AND count13 = " + count[13] + " AND " +
                                                  "item14 = " + item[14] + " AND count14 = " + count[14] + " AND " +
                                                  "item15 = " + item[15] + " AND count15 = " + count[15] + " AND " +
                                                  "item16 = " + item[16] + " AND count16 = " + count[16] + " AND " +
                                                  "item17 = " + item[17] + " AND count17 = " + count[17] + " AND " +
                                                  "item18 = " + item[18] + " AND count18 = " + count[18] + " AND " +
                                                  "item19 = " + item[19] + " AND count19 = " + count[19] + " AND " +
                                                  "item20 = " + item[20] + " AND count20 = " + count[20] + " AND id <> "+ id + " ) ", con);
        SqlDataReader readexist = selectsimilar.ExecuteReader();
        if (readexist.Read())
        {
            int id_change = Convert.ToInt32(readexist["id"]);
            con.Close();
            con.Open();
            SqlCommand updateold = new SqlCommand("update [half_cut] set sheet_count = sheet_count + " + sheetCount + " where (id = "+ id_change + ") ",con);
            updateold.ExecuteNonQuery();
            SqlCommand deleteduplicate = new SqlCommand("DELETE FROM [flower_depot].[dbo].[half_cut] WHERE (id = " + id+") ", con);
            deleteduplicate.ExecuteNonQuery();
            con.Close();
        }

    }
    private void check_duplicate_on_edit()
    {
        con.Close();
        string[] item = new String[22];
        string[] count = new String[22];
        for (int i = 0; i < 22; i++)
        {
            item[i] = "0";
            count[i] = "0";
        }
        con.Open();
        SqlCommand selectlastid = new SqlCommand("SELECT column_count AS col , id as id , sheet_count as sheetcount ," +
                                                 " form_id as formid FROM dbo.half_cut where id = "+ Session["halfcut_id"] + " ", con);
        SqlDataReader rdDataReader = selectlastid.ExecuteReader();
        if (rdDataReader.Read())
        {
            sheetCount = Convert.ToInt32(rdDataReader["sheetcount"]);
            formId = Convert.ToInt32(rdDataReader["formid"]);
            columncount = Convert.ToInt32(rdDataReader["col"]);
        }
        con.Close();
        for (int i = 0; i < columncount; i++)
        {
            con.Open();
            SqlCommand getlastrecorditem = new SqlCommand("SELECT item" + i + " As item ,count" + i + " As count FROM dbo.half_cut where id = " + Session["halfcut_id"] + " ", con);
            SqlDataReader rd = getlastrecorditem.ExecuteReader();
            if (rd.Read())
            {
                item[i] = rd["item"].ToString();
                count[i] = rd["count"].ToString();
            }
            con.Close();
        }
        con.Open();
        SqlCommand selectsimilar = new SqlCommand("select sheet_count , id from half_cut " +
                                                  "where ( form_id = " + formId + " AND column_count = " + columncount + " AND " +
                                                  "item0 = " + item[0] + " AND count0 = " + count[0] + " AND " +
                                                  "item1 = " + item[1] + " AND count1 = " + count[1] + " AND " +
                                                  "item2 = " + item[2] + " AND count2 = " + count[2] + " AND " +
                                                  "item3 = " + item[3] + " AND count3 = " + count[3] + " AND " +
                                                  "item4 = " + item[4] + " AND count4 = " + count[4] + " AND " +
                                                  "item5 = " + item[5] + " AND count5 = " + count[5] + " AND " +
                                                  "item6 = " + item[6] + " AND count6 = " + count[6] + " AND " +
                                                  "item7 = " + item[7] + " AND count7 = " + count[7] + " AND " +
                                                  "item8 = " + item[8] + " AND count8 = " + count[8] + " AND " +
                                                  "item9 = " + item[9] + " AND count9 = " + count[9] + " AND " +
                                                  "item10 = " + item[10] + " AND count10 = " + count[10] + " AND " +
                                                  "item11 = " + item[11] + " AND count11 = " + count[11] + " AND " +
                                                  "item12 = " + item[12] + " AND count12 = " + count[12] + " AND " +
                                                  "item13 = " + item[13] + " AND count13 = " + count[13] + " AND " +
                                                  "item14 = " + item[14] + " AND count14 = " + count[14] + " AND " +
                                                  "item15 = " + item[15] + " AND count15 = " + count[15] + " AND " +
                                                  "item16 = " + item[16] + " AND count16 = " + count[16] + " AND " +
                                                  "item17 = " + item[17] + " AND count17 = " + count[17] + " AND " +
                                                  "item18 = " + item[18] + " AND count18 = " + count[18] + " AND " +
                                                  "item19 = " + item[19] + " AND count19 = " + count[19] + " AND " +
                                                  "item20 = " + item[20] + " AND count20 = " + count[20] + " AND id <> " + Session["halfcut_id"] + " ) ", con);
        SqlDataReader readexist = selectsimilar.ExecuteReader();
        if (readexist.Read())
        {
            int id_change = Convert.ToInt32(readexist["id"]);
            con.Close();
            con.Open();
            SqlCommand updateold = new SqlCommand("update [half_cut] set sheet_count = sheet_count + " + Session["sheet_count"] + " where (id = " + id_change + ") ", con);
            updateold.ExecuteNonQuery();
            SqlCommand deleteduplicate = new SqlCommand("DELETE FROM [flower_depot].[dbo].[half_cut] WHERE (id = " + Session["halfcut_id"] + ") ", con);
            deleteduplicate.ExecuteNonQuery();
            con.Close();
        }
        con.Close();
    }
    protected void grid_half_cut_RowEditing(object sender, GridViewEditEventArgs e)
    {
       CreateTable();
    }
    private void check_new_record()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand(" SELECT MIN(id) AS change_id, SUM(sheet_count) AS Sh , form_id as fid "+
                                        " FROM dbo.half_cut " +
                                        " GROUP BY item0, count0, item1, count1, item2, count2, item3, count3, item4," +
                                        " count4, item5, count5, item6, count6, item7, count7, item8, count8, item9," +
                                        " count9, item10, count10, item11, count11, item12, " +
                                        " count12, item13, count13, item14, count14, item15, count15, item16, count16," +
                                        " item17, count17, item18, count18, item19, count19, item20, count20, column_count " +
                                        " HAVING (COUNT(*) > 1)" , con);
        SqlDataReader readexist = cmd.ExecuteReader();
        if (readexist.Read())
        {
            int change_id = Convert.ToInt32(readexist["change_id"]);
            int sheetcount = Convert.ToInt32(readexist["sh"]);
            int form_id = Convert.ToInt32(readexist["fid"]);
            con.Close();
            con.Open();
            SqlCommand updateold = new SqlCommand("update [half_cut] set sheet_count = " + sheetcount + " where (id = " + change_id + ") ", con);
            updateold.ExecuteNonQuery();
            SqlCommand deleteduplicate = new SqlCommand("DELETE FROM half_cut WHERE id = ( SELECT MAX(id) FROM half_cut ) ", con);
            deleteduplicate.ExecuteNonQuery();
            con.Close();
        }
    }
    private void check_edit_rec()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT MIN(id) AS min_id, MAX(id) AS max_id "+
             "FROM dbo.half_cut "+
             "GROUP BY item0, count0, item1, count1, item2, count2, item3, count3, item4, count4, item5, count5, item6, count6, item7, count7, item8, count8, item9, count9, item10, count10, item11, count11, item12, "+
             "count12, item13, count13, item14, count14, item15, count15, item16, count16, item17, count17, item18, count18, item19, count19, item20, count20, column_count "+
              " HAVING(COUNT(*) > 1)" , con);
        SqlDataReader readid = cmd.ExecuteReader();
        if (readid.Read())
        {
            min_id = Convert.ToInt32(readid["min_id"]);
            max_id = Convert.ToInt32(readid["max_id"]);

            con.Close();
            if (Convert.ToInt32(Session["halfcut_id"]) == min_id)
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand(" SELECT MIN(id) AS change_id, SUM(sheet_count) AS Sh " +
                                                 " FROM dbo.half_cut " +
                                                 " GROUP BY item0, count0, item1, count1, item2, count2, item3, count3, item4," +
                                                 " count4, item5, count5, item6, count6, item7, count7, item8, count8, item9," +
                                                 " count9, item10, count10, item11, count11, item12, " +
                                                 " count12, item13, count13, item14, count14, item15, count15, item16, count16," +
                                                 " item17, count17, item18, count18, item19, count19, item20, count20, column_count " +
                                                 " HAVING (COUNT(*) > 1)", con);
                SqlDataReader readexist = cmd1.ExecuteReader();
                if (readexist.Read())
                {
                    int change_id = Convert.ToInt32(readexist["change_id"]);
                    int sheetcount = Convert.ToInt32(readexist["sh"]);
                    con.Close();
                    con.Open();
                    SqlCommand updateold =
                        new SqlCommand(
                            "update [half_cut] set sheet_count = " + sheetcount + " where (id = " + change_id + ") ",
                            con);
                    updateold.ExecuteNonQuery();
                    SqlCommand deleteduplicate = new SqlCommand("DELETE FROM half_cut WHERE id =" + max_id + " ", con);
                    deleteduplicate.ExecuteNonQuery();
                    con.Close();
                }
            }

            else if (Convert.ToInt32(Session["halfcut_id"]) == max_id)
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand(" SELECT MAX(id) AS change_id, SUM(sheet_count) AS Sh " +
                                                 " FROM dbo.half_cut " +
                                                 " GROUP BY item0, count0, item1, count1, item2, count2, item3, count3, item4," +
                                                 " count4, item5, count5, item6, count6, item7, count7, item8, count8, item9," +
                                                 " count9, item10, count10, item11, count11, item12, " +
                                                 " count12, item13, count13, item14, count14, item15, count15, item16, count16," +
                                                 " item17, count17, item18, count18, item19, count19, item20, count20, column_count " +
                                                 " HAVING (COUNT(*) > 1)", con);
                SqlDataReader readexist = cmd1.ExecuteReader();
                if (readexist.Read())
                {
                    int change_id = Convert.ToInt32(readexist["change_id"]);
                    int sheetcount = Convert.ToInt32(readexist["sh"]);
                    con.Close();
                    con.Open();
                    SqlCommand updateold =
                        new SqlCommand(
                            "update [half_cut] set sheet_count = " + sheetcount + " where (id = " + change_id + ") ",
                            con);
                    updateold.ExecuteNonQuery();
                    SqlCommand deleteduplicate = new SqlCommand("DELETE FROM half_cut WHERE id =" + min_id + " ", con);
                    deleteduplicate.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
        con.Close();
    }
    protected void grid_half_cut_Sorting(object sender, GridViewSortEventArgs e)
    {
        CreateTable();
    }
    protected void btn_decrease_boreshkamel_OnClick(object sender, EventArgs e)
    {
        int number;
        if (!int.TryParse(txt_boresh_kamel.Text, out number) ||
            string.IsNullOrEmpty(txt_boresh_kamel.Text) ||
            Convert.ToInt32(txt_boresh_kamel.Text) == 0 ||
            drp_form_number.SelectedValue == "-1" ||
            Convert.ToInt32(txt_remain_sheetcount.Text) == 0 ||
            Convert.ToInt32(txt_boresh_kamel.Text) > Convert.ToInt32(txt_remain_sheetcount.Text))
        {
            txt_boresh_kamel.BorderStyle = BorderStyle.Solid;
            txt_boresh_kamel.BorderWidth = 2;
            txt_boresh_kamel.BorderColor = Color.Red;
        }
        else
        {
            con.Open();
            PersianCalendar pc = new PersianCalendar();
            string PDate = pc.GetYear(DateTime.Now) + "/" + pc.GetMonth(DateTime.Now) + "/" + pc.GetDayOfMonth(DateTime.Now);
            string timeAndDate = DateTime.Now.ToString("h:mm") + " - " + PDate;
            SqlCommand insertHistory = new SqlCommand("INSERT INTO [flower_depot].[dbo].[arrange_sheet_count] " +
                                                      "([flower_id]" +
                                                      ",[arrange_id] " +
                                                      ",[form_number] " +
                                                      ",[change_size] " +
                                                      ",[date_and_time]) " +
                                                      "VALUES " +
                                                      "(" + Session["half_cut_page"] + " " +
                                                      "," + drp_form_number.SelectedValue + " " +
                                                      ",'" + drp_form_number.SelectedItem.Text + "' " +
                                                      ",'" + txt_boresh_kamel.Text + "' + '-' " +
                                                      ",'" + timeAndDate + "')", con);
            insertHistory.ExecuteNonQuery();
            SqlCommand updatesheetcount =
                new SqlCommand(
                    "UPDATE [flower_depot].[dbo].[flower_forms_entry] SET [sheetcount] = [sheetcount] - " + Convert.ToInt32(txt_boresh_kamel.Text) +
                    " WHERE id = " + drp_form_number.SelectedValue + " ", con);
            updatesheetcount.ExecuteNonQuery();
            con.Close();
            txt_boresh_kamel.BorderStyle = BorderStyle.Solid;
            txt_boresh_kamel.BorderWidth = 2;
            txt_boresh_kamel.BorderColor = Color.LimeGreen;
            txt_boresh_kamel.Text = "";
            CreateTable();
            get_arrange_info();
        }
    }
    private void get_arrange_info()
    {
        try
        {
            pnl_show_arrange_info.Visible = true;
            con.Open();
            SqlCommand arrangeinfo = new SqlCommand("SELECT dbo.flower_forms_entry.form_number, " +
                                                    "dbo.arrange_type.arrange_type as arrangetype, " +
                                                    "dbo.flower_dimensions.flow_dimension as dimension, " +
                                                    "dbo.flower_forms_entry.sheetcount as sheetcount, " +
                                                    "dbo.flower_forms_entry.last_enter_date as last_enter_date, " +
                                                    "dbo.flower_forms_entry.mark_type as mark," +
                                                    "dbo.flower_forms_entry.comment as comment," +
                                                    "dbo.flower_forms_entry.flower_id," +
                                                    "dbo.flower_forms_entry.id " +
                                                    "FROM dbo.flower_forms_entry INNER JOIN " +
                                                    "dbo.arrange_type ON dbo.flower_forms_entry.arrange_type = dbo.arrange_type.arrange_id INNER JOIN " +
                                                    "dbo.flower_dimensions ON dbo.flower_forms_entry.dimension = dbo.flower_dimensions.dimension_id " +
                                                    " where (id = " + drp_form_number.SelectedValue + ") ", con);
            SqlDataReader readarrangeinfo = arrangeinfo.ExecuteReader();
            if (readarrangeinfo.Read())
            {
                lbl_arrange_type.Text = readarrangeinfo["arrangetype"].ToString();
                lbl_dimension.Text = readarrangeinfo["dimension"].ToString();
                lbl_arrange_sheet_count.Text = readarrangeinfo["sheetcount"].ToString();
                lbl_mark.Text = readarrangeinfo["mark"].ToString();
                lbl_arrange_comment.Text = readarrangeinfo["comment"].ToString();
                lbl_lastenterdate.Text = readarrangeinfo["last_enter_date"].ToString();
            }
            pnl_show_arrange_info.Visible = true;
            con.Close();
        }
        catch (Exception e)
        {
        }
    }
    protected void btn_increase_boreshkamel_OnClick(object sender, EventArgs e)
    {
        int number;
        var tedad = txt_boresh_kamel.Text;
        if (!int.TryParse(txt_boresh_kamel.Text, out number) ||
            string.IsNullOrEmpty(txt_boresh_kamel.Text) ||
            Convert.ToInt32(txt_boresh_kamel.Text) == 0 ||
            drp_form_number.SelectedValue == "-1")
        {
            txt_boresh_kamel.BorderStyle = BorderStyle.Solid;
            txt_boresh_kamel.BorderWidth = 2;
            txt_boresh_kamel.BorderColor = Color.Red;
        }
        else
        {
            txt_boresh_kamel.Text = "";
            con.Open();
            PersianCalendar pc = new PersianCalendar();
            string PDate = pc.GetYear(DateTime.Now) + "/" + pc.GetMonth(DateTime.Now) + "/" + pc.GetDayOfMonth(DateTime.Now);
            string timeAndDate = DateTime.Now.ToString("h:mm") + " - " + PDate;
            SqlCommand insertHistory = new SqlCommand("INSERT INTO [flower_depot].[dbo].[arrange_sheet_count] " +
                                                      "([flower_id]" +
                                                      ",[arrange_id] " +
                                                      ",[form_number] " +
                                                      ",[change_size] " +
                                                      ",[date_and_time]) " +
                                                      "VALUES " +
                                                      "(" + Session["half_cut_page"] + " " +
                                                      "," + drp_form_number.SelectedValue + " " +
                                                      ",'" + drp_form_number.SelectedItem.Text + "' " +
                                                      ",'" + tedad + "' + '+' " +
                                                      ",'" + timeAndDate + "')", con);
            insertHistory.ExecuteNonQuery();
            SqlCommand updatesheetcount =
                new SqlCommand(
                    "UPDATE [flower_depot].[dbo].[flower_forms_entry] SET [sheetcount] = [sheetcount] + " + Convert.ToInt32(tedad) +
                    " WHERE id = " + drp_form_number.SelectedValue + " ", con);
            updatesheetcount.ExecuteNonQuery();
            con.Close();
            txt_boresh_kamel.BorderStyle = BorderStyle.Solid;
            txt_boresh_kamel.BorderWidth = 2;
            txt_boresh_kamel.BorderColor = Color.LimeGreen;
            CreateTable();
            get_arrange_info();
        }
    }
    private void ChangeTime()
    {
        PersianCalendar pc = new PersianCalendar();
        string PDate = pc.GetYear(DateTime.Now) + "/" + pc.GetMonth(DateTime.Now) + "/" + pc.GetDayOfMonth(DateTime.Now);
        changeTime = DateTime.Now.ToString("h:mm") + " - " + PDate;
    }
}