using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    string yearst = "";
    string mounthst = "";
    string dayst = "";

    string yearfin = "";
    string mounthfin = "";
    string dayfini = "";

    string datestart = "";
    string datefinish = "";
    string texbox;
   static string filter;
    int index,id;
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["taghdis_amar"].ConnectionString);
    SqlConnection cdf = new SqlConnection(ConfigurationManager.ConnectionStrings["depogol"].ConnectionString);
    protected void Page_Load(object sender,EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if ((((string)Session["level"] != "depogol") || (Convert.ToInt32(Session["userid"]) != 24)) && (((string)Session["level"] != "depogol1") || (Convert.ToInt32(Session["userid"]) != 31)) && (((string)Session["level"] != "Bana") || (Convert.ToInt32(Session["userid"]) != 34)))
            {
                Response.Redirect("../login.aspx");
                Session.Clear();
            }
        }
    }
  protected void serch_Click(object sender, EventArgs e)
    {
       /*


      
        
    
      if (Convert.ToInt32(Session["userid"]) != 24)
      {
          if ((!string.IsNullOrWhiteSpace(txnamgol.Text)) && ((string.IsNullOrEmpty(txcodgol.Text)) && (string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue == "0") && (date == "//" && date.Length < 10))
          {
              Session["ddl"]="nam_f like '%" + texbox + "%'";
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;

          }
          else if (((string.IsNullOrEmpty(txnamgol.Text)) && (string.IsNullOrWhiteSpace(txnamgol.Text))) && ((!string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue == "0") && (date == "//" && date.Length < 10))
          {
              Session["ddl"] = "cod_f like '%" + txcodgol.Text + "%'";
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if (((string.IsNullOrEmpty(txnamgol.Text)) && (string.IsNullOrWhiteSpace(txnamgol.Text))) && ((string.IsNullOrEmpty(txcodgol.Text)) && (string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue != "0") && (date == "//" && date.Length < 10))
          {
              Session["ddl"] = "customer_f_id =" + ddlcustom.SelectedValue + "";
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if (((string.IsNullOrEmpty(txnamgol.Text)) && (string.IsNullOrWhiteSpace(txnamgol.Text))) && ((string.IsNullOrEmpty(txcodgol.Text)) && (string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue == "0") && (date != "//" && date.Length == 10))
          {
              Session["ddl"] = "date_first_come ='" + date + "'";
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          ///////////////////////////////////////////////////////  two if
          else if ((!string.IsNullOrWhiteSpace(txnamgol.Text)) && ((!string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue == "0") && (date == "//" && date.Length < 10))
          {
              string namfilter = "nam_f like '%" + texbox + "%'";
              string codfilter = " cod_f like '%" + txcodgol.Text + "%'";
              Session["ddl"] = namfilter + " and " + codfilter;
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if ((!string.IsNullOrWhiteSpace(txnamgol.Text)) && ((string.IsNullOrEmpty(txcodgol.Text)) && (string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue != "0") && (date == "//" && date.Length < 10))
          {
              string namfilter = "nam_f like '%" + texbox + "%'";
              string customer = " customer_f_id =" + ddlcustom.SelectedValue + "";
              Session["ddl"] = namfilter + " and " + customer;
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if ((!string.IsNullOrWhiteSpace(txnamgol.Text)) && ((string.IsNullOrEmpty(txcodgol.Text)) && (string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue == "0") && (date != "//" && date.Length == 10))
          {
              string namfilter = "nam_f like '%" + texbox + "%'";
              string datefirst = " date_first_come ='" + date + "' ";
              Session["ddl"] = namfilter + " and " + datefirst;
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if (((string.IsNullOrEmpty(txnamgol.Text)) && (string.IsNullOrWhiteSpace(txnamgol.Text))) && (!string.IsNullOrWhiteSpace(txcodgol.Text)) && (ddlcustom.SelectedValue != "0") && (date == "//" && date.Length < 10))
          {
              Session["ddl"] = "cod_f like '%" + txcodgol.Text + "%' and customer_f_id =" + ddlcustom.SelectedValue + "";
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if (((string.IsNullOrEmpty(txnamgol.Text)) && (string.IsNullOrWhiteSpace(txnamgol.Text))) && (!string.IsNullOrWhiteSpace(txcodgol.Text)) && (ddlcustom.SelectedValue == "0") && (date != "//" && date.Length == 10))
          {
              Session["ddl"] = "cod_f like '%" + txcodgol.Text + "%' and date_first_come ='" + date + "'";
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if (((string.IsNullOrEmpty(txnamgol.Text)) && (string.IsNullOrWhiteSpace(txnamgol.Text))) && ((string.IsNullOrEmpty(txcodgol.Text)) && (string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue != "0") && (date != "//" && date.Length == 10))
          {
              Session["ddl"] = "customer_f_id =" + ddlcustom.SelectedValue + " and date_first_come ='" + date + "'";
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          ///////////////////////////////////////////////////////////// 3 if
          else if ((!string.IsNullOrWhiteSpace(txnamgol.Text)) && (!string.IsNullOrWhiteSpace(txcodgol.Text)) && (ddlcustom.SelectedValue != "0") && (date == "//" && date.Length < 10))
          {
              string namfilter = "nam_f like '%" + texbox + "%'";
              string codfilter = " cod_f like '%" + txcodgol.Text + "%'";
              string customer = " customer_f_id =" + ddlcustom.SelectedValue + "";
              Session["ddl"] = namfilter + " and " + codfilter + " and " + customer;
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if ((!string.IsNullOrWhiteSpace(txnamgol.Text)) && (!string.IsNullOrWhiteSpace(txcodgol.Text)) && (ddlcustom.SelectedValue == "0") && (date != "//" && date.Length == 10))
          {
              string namfilter = "nam_f like '%" + texbox + "%'";
              string codfilter = " cod_f like '%" + txcodgol.Text + "%'";
              string datefirst = " date_first_come ='" + date + "' ";
              Session["ddl"] = namfilter + " and " + codfilter + " and " + datefirst;
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if ((!string.IsNullOrWhiteSpace(txnamgol.Text)) && ((string.IsNullOrEmpty(txcodgol.Text)) && (string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue != "0") && (date != "//" && date.Length == 10))
          {
              string namfilter = "nam_f like '%" + texbox + "%'";
              string customer = " customer_f_id =" + ddlcustom.SelectedValue + "";
              string datefirst = " date_first_come ='" + date + "' ";
              Session["ddl"] = namfilter + " and " + customer + " and " + datefirst;
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if (((string.IsNullOrEmpty(txnamgol.Text)) && (string.IsNullOrWhiteSpace(txnamgol.Text))) && (!string.IsNullOrWhiteSpace(txcodgol.Text)) && (ddlcustom.SelectedValue != "0") && (date != "//" && date.Length == 10))
          {

              Session["ddl"] = "cod_f like '%" + txcodgol.Text + "%' and customer_f_id =" + ddlcustom.SelectedValue + " and date_first_come ='" + date + "'";
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          //////////////////////////////////////////////////////////////// 4 if
          else if ((!string.IsNullOrWhiteSpace(txnamgol.Text)) && (!string.IsNullOrWhiteSpace(txcodgol.Text)) && (ddlcustom.SelectedValue != "0") && (date != "//" && date.Length == 10))
          {
              string namfilter = "nam_f like '%" + texbox + "%'";
              string codfilter = " cod_f like '%" + txcodgol.Text + "%'";
              string datefirst = " date_first_come ='" + date + "' ";
              string customer = " customer_f_id =" + ddlcustom.SelectedValue + "";
              Session["ddl"] = namfilter + " and " + codfilter + " and " + customer + " and " + datefirst;
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }

      }
      if (Convert.ToInt32(Session["userid"]) != 31)
      {
          if ((!string.IsNullOrWhiteSpace(txnamgol.Text)) && ((string.IsNullOrEmpty(txcodgol.Text)) && (string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue == "0") && (date == "//" && date.Length < 10))
          {
              Session["ddl"] = "nam_f like '%" + texbox + "%'";
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;

          }
          else if (((string.IsNullOrEmpty(txnamgol.Text)) && (string.IsNullOrWhiteSpace(txnamgol.Text))) && ((!string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue == "0") && (date == "//" && date.Length < 10))
          {
              Session["ddl"] = "cod_f like '%" + txcodgol.Text + "%'";
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if (((string.IsNullOrEmpty(txnamgol.Text)) && (string.IsNullOrWhiteSpace(txnamgol.Text))) && ((string.IsNullOrEmpty(txcodgol.Text)) && (string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue != "0") && (date == "//" && date.Length < 10))
          {
              Session["ddl"] = "customer_f_id =" + ddlcustom.SelectedValue + "";
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if (((string.IsNullOrEmpty(txnamgol.Text)) && (string.IsNullOrWhiteSpace(txnamgol.Text))) && ((string.IsNullOrEmpty(txcodgol.Text)) && (string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue == "0") && (date != "//" && date.Length == 10))
          {
              Session["ddl"] = "date_first_come ='" + date + "'";
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          ///////////////////////////////////////////////////////  two if
          else if ((!string.IsNullOrWhiteSpace(txnamgol.Text)) && ((!string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue == "0") && (date == "//" && date.Length < 10))
          {
              string namfilter = "nam_f like '%" + texbox + "%'";
              string codfilter = " cod_f like '%" + txcodgol.Text + "%'";
              Session["ddl"] = namfilter + " and " + codfilter;
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if ((!string.IsNullOrWhiteSpace(txnamgol.Text)) && ((string.IsNullOrEmpty(txcodgol.Text)) && (string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue != "0") && (date == "//" && date.Length < 10))
          {
              string namfilter = "nam_f like '%" + texbox + "%'";
              string customer = " customer_f_id =" + ddlcustom.SelectedValue + "";
              Session["ddl"] = namfilter + " and " + customer;
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if ((!string.IsNullOrWhiteSpace(txnamgol.Text)) && ((string.IsNullOrEmpty(txcodgol.Text)) && (string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue == "0") && (date != "//" && date.Length == 10))
          {
              string namfilter = "nam_f like '%" + texbox + "%'";
              string datefirst = " date_first_come ='" + date + "' ";
              Session["ddl"] = namfilter + " and " + datefirst;
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if (((string.IsNullOrEmpty(txnamgol.Text)) && (string.IsNullOrWhiteSpace(txnamgol.Text))) && (!string.IsNullOrWhiteSpace(txcodgol.Text)) && (ddlcustom.SelectedValue != "0") && (date == "//" && date.Length < 10))
          {
              Session["ddl"] = "cod_f like '%" + txcodgol.Text + "%' and customer_f_id =" + ddlcustom.SelectedValue + "";
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if (((string.IsNullOrEmpty(txnamgol.Text)) && (string.IsNullOrWhiteSpace(txnamgol.Text))) && (!string.IsNullOrWhiteSpace(txcodgol.Text)) && (ddlcustom.SelectedValue == "0") && (date != "//" && date.Length == 10))
          {
              Session["ddl"] = "cod_f like '%" + txcodgol.Text + "%' and date_first_come ='" + date + "'";
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if (((string.IsNullOrEmpty(txnamgol.Text)) && (string.IsNullOrWhiteSpace(txnamgol.Text))) && ((string.IsNullOrEmpty(txcodgol.Text)) && (string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue != "0") && (date != "//" && date.Length == 10))
          {
              Session["ddl"] = "customer_f_id =" + ddlcustom.SelectedValue + " and date_first_come ='" + date + "'";
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          ///////////////////////////////////////////////////////////// 3 if
          else if ((!string.IsNullOrWhiteSpace(txnamgol.Text)) && (!string.IsNullOrWhiteSpace(txcodgol.Text)) && (ddlcustom.SelectedValue != "0") && (date == "//" && date.Length < 10))
          {
              string namfilter = "nam_f like '%" + texbox + "%'";
              string codfilter = " cod_f like '%" + txcodgol.Text + "%'";
              string customer = " customer_f_id =" + ddlcustom.SelectedValue + "";
              Session["ddl"] = namfilter + " and " + codfilter + " and " + customer;
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if ((!string.IsNullOrWhiteSpace(txnamgol.Text)) && (!string.IsNullOrWhiteSpace(txcodgol.Text)) && (ddlcustom.SelectedValue == "0") && (date != "//" && date.Length == 10))
          {
              string namfilter = "nam_f like '%" + texbox + "%'";
              string codfilter = " cod_f like '%" + txcodgol.Text + "%'";
              string datefirst = " date_first_come ='" + date + "' ";
              Session["ddl"] = namfilter + " and " + codfilter + " and " + datefirst;
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if ((!string.IsNullOrWhiteSpace(txnamgol.Text)) && ((string.IsNullOrEmpty(txcodgol.Text)) && (string.IsNullOrWhiteSpace(txcodgol.Text))) && (ddlcustom.SelectedValue != "0") && (date != "//" && date.Length == 10))
          {
              string namfilter = "nam_f like '%" + texbox + "%'";
              string customer = " customer_f_id =" + ddlcustom.SelectedValue + "";
              string datefirst = " date_first_come ='" + date + "' ";
              Session["ddl"] = namfilter + " and " + customer + " and " + datefirst;
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          else if (((string.IsNullOrEmpty(txnamgol.Text)) && (string.IsNullOrWhiteSpace(txnamgol.Text))) && (!string.IsNullOrWhiteSpace(txcodgol.Text)) && (ddlcustom.SelectedValue != "0") && (date != "//" && date.Length == 10))
          {

              Session["ddl"] = "cod_f like '%" + txcodgol.Text + "%' and customer_f_id =" + ddlcustom.SelectedValue + " and date_first_come ='" + date + "'";
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
          //////////////////////////////////////////////////////////////// 4 if
          else if ((!string.IsNullOrWhiteSpace(txnamgol.Text)) && (!string.IsNullOrWhiteSpace(txcodgol.Text)) && (ddlcustom.SelectedValue != "0") && (date != "//" && date.Length == 10))
          {
              string namfilter = "nam_f like '%" + texbox + "%'";
              string codfilter = " cod_f like '%" + txcodgol.Text + "%'";
              string datefirst = " date_first_come ='" + date + "' ";
              string customer = " customer_f_id =" + ddlcustom.SelectedValue + "";
              Session["ddl"] = namfilter + " and " + codfilter + " and " + customer + " and " + datefirst;
              SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
              SqlDataSource6.DataBind();
              gridsumserch.DataBind();
              gridsumserch.Visible = true;
          }
      }*/
//////////////////////////////////////////////////////////////////////////////////////// tak if
    }
    protected void gridsumserch_RowCommand(object sender, GridViewCommandEventArgs e)
    {
      /* //SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);       
        if (e.CommandName == "select")
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            id = (int)this.gridsumserch.DataKeys[rowIndex]["id"];
            if (Convert.ToInt32(Session["idmaster"]) == 33)
                Response.Redirect("add_new.aspx?id=" + id+"&use="+1 );
            else
                Response.Redirect("add_new.aspx?id=" + id);
        }
        if (e.CommandName == "Sort")
        {
            SqlDataSource6.FilterExpression = Convert.ToString(Session["ddl"]);
        }*/
    }
    protected void gridsumserch_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string fieldtext = (string)DataBinder.Eval(e.Row.DataItem, "cod_f");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
     /*   int idgol,nameitem,idarrang,countbarg,summ;
        string nameitems;
       
        for (int i = 175; i <= 54895; i++)
        {
            cdf.Open();
            SqlCommand sele = new SqlCommand("select * from name_item_arrang  where id=" + i + "  ", cdf);
            SqlDataReader dr = sele.ExecuteReader();
            if (dr.Read())
            {
                idgol = Convert.ToInt32(dr["id_gol"]);
                idarrang = Convert.ToInt32(dr["id_arrange"]);
                nameitem = Convert.ToInt32(dr["name_item"]);
                countbarg = Convert.ToInt32(dr["count_inbarg"]);
                summ = Convert.ToInt32(dr["suum"]);
                cdf.Close();
                cdf.Open();
                SqlCommand selec = new SqlCommand("select item_name from item  where id=" + nameitem + " ", cdf);
                nameitems = Convert.ToString(selec.ExecuteScalar());
                SqlCommand insert = new SqlCommand("insert into total_flow_cut(flow_id,item_arr,name_item,name_item_f,count_barg,total,remain,cuting,comment) values(" + idgol + "," + idarrang + ",'" + nameitems + "'," + nameitem + "," + countbarg + "," + summ + "," + summ + ",'0','ندارد')", cdf);
                insert.ExecuteNonQuery();
                cdf.Close();
            }
        }*/
         
    }
    protected void serch_Click1(object sender, EventArgs e)
    {
        
    }
}