<%@ Page Title="آیتم های قابل هشدار" Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Alarm_total.aspx.cs" Inherits="_Default" %>

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
        <br />
    <br />
        <br />
      
        <center style=" vertical-align:middle;" > 
        <table dir="ltr" 
                
                style="border-width: thin; border-style: solid; margin-left: 0px; width: 64%; table-layout: fixed; border-collapse: separate;" __designer:mapid="c6" 
                id="tbldate" width="70%" border="0" frame="border">
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
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="6">
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
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="5">
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
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="4">
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
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="2">
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
           </center>
           <center>
            <asp:Panel ID="Panel1" runat="server" BorderColor="Black" BorderWidth="3px" 
                Direction="LeftToRight" HorizontalAlign="Center" Width="31%" Height="154px">
                <center>
                <asp:RadioButtonList ID="rdbglaze" runat="server" Font-Names="b titr" style="margin-left: 0%;"
        Font-Size="Medium"  TabIndex="7" Width="115px" AutoPostBack="True" 
                        onselectedindexchanged="rdbglaze_SelectedIndexChanged">
                    <asp:ListItem Value="1" Selected="True">فاز یک</asp:ListItem>
                    <asp:ListItem Value="2">فاز دو</asp:ListItem>
                </asp:RadioButtonList>
                
                </center>
                <br />
                <asp:DropDownList ID="DDlsectorr" runat="server" DataSourceID="sector" 
                    DataTextField="sectorr" DataValueField="id" 
                    Font-Names="b titr" Height="25px" 
                    onselectedindexchanged="DDlsectorr_SelectedIndexChanged" Width="195px" 
                    AutoPostBack="True">
                </asp:DropDownList>
                <br />
            </asp:Panel>
            </center>
            <br />
            <center>
                <br />
            <asp:Button ID="btnshowall" runat="server" Font-Names="Tahoma" Font-Size="Medium" 
                onclick="btnshowall_Click" Text="نمایش" TabIndex="8" 
                style="margin-left: 0px" Width="164px" ForeColor="#0000CC" />
                <br />
            <br />
                <asp:Button ID="btnprint" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    onclick="btnprint_Click" Text="چاپ" Width="98px" TabIndex="9" />
            <br />
            <br />
        <br />
     </center>
        <center>
            <asp:Panel ID="pnlrikhtegari" runat="server" Width="70%" 
                HorizontalAlign="Center" >
                
                <center>
                    
                    <asp:Label ID="Label2" runat="server" Font-Names="B Titr" Font-Size="X-Large" 
                        Text="معایب قابل هشدار"></asp:Label>
                    <asp:Label ID="lblfaz" runat="server" Font-Names="b titr" Font-Size="X-Large" 
                        ForeColor="#0000CC"></asp:Label>
                    <asp:Label ID="lblsecture" runat="server" Font-Names="b titr, x-large" 
                        Font-Size="X-Large" ForeColor="#660066"></asp:Label>
                <br />
                <asp:Label ID="lbldate_e" runat="server" Font-Names="b titr" Font-Size="Medium" 
                    Width="10%"></asp:Label>
                <asp:Label ID="Label9" runat="server" Font-Names="Tahoma" Font-Size="Medium" 
                    Text=":تا تاریخ" Width="8%"></asp:Label>
                <asp:Label ID="lbldate_s" runat="server" Font-Names="b titr" Font-Size="Medium" 
                    Width="10%"></asp:Label>
                <asp:Label ID="Label7" runat="server" Font-Names="Tahoma" Font-Size="Medium" 
                    Text=":از تاریخ" Width="11%"></asp:Label>
                    <br />
                    <br />
                    <asp:GridView ID="Grid_alrmtotal" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%" BorderColor="Black" 
                        BorderStyle="Solid" BorderWidth="2px" DataSourceID="Alarm">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAB" HeaderText="%A+1/5" 
                                SortExpression="darsadAB" >
                          <HeaderStyle Font-Names="b titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="Red" />
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="darsadB" HeaderText="%1/5" 
                                SortExpression="darsadB" ReadOnly="True">
                          
                          <ItemStyle Font-Names="B titr" Font-Size="Medium" />
                            </asp:BoundField>
                            <asp:BoundField DataField="B" HeaderText="1/5" 
                                SortExpression="ahan" ReadOnly="True" >
                            
                       <ItemStyle Font-Names="B titr" Font-Size="Medium" />
                            </asp:BoundField>
                            <asp:BoundField DataField="darsadA" HeaderText="%A" ReadOnly="True" 
                                SortExpression="darsadA" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Medium" />
                    <ItemStyle Font-Names="B titr" Font-Size="Medium" />
                            </asp:BoundField>
                            <asp:BoundField DataField="A" HeaderText="A" 
                                SortExpression="A" ReadOnly="True">
                            
                            <HeaderStyle Font-Names="b titr" Font-Size="Medium" />
                            
                    <ItemStyle Font-Names="B titr" Font-Size="Medium" />
                            </asp:BoundField>
                            <asp:BoundField DataField="col" HeaderText="تعداد کل" SortExpression="col" 
                                ReadOnly="True" >
                       
                          
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name">
                            <HeaderStyle Width="25%" />
                           <ItemStyle Font-Names="B titr" Font-Size="Medium" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Font-Size="Medium" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    
                    <br />
                   
                <br />
                 </center>
               
                
             <br />
            </asp:Panel>
           </center>
           

    <asp:SqlDataSource ID="sector" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="SELECT id,('%'+cast(Minalaram as varchar(10)) +'__'+sector) as sectorr ,Minalaram FROM Alarm_sector">
    </asp:SqlDataSource>
           

    <br />
  
    <asp:SqlDataSource ID="Alarm" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="SELECT item_name, A, B, col, '%' + CAST(FLOOR(darsadA) AS varchar(10)) + '/' + RIGHT (LEFT (darsadA - FLOOR(darsadA), 4), 2) AS darsadA, '%' + CAST(FLOOR(darsadB) AS varchar(10)) + '/' + RIGHT (LEFT (darsadB - FLOOR(darsadB), 4), 2) AS darsadB, '%' + CAST(FLOOR(darsadAB) AS varchar(10)) + '/' + RIGHT (LEFT (darsadAB - FLOOR(darsadAB), 4), 2) AS darsadAB FROM (SELECT item.item_name, SUM(grade_faz1.gradea) AS A, SUM(grade_faz1.gradeB) AS B, SUM(grade_faz1.tedad) AS col, CASE WHEN SUM(dbo.grade_faz1.gradea) &gt; 0 THEN (ROUND(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 , 2)) ELSE 0 END AS darsadA, CASE WHEN SUM(dbo.grade_faz1.gradea) &gt; 0 THEN (ROUND(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 , 2)) ELSE 0 END AS darsadB, ROUND((SUM(grade_faz1.gradeB) + SUM(grade_faz1.gradea)) * 1.0 / SUM(grade_faz1.tedad) * 100, 2) AS darsadAB FROM grade_faz1 INNER JOIN item ON grade_faz1.item_id = item.id WHERE (grade_faz1.tarikh BETWEEN @Starikh AND @Etarikh) AND (item.sector_product = 3) GROUP BY item.item_name, item.kind) AS derivedtbl_1 WHERE (darsadAB &lt; 80)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="Starikh" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="Etarikh" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
  
    <br />
  
    <br />
   
    <br />
    <br />
    </asp:Content>

