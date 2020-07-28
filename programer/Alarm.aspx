<%@ Page Title="آیتم های قابل هشدار" Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Alarm.aspx.cs" Inherits="_Default" %>

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
                Direction="LeftToRight" HorizontalAlign="Center" Width="31%" Height="202px">
                <center>
                <asp:RadioButtonList ID="rdbglaze" runat="server" Font-Names="b titr" style="margin-left: 0%;"
        Font-Size="Medium"  TabIndex="7" Width="115px" AutoPostBack="True" 
                        onselectedindexchanged="rdbglaze_SelectedIndexChanged">
                    <asp:ListItem Value="1" Selected="True">فاز یک</asp:ListItem>
                    <asp:ListItem Value="2">فاز دو</asp:ListItem>
                </asp:RadioButtonList>
                
                </center><br />
                <asp:DropDownList ID="ddlsector" runat="server" AutoPostBack="True" 
                    Font-Names="b titr" Height="25px" 
                    onselectedindexchanged="ddlsector_SelectedIndexChanged" Width="46%">
                    <asp:ListItem Value="1">پرس</asp:ListItem>
                    <asp:ListItem Value="2">فرمینگ</asp:ListItem>
                    <asp:ListItem Value="3">ریخته گری</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:DropDownList ID="ddlfault" runat="server" DataSourceID="fault" 
                    DataTextField="faults" DataValueField="id" Font-Names="b titr" 
                    Font-Size="Small" Height="25px" style="margin-left: 0px" Width="46%">
                </asp:DropDownList>
                <br />
            </asp:Panel>
            </center>
            <br />
            <center>
            <asp:Button ID="btnshow" runat="server" Font-Names="Tahoma" Font-Size="Medium" 
                onclick="btnshow_Click" Text="نمایش موردی معایب" TabIndex="8" 
                style="margin-left: 0px" Width="164px" />
        <br />
                <br />
            <asp:Button ID="btnshowall" runat="server" Font-Names="Tahoma" Font-Size="Medium" 
                onclick="btnshowall_Click" Text="نمایش همه معایب" TabIndex="8" 
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
                    <asp:GridView ID="grid_Ahan" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%" BorderColor="Black" 
                        BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%لکه آهن" 
                                SortExpression="darsadAhan" ReadOnly="True" >
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لکه آهن" 
                                SortExpression="ahan" ReadOnly="True">
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" ReadOnly="True" >
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="A" HeaderText="A" 
                                SortExpression="A" ReadOnly="True">
                    
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad" 
                                ReadOnly="True" >
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name">
                          
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
                    
                    <asp:GridView ID="grid_khlabeh" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%خرابی لبه" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    
                    <asp:GridView ID="grid_kharegi" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%دانه خارجی" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    
                    <asp:GridView ID="grid_noglaze" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%لعاب نگرفتگی" 
                                ReadOnly="True" SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_pin" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%پین بدنه" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="پین بدنه" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_khglaze" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%خرابی لعاب" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="خرابی لعاب" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_kafsefid" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%کف سفید" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_deformation" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%دفورمگی" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_tarak" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%ترک بدنه" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="ترک بدنه" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_dorangi" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%دورنگی" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="دورنگی" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_sarsozani" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%سرسوزنی" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="سرسوزنی" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_oftadegi" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%افتادگی کف" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="افتادگی کف" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_payeh" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%پایه پریدگی" 
                                ReadOnly="True" SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_khbadaneh" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%خرابی بدنه" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_tarpayeh" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%ترک پایه" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_labpar" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%لب پریدگی" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_rizesh" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%ریزش" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_hobab" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%حباب" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_rageh" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%رگه" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_khash" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="95%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="darsadAhan" HeaderText="%خش" ReadOnly="True" 
                                SortExpression="darsadAhan" />
                            <asp:BoundField DataField="ahan" HeaderText="خش" ReadOnly="True" 
                                SortExpression="ahan" />
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad" />
                            <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" 
                                SortExpression="A" />
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad" />
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                SortExpression="item_name" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" 
                            Font-Names="b titr" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" Font-Size="Medium" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
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
           

    <asp:SqlDataSource ID="fault" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT ('%'+cast(min_alarm as varchar(10)) +'__'+name_dis) as faults, id FROM dis_press WHERE (min_alarm &gt; 0) AND (permit = 1) order by id">
    </asp:SqlDataSource>
           

    <br />
  
    <asp:SqlDataSource ID="disadvantage" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT      '%'+CAST(FLOOR(darsadAhan) AS varchar(10)) + '/' + RIGHT(LEFT(darsadAhan - FLOOR(darsadAhan), 4), 2) AS darsadahan,  ahan, Adarsad, A, tedad, item_name
FROM         (SELECT     TOP (100) PERCENT CASE WHEN SUM(ahan) &gt; 0 THEN ((SUM(ahan) * 1.0 / SUM(tedad) * 100)) ELSE '0' END AS darsadAhan, SUM(ahan) AS ahan, 
                                              CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(gradea) 
                                              * 1.0 / SUM(tedad) * 100 - FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, SUM(gradea) AS A, 
                                              SUM(tedad) AS tedad, dbo.item.item_name
                        FROM         dbo.item INNER JOIN
                                              dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
                        WHERE     (tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.sector_product = 3)
                        GROUP BY dbo.item.id, dbo.item.item_name) AS derivedtbl_1
WHERE     (darsadAhan &gt;
                          (SELECT     min_alarm
                             FROM         dbo.dis_press
                             WHERE     (id = 1) AND (permit = 1)))">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
  
    <br />
  
    <br />
   
    <br />
    <br />
    </asp:Content>

