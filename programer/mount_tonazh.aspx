<%@ Page Title="گزراش تناژ ماهیانه" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mount_tonazh.aspx.cs" Inherits="_Default" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI.DataVisualization.Charting" Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>

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
         <asp:RadioButtonList ID="rdbglaze" runat="server" Font-Names="Tahoma" style="margin-left: 52%;"
        Font-Size="Medium"  TabIndex="-1" Width="152px">
        <asp:ListItem Value="1">لعاب یک</asp:ListItem>
        <asp:ListItem Value="2" Selected="True">لعاب دو</asp:ListItem>
    </asp:RadioButtonList>
    <br />
        <asp:Button ID="btnshow" runat="server" Text="نمایش" Font-Names="Tahoma" 
        Font-Size="Small" onclick="btnshow_Click" Width="70px" />
        </center>
    <br />
    
    <center style=" vertical-align:middle;" > 
                    
                <asp:Label ID="Label2" runat="server" Font-Names="B Titr" 
                    Text="آمار تناژ واحد لعاب"></asp:Label>
                    <asp:Label ID="lblfaz" runat="server" Font-Names="b titr" 
                    ForeColor="#000099"></asp:Label>
                    <br />
                    <br />
                <asp:Label ID="lbldate_e" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    Width="10%"></asp:Label>
                <asp:Label ID="Label9" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                    Text=":تا تاریخ" Width="8%"></asp:Label>
                <asp:Label ID="lbldate_s" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    Width="10%"></asp:Label>
                <asp:Label ID="Label7" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                    Text=":از تاریخ" Width="11%"></asp:Label>
        </center>
    <br />
    <center style=" vertical-align:middle; " > 
        <asp:Chart ID="chart_wagon" runat="server" BackSecondaryColor="White" 
            BorderlineColor="Transparent" Width="908px">
            <Series>
                <asp:Series IsValueShownAsLabel="True" IsVisibleInLegend="False" Name="Series1" 
                    IsXValueIndexed="True" MarkerSize="1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                    <AxisY>
                        <MajorGrid Enabled="False" />
                    </AxisY>
                    <AxisX Interval="1">
                        <MajorGrid Enabled="False" />
                    </AxisX>
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
    <br />
        <br />

        <br />
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" ForeColor="#000099" 
            Height="175px" Width="50%">
            <br />
            <asp:Label ID="lbldate1" runat="server" Font-Names="Tahoma" Font-Size="Medium" 
        Height="26px" Text="واگن" Width="76px" 
        style="margin-left: 0px" Font-Bold="True"></asp:Label>
            <asp:Label ID="lblcntwagon" runat="server" Font-Names="tahoma" Font-Size="Medium" 
            Font-Bold="True" ForeColor="Red" 
        style="margin-left: 0px" Width="83px" Height="27px"></asp:Label>
            <asp:Label ID="lbldate0" runat="server" Font-Names="Tahoma" Font-Size="Medium" 
        Height="26px" Text=":میانگین تعداد بارگیری واگن در روز " Width="262px" 
        style="margin-left: 0px" Font-Bold="True"></asp:Label>
          
            <hr size="3" style="color: #000000" />
            
            <asp:Label ID="lbldate3" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                Font-Size="Medium" Height="26px" style="margin-left: 0px" Text="کیلو گرم" 
                Width="76px"></asp:Label>
            <asp:Label ID="lbltonazh" runat="server" Font-Bold="True" Font-Names="tahoma" 
                Font-Size="Medium" ForeColor="Red" Height="27px" style="margin-left: 0px" 
                Width="83px"></asp:Label>
            <asp:Label ID="lbldate2" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                Font-Size="Medium" Height="26px" style="margin-left: 0px" 
                Text=":میانگین تناژ روزانه " Width="262px"></asp:Label>
            <br />
            <hr size="3" style="color: #000000" />
            <asp:Label ID="lbldate4" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                Font-Size="Medium" Height="26px" style="margin-left: 0px" Text="عدد" 
                Width="76px"></asp:Label>
            <asp:Label ID="lblcountday" runat="server" Font-Bold="True" Font-Names="tahoma" 
                Font-Size="Medium" ForeColor="Red" Height="27px" style="margin-left: 0px" 
                Width="83px"></asp:Label>
            <asp:Label ID="lbldate5" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                Font-Size="Medium" Height="26px" style="margin-left: 0px" 
                Text=":میانگین آمار روزانه " Width="262px"></asp:Label>
            <br />
            <br />
        </asp:Panel>
        <br />
        <br />
    <br />

<br />

        <br />

<br />
  
    </center>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="SELECT     TOP (100) PERCENT total_waight + waight_recover AS tonazh, tarikh, RIGHT(tarikh, 2) AS shortdate
FROM         dbo.glaze2_total_day
WHERE     (tarikh BETWEEN @tarikhs AND @tarikhe)
ORDER BY tarikh">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikhs" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikhe" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT     TOP (100) PERCENT total_waight + waight_recover AS tonazh, tarikh, RIGHT(tarikh, 2) AS shortdate
FROM         dbo.glaze1_total_day
WHERE     (tarikh BETWEEN @tarikhs AND @tarikhe)
ORDER BY tarikh">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikhs" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikhe" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>


    <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>


    <br />


    </asp:Content>

