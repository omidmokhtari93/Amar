<%@ Page Title="گزارشات بارگیری کوره لعاب" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reporting_glaze.aspx.cs" Inherits="_Default" %>

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
        <center style=" vertical-align:middle;" > 
        <table dir="ltr" 
                style="margin-left: 0px; width: 64%; table-layout: fixed; border-collapse: separate;" __designer:mapid="c6" 
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
         <asp:RadioButtonList ID="rdbglaze" runat="server" Font-Names="Tahoma" style="margin-left: 52%;"
        Font-Size="Medium"  TabIndex="-1" Width="152px">
        <asp:ListItem Value="1">لعاب یک</asp:ListItem>
        <asp:ListItem Value="2" Selected="True">لعاب دو</asp:ListItem>
             <asp:ListItem Value="3">مجموع لعاب</asp:ListItem>
    </asp:RadioButtonList>
            
            <br />
            <asp:Button ID="btnshow" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                onclick="btnshow_Click" Text="نمایش" TabIndex="4" />
        <br />
            <br />
     <asp:Button ID="btnexcell" runat="server" Font-Names="Tahoma" Font-Size="Small" 
            Text="خروجی اکسل" onclick="btnexcell_Click" />
                <asp:Button ID="btnprint" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    onclick="btnprint_Click" Text="چاپ" Width="98px" TabIndex="5" style="margin-left: 29px" />
        <br />
        
            <asp:Panel ID="pnlrikhtegari" runat="server" Width="95%" 
                HorizontalAlign="Center">
                <br />
                <center>
                    
                <asp:Label ID="Label2" runat="server" Font-Names="B Titr" 
                    Text="آمار بارگیری واحد لعاب"></asp:Label>
                    <asp:Label ID="lblfaz" runat="server" Font-Names="b titr"></asp:Label>
                <br />
                <asp:Label ID="lbldate_e" runat="server" Font-Names="titr" Font-Size="Small" 
                    Width="10%"></asp:Label>
                <asp:Label ID="Label9" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                    Text=":تا تاریخ" Width="8%"></asp:Label>
                <asp:Label ID="lbldate_s" runat="server" Font-Names="titr" Font-Size="Small" 
                    Width="10%"></asp:Label>
                <asp:Label ID="Label7" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                    Text=":از تاریخ" Width="11%"></asp:Label>
                <br />
                </center>
                     <asp:GridView ID="grid_tonazh" runat="server" 
                    AutoGenerateColumns="False" CellPadding="4" 
                    EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="b titr"
                    Font-Size="Small" ForeColor="#333333" GridLines="None" 
                    HorizontalAlign="Center" ShowHeaderWhenEmpty="True" Width="97%">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="w_forming" HeaderText="وزن فرمینگ" 
                                 SortExpression="w_forming">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="g_forming" HeaderText="تعداد ض ل فرمینگ" 
                                 SortExpression="g_forming">
                                  <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" /></asp:BoundField>
                             <asp:BoundField DataField="b_forming" HeaderText="تعداد وزن ض ب فرمینگ" 
                                 SortExpression="b_forming"> <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" /></asp:BoundField>
                             <asp:BoundField DataField="t_forming" HeaderText="تعداد فرمینگ" 
                                 SortExpression="t_forming"> <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" /></asp:BoundField>
                             <asp:BoundField DataField="w_rikhtegari" HeaderText="وزن ریخته گری" 
                                 SortExpression="w_rikhtegari"> <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" /></asp:BoundField>
                             <asp:BoundField DataField="g_rikhtegari" HeaderText="تعداد ض ل ریخته گری" 
                                 SortExpression="g_rikhtegari"> <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" /></asp:BoundField>
                             <asp:BoundField DataField="b_rikhtegari" HeaderText="تعداد ض ب ریخته گری" 
                                 SortExpression="b_rikhtegari"> <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" /></asp:BoundField>
                             <asp:BoundField DataField="t_rikhtegari" HeaderText="تعداد ریخته گری" 
                                 SortExpression="t_rikhtegari"> <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" /></asp:BoundField>
                             <asp:BoundField DataField="w_press" HeaderText="وزن پرس" 
                                 SortExpression="w_press"> <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" /></asp:BoundField>
                             <asp:BoundField DataField="g_press" HeaderText="تعداد ض ل پرس" 
                                 SortExpression="g_press"> <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" /></asp:BoundField>
                             <asp:BoundField DataField="b_press" HeaderText="تعداد ض ب پرس" 
                                 SortExpression="b_press"> <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" /></asp:BoundField>
                             <asp:BoundField DataField="t_press" HeaderText="تعداد پرس" 
                                 SortExpression="t_press">
                             <HeaderStyle Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                         </Columns>
                         <EditRowStyle BackColor="#2461BF" />
                         <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="#0066FF" 
                             HorizontalAlign="Center" VerticalAlign="Middle" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EFF3FB" />
                         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F5F7FB" />
                         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                         <SortedDescendingCellStyle BackColor="#E9EBEF" />
                         <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                     <br />
                <asp:Label ID="Label10" runat="server" Font-Names="B Titr" 
                    Text="تعداد واگن بارگیری شده"></asp:Label>
                <asp:Label ID="lblwagon" runat="server" Font-Names="b titr" ForeColor="#0000CC"></asp:Label>
                <asp:Label ID="Label3" runat="server" Font-Names="B Titr" Text="واگن"></asp:Label>
                <br />
                <asp:GridView ID="grid_total_day" runat="server" 
                    AutoGenerateColumns="False" 
                    CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                    Font-Names="b titr" Font-Size="Medium" ForeColor="#333333" GridLines="None" 
                    HorizontalAlign="Center" 
                    ShowHeaderWhenEmpty="True" Width="97%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="total_press" HeaderText="تعداد پرس" 
                            SortExpression="total_press">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total_forming" HeaderText="تعداد فرمینگ" 
                            SortExpression="total_forming">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total_rikhtegari" HeaderText="تعداد ریخته گری" 
                            SortExpression="total_rikhtegari">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ww_glaze" HeaderText="وزن ضایعات لعاب" 
                            SortExpression="ww_glaze">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ww_bis" HeaderText="وزن ضایعات بیسکوییت" 
                            SortExpression="ww_bis">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="wast_glaze_day" HeaderText="تعداد ضایعات لعاب" 
                            SortExpression="wast_glaze_day">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="wast_bis_day" HeaderText="تعداد ضایعات بیسکوییت" 
                            SortExpression="wast_bis_day">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="tot_recovery" HeaderText="ترمیمی" 
                            SortExpression="tot_recovery">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total_waight" HeaderText="وزن کل بدون ترمیم" 
                            SortExpression="total_waight">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total_day" HeaderText="جمع کل بارگیری" 
                            SortExpression="total_day">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="True" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="sum2_waight" HeaderText="وزن کل با ترمیم" 
                            SortExpression="sum2_waight">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                   <EditRowStyle BackColor="#2461BF" />
                         <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="#0066FF" 
                             HorizontalAlign="Center" VerticalAlign="Middle" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EFF3FB" />
                         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F5F7FB" />
                         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                         <SortedDescendingCellStyle BackColor="#E9EBEF" />
                         <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <br />
                <asp:GridView ID="grid_total" runat="server" 
                    AutoGenerateColumns="False" CellPadding="4" 
                    EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="b titr" 
                    Font-Size="Medium" ForeColor="#333333" GridLines="None" 
                    HorizontalAlign="Center" 
                    ShowHeaderWhenEmpty="True" Width="80%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ww_glaze" HeaderText="وزن ضایعات لعاب" 
                            SortExpression="ww_glaze">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="wastage_glaze" HeaderText="ضایعات لعاب" 
                            SortExpression="wastage_glaze">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ww_bis" HeaderText="وزن ضایعات بیسکوییت" 
                            SortExpression="ww_bis">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="wastage_bis" HeaderText="ضایعات بیسکوییت" 
                            SortExpression="wastage_bis">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="waight" HeaderText="وزن کل" SortExpression="waight">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="recover" HeaderText="تعداد ترمیمی" 
                            SortExpression="recover">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total" HeaderText="تعداد بارگیری" 
                            SortExpression="total">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                            SortExpression="item_name">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                   <EditRowStyle BackColor="#2461BF" />
                         <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="#0066FF" 
                             HorizontalAlign="Center" VerticalAlign="Middle" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EFF3FB" />
                         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F5F7FB" />
                         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                         <SortedDescendingCellStyle BackColor="#E9EBEF" />
                         <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <br />
                <asp:GridView ID="gridtafkik" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" Font-Names="b titr" Font-Size="Small" 
                    ForeColor="#333333" GridLines="None" Width="80%" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="JameCol" HeaderText="جمع کل" ReadOnly="True" 
                            SortExpression="JameCol" />
                        <asp:BoundField DataField="Rikhtegari" HeaderText="ریخته گری" ReadOnly="True" 
                            SortExpression="Rikhtegari" />
                        <asp:BoundField DataField="Door" HeaderText="درب" ReadOnly="True" 
                            SortExpression="Door" />
                        <asp:BoundField DataField="Forming" HeaderText="فرمینگ" ReadOnly="True" 
                            SortExpression="Forming" />
                        <asp:BoundField DataField="Press" HeaderText="پرس" ReadOnly="True" 
                            SortExpression="Press" />
                        <asp:BoundField DataField="servis" HeaderText="سرویس" ReadOnly="True" 
                            SortExpression="servis" />
                       
                     
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True"  
                      ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" Font-Names="tahoma" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <br />
                     <asp:GridView ID="gridtotaltafkik" runat="server" 
                    AutoGenerateColumns="False" CellPadding="4" Font-Names="b titr" 
                    Font-Size="Small" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" 
                    Width="80%">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="WeightRecover" HeaderText="وزن ترمیم" 
                                 ReadOnly="True" SortExpression="WeightRecover" />
                             <asp:BoundField DataField="Recover" HeaderText="تعداد ترمیم" ReadOnly="True" 
                                 SortExpression="Recover" />
                             <asp:BoundField DataField="total" HeaderText="جمع کل با ترمیم" ReadOnly="True" 
                                 SortExpression="total" />
                             <asp:BoundField DataField="Rikhtegari" HeaderText="تعداد کل ریخته گری" 
                                 ReadOnly="True" SortExpression="Rikhtegari" />
                         </Columns>
                         <EditRowStyle BackColor="#2461BF" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EFF3FB" Font-Names="tahoma" />
                         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F5F7FB" />
                         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                         <SortedDescendingCellStyle BackColor="#E9EBEF" />
                         <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                     <br />
            <br />
     
    <br />
                
             <br />
            </asp:Panel>
            </center>
            <br /><br />
            <br />
     <br />
   
    <br />

    <br />
    <br />
    <asp:SqlDataSource ID="total1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT     SUM(dbo.glaze1_total.total) AS total, SUM(dbo.glaze1_total.waight) AS waight, SUM(dbo.glaze1_total.wastage_bis) AS wastage_bis, 
                      SUM(dbo.glaze1_total.wastage_glaze) AS wastage_glaze, SUM(dbo.glaze1_total.ww_glaze) AS ww_glaze, SUM(dbo.glaze1_total.ww_bis) AS ww_bis,sum(glaze1_total.tot_glazing) as totglazing,sum(glaze1_total.tot_recover) as recover ,dbo.item.item_name
FROM         dbo.glaze1_total INNER JOIN
                      dbo.item ON dbo.glaze1_total.item_id = dbo.item.id
WHERE     (dbo.glaze1_total.tarikh BETWEEN @tarikh_s AND @tarikh_e)
GROUP BY dbo.glaze1_total.item_id, dbo.item.item_name
order by item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="totalday1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT     SUM(total_waight) AS total_waight, SUM(ww_glaze) AS ww_glaze, SUM(ww_bis) AS ww_bis, SUM(wast_glaze_day) AS wast_glaze_day, SUM(total_day)+sum(tot_recover) AS total_day, sum(tot_recover) as tot_recovery,sum(total_waight+waight_recover) as sum2_waight,
                      SUM(wast_bis_day) AS wast_bis_day, SUM(total_press) AS total_press, SUM(total_forming) AS total_forming, SUM(total_rikhtegari) AS total_rikhtegari, 
                      SUM(glazing_sum) AS glazing_sum
FROM         dbo.glaze1_total_day
WHERE     (tarikh BETWEEN @tarikh_s AND @tarikh_e)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="total2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT     SUM(dbo.glaze2_total.total) AS total, SUM(dbo.glaze2_total.waight) AS waight, SUM(dbo.glaze2_total.wastage_bis) AS wastage_bis, 
                      SUM(dbo.glaze2_total.wastage_glaze) AS wastage_glaze, SUM(dbo.glaze2_total.ww_glaze) AS ww_glaze, SUM(dbo.glaze2_total.ww_bis) AS ww_bis, sum(glaze2_total.tot_glazing) as totglazing,sum(glaze2_total.tot_recover) as recover, dbo.item.item_name
FROM         dbo.glaze2_total INNER JOIN
                      dbo.item ON dbo.glaze2_total.item_id = dbo.item.id
WHERE     (dbo.glaze2_total.tarikh BETWEEN @tarikh_s AND @tarikh_e)
GROUP BY dbo.glaze2_total.item_id, dbo.item.item_name
order by item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="totalday2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT     SUM(total_waight) AS total_waight, SUM(ww_glaze) AS ww_glaze, SUM(ww_bis) AS ww_bis, SUM(wast_glaze_day) AS wast_glaze_day, SUM(total_day)+sum(tot_recover) AS total_day, sum(tot_recover) as tot_recovery,sum(total_waight+waight_recover) as sum2_waight,
                      SUM(wast_bis_day) AS wast_bis_day, SUM(total_press) AS total_press, SUM(total_forming) AS total_forming, SUM(total_rikhtegari) AS total_rikhtegari, 
                      SUM(glazing_sum) AS glazing_sum
FROM         dbo.glaze2_total_day
WHERE     (tarikh BETWEEN @tarikh_s AND @tarikh_e)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="tonazh1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="SELECT     (SELECT     SUM(dbo.glaze1_total.total) AS tot_press
                        FROM         dbo.glaze1_total INNER JOIN
                                              dbo.item ON dbo.glaze1_total.item_id = dbo.item.id
                        WHERE     (dbo.item.sector_product = 3) AND (dbo.glaze1_total.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS t_press,
                          (SELECT     SUM(glaze1_total_1.waight) AS waight_press
                             FROM         dbo.glaze1_total AS glaze1_total_1 INNER JOIN
                                                   dbo.item AS item_1 ON glaze1_total_1.item_id = item_1.id
                             WHERE     (item_1.sector_product = 3) AND (glaze1_total_1.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS w_press,
                          (SELECT     SUM(glaze1_total_2.wastage_bis) AS bis_press
                             FROM         dbo.glaze1_total AS glaze1_total_2 INNER JOIN
                                                   dbo.item AS item_2 ON glaze1_total_2.item_id = item_2.id
                             WHERE     (item_2.sector_product = 3) AND (glaze1_total_2.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS b_press,
                          (SELECT     SUM(glaze1_total_3.wastage_glaze) AS tot_press
                             FROM         dbo.glaze1_total AS glaze1_total_3 INNER JOIN
                                                   dbo.item AS item_3 ON glaze1_total_3.item_id = item_3.id
                             WHERE     (item_3.sector_product = 3) AND (glaze1_total_3.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS g_press,
                          (SELECT     SUM(glaze1_total_4.total) AS tot_press
                             FROM         dbo.glaze1_total AS glaze1_total_4 INNER JOIN
                                                   dbo.item AS item_4 ON glaze1_total_4.item_id = item_4.id
                             WHERE     (item_4.sector_product = 2) AND (glaze1_total_4.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS t_forming,
                          (SELECT     SUM(glaze1_total_5.waight) AS tot_press
                             FROM         dbo.glaze1_total AS glaze1_total_5 INNER JOIN
                                                   dbo.item AS item_5 ON glaze1_total_5.item_id = item_5.id
                             WHERE     (item_5.sector_product = 2) AND (glaze1_total_5.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS w_forming,
                          (SELECT     SUM(glaze1_total_6.wastage_bis) AS tot_press
                             FROM         dbo.glaze1_total AS glaze1_total_6 INNER JOIN
                                                   dbo.item AS item_6 ON glaze1_total_6.item_id = item_6.id
                             WHERE     (item_6.sector_product = 2) AND (glaze1_total_6.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS b_forming,
                          (SELECT     SUM(glaze1_total_7.wastage_glaze) AS tot_press
                             FROM         dbo.glaze1_total AS glaze1_total_7 INNER JOIN
                                                   dbo.item AS item_7 ON glaze1_total_7.item_id = item_7.id
                             WHERE     (item_7.sector_product = 2) AND (glaze1_total_7.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS g_forming,
                          (SELECT     SUM(glaze1_total_8.total) AS tot_press
                             FROM         dbo.glaze1_total AS glaze1_total_8 INNER JOIN
                                                   dbo.item AS item_8 ON glaze1_total_8.item_id = item_8.id
                             WHERE     (item_8.sector_product = 1) AND (glaze1_total_8.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS t_rikhtegari,
                          (SELECT     SUM(glaze1_total_9.waight) AS tot_press
                             FROM         dbo.glaze1_total AS glaze1_total_9 INNER JOIN
                                                   dbo.item AS item_9 ON glaze1_total_9.item_id = item_9.id
                             WHERE     (item_9.sector_product = 1) AND (glaze1_total_9.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS w_rikhtegari,
                          (SELECT     SUM(glaze1_total_10.wastage_bis) AS tot_press
                             FROM         dbo.glaze1_total AS glaze1_total_10 INNER JOIN
                                                   dbo.item AS item_10 ON glaze1_total_10.item_id = item_10.id
                             WHERE     (item_10.sector_product = 1) AND (glaze1_total_10.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS b_rikhtegari,
                          (SELECT     SUM(glaze1_total_11.wastage_glaze) AS tot_press
                             FROM         dbo.glaze1_total AS glaze1_total_11 INNER JOIN
                                                   dbo.item AS item_11 ON glaze1_total_11.item_id = item_11.id
                             WHERE     (item_11.sector_product = 1) AND (glaze1_total_11.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS g_rikhtegari">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="tonazh2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="SELECT     (SELECT     SUM(dbo.glaze2_total.total) AS tot_press
                        FROM         dbo.glaze2_total INNER JOIN
                                              dbo.item ON dbo.glaze2_total.item_id = dbo.item.id
                        WHERE     (dbo.item.sector_product = 3) AND (dbo.glaze2_total.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS t_press,
                          (SELECT     SUM(glaze2_total_1.waight) AS waight_press
                             FROM         dbo.glaze2_total AS glaze2_total_1 INNER JOIN
                                                   dbo.item AS item_1 ON glaze2_total_1.item_id = item_1.id
                             WHERE     (item_1.sector_product = 3) AND (glaze2_total_1.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS w_press,
                          (SELECT     SUM(glaze2_total_2.wastage_bis) AS bis_press
                             FROM         dbo.glaze2_total AS glaze2_total_2 INNER JOIN
                                                   dbo.item AS item_2 ON glaze2_total_2.item_id = item_2.id
                             WHERE     (item_2.sector_product = 3) AND (glaze2_total_2.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS b_press,
                          (SELECT     SUM(glaze2_total_3.wastage_glaze) AS tot_press
                             FROM         dbo.glaze2_total AS glaze2_total_3 INNER JOIN
                                                   dbo.item AS item_3 ON glaze2_total_3.item_id = item_3.id
                             WHERE     (item_3.sector_product = 3) AND (glaze2_total_3.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS g_press,
                          (SELECT     SUM(glaze2_total_4.total) AS tot_press
                             FROM         dbo.glaze2_total AS glaze2_total_4 INNER JOIN
                                                   dbo.item AS item_4 ON glaze2_total_4.item_id = item_4.id
                             WHERE     (item_4.sector_product = 2) AND (glaze2_total_4.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS t_forming,
                          (SELECT     SUM(glaze2_total_5.waight) AS tot_press
                             FROM         dbo.glaze2_total AS glaze2_total_5 INNER JOIN
                                                   dbo.item AS item_5 ON glaze2_total_5.item_id = item_5.id
                             WHERE     (item_5.sector_product = 2) AND (glaze2_total_5.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS w_forming,
                          (SELECT     SUM(glaze2_total_6.wastage_bis) AS tot_press
                             FROM         dbo.glaze2_total AS glaze2_total_6 INNER JOIN
                                                   dbo.item AS item_6 ON glaze2_total_6.item_id = item_6.id
                             WHERE     (item_6.sector_product = 2) AND (glaze2_total_6.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS b_forming,
                          (SELECT     SUM(glaze2_total_7.wastage_glaze) AS tot_press
                             FROM         dbo.glaze2_total AS glaze2_total_7 INNER JOIN
                                                   dbo.item AS item_7 ON glaze2_total_7.item_id = item_7.id
                             WHERE     (item_7.sector_product = 2) AND (glaze2_total_7.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS g_forming,
                          (SELECT     SUM(glaze2_total_8.total) AS tot_press
                             FROM         dbo.glaze2_total AS glaze2_total_8 INNER JOIN
                                                   dbo.item AS item_8 ON glaze2_total_8.item_id = item_8.id
                             WHERE     (item_8.sector_product = 1) AND (glaze2_total_8.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS t_rikhtegari,
                          (SELECT     SUM(glaze2_total_9.waight) AS tot_press
                             FROM         dbo.glaze2_total AS glaze2_total_9 INNER JOIN
                                                   dbo.item AS item_9 ON glaze2_total_9.item_id = item_9.id
                             WHERE     (item_9.sector_product = 1) AND (glaze2_total_9.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS w_rikhtegari,
                          (SELECT     SUM(glaze2_total_10.wastage_bis) AS tot_press
                             FROM         dbo.glaze2_total AS glaze2_total_10 INNER JOIN
                                                   dbo.item AS item_10 ON glaze2_total_10.item_id = item_10.id
                             WHERE     (item_10.sector_product = 1) AND (glaze2_total_10.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS b_rikhtegari,
                          (SELECT     SUM(glaze2_total_11.wastage_glaze) AS tot_press
                             FROM         dbo.glaze2_total AS glaze2_total_11 INNER JOIN
                                                   dbo.item AS item_11 ON glaze2_total_11.item_id = item_11.id
                             WHERE     (item_11.sector_product = 1) AND (glaze2_total_11.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS g_rikhtegari">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="tafkik1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="SELECT (SELECT FLOOR(SUM(glaze1_total.total)) AS PQ FROM glaze1_total INNER JOIN item ON glaze1_total.item_id = item.id WHERE (item.kind = 1) AND (glaze1_total.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item.sector_product = 3)) AS Press, (SELECT FLOOR(SUM(glaze1_total_2.total)) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 1) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS Forming, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS RQueen FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 1) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS Rikhtegari, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS DOORQueen FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 1) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS Queen FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 1) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کویین' AS servis) AS servis, (SELECT 1 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze1_total_9.total)) AS PFlat FROM glaze1_total AS glaze1_total_9 INNER JOIN item AS item_9 ON glaze1_total_9.item_id = item_9.id WHERE (item_9.kind = 2 OR item_9.kind = 3) AND (glaze1_total_9.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_9.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze1_total_2.total)) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 2 OR item_2.kind = 3) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 2 OR item_1.kind = 3) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 2 OR item_1.kind = 3) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 2 OR item_1.kind = 3) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس فلت' AS servis) AS servis, (SELECT 2 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze1_total_8.total)) AS FD FROM glaze1_total AS glaze1_total_8 INNER JOIN item AS item_8 ON glaze1_total_8.item_id = item_8.id WHERE (item_8.kind = 6) AND (glaze1_total_8.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_8.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze1_total_2.total)) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 6) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 6) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 6) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 6) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس فیوچر' AS servis) AS servis, (SELECT 3 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze1_total_7.total)) AS FD FROM glaze1_total AS glaze1_total_7 INNER JOIN item AS item_7 ON glaze1_total_7.item_id = item_7.id WHERE (item_7.kind = 4) AND (glaze1_total_7.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_7.sector_product = 3) OR (item_7.kind = 5) AND (glaze1_total_7.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_7.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze1_total_2.total)) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 4 OR item_2.kind = 5) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 4 OR item_1.kind = 5) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 4 OR item_1.kind = 5) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 4 OR item_1.kind = 5) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس پرنسس' AS servis) AS servis, (SELECT 4 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze1_total_6.total)) AS FD FROM glaze1_total AS glaze1_total_6 INNER JOIN item AS item_6 ON glaze1_total_6.item_id = item_6.id WHERE (item_6.kind = 8) AND (glaze1_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3) OR (item_6.kind = 9) AND (glaze1_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3) OR (item_6.kind = 10) AND (glaze1_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3) OR (item_6.kind = 11) AND (glaze1_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3) OR (item_6.kind = 200) AND (glaze1_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze1_total_2.total)) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 8 OR item_2.kind = 9 OR item_2.kind = 10 OR item_2.kind = 11 OR item_2.kind = 200) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 8 OR item_1.kind = 9 OR item_1.kind = 10 OR item_1.kind = 11 OR item_1.kind = 200) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 8 OR item_1.kind = 9 OR item_1.kind = 10 OR item_1.kind = 11 OR item_1.kind = 200) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 8 OR item_1.kind = 9 OR item_1.kind = 10 OR item_1.kind = 11 OR item_1.kind = 200) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس اس' AS servis) AS servis, (SELECT 5 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze1_total_5.total)) AS FD FROM glaze1_total AS glaze1_total_5 INNER JOIN item AS item_5 ON glaze1_total_5.item_id = item_5.id WHERE (item_5.kind = 7) AND (glaze1_total_5.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_5.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze1_total_2.total)) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 7) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 7) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 7) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 7) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس لوئیز' AS servis) AS servis, (SELECT 6 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze1_total_10.total)) AS FD FROM glaze1_total AS glaze1_total_10 INNER JOIN item AS item_10 ON glaze1_total_10.item_id = item_10.id WHERE (item_10.kind = 12) AND (glaze1_total_10.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_10.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze1_total_2.total)) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 12) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 12) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 12) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 12) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کد یک' AS servis) AS servis, (SELECT 7 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze1_total_11.total)) AS FD FROM glaze1_total AS glaze1_total_11 INNER JOIN item AS item_11 ON glaze1_total_11.item_id = item_11.id WHERE (item_11.kind = 13) AND (glaze1_total_11.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_11.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze1_total_2.total)) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 13) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 13) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 13) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 13) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کد سه' AS servis) AS servis, (SELECT 8 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze1_total_11.total)) AS FD FROM glaze1_total AS glaze1_total_11 INNER JOIN item AS item_11 ON glaze1_total_11.item_id = item_11.id WHERE (item_11.kind = 14) AND (glaze1_total_11.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_11.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze1_total_2.total)) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 14) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 14) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 14) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 14) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کد چهار' AS servis) AS servis, (SELECT 9 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze1_total_11.total)) AS FD FROM glaze1_total AS glaze1_total_11 INNER JOIN item AS item_11 ON glaze1_total_11.item_id = item_11.id WHERE (item_11.kind = 15) AND (glaze1_total_11.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_11.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze1_total_2.total)) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 15) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 15) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 15) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 15) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کد پنج' AS servis) AS servis, (SELECT 10 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze1_total_4.total)) AS FD FROM glaze1_total AS glaze1_total_4 INNER JOIN item AS item_4 ON glaze1_total_4.item_id = item_4.id WHERE (glaze1_total_4.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_4.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze1_total_2.total)) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'جمع کل' AS servis) AS Expr1, (SELECT 11 AS numb) AS radif UNION SELECT (SELECT SUM(glaze1_total_3.waight) AS FD FROM glaze1_total AS glaze1_total_3 INNER JOIN item AS item_3 ON glaze1_total_3.item_id = item_3.id WHERE (glaze1_total_3.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_3.sector_product = 3)) AS P, (SELECT SUM(glaze1_total_2.waight) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze1_total_1.waight) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze1_total_1.waight) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze1_total_1.waight) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'وزن کل' AS servis) AS Expr1, (SELECT 12 AS numb) AS radif ORDER BY radif">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikhS" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikhE" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="tafkik2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT (SELECT SUM(glaze2_total.total) AS PQ FROM glaze2_total INNER JOIN item ON glaze2_total.item_id = item.id WHERE (item.kind = 1) AND (glaze2_total.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item.sector_product = 3)) AS Press, (SELECT SUM(glaze2_total_2.total) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 1) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS Forming, (SELECT SUM(glaze2_total_1.total) AS RQueen FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 1) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS Rikhtegari, (SELECT SUM(glaze2_total_1.total) AS DOORQueen FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 1) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze2_total_1.total) AS Queen FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 1) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کویین' AS servis) AS servis, (SELECT 1 AS numb) AS radif UNION SELECT (SELECT SUM(glaze2_total_9.total) AS PFlat FROM glaze2_total AS glaze2_total_9 INNER JOIN item AS item_9 ON glaze2_total_9.item_id = item_9.id WHERE (item_9.kind = 2 OR item_9.kind = 3) AND (glaze2_total_9.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_9.sector_product = 3)) AS P, (SELECT SUM(glaze2_total_2.total) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 2 OR item_2.kind = 3) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze2_total_1.total) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 2 OR item_1.kind = 3) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze2_total_1.total) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 2 OR item_1.kind = 3) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze2_total_1.total) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 2 OR item_1.kind = 3) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس فلت' AS servis) AS servis, (SELECT 2 AS numb) AS radif UNION SELECT (SELECT SUM(glaze2_total_8.total) AS FD FROM glaze2_total AS glaze2_total_8 INNER JOIN item AS item_8 ON glaze2_total_8.item_id = item_8.id WHERE (item_8.kind = 6) AND (glaze2_total_8.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_8.sector_product = 3)) AS P, (SELECT SUM(glaze2_total_2.total) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 6) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze2_total_1.total) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 6) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze2_total_1.total) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 6) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze2_total_1.total) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 6) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس فیوچر' AS servis) AS servis, (SELECT 3 AS numb) AS radif UNION SELECT (SELECT SUM(glaze2_total_7.total) AS FD FROM glaze2_total AS glaze2_total_7 INNER JOIN item AS item_7 ON glaze2_total_7.item_id = item_7.id WHERE (item_7.kind = 4) AND (glaze2_total_7.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_7.sector_product = 3) OR (item_7.kind = 5) AND (glaze2_total_7.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_7.sector_product = 3)) AS P, (SELECT SUM(glaze2_total_2.total) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 4 OR item_2.kind = 5) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze2_total_1.total) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 4 OR item_1.kind = 5) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze2_total_1.total) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 4 OR item_1.kind = 5) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze2_total_1.total) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 4 OR item_1.kind = 5) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس پرنسس' AS servis) AS servis, (SELECT 4 AS numb) AS radif UNION SELECT (SELECT SUM(glaze2_total_6.total) AS FD FROM glaze2_total AS glaze2_total_6 INNER JOIN item AS item_6 ON glaze2_total_6.item_id = item_6.id WHERE (item_6.kind = 8) AND (glaze2_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3) OR (item_6.kind = 9) AND (glaze2_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3) OR (item_6.kind = 10) AND (glaze2_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3) OR (item_6.kind = 11) AND (glaze2_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3) OR (item_6.kind = 200) AND (glaze2_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3)) AS P, (SELECT SUM(glaze2_total_2.total) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 8 OR item_2.kind = 9 OR item_2.kind = 10 OR item_2.kind = 11 OR item_2.kind = 200) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze2_total_1.total) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 8 OR item_1.kind = 9 OR item_1.kind = 10 OR item_1.kind = 11 OR item_1.kind = 200) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze2_total_1.total) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 8 OR item_1.kind = 9 OR item_1.kind = 10 OR item_1.kind = 11 OR item_1.kind = 200) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze2_total_1.total) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 8 OR item_1.kind = 9 OR item_1.kind = 10 OR item_1.kind = 11 OR item_1.kind = 200) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس اس' AS servis) AS servis, (SELECT 5 AS numb) AS radif UNION SELECT (SELECT SUM(glaze2_total_5.total) AS FD FROM glaze2_total AS glaze2_total_5 INNER JOIN item AS item_5 ON glaze2_total_5.item_id = item_5.id WHERE (item_5.kind = 7) AND (glaze2_total_5.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_5.sector_product = 3)) AS P, (SELECT SUM(glaze2_total_2.total) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 7) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze2_total_1.total) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 7) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze2_total_1.total) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 7) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze2_total_1.total) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 7) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس لوئیز' AS servis) AS servis, (SELECT 6 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze2_total_10.total)) AS FD FROM glaze2_total AS glaze2_total_10 INNER JOIN item AS item_10 ON glaze2_total_10.item_id = item_10.id WHERE (item_10.kind = 12) AND (glaze2_total_10.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_10.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze2_total_2.total)) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 12) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 12) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 12) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 12) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کد یک' AS servis) AS servis, (SELECT 7 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze2_total_11.total)) AS FD FROM glaze2_total AS glaze2_total_11 INNER JOIN item AS item_11 ON glaze2_total_11.item_id = item_11.id WHERE (item_11.kind = 13) AND (glaze2_total_11.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_11.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze2_total_2.total)) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 13) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 13) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 13) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 13) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کد سه' AS servis) AS servis, (SELECT 8 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze2_total_11.total)) AS FD FROM glaze2_total AS glaze2_total_11 INNER JOIN item AS item_11 ON glaze2_total_11.item_id = item_11.id WHERE (item_11.kind = 14) AND (glaze2_total_11.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_11.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze2_total_2.total)) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 14) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 14) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 14) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 14) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کد چهار' AS servis) AS servis, (SELECT 9 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze2_total_11.total)) AS FD FROM glaze2_total AS glaze2_total_11 INNER JOIN item AS item_11 ON glaze2_total_11.item_id = item_11.id WHERE (item_11.kind = 15) AND (glaze2_total_11.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_11.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze2_total_2.total)) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 15) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 15) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 15) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 15) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کد پنج' AS servis) AS servis, (SELECT 10 AS numb) AS radif UNION SELECT (SELECT SUM(glaze2_total_4.total) AS FD FROM glaze2_total AS glaze2_total_4 INNER JOIN item AS item_4 ON glaze2_total_4.item_id = item_4.id WHERE (glaze2_total_4.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_4.sector_product = 3)) AS P, (SELECT SUM(glaze2_total_2.total) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze2_total_1.total) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze2_total_1.total) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze2_total_1.total) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'جمع کل' AS servis) AS Expr1, (SELECT 11 AS numb) AS radif UNION SELECT (SELECT SUM(glaze2_total_3.waight) AS FD FROM glaze2_total AS glaze2_total_3 INNER JOIN item AS item_3 ON glaze2_total_3.item_id = item_3.id WHERE (glaze2_total_3.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_3.sector_product = 3)) AS P, (SELECT SUM(glaze2_total_2.waight) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze2_total_1.waight) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze2_total_1.waight) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze2_total_1.waight) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'وزن کل' AS servis) AS Expr1, (SELECT 12 AS numb) AS radif ORDER BY radif">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikhS" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikhE" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="totaltafkik1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="SELECT     (SELECT     SUM(dbo.glaze1_total.total) AS PQ
                        FROM         dbo.glaze1_total INNER JOIN
                                              dbo.item ON dbo.glaze1_total.item_id = dbo.item.id
                        WHERE  (dbo.glaze1_total.tarikh BETWEEN @tarikhS AND @tarikhE) AND (dbo.item.sector_product = 1)) AS Rikhtegari,
                          (SELECT     SUM(glaze1_total_2.tot_recover) AS FQueen
                             FROM         dbo.glaze1_total AS glaze1_total_2 INNER JOIN
                                                   dbo.item AS item_2 ON glaze1_total_2.item_id = item_2.id
                             WHERE   (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) ) AS Recover,
                          (SELECT     SUM(glaze1_total_1.waight_recover) AS RQueen
                             FROM         dbo.glaze1_total AS glaze1_total_1 INNER JOIN
                                                   dbo.item AS item_1 ON glaze1_total_1.item_id = item_1.id
                             WHERE    (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS WeightRecover,
                          (SELECT     SUM(glaze1_total_1.total)+SUM(glaze1_total_1.tot_recover) AS col
                             FROM         dbo.glaze1_total AS glaze1_total_1 INNER JOIN
                                                   dbo.item AS item_1 ON glaze1_total_1.item_id = item_1.id
                             WHERE    (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS total">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikhS" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikhE" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="totaltafkik2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="SELECT     (SELECT     SUM(dbo.glaze2_total.total) AS PQ
                        FROM         dbo.glaze2_total INNER JOIN
                                              dbo.item ON dbo.glaze2_total.item_id = dbo.item.id
                        WHERE  (dbo.glaze2_total.tarikh BETWEEN @tarikhS AND @tarikhE) AND (dbo.item.sector_product = 1)) AS Rikhtegari,
                          (SELECT     SUM(glaze2_total_2.tot_recover) AS FQueen
                             FROM         dbo.glaze2_total AS glaze2_total_2 INNER JOIN
                                                   dbo.item AS item_2 ON glaze2_total_2.item_id = item_2.id
                             WHERE   (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) ) AS Recover,
                          (SELECT     SUM(glaze2_total_1.waight_recover) AS RQueen
                             FROM         dbo.glaze2_total AS glaze2_total_1 INNER JOIN
                                                   dbo.item AS item_1 ON glaze2_total_1.item_id = item_1.id
                             WHERE    (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS WeightRecover,
                          (SELECT     SUM(glaze2_total_1.total)+SUM(glaze2_total_1.tot_recover) AS col
                             FROM         dbo.glaze2_total AS glaze2_total_1 INNER JOIN
                                                   dbo.item AS item_1 ON glaze2_total_1.item_id = item_1.id
                             WHERE    (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS total">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikhS" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikhE" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sumtotal" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT        dbo.item.item_name, SUM(t.total) AS total, SUM(t.waight) AS waight, SUM(t.wastage_bis) AS wastage_bis, SUM(t.wastage_glaze) AS wastage_glaze, SUM(t.ww_glaze) AS ww_glaze, SUM(t.ww_bis) AS ww_bis, 
                         SUM(t.recover) AS recover
FROM            (SELECT        SUM(total) AS total, SUM(waight) AS waight, SUM(wastage_bis) AS wastage_bis, SUM(wastage_glaze) AS wastage_glaze, SUM(ww_glaze) AS ww_glaze, SUM(ww_bis) AS ww_bis, SUM(tot_recover) 
                                                    AS recover, item_id
                          FROM            dbo.glaze1_total
                          WHERE        (tarikh BETWEEN @tarikh_s AND @tarikh_e)
                          GROUP BY item_id
                          UNION ALL
                          SELECT        SUM(total) AS total, SUM(waight) AS waight, SUM(wastage_bis) AS wastage_bis, SUM(wastage_glaze) AS wastage_glaze, SUM(ww_glaze) AS ww_glaze, SUM(ww_bis) AS ww_bis, SUM(tot_recover) 
                                                   AS recover, item_id
                          FROM            dbo.glaze2_total
                          WHERE        (tarikh BETWEEN @tarikh_s AND @tarikh_e)
                          GROUP BY item_id) AS t INNER JOIN
                         dbo.item ON t.item_id = dbo.item.id
GROUP BY dbo.item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sumtotalday" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT        SUM(total_waight) AS total_waight, SUM(ww_glaze) AS ww_glaze, SUM(ww_bis) AS ww_bis, SUM(wast_glaze_day) AS wast_glaze_day, SUM(total_day) AS total_day, SUM(tot_recovery) AS tot_recovery, 
                         SUM(sum2_waight) AS sum2_waight, SUM(wast_bis_day) AS wast_bis_day, SUM(total_press) AS total_press, SUM(total_forming) AS total_forming, SUM(total_rikhtegari) AS total_rikhtegari, SUM(glazing_sum) 
                         AS glazing_sum
FROM            (SELECT        SUM(total_waight) AS total_waight, SUM(ww_glaze) AS ww_glaze, SUM(ww_bis) AS ww_bis, SUM(wast_glaze_day) AS wast_glaze_day, SUM(total_day) + SUM(tot_recover) AS total_day, 
                                                    SUM(tot_recover) AS tot_recovery, SUM(total_waight + waight_recover) AS sum2_waight, SUM(wast_bis_day) AS wast_bis_day, SUM(total_press) AS total_press, SUM(total_forming) AS total_forming, 
                                                    SUM(total_rikhtegari) AS total_rikhtegari, SUM(glazing_sum) AS glazing_sum
                          FROM            dbo.glaze1_total_day
                          WHERE        (tarikh BETWEEN @tarikh_s AND @tarikh_e)
                          UNION ALL
                          SELECT        SUM(total_waight) AS total_waight, SUM(ww_glaze) AS ww_glaze, SUM(ww_bis) AS ww_bis, SUM(wast_glaze_day) AS wast_glaze_day, SUM(total_day) + SUM(tot_recover) AS total_day, 
                                                   SUM(tot_recover) AS tot_recovery, SUM(total_waight + waight_recover) AS sum2_waight, SUM(wast_bis_day) AS wast_bis_day, SUM(total_press) AS total_press, SUM(total_forming) AS total_forming, 
                                                   SUM(total_rikhtegari) AS total_rikhtegari, SUM(glazing_sum) AS glazing_sum
                          FROM            dbo.glaze2_total_day
                          WHERE        (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS t">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sumtonazh" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT        SUM(t_press) AS t_press, SUM(w_press) AS w_press, SUM(b_press) AS b_press, SUM(g_press) AS g_press, SUM(t_forming) AS t_forming, SUM(w_forming) AS w_forming, SUM(b_forming) AS b_forming, 
                         SUM(g_forming) AS g_forming, SUM(t_rikhtegari) AS t_rikhtegari, SUM(w_rikhtegari) AS w_rikhtegari, SUM(b_rikhtegari) AS b_rikhtegari, SUM(g_rikhtegari) AS g_rikhtegari
FROM            (SELECT        (SELECT        SUM(dbo.glaze1_total.total) AS tot_press
                                                     FROM            dbo.glaze1_total INNER JOIN
                                                                              dbo.item ON dbo.glaze1_total.item_id = dbo.item.id
                                                     WHERE        (dbo.item.sector_product = 3) AND (dbo.glaze1_total.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS t_press,
                                                        (SELECT        SUM(glaze1_total_1.waight) AS waight_press
                                                          FROM            dbo.glaze1_total AS glaze1_total_1 INNER JOIN
                                                                                    dbo.item AS item_1 ON glaze1_total_1.item_id = item_1.id
                                                          WHERE        (item_1.sector_product = 3) AND (glaze1_total_1.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS w_press,
                                                        (SELECT        SUM(glaze1_total_2.wastage_bis) AS bis_press
                                                          FROM            dbo.glaze1_total AS glaze1_total_2 INNER JOIN
                                                                                    dbo.item AS item_2 ON glaze1_total_2.item_id = item_2.id
                                                          WHERE        (item_2.sector_product = 3) AND (glaze1_total_2.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS b_press,
                                                        (SELECT        SUM(glaze1_total_3.wastage_glaze) AS tot_press
                                                          FROM            dbo.glaze1_total AS glaze1_total_3 INNER JOIN
                                                                                    dbo.item AS item_3 ON glaze1_total_3.item_id = item_3.id
                                                          WHERE        (item_3.sector_product = 3) AND (glaze1_total_3.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS g_press,
                                                        (SELECT        SUM(glaze1_total_4.total) AS tot_press
                                                          FROM            dbo.glaze1_total AS glaze1_total_4 INNER JOIN
                                                                                    dbo.item AS item_4 ON glaze1_total_4.item_id = item_4.id
                                                          WHERE        (item_4.sector_product = 2) AND (glaze1_total_4.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS t_forming,
                                                        (SELECT        SUM(glaze1_total_5.waight) AS tot_press
                                                          FROM            dbo.glaze1_total AS glaze1_total_5 INNER JOIN
                                                                                    dbo.item AS item_5 ON glaze1_total_5.item_id = item_5.id
                                                          WHERE        (item_5.sector_product = 2) AND (glaze1_total_5.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS w_forming,
                                                        (SELECT        SUM(glaze1_total_6.wastage_bis) AS tot_press
                                                          FROM            dbo.glaze1_total AS glaze1_total_6 INNER JOIN
                                                                                    dbo.item AS item_6 ON glaze1_total_6.item_id = item_6.id
                                                          WHERE        (item_6.sector_product = 2) AND (glaze1_total_6.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS b_forming,
                                                        (SELECT        SUM(glaze1_total_7.wastage_glaze) AS tot_press
                                                          FROM            dbo.glaze1_total AS glaze1_total_7 INNER JOIN
                                                                                    dbo.item AS item_7 ON glaze1_total_7.item_id = item_7.id
                                                          WHERE        (item_7.sector_product = 2) AND (glaze1_total_7.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS g_forming,
                                                        (SELECT        SUM(glaze1_total_8.total) AS tot_press
                                                          FROM            dbo.glaze1_total AS glaze1_total_8 INNER JOIN
                                                                                    dbo.item AS item_8 ON glaze1_total_8.item_id = item_8.id
                                                          WHERE        (item_8.sector_product = 1) AND (glaze1_total_8.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS t_rikhtegari,
                                                        (SELECT        SUM(glaze1_total_9.waight) AS tot_press
                                                          FROM            dbo.glaze1_total AS glaze1_total_9 INNER JOIN
                                                                                    dbo.item AS item_9 ON glaze1_total_9.item_id = item_9.id
                                                          WHERE        (item_9.sector_product = 1) AND (glaze1_total_9.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS w_rikhtegari,
                                                        (SELECT        SUM(glaze1_total_10.wastage_bis) AS tot_press
                                                          FROM            dbo.glaze1_total AS glaze1_total_10 INNER JOIN
                                                                                    dbo.item AS item_10 ON glaze1_total_10.item_id = item_10.id
                                                          WHERE        (item_10.sector_product = 1) AND (glaze1_total_10.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS b_rikhtegari,
                                                        (SELECT        SUM(glaze1_total_11.wastage_glaze) AS tot_press
                                                          FROM            dbo.glaze1_total AS glaze1_total_11 INNER JOIN
                                                                                    dbo.item AS item_11 ON glaze1_total_11.item_id = item_11.id
                                                          WHERE        (item_11.sector_product = 1) AND (glaze1_total_11.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS g_rikhtegari
                          UNION ALL
                          SELECT        (SELECT        SUM(dbo.glaze2_total.total) AS tot_press
                                                    FROM            dbo.glaze2_total INNER JOIN
                                                                              dbo.item AS item_12 ON dbo.glaze2_total.item_id = item_12.id
                                                    WHERE        (item_12.sector_product = 3) AND (dbo.glaze2_total.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS t_press,
                                                       (SELECT        SUM(glaze2_total_1.waight) AS waight_press
                                                         FROM            dbo.glaze2_total AS glaze2_total_1 INNER JOIN
                                                                                   dbo.item AS item_1 ON glaze2_total_1.item_id = item_1.id
                                                         WHERE        (item_1.sector_product = 3) AND (glaze2_total_1.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS w_press,
                                                       (SELECT        SUM(glaze2_total_2.wastage_bis) AS bis_press
                                                         FROM            dbo.glaze2_total AS glaze2_total_2 INNER JOIN
                                                                                   dbo.item AS item_2 ON glaze2_total_2.item_id = item_2.id
                                                         WHERE        (item_2.sector_product = 3) AND (glaze2_total_2.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS b_press,
                                                       (SELECT        SUM(glaze2_total_3.wastage_glaze) AS tot_press
                                                         FROM            dbo.glaze2_total AS glaze2_total_3 INNER JOIN
                                                                                   dbo.item AS item_3 ON glaze2_total_3.item_id = item_3.id
                                                         WHERE        (item_3.sector_product = 3) AND (glaze2_total_3.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS g_press,
                                                       (SELECT        SUM(glaze2_total_4.total) AS tot_press
                                                         FROM            dbo.glaze2_total AS glaze2_total_4 INNER JOIN
                                                                                   dbo.item AS item_4 ON glaze2_total_4.item_id = item_4.id
                                                         WHERE        (item_4.sector_product = 2) AND (glaze2_total_4.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS t_forming,
                                                       (SELECT        SUM(glaze2_total_5.waight) AS tot_press
                                                         FROM            dbo.glaze2_total AS glaze2_total_5 INNER JOIN
                                                                                   dbo.item AS item_5 ON glaze2_total_5.item_id = item_5.id
                                                         WHERE        (item_5.sector_product = 2) AND (glaze2_total_5.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS w_forming,
                                                       (SELECT        SUM(glaze2_total_6.wastage_bis) AS tot_press
                                                         FROM            dbo.glaze2_total AS glaze2_total_6 INNER JOIN
                                                                                   dbo.item AS item_6 ON glaze2_total_6.item_id = item_6.id
                                                         WHERE        (item_6.sector_product = 2) AND (glaze2_total_6.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS b_forming,
                                                       (SELECT        SUM(glaze2_total_7.wastage_glaze) AS tot_press
                                                         FROM            dbo.glaze2_total AS glaze2_total_7 INNER JOIN
                                                                                   dbo.item AS item_7 ON glaze2_total_7.item_id = item_7.id
                                                         WHERE        (item_7.sector_product = 2) AND (glaze2_total_7.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS g_forming,
                                                       (SELECT        SUM(glaze2_total_8.total) AS tot_press
                                                         FROM            dbo.glaze2_total AS glaze2_total_8 INNER JOIN
                                                                                   dbo.item AS item_8 ON glaze2_total_8.item_id = item_8.id
                                                         WHERE        (item_8.sector_product = 1) AND (glaze2_total_8.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS t_rikhtegari,
                                                       (SELECT        SUM(glaze2_total_9.waight) AS tot_press
                                                         FROM            dbo.glaze2_total AS glaze2_total_9 INNER JOIN
                                                                                   dbo.item AS item_9 ON glaze2_total_9.item_id = item_9.id
                                                         WHERE        (item_9.sector_product = 1) AND (glaze2_total_9.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS w_rikhtegari,
                                                       (SELECT        SUM(glaze2_total_10.wastage_bis) AS tot_press
                                                         FROM            dbo.glaze2_total AS glaze2_total_10 INNER JOIN
                                                                                   dbo.item AS item_10 ON glaze2_total_10.item_id = item_10.id
                                                         WHERE        (item_10.sector_product = 1) AND (glaze2_total_10.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS b_rikhtegari,
                                                       (SELECT        SUM(glaze2_total_11.wastage_glaze) AS tot_press
                                                         FROM            dbo.glaze2_total AS glaze2_total_11 INNER JOIN
                                                                                   dbo.item AS item_11 ON glaze2_total_11.item_id = item_11.id
                                                         WHERE        (item_11.sector_product = 1) AND (glaze2_total_11.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS g_rikhtegari) AS t">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sumtotaltafkik" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT        SUM(WeightRecover) AS WeightRecover, SUM(Recover) AS Recover, SUM(total) AS total, SUM(Rikhtegari) AS Rikhtegari
FROM            (SELECT        (SELECT        SUM(dbo.glaze1_total.total) AS PQ
                                                     FROM            dbo.glaze1_total INNER JOIN
                                                                              dbo.item ON dbo.glaze1_total.item_id = dbo.item.id
                                                     WHERE        (dbo.glaze1_total.tarikh BETWEEN @tarikhS AND @tarikhE) AND (dbo.item.sector_product = 1)) AS Rikhtegari,
                                                        (SELECT        SUM(glaze1_total_2.tot_recover) AS FQueen
                                                          FROM            dbo.glaze1_total AS glaze1_total_2 INNER JOIN
                                                                                    dbo.item AS item_2 ON glaze1_total_2.item_id = item_2.id
                                                          WHERE        (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE)) AS Recover,
                                                        (SELECT        SUM(glaze1_total_1.waight_recover) AS RQueen
                                                          FROM            dbo.glaze1_total AS glaze1_total_1 INNER JOIN
                                                                                    dbo.item AS item_1 ON glaze1_total_1.item_id = item_1.id
                                                          WHERE        (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS WeightRecover,
                                                        (SELECT        SUM(glaze1_total_1.total) + SUM(glaze1_total_1.tot_recover) AS col
                                                          FROM            dbo.glaze1_total AS glaze1_total_1 INNER JOIN
                                                                                    dbo.item AS item_1 ON glaze1_total_1.item_id = item_1.id
                                                          WHERE        (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS total
                          UNION ALL
                          SELECT        (SELECT        SUM(glaze1_total_3.total) AS PQ
                                                    FROM            dbo.glaze1_total AS glaze1_total_3 INNER JOIN
                                                                              dbo.item AS item_3 ON glaze1_total_3.item_id = item_3.id
                                                    WHERE        (glaze1_total_3.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_3.sector_product = 1)) AS Rikhtegari,
                                                       (SELECT        SUM(glaze1_total_2.tot_recover) AS FQueen
                                                         FROM            dbo.glaze1_total AS glaze1_total_2 INNER JOIN
                                                                                   dbo.item AS item_2 ON glaze1_total_2.item_id = item_2.id
                                                         WHERE        (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE)) AS Recover,
                                                       (SELECT        SUM(glaze1_total_1.waight_recover) AS RQueen
                                                         FROM            dbo.glaze1_total AS glaze1_total_1 INNER JOIN
                                                                                   dbo.item AS item_1 ON glaze1_total_1.item_id = item_1.id
                                                         WHERE        (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS WeightRecover,
                                                       (SELECT        SUM(glaze1_total_1.total) + SUM(glaze1_total_1.tot_recover) AS col
                                                         FROM            dbo.glaze1_total AS glaze1_total_1 INNER JOIN
                                                                                   dbo.item AS item_1 ON glaze1_total_1.item_id = item_1.id
                                                         WHERE        (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS total) AS T">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikhS" PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikhE" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sumtafkik" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT sum(Press) AS Press, sum(Forming) AS Forming, sum(Rikhtegari) AS Rikhtegari, sum(Door) AS Door, sum(JameCol) AS JameCol, servis, radif FROM ((SELECT (SELECT SUM(glaze2_total.total) AS PQ FROM glaze2_total INNER JOIN item ON glaze2_total.item_id = item.id WHERE (item.kind = 1) AND (glaze2_total.tarikh BETWEEN @tarikhE AND @tarikhE) AND (item.sector_product = 3)) AS Press, (SELECT SUM(glaze2_total_2.total) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 1) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS Forming, (SELECT SUM(glaze2_total_1.total) AS RQueen FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 1) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS Rikhtegari, (SELECT SUM(glaze2_total_1.total) AS DOORQueen FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 1) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze2_total_1.total) AS Queen FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 1) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کویین' AS servis) AS servis, (SELECT 1 AS numb) AS radif UNION SELECT (SELECT SUM(glaze2_total_9.total) AS PFlat FROM glaze2_total AS glaze2_total_9 INNER JOIN item AS item_9 ON glaze2_total_9.item_id = item_9.id WHERE (item_9.kind = 2 OR item_9.kind = 3) AND (glaze2_total_9.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_9.sector_product = 3)) AS P, (SELECT SUM(glaze2_total_2.total) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 2 OR item_2.kind = 3) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze2_total_1.total) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 2 OR item_1.kind = 3) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze2_total_1.total) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 2 OR item_1.kind = 3) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze2_total_1.total) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 2 OR item_1.kind = 3) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس فلت' AS servis) AS servis, (SELECT 2 AS numb) AS radif UNION SELECT (SELECT SUM(glaze2_total_8.total) AS FD FROM glaze2_total AS glaze2_total_8 INNER JOIN item AS item_8 ON glaze2_total_8.item_id = item_8.id WHERE (item_8.kind = 6) AND (glaze2_total_8.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_8.sector_product = 3)) AS P, (SELECT SUM(glaze2_total_2.total) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 6) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze2_total_1.total) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 6) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze2_total_1.total) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 6) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze2_total_1.total) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 6) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس فیوچر' AS servis) AS servis, (SELECT 3 AS numb) AS radif UNION SELECT (SELECT SUM(glaze2_total_7.total) AS FD FROM glaze2_total AS glaze2_total_7 INNER JOIN item AS item_7 ON glaze2_total_7.item_id = item_7.id WHERE (item_7.kind = 4) AND (glaze2_total_7.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_7.sector_product = 3) OR (item_7.kind = 5) AND (glaze2_total_7.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_7.sector_product = 3)) AS P, (SELECT SUM(glaze2_total_2.total) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 4 OR item_2.kind = 5) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze2_total_1.total) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 4 OR item_1.kind = 5) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze2_total_1.total) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 4 OR item_1.kind = 5) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze2_total_1.total) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 4 OR item_1.kind = 5) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس پرنسس' AS servis) AS servis, (SELECT 4 AS numb) AS radif UNION SELECT (SELECT SUM(glaze2_total_6.total) AS FD FROM glaze2_total AS glaze2_total_6 INNER JOIN item AS item_6 ON glaze2_total_6.item_id = item_6.id WHERE (item_6.kind = 8) AND (glaze2_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3) OR (item_6.kind = 9) AND (glaze2_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3) OR (item_6.kind = 10) AND (glaze2_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3) OR (item_6.kind = 11) AND (glaze2_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3) OR (item_6.kind = 200) AND (glaze2_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3)) AS P, (SELECT SUM(glaze2_total_2.total) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 8 OR item_2.kind = 9 OR item_2.kind = 10 OR item_2.kind = 11 OR item_2.kind = 200) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze2_total_1.total) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 8 OR item_1.kind = 9 OR item_1.kind = 10 OR item_1.kind = 11 OR item_1.kind = 200) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze2_total_1.total) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 8 OR item_1.kind = 9 OR item_1.kind = 10 OR item_1.kind = 11 OR item_1.kind = 200) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze2_total_1.total) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 8 OR item_1.kind = 9 OR item_1.kind = 10 OR item_1.kind = 11 OR item_1.kind = 200) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس اس' AS servis) AS servis, (SELECT 5 AS numb) AS radif UNION SELECT (SELECT SUM(glaze2_total_5.total) AS FD FROM glaze2_total AS glaze2_total_5 INNER JOIN item AS item_5 ON glaze2_total_5.item_id = item_5.id WHERE (item_5.kind = 7) AND (glaze2_total_5.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_5.sector_product = 3)) AS P, (SELECT SUM(glaze2_total_2.total) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 7) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze2_total_1.total) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 7) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze2_total_1.total) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 7) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze2_total_1.total) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 7) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس لوئیز' AS servis) AS servis, (SELECT 6 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze2_total_10.total)) AS FD FROM glaze2_total AS glaze2_total_10 INNER JOIN item AS item_10 ON glaze2_total_10.item_id = item_10.id WHERE (item_10.kind = 12) AND (glaze2_total_10.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_10.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze2_total_2.total)) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 12) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 12) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 12) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 12) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کد یک' AS servis) AS servis, (SELECT 7 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze2_total_11.total)) AS FD FROM glaze2_total AS glaze2_total_11 INNER JOIN item AS item_11 ON glaze2_total_11.item_id = item_11.id WHERE (item_11.kind = 13) AND (glaze2_total_11.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_11.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze2_total_2.total)) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 13) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 13) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 13) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 13) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کد سه' AS servis) AS servis, (SELECT 8 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze2_total_11.total)) AS FD FROM glaze2_total AS glaze2_total_11 INNER JOIN item AS item_11 ON glaze2_total_11.item_id = item_11.id WHERE (item_11.kind = 14) AND (glaze2_total_11.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_11.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze2_total_2.total)) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 14) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 14) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 14) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 14) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کد چهار' AS servis) AS servis, (SELECT 9 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze2_total_11.total)) AS FD FROM glaze2_total AS glaze2_total_11 INNER JOIN item AS item_11 ON glaze2_total_11.item_id = item_11.id WHERE (item_11.kind = 15) AND (glaze2_total_11.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_11.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze2_total_2.total)) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (item_2.kind = 15) AND (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 15) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 15) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze2_total_1.total)) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (item_1.kind = 15) AND (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کد پنج' AS servis) AS servis, (SELECT 10 AS numb) AS radif UNION SELECT (SELECT SUM(glaze2_total_4.total) AS FD FROM glaze2_total AS glaze2_total_4 INNER JOIN item AS item_4 ON glaze2_total_4.item_id = item_4.id WHERE (glaze2_total_4.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_4.sector_product = 3)) AS P, (SELECT SUM(glaze2_total_2.total) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze2_total_1.total) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze2_total_1.total) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze2_total_1.total) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'جمع کل' AS servis) AS Expr1, (SELECT 11 AS numb) AS radif UNION SELECT (SELECT SUM(glaze2_total_3.waight) AS FD FROM glaze2_total AS glaze2_total_3 INNER JOIN item AS item_3 ON glaze2_total_3.item_id = item_3.id WHERE (glaze2_total_3.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_3.sector_product = 3)) AS P, (SELECT SUM(glaze2_total_2.waight) AS FQueen FROM glaze2_total AS glaze2_total_2 INNER JOIN item AS item_2 ON glaze2_total_2.item_id = item_2.id WHERE (glaze2_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze2_total_1.waight) AS RFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze2_total_1.waight) AS DOORFlat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze2_total_1.waight) AS Flat FROM glaze2_total AS glaze2_total_1 INNER JOIN item AS item_1 ON glaze2_total_1.item_id = item_1.id WHERE (glaze2_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'وزن کل' AS servis) AS Expr1, (SELECT 12 AS numb) AS radif) UNION (SELECT (SELECT SUM(glaze1_total.total) AS PQ FROM glaze1_total INNER JOIN item ON glaze1_total.item_id = item.id WHERE (item.kind = 1) AND (glaze1_total.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item.sector_product = 3)) AS Press, (SELECT SUM(glaze1_total_2.total) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 1) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS Forming, (SELECT SUM(glaze1_total_1.total) AS RQueen FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 1) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS Rikhtegari, (SELECT SUM(glaze1_total_1.total) AS DOORQueen FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 1) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze1_total_1.total) AS Queen FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 1) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کویین' AS servis) AS servis, (SELECT 1 AS numb) AS radif UNION SELECT (SELECT SUM(glaze1_total_9.total) AS PFlat FROM glaze1_total AS glaze1_total_9 INNER JOIN item AS item_9 ON glaze1_total_9.item_id = item_9.id WHERE (item_9.kind = 2 OR item_9.kind = 3) AND (glaze1_total_9.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_9.sector_product = 3)) AS P, (SELECT SUM(glaze1_total_2.total) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 2 OR item_2.kind = 3) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze1_total_1.total) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 2 OR item_1.kind = 3) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze1_total_1.total) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 2 OR item_1.kind = 3) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze1_total_1.total) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 2 OR item_1.kind = 3) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس فلت' AS servis) AS servis, (SELECT 2 AS numb) AS radif UNION SELECT (SELECT SUM(glaze1_total_8.total) AS FD FROM glaze1_total AS glaze1_total_8 INNER JOIN item AS item_8 ON glaze1_total_8.item_id = item_8.id WHERE (item_8.kind = 6) AND (glaze1_total_8.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_8.sector_product = 3)) AS P, (SELECT SUM(glaze1_total_2.total) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 6) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze1_total_1.total) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 6) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze1_total_1.total) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 6) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze1_total_1.total) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 6) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس فیوچر' AS servis) AS servis, (SELECT 3 AS numb) AS radif UNION SELECT (SELECT SUM(glaze1_total_7.total) AS FD FROM glaze1_total AS glaze1_total_7 INNER JOIN item AS item_7 ON glaze1_total_7.item_id = item_7.id WHERE (item_7.kind = 4) AND (glaze1_total_7.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_7.sector_product = 3) OR (item_7.kind = 5) AND (glaze1_total_7.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_7.sector_product = 3)) AS P, (SELECT SUM(glaze1_total_2.total) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 4 OR item_2.kind = 5) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze1_total_1.total) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 4 OR item_1.kind = 5) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze1_total_1.total) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 4 OR item_1.kind = 5) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze1_total_1.total) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 4 OR item_1.kind = 5) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس پرنسس' AS servis) AS servis, (SELECT 4 AS numb) AS radif UNION SELECT (SELECT SUM(glaze1_total_6.total) AS FD FROM glaze1_total AS glaze1_total_6 INNER JOIN item AS item_6 ON glaze1_total_6.item_id = item_6.id WHERE (item_6.kind = 8) AND (glaze1_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3) OR (item_6.kind = 9) AND (glaze1_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3) OR (item_6.kind = 10) AND (glaze1_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3) OR (item_6.kind = 11) AND (glaze1_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3) OR (item_6.kind = 200) AND (glaze1_total_6.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_6.sector_product = 3)) AS P, (SELECT SUM(glaze1_total_2.total) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 8 OR item_2.kind = 9 OR item_2.kind = 10 OR item_2.kind = 11 OR item_2.kind = 200) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze1_total_1.total) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 8 OR item_1.kind = 9 OR item_1.kind = 10 OR item_1.kind = 11 OR item_1.kind = 200) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze1_total_1.total) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 8 OR item_1.kind = 9 OR item_1.kind = 10 OR item_1.kind = 11 OR item_1.kind = 200) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze1_total_1.total) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 8 OR item_1.kind = 9 OR item_1.kind = 10 OR item_1.kind = 11 OR item_1.kind = 200) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس اس' AS servis) AS servis, (SELECT 5 AS numb) AS radif UNION SELECT (SELECT SUM(glaze1_total_5.total) AS FD FROM glaze1_total AS glaze1_total_5 INNER JOIN item AS item_5 ON glaze1_total_5.item_id = item_5.id WHERE (item_5.kind = 7) AND (glaze1_total_5.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_5.sector_product = 3)) AS P, (SELECT SUM(glaze1_total_2.total) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 7) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze1_total_1.total) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 7) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze1_total_1.total) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 7) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze1_total_1.total) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 7) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس لوئیز' AS servis) AS servis, (SELECT 6 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze1_total_10.total)) AS FD FROM glaze1_total AS glaze1_total_10 INNER JOIN item AS item_10 ON glaze1_total_10.item_id = item_10.id WHERE (item_10.kind = 12) AND (glaze1_total_10.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_10.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze1_total_2.total)) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 12) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 12) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 12) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 12) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کد یک' AS servis) AS servis, (SELECT 7 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze1_total_11.total)) AS FD FROM glaze1_total AS glaze1_total_11 INNER JOIN item AS item_11 ON glaze1_total_11.item_id = item_11.id WHERE (item_11.kind = 13) AND (glaze1_total_11.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_11.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze1_total_2.total)) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 13) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 13) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 13) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 13) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کد سه' AS servis) AS servis, (SELECT 8 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze1_total_11.total)) AS FD FROM glaze1_total AS glaze1_total_11 INNER JOIN item AS item_11 ON glaze1_total_11.item_id = item_11.id WHERE (item_11.kind = 14) AND (glaze1_total_11.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_11.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze1_total_2.total)) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 14) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 14) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 14) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 14) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کد چهار' AS servis) AS servis, (SELECT 9 AS numb) AS radif UNION SELECT (SELECT FLOOR(SUM(glaze1_total_11.total)) AS FD FROM glaze1_total AS glaze1_total_11 INNER JOIN item AS item_11 ON glaze1_total_11.item_id = item_11.id WHERE (item_11.kind = 15) AND (glaze1_total_11.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_11.sector_product = 3)) AS P, (SELECT FLOOR(SUM(glaze1_total_2.total)) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (item_2.kind = 15) AND (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 15) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 15) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT FLOOR(SUM(glaze1_total_1.total)) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (item_1.kind = 15) AND (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'سرویس کد پنج' AS servis) AS servis, (SELECT 10 AS numb) AS radif UNION SELECT (SELECT SUM(glaze1_total_4.total) AS FD FROM glaze1_total AS glaze1_total_4 INNER JOIN item AS item_4 ON glaze1_total_4.item_id = item_4.id WHERE (glaze1_total_4.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_4.sector_product = 3)) AS P, (SELECT SUM(glaze1_total_2.total) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze1_total_1.total) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze1_total_1.total) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze1_total_1.total) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'جمع کل' AS servis) AS Expr1, (SELECT 11 AS numb) AS radif UNION SELECT (SELECT SUM(glaze1_total_3.waight) AS FD FROM glaze1_total AS glaze1_total_3 INNER JOIN item AS item_3 ON glaze1_total_3.item_id = item_3.id WHERE (glaze1_total_3.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_3.sector_product = 3)) AS P, (SELECT SUM(glaze1_total_2.waight) AS FQueen FROM glaze1_total AS glaze1_total_2 INNER JOIN item AS item_2 ON glaze1_total_2.item_id = item_2.id WHERE (glaze1_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 2)) AS F, (SELECT SUM(glaze1_total_1.waight) AS RFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name NOT LIKE '%درب%')) AS R, (SELECT SUM(glaze1_total_1.waight) AS DOORFlat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (item_1.item_name LIKE '%درب%')) AS Door, (SELECT SUM(glaze1_total_1.waight) AS Flat FROM glaze1_total AS glaze1_total_1 INNER JOIN item AS item_1 ON glaze1_total_1.item_id = item_1.id WHERE (glaze1_total_1.tarikh BETWEEN @tarikhS AND @tarikhE)) AS JameCol, (SELECT 'وزن کل' AS servis) AS Expr1, (SELECT 12 AS numb) AS radif)) i GROUP BY radif, servis ORDER BY radif">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikhE" PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikhS" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    </asp:Content>

