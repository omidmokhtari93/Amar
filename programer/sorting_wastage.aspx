<%@ Page Title="گزراش تناژ ماهیانه" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sorting_wastage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
<center style=" vertical-align:middle;" > 
        <table dir="ltr" 
                
            style="margin-left: 0px; width: 64%; table-layout: fixed; border-collapse: separate;" __designer:mapid="c6" 
                id="tbldate0" width="70%" border="0" frame="border">
            <tr __designer:mapid="c7">
                <td class="style2" __designer:mapid="c8">
                    <asp:Label ID="lblyearend" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text="سال"></asp:Label>
                </td>
                <td class="style3" __designer:mapid="ca">
                    <asp:Label ID="lblmounthend" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        Text="ماه"></asp:Label>
                </td>
                <td class="style1" __designer:mapid="cc">
                    <asp:Label ID="lbldayend" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text="روز"></asp:Label>
                </td>
               
                <td class="style1" __designer:mapid="cc">
                    <asp:Label ID="Label4" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text=":تا تاریخ"></asp:Label>
                </td>
                 <td class="style1" __designer:mapid="cc">
                    <asp:Label ID="Label5" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text="         "></asp:Label>
                 <td class="style2" __designer:mapid="c8">
                    <asp:Label ID="lblyearstart" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text="سال"></asp:Label>
                </td>
                <td class="style3" __designer:mapid="ca">
                    <asp:Label ID="lblmounthstart" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        Text="ماه"></asp:Label>
                </td>
                <td class="style1" __designer:mapid="cc">
                    <asp:Label ID="lbldaystart" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text="روز"></asp:Label>
                </td>
                <td class="style1" __designer:mapid="cc">
                    <asp:Label ID="Label6" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text=":از تاریخ"></asp:Label>
                </td>
               
                <tr __designer:mapid="ce">
                    <td class="style2" __designer:mapid="cf">
                        <asp:DropDownList ID="dryear" runat="server" Font-Names="Tahoma" 
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="3">
                            <asp:ListItem Selected="True" Value="1390">1390</asp:ListItem>
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
                    </td>
                    <td class="style3" __designer:mapid="f0">
                        <asp:DropDownList ID="drmounth" runat="server" Font-Names="Tahoma" 
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="1">
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
                    </td>
                    <td class="style1" __designer:mapid="fe">
                        <asp:DropDownList ID="drday" runat="server" Font-Names="Tahoma" 
                            Font-Size="Small" style="margin-left: 0px" Width="60px">
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
                    </td>
                    <td></td>
                    <td></td>
                   
                    <td class="style2" __designer:mapid="cf">
                        <asp:DropDownList ID="dryearstart" runat="server" Font-Names="Tahoma" 
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="3">
                            <asp:ListItem Selected="True" Value="1390">1390</asp:ListItem>
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
                    </td>
                    <td class="style3" __designer:mapid="f0">
                        <asp:DropDownList ID="drmounthstart" runat="server" Font-Names="Tahoma" 
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="1">
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
                    </td>
                    <td class="style1" __designer:mapid="fe">
                        <asp:DropDownList ID="drdaystart" runat="server" Font-Names="Tahoma" 
                            Font-Size="Small" style="margin-left: 0px" Width="60px">
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
                    </td>
                </tr>
            </tr>

        </table>
    <br />
        <asp:Button ID="btnshow" runat="server" Text="نمایش" Font-Names="Tahoma" 
        Font-Size="Small" onclick="btnshow_Click" Width="70px" />
       
        <br />
        <br />
                <asp:Button ID="btnprint" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    onclick="btnprint_Click" Text="چاپ" Width="98px" />
       
    <asp:Panel ID="Panel_wastage" runat="server" Width="60%">
  
    <br />
    
    <center style=" vertical-align:middle;" > 
                    
                <asp:Label ID="Label2" runat="server" Font-Names="B Titr" 
                    Text="آمار ضایعات درجه بندی"></asp:Label>
                    <br />
                    <br />
                <asp:Label ID="lbldate_e" runat="server" Font-Names="b titr" Font-Size="Small" 
                    Width="10%"></asp:Label>
                <asp:Label ID="Label9" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                    Text=":تا تاریخ" Width="8%"></asp:Label>
                <asp:Label ID="lbldate_s" runat="server" Font-Names="b titr" Font-Size="Small" 
                    Width="10%"></asp:Label>
                <asp:Label ID="Label7" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                    Text=":از تاریخ" Width="11%"></asp:Label>
        </center>
    <br />
    <center style=" vertical-align:middle; " > 
        <asp:GridView ID="gridfaz1" runat="server" AutoGenerateColumns="False" 
            BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" 
            Caption="آمار ضایعات فاز یک" CellPadding="4" DataSourceID="SqlDataSource1" 
            Font-Names="B titr" Font-Size="Small" ForeColor="#333333" Width="90%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Wrikhtegari" HeaderText="وزن ریخته گری" 
                    ReadOnly="True" SortExpression="Wrikhtegari">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Trikhtegari" HeaderText="تعداد ریخته گری" 
                    ReadOnly="True" SortExpression="Trikhtegari">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Wforming" HeaderText="وزن فرمینگ" ReadOnly="True" 
                    SortExpression="Wforming">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Tforming" HeaderText="تعداد فرمینگ" ReadOnly="True" 
                    SortExpression="Tforming">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Wpress" HeaderText="وزن پرس" ReadOnly="True" 
                    SortExpression="Wpress">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Tpress" HeaderText="تعداد پرس" ReadOnly="True" 
                    SortExpression="Tpress">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="Black" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    <br />
        <asp:GridView ID="gridfaz2" runat="server" AutoGenerateColumns="False" 
            BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" 
            Caption="آمار ضایعات فاز دو" CellPadding="4" DataSourceID="SqlDataSource2" 
            Font-Names="B titr" Font-Size="Small" ForeColor="#333333" Width="90%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Wrikhtegari" HeaderText="وزن ریخته گری" 
                    ReadOnly="True" SortExpression="Wrikhtegari">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Trikhtegari" HeaderText="تعداد ریخته گری" 
                    ReadOnly="True" SortExpression="Trikhtegari">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Wforming" HeaderText="وزن فرمینگ" ReadOnly="True" 
                    SortExpression="Wforming">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Tforming" HeaderText="تعداد فرمینگ" ReadOnly="True" 
                    SortExpression="Tforming">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Wpress" HeaderText="وزن پرس" ReadOnly="True" 
                    SortExpression="Wpress">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Tpress" HeaderText="تعداد پرس" ReadOnly="True" 
                    SortExpression="Tpress">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="Black" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
          </asp:Panel>
        <br />
        <br />
        <br />
    <br />

<br />

        <br />

<br />
  
    </center>
     </center>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="
SELECT     (SELECT      CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2)  AS weight
                        FROM         (SELECT     dbo.grade_faz2.item_id, dbo.item.waight_porcelain * dbo.grade_faz2.wastage AS wast
                                                FROM         dbo.grade_faz2 INNER JOIN
                                                                      dbo.item ON dbo.grade_faz2.item_id = dbo.item.id
                                                WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (dbo.grade_faz2.wastage &gt; 0) AND (dbo.item.sector_product = 1)) AS derivedtbl_1) AS Wrikhtegari,
                          (SELECT     SUM(wastage) AS Expr1
                             FROM         (SELECT     grade_faz2_1.item_id, grade_faz2_1.wastage
                                                     FROM         dbo.grade_faz2 AS grade_faz2_1 INNER JOIN
                                                                           dbo.item AS item_1 ON grade_faz2_1.item_id = item_1.id
                                                     WHERE     (grade_faz2_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (grade_faz2_1.wastage &gt; 0) AND (item_1.sector_product = 1)) AS derivedtbl_1_1) AS Trikhtegari,
                          (SELECT      CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2)  AS weight
                             FROM         (SELECT     grade_faz2_3.item_id, item_3.waight_porcelain * grade_faz2_3.wastage AS wast
                                                     FROM         dbo.grade_faz2 AS grade_faz2_3 INNER JOIN
                                                                           dbo.item AS item_3 ON grade_faz2_3.item_id = item_3.id
                                                     WHERE     (grade_faz2_3.tarikh BETWEEN @tarikhS AND @tarikhE) AND (grade_faz2_3.wastage &gt; 0) AND (item_3.sector_product = 2)) AS derivedtbl_1_3) AS Wforming,
                          (SELECT     SUM(wastage) AS Expr1
                             FROM         (SELECT     grade_faz2_1.item_id, grade_faz2_1.wastage
                                                     FROM         dbo.grade_faz2 AS grade_faz2_1 INNER JOIN
                                                                           dbo.item AS item_1 ON grade_faz2_1.item_id = item_1.id
                                                     WHERE     (grade_faz2_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (grade_faz2_1.wastage &gt; 0) AND (item_1.sector_product = 2)) AS derivedtbl_1_1_2) AS Tforming,
                          (SELECT      CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2)  AS weight
                             FROM         (SELECT     grade_faz2_2.item_id, item_2.waight_porcelain * grade_faz2_2.wastage AS wast
                                                     FROM         dbo.grade_faz2 AS grade_faz2_2 INNER JOIN
                                                                           dbo.item AS item_2 ON grade_faz2_2.item_id = item_2.id
                                                     WHERE     (grade_faz2_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (grade_faz2_2.wastage &gt; 0) AND (item_2.sector_product = 3)) AS derivedtbl_1_2) AS Wpress,
                          (SELECT     SUM(wastage) AS Expr1
                             FROM         (SELECT     grade_faz2_1.item_id, grade_faz2_1.wastage
                                                     FROM         dbo.grade_faz2 AS grade_faz2_1 INNER JOIN
                                                                           dbo.item AS item_1 ON grade_faz2_1.item_id = item_1.id
                                                     WHERE     (grade_faz2_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (grade_faz2_1.wastage &gt; 0) AND (item_1.sector_product = 3)) AS derivedtbl_1_1_1) AS Tpress



">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikhs" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikhe" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="SELECT     (SELECT     CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                        FROM         (SELECT     dbo.grade_faz1.item_id, dbo.item.waight_porcelain * dbo.grade_faz1.wastage AS wast
                                                FROM         dbo.grade_faz1 INNER JOIN
                                                                      dbo.item ON dbo.grade_faz1.item_id = dbo.item.id
                                                WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (dbo.grade_faz1.wastage &gt; 0) AND (dbo.item.sector_product = 1)) AS derivedtbl_1) AS Wrikhtegari,
                          (SELECT     SUM(wastage) AS Expr1
                             FROM         (SELECT     grade_faz1_1.item_id, grade_faz1_1.wastage
                                                     FROM         dbo.grade_faz1 AS grade_faz1_1 INNER JOIN
                                                                           dbo.item AS item_1 ON grade_faz1_1.item_id = item_1.id
                                                     WHERE     (grade_faz1_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (grade_faz1_1.wastage &gt; 0) AND (item_1.sector_product = 1)) AS derivedtbl_1_1) AS Trikhtegari,
                          (SELECT     CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                             FROM         (SELECT     grade_faz1_3.item_id, item_3.waight_porcelain * grade_faz1_3.wastage AS wast
                                                     FROM         dbo.grade_faz1 AS grade_faz1_3 INNER JOIN
                                                                           dbo.item AS item_3 ON grade_faz1_3.item_id = item_3.id
                                                     WHERE     (grade_faz1_3.tarikh BETWEEN @tarikhS AND @tarikhE) AND (grade_faz1_3.wastage &gt; 0) AND (item_3.sector_product = 2)) AS derivedtbl_1_3) AS Wforming,
                          (SELECT     SUM(wastage) AS Expr1
                             FROM         (SELECT     grade_faz1_1.item_id, grade_faz1_1.wastage
                                                     FROM         dbo.grade_faz1 AS grade_faz1_1 INNER JOIN
                                                                           dbo.item AS item_1 ON grade_faz1_1.item_id = item_1.id
                                                     WHERE     (grade_faz1_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (grade_faz1_1.wastage &gt; 0) AND (item_1.sector_product = 2)) AS derivedtbl_1_1_2) AS Tforming,
                          (SELECT     CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                             FROM         (SELECT     grade_faz1_2.item_id, item_2.waight_porcelain * grade_faz1_2.wastage AS wast
                                                     FROM         dbo.grade_faz1 AS grade_faz1_2 INNER JOIN
                                                                           dbo.item AS item_2 ON grade_faz1_2.item_id = item_2.id
                                                     WHERE     (grade_faz1_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (grade_faz1_2.wastage &gt; 0) AND (item_2.sector_product = 3)) AS derivedtbl_1_2) AS Wpress,
                          (SELECT     SUM(wastage) AS Expr1
                             FROM         (SELECT     grade_faz1_1.item_id, grade_faz1_1.wastage
                                                     FROM         dbo.grade_faz1 AS grade_faz1_1 INNER JOIN
                                                                           dbo.item AS item_1 ON grade_faz1_1.item_id = item_1.id
                                                     WHERE     (grade_faz1_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (grade_faz1_1.wastage &gt; 0) AND (item_1.sector_product = 3)) AS derivedtbl_1_1_1) AS Tpress">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikhs" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikhe" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>


    <br />


    </asp:Content>

