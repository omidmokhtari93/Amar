<%@ Page Title=" 'گزارشات انبار درجه بندی " Language="C#" AutoEventWireup="true" CodeFile="reports_wstorage.aspx.cs" Inherits="Map" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ثبت آمار چینی سفید </title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../Content/bootstrap.min.css"/>
    <link rel="stylesheet" href="../Content/bootstrap.css"/>
    <link rel="stylesheet" href="../Content/bootstrap-theme.css"/>
    <link rel="stylesheet" href="../Content/bootstrap-theme.min.css"/>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-1.9.0.js"></script>
 
<style type = "text/css">
   @font-face {
            font-family: 'myfont';
            src: url('../fonts/BYekan.eot'),
                 url('../fonts/glyphicons-halflings-regular.eot')format('embedded-opentype'),
                 url('../fonts/BYekan.eot?#FooAnything') format('embedded-opentype');
            src: local('☺'),
                 url('../fonts/BYekan.woff') format('woff'),
                 url('../fonts/BYekan.ttf') format('truetype'),
                 url('../fonts/BYekan.svg') format('svg'),
                 url('../fonts/glyphicons-halflings-regular.woff') format('woff'),
                 url('../fonts/glyphicons-halflings-regular.ttf') format('truetype'),
                 url('../fonts/glyphicons-halflings-regular.svg#glyphicons-halflingsregular') format('svg'),
                 url('../fonts/glyphicons-halflings-regular.woff2')format('woff2');
              }
    .btn { 
        font-family: 'myfont';
        font-size : 15pt !important;
    }
    label{
        font-family: 'myfont';
        font-size : 15pt !important;
    }
    .inline {
        display: inline-block;
        position: relative;
    }
   .table th {text-align: center !important; background-color: #65dbff; }
   .table { direction: rtl;  font-size: 13pt; }
   .table tr th { padding: 5px 5px !important; }
   .table td { padding: 2px 5px !important; }
   .form-control {
       display: inline-block;
       
   }
     body
    {
        font-family:tahoma;
        font-size:10pt
    }
        #Select1
        {
            width: 200px;
        }
        .style1
        {
            width: 62px;
        }          
   .csspager td
 {
       padding-left: 20px; 
       padding-right: 20px; 
 }
  .ChkBoxClass input {width:35px; height:35px;}
  .ChkBox input {width:25px; height:25px;}
  .myclass{ font-family : myfont; font-size:15pt;}
    .class1 {
        margin-right:1px;
        display:inline-block;
        position:center;
        width: 100%;
    }
    .bodycolor {
            background: url('../Images/blue.jpg');
    }
    .panelshape{
        border: 2px solid #00c6ff;
        background-color: #c5f2ff;
        border-radius: 10px;
        margin:10px;
        padding:10px 1px;
    }
        .mybadge {
                            height: 30px;
                            border-radius:50px;
                            background-color: #006ca9;
                            padding: 3px;
                            text-align: left;
                            display: inline-block;
                            padding-right: 5px;
                            font-family: myfont;
                            font-size:12pt;
                        }
                        .innerbadge {
                            display: inline-block;
                            height: 24px;
                            border-radius: 15px;
                            background-color: white;
                            padding: 2px;
                            padding-left: 3px;
                            padding-right: 3px;
                            color:#006ca9;
                            margin-right: 5px;
                            vertical-align: middle;
                        }
        </style>
     
</head>
<body class="bodycolor" >
    <form id="form1" runat="server" method="post">
    <div >
    <center style="vertical-align:middle;" >
        &nbsp;&nbsp;
        <br />
        <asp:Label ID="lbluser" runat="server" Visible="False"></asp:Label>
    <br />
        <asp:Panel ID="pnltarikh" runat="server" Width="50%" style="margin-left:0px;" CssClass="panelshape">
            <asp:DropDownList ID="dryear" runat="server" AutoPostBack="True" CssClass="btn btn-default dropdown-toggle myclass" OnSelectedIndexChanged="dryear_SelectedIndexChanged"  >
                <asp:ListItem value="-1">سال</asp:ListItem>
                <asp:ListItem Value="1390">1390</asp:ListItem>
                <asp:ListItem Value="1391">1391</asp:ListItem>
                <asp:ListItem Value="1392">1392</asp:ListItem>
                <asp:ListItem Value="1393">1393</asp:ListItem>
                <asp:ListItem Value="1394">1394</asp:ListItem>
                <asp:ListItem Value="1395">1395</asp:ListItem>
                <asp:ListItem>1396</asp:ListItem>
                <asp:ListItem Value="1397">1397</asp:ListItem>
                <asp:ListItem Value="1398">1398</asp:ListItem>
                <asp:ListItem>1399</asp:ListItem>
                <asp:ListItem>1400</asp:ListItem>
                <asp:ListItem>1401</asp:ListItem>
                <asp:ListItem>1402</asp:ListItem>
                <asp:ListItem>1403</asp:ListItem>
                <asp:ListItem>1404</asp:ListItem>
                <asp:ListItem>1405</asp:ListItem>
                <asp:ListItem>1406</asp:ListItem>
                <asp:ListItem>1407</asp:ListItem>
                <asp:ListItem>1408</asp:ListItem>
                <asp:ListItem>1409</asp:ListItem>
                <asp:ListItem>1410</asp:ListItem>
                <asp:ListItem>1411</asp:ListItem>
                <asp:ListItem>1412</asp:ListItem>
                <asp:ListItem>1413</asp:ListItem>
                <asp:ListItem>1414</asp:ListItem>
                <asp:ListItem>1415</asp:ListItem>
                <asp:ListItem>1416</asp:ListItem>
                <asp:ListItem>1417</asp:ListItem>
                <asp:ListItem>1418</asp:ListItem>
                <asp:ListItem>1419</asp:ListItem>
                <asp:ListItem>1420</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="drmounth" runat="server" AutoPostBack="True"  CssClass="btn btn-default dropdown-toggle myclass "  style="margin-left: 0px" OnSelectedIndexChanged="drmounth_SelectedIndexChanged" >
               <asp:ListItem>ماه</asp:ListItem>
                 <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="drday" runat="server" AutoPostBack="True"  CssClass="btn btn-default dropdown-toggle myclass "  style="margin-left: 0px" OnSelectedIndexChanged="drday_SelectedIndexChanged" >
                <asp:ListItem>روز</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="labldate" runat="server" Font-Bold="True" Font-Names="B Titr" 
                Font-Size="Large"></asp:Label>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="B Titr" 
                Font-Size="Medium" style="margin-left: 18px" Text="تاریخ" Width="28px"></asp:Label>
            <br />
        </asp:Panel>
    <asp:Button ID="btnback" runat="server" CssClass="btn btn-primary myclass" 
                onclick="btnexit_Click" style="margin-left: 0px" Text="برگشت" Width="20%"
                  TabIndex="0"/>
        <br />
            
     <center>

          <asp:Panel ID="Pnltotalgrade" runat="server" CssClass="panelshape" Width="1020px">
             <br />
             <asp:Button ID="btntotalgrade" runat="server" 
                 onclick="btntotalgrade_Click" style="margin-right: 74px" Text="نمایش" 
                 Width="88px" CssClass="btn btn-success myclass"  />
             <asp:DropDownList ID="drtotoalgrade" runat="server" DataSourceID="Sqlgrade" 
                 DataTextField="grade" DataValueField="id" 
                 style="margin-left: 0px" CssClass="btn btn-default dropdown-toggle myclass">
             </asp:DropDownList>
            <label> <asp:Label ID="Label2" runat="server"  CssClass="myclass" 
                 style="margin-right: 30px" Text="تعداد آیتم های درجه "></asp:Label></label>
            
             <br />
             <label>
             <br />
             </label>
           
              &nbsp;
           
              <asp:GridView ID="grid_totalgrade" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered myclass" DataSourceID="sqltotalgrade" Width="90%">
                  <AlternatingRowStyle BackColor="White" />
                  <Columns>
                      <asp:BoundField DataField="kind" HeaderText="واحد" SortExpression="kind" />
                      <asp:BoundField DataField="total" HeaderText="تعداد" SortExpression="total" />
                  </Columns>
                  <EditRowStyle BackColor="#2461BF" />
                  <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                  <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                  <SortedAscendingCellStyle BackColor="#F5F7FB" />
                  <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                  <SortedDescendingCellStyle BackColor="#E9EBEF" />
                  <SortedDescendingHeaderStyle BackColor="#4870BE" />
              </asp:GridView>
           
         </asp:Panel>

          <asp:Panel ID="Pnltotalgrade0" runat="server" CssClass="panelshape" Width="1021px">
             <br />
             <asp:Button ID="showsearch" runat="server" 
                 onclick="showsearch_Click" style="margin-right: 74px" Text="نمایش" 
                 Width="88px" CssClass="btn btn-success myclass"  />
               <asp:DropDownList ID="drservice" runat="server" DataSourceID="sqlservice" 
                 DataTextField="name" DataValueField="levell" 
                 style="margin-left: 0px" CssClass="btn btn-default dropdown-toggle myclass">
             </asp:DropDownList>
            <label> <asp:Label ID="Label3" runat="server"  CssClass="myclass" 
                 style="margin-right: 30px" Text="سرویس"></asp:Label></label>
             <asp:DropDownList ID="ddlgrade_search" runat="server" 
                 style="margin-left: 0px" CssClass="btn btn-default dropdown-toggle myclass">
                 <asp:ListItem Value="0">ترکیبی</asp:ListItem>
                 <asp:ListItem Value="1">صادراتیA</asp:ListItem>
                 <asp:ListItem Value="2">A</asp:ListItem>
                 <asp:ListItem Value="3">1/5</asp:ListItem>
                 <asp:ListItem Value="4">C</asp:ListItem>
                 <asp:ListItem Value="5">C1</asp:ListItem>
             </asp:DropDownList>
            <label> <asp:Label ID="Label9" runat="server"  CssClass="myclass" 
                 style="margin-right: 30px" Text="درجه"></asp:Label></label>
             <asp:DropDownList ID="ddlitem_serach" runat="server" 
                    CssClass="btn btn-default dropdown-toggle myclass" >
                 <asp:ListItem Value="0">تولیدی</asp:ListItem>
                 <asp:ListItem Value="1">ریخته گری</asp:ListItem>
                 <asp:ListItem Value="2">فرمینگ</asp:ListItem>
                 <asp:ListItem Value="3">پرس</asp:ListItem>
             </asp:DropDownList>
             <label><asp:Label ID="Label8" Width="189px" runat="server" CssClass="myclass" 
                 style="margin-left: 15px" Text="آیتم های  "></asp:Label></label>
             <br />
              <asp:Button ID="btnprint" runat="server" CssClass="btn btn-primary myclass" onclick="btnprint_Click" style="margin-top: 15px" Text="چاپ" Width="93px" />
              &nbsp;&nbsp;&nbsp;
           <br />

              <asp:Panel ID="pnlprint" runat="server" Width="80%" Direction="RightToLeft">
                  <label style="margin-right: 25px; font-family: 'B Yekan';" >لیست آیتم های :</label>
                  <asp:Label ID="lblkind"  runat="server" CssClass="myclass" Font-Names="B Yekan" ></asp:Label>&nbsp;&nbsp;&nbsp;
                  <label style="margin-right: 25px; font-family: 'B Yekan';"> درجه:</label>
                  <asp:Label ID="lblgrade" runat="server" CssClass="myclass" Font-Names="B Yekan" ></asp:Label>&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="lblservice" runat="server" CssClass="myclass" Font-Names="B Yekan" ></asp:Label>&nbsp;&nbsp;&nbsp;
                  <label style="margin-right: 25px; font-family: 'B Yekan';"> تاریخ: </label>
                   <asp:Label ID="lbldate" runat="server" CssClass="myclass" Font-Names="B Yekan"></asp:Label>
                  
                  <br />
                  <br />
                  <asp:GridView ID="grid_itemgrade" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered myclass" Width="100%" Visible="False">
                  <AlternatingRowStyle BackColor="White" />
                  <Columns>
                      <asp:BoundField DataField="item_name" HeaderText="نام آیتم" SortExpression="item_name" >
                  
                      <HeaderStyle Font-Names="B Yekan" />
                      <ItemStyle Font-Names="B Yekan" />
                  
                      </asp:BoundField>
                      <asp:BoundField DataField="A1" HeaderText="A1" SortExpression="A1" >
                   
                      <HeaderStyle Font-Names="B Yekan" />
                      <ItemStyle Font-Names="B Yekan" />
                   
                      </asp:BoundField>
                      <asp:BoundField DataField="A" HeaderText="A" SortExpression="A" >
                   
                      <HeaderStyle Font-Names="B Yekan" />
                      <ItemStyle Font-Names="B Yekan" />
                   
                      </asp:BoundField>
                      <asp:BoundField DataField="1/5" HeaderText="1/5" SortExpression="1/5" >
                   
                      <HeaderStyle Font-Names="B Yekan" />
                      <ItemStyle Font-Names="B Yekan" />
                   
                      </asp:BoundField>
                      <asp:BoundField DataField="C" HeaderText="C" SortExpression="C" >
                   
                      <HeaderStyle Font-Names="B Yekan" />
                      <ItemStyle Font-Names="B Yekan" />
                   
                      </asp:BoundField>
                      <asp:BoundField DataField="C1" HeaderText="C1" SortExpression="C1" >
                   
                      <HeaderStyle Font-Names="B Yekan" />
                      <ItemStyle Font-Names="B Yekan" />
                   
                      </asp:BoundField>
                  </Columns>
                  <EditRowStyle BackColor="#2461BF" />
                  <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                  <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                  <SortedAscendingCellStyle BackColor="#F5F7FB" />
                  <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                  <SortedDescendingCellStyle BackColor="#E9EBEF" />
                  <SortedDescendingHeaderStyle BackColor="#4870BE" />
              </asp:GridView>
                  <asp:GridView ID="grid_item" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered myclass" Visible="False" Width="100%">
                      <AlternatingRowStyle BackColor="White" />
                      <Columns>
                          <asp:BoundField DataField="item_name" HeaderText="نام آیتم" SortExpression="item_name">
                          <HeaderStyle Font-Names="B Yekan" />
                          <ItemStyle Font-Names="B Yekan" />
                          </asp:BoundField>
                          <asp:BoundField DataField="sort_count" HeaderText="تعداد" SortExpression="sort_count">
                          <HeaderStyle Font-Names="B Yekan" />
                          <ItemStyle Font-Names="B Yekan" />
                          </asp:BoundField>
                      </Columns>
                      <EditRowStyle BackColor="#2461BF" />
                      <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                      <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                      <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                      <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                      <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                      <SortedAscendingCellStyle BackColor="#F5F7FB" />
                      <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                      <SortedDescendingCellStyle BackColor="#E9EBEF" />
                      <SortedDescendingHeaderStyle BackColor="#4870BE" />
                  </asp:GridView>
              </asp:Panel>

           
         </asp:Panel>

          <br />
         <asp:SqlDataSource ID="sqltotalgrade" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT SUM(porcelain_storage.sort_count) AS total, 'ریخته گری' AS kind FROM porcelain_storage INNER JOIN item ON porcelain_storage.item_id = item.id WHERE (item.sector_product = 1) AND (porcelain_storage.grade = @grade) UNION ALL SELECT SUM(porcelain_storage_2.sort_count) AS total, 'فرمینگ' AS kind FROM porcelain_storage AS porcelain_storage_2 INNER JOIN item AS item_2 ON porcelain_storage_2.item_id = item_2.id WHERE (item_2.sector_product = 2) AND (porcelain_storage_2.grade = @grade) UNION ALL SELECT SUM(porcelain_storage_1.sort_count) AS total, 'پرس' AS kind FROM porcelain_storage AS porcelain_storage_1 INNER JOIN item AS item_1 ON porcelain_storage_1.item_id = item_1.id WHERE (item_1.sector_product = 3) AND (porcelain_storage_1.grade = @grade) UNION ALL SELECT SUM(porcelain_storage_3.sort_count) AS total, 'جمع کل' AS kind FROM porcelain_storage AS porcelain_storage_3 INNER JOIN item AS item_3 ON porcelain_storage_3.item_id = item_3.id WHERE (porcelain_storage_3.grade = @grade)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="drtotoalgrade" Name="grade" PropertyName="SelectedValue" />
             </SelectParameters>
         </asp:SqlDataSource>
         <asp:SqlDataSource ID="sqlitemgrade" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT item.item_name, SUM(porcelain_storage.sort_count) AS sort_count FROM porcelain_storage INNER JOIN item ON porcelain_storage.item_id = item.id WHERE (item.sector_product = @sector) AND (porcelain_storage.grade = @grade) GROUP BY item.item_name">
             <SelectParameters>
                 <asp:ControlParameter ControlID="ddlitem_serach" Name="sector" PropertyName="SelectedValue" />
                 <asp:ControlParameter ControlID="ddlgrade_search" Name="grade" PropertyName="SelectedValue" />
             </SelectParameters>
         </asp:SqlDataSource>
          <asp:SqlDataSource ID="sqlservice" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT 0 AS levell, 'همه سرویس ها' AS name UNION ALL SELECT levell, name FROM item_type"></asp:SqlDataSource>
         <asp:SqlDataSource ID="sqlreportservice" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT item.item_name, SUM(porcelain_storage.sort_count) AS sort_count FROM porcelain_storage INNER JOIN item ON porcelain_storage.item_id = item.id WHERE (item.sector_product = @sector) AND (porcelain_storage.grade = @grade) AND (item.kind = @kind) GROUP BY item.item_name">
             <SelectParameters>
                 <asp:ControlParameter ControlID="ddlitem_serach" Name="sector" PropertyName="SelectedValue" />
                 <asp:ControlParameter ControlID="ddlgrade_search" Name="grade" PropertyName="SelectedValue" />
                 <asp:ControlParameter ControlID="drservice" Name="kind" PropertyName="SelectedValue" />
             </SelectParameters>
         </asp:SqlDataSource>
          <asp:SqlDataSource ID="sqlkolitem" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT item.item_name, SUM(porcelain_storage.sort_count) AS sort_count FROM porcelain_storage INNER JOIN item ON porcelain_storage.item_id = item.id WHERE (porcelain_storage.grade = @grade) GROUP BY item.item_name">
              <SelectParameters>
                  <asp:ControlParameter ControlID="ddlgrade_search" Name="grade" PropertyName="SelectedValue" />
              </SelectParameters>
          </asp:SqlDataSource>
         <asp:SqlDataSource ID="sqlkolitemservice" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT item.item_name, SUM(porcelain_storage.sort_count) AS sort_count FROM porcelain_storage INNER JOIN item ON porcelain_storage.item_id = item.id WHERE (porcelain_storage.grade = @grade) AND (item.kind = @kind) GROUP BY item.item_name">
             <SelectParameters>
                 <asp:ControlParameter ControlID="ddlgrade_search" Name="grade" PropertyName="SelectedValue" />
                 <asp:ControlParameter ControlID="drservice" Name="kind" PropertyName="SelectedValue" />
             </SelectParameters>
         </asp:SqlDataSource>
        
          <asp:SqlDataSource ID="Sqlcombinegrade" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="WITH porcelain AS ( SELECT dbo.item.item_name,porcelain_storage.item_id,SUM(dbo.porcelain_storage.sort_count) AS sort_count, dbo.porcelain_storage.grade FROM dbo.porcelain_storage INNER JOIN dbo.item ON dbo.porcelain_storage.item_id = dbo.item.id WHERE (dbo.item.kind = @kind) GROUP BY dbo.item.item_name, dbo.porcelain_storage.grade,dbo.porcelain_storage.item_id) SELECT item_name,sum([1]) AS A1,sum([2]) AS A ,sum([3]) AS '1/5',sum([4]) AS C,sum([5]) AS C1 FROM porcelain PIVOT (sum(sort_count) FOR grade IN ([1],[2],[3],[4],[5]) ) AS pvt GROUP BY item_name ,item_id">
              <SelectParameters>
                  <asp:ControlParameter ControlID="drservice" Name="kind" PropertyName="SelectedValue" />
              </SelectParameters>
          </asp:SqlDataSource>
        
          <asp:SqlDataSource ID="Sqlcombintotal" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="WITH porcelain AS ( SELECT dbo.item.item_name,porcelain_storage.item_id,SUM(dbo.porcelain_storage.sort_count) AS sort_count, dbo.porcelain_storage.grade FROM dbo.porcelain_storage INNER JOIN dbo.item ON dbo.porcelain_storage.item_id = dbo.item.id  GROUP BY dbo.item.item_name, dbo.porcelain_storage.grade,dbo.porcelain_storage.item_id) SELECT item_name,sum([1]) AS A1,sum([2]) AS A ,sum([3]) AS '1/5',sum([4]) AS C,sum([5]) AS C1 FROM porcelain PIVOT (sum(sort_count) FOR grade IN ([1],[2],[3],[4],[5]) ) AS pvt GROUP BY item_name ,item_id">
          </asp:SqlDataSource>
        
          <br />
        
    <asp:SqlDataSource ID="Sqlgrade" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="SELECT [id], [grade] FROM [porcelain_grade]"></asp:SqlDataSource>
     </center>
    </center>
          
         
  
   
   
    <br />
    </div>
    </form>
</body>
</html>
