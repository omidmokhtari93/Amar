<%@ Page Title="آمار به تفکیک سرویس" Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="grade_glaze.aspx.cs" Inherits="_Default" %>

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
         <asp:RadioButtonList ID="rdbglaze" runat="server" Font-Names="Tahoma" style="margin-left: 52%;"
        Font-Size="Medium"  TabIndex="7" Width="152px">
        <asp:ListItem Value="1" Selected="True">لعاب یک</asp:ListItem>
        <asp:ListItem Value="2">لعاب دو</asp:ListItem>
    </asp:RadioButtonList>
            
            <br />
            <asp:Button ID="btnshow" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                onclick="btnshow_Click" Text="نمایش" TabIndex="8" 
                style="margin-left: 0px" Width="100px" />
        <br />
            <br />
                <asp:Button ID="btnprint" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    onclick="btnprint_Click" Text="چاپ" Width="98px" TabIndex="9" />
            <br />
            <br />
            <br />
        <br />
        </center>
        <center>
            <asp:Panel ID="pnlrikhtegari" runat="server" Width="97%" 
                HorizontalAlign="Center" >
                <br />
                <center>
                    
                <asp:Label ID="Label2" runat="server" Font-Names="B Titr" 
                    Text="معایب به تفکیک اقلام فاز" Font-Size="X-Large"></asp:Label>
                    <asp:Label ID="lblfaz" runat="server" Font-Names="b titr" Font-Size="X-Large"></asp:Label>
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
                    <asp:Label ID="lblfaleh" runat="server" Font-Names="B titr" 
                        Text="معایب سرویس گرد _ هتلی _ رلیف و فله"></asp:Label>
                    <br />
                    <asp:GridView ID="grid_falehR" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="97%" BorderColor="Black" 
                        BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" Font-Bold="True" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="tahoma" Font-Size="Medium" Font-Bold="True" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" 
                                SortExpression="Bdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_falehR0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" 
                        Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="grid_falehF" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سرسوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_falehF0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                       <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="grid_falehP" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%" 
                        BorderStyle="Solid" BorderWidth="2px" BorderColor="Black">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                           <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_falehP0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <br />
                    <asp:Label ID="lblqueen" runat="server" Font-Names="B titr" 
                        Text="معایب سرویس کوئین"></asp:Label>
                <br />
               
                     <asp:GridView ID="grid_QueenR" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%" 
                        BorderStyle="Solid" BorderWidth="2px" BorderColor="Black">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                 SortExpression="retdarsad">
                             <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                 HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                 SortExpression="return_glaze">
                             <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                             <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                 HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                 SortExpression="Wdarsad">
                             <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                 HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                 SortExpression="wastage">
                             <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                             <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                 HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                             <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                 HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                             <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                             <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                 HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                             <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                 HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                             <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                             <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                 HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                         </Columns>
                         <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                             HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                             VerticalAlign="Middle" />
                         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F5F7FB" />
                         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                         <SortedDescendingCellStyle BackColor="#E9EBEF" />
                         <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_QueenR0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                       <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="grid_QueenF" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%"
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_QueenF0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                       <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="grid_QueenP" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%"
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_QueenP0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <br />
                    <asp:Label ID="lblflat" runat="server" Font-Names="B titr" 
                        Text="معایب سرویس فلت ساده و گلدار"></asp:Label>
                    <asp:GridView ID="grid_FlatR" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%"
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                           <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_FlatR0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                       <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="grid_FlatF" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%"
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                           <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_FlatF0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                      <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="grid_FlatP" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333"
                        BorderColor="Black" Width="97%" BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                           <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_FlatP0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                       <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <br />
                    <asp:Label ID="lblprances" runat="server" Font-Names="B titr" 
                        Text="(معایب سرویس پرنسس (پی و پی گلدار"></asp:Label>
                    <asp:GridView ID="grid_PR" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%"
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                           <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_PR0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                       <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="grid_PF" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%"
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_PF0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="grid_PP" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%"
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_PP0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                       <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <br />
                    <asp:Label ID="lblfd" runat="server" Font-Names="B titr" 
                        Text="(معایب سرویس فیوچر (اف دی"></asp:Label>
                    <asp:GridView ID="grid_FDR" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%"
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_FDR0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="grid_FDF" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%"
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_FDF0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="grid_FDP" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%"
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_FDP0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                       <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <br />
                    <asp:Label ID="lbllueez" runat="server" Font-Names="B titr" 
                        Text=" معایب سرویس لوئیز"></asp:Label>
                    <asp:GridView ID="grid_LUR" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%"
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                           <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_LUR0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="grid_LUF" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%"
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                           <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:GridView ID="grid_LUF0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                        <AlternatingRowStyle BackColor="White" />
                       <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="grid_LUP" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%"
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" ForeColor="Black" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
               
                     <asp:GridView ID="grid_LUP0" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                         <AlternatingRowStyle BackColor="White" />
                       <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="%1/5" 
                                SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" ReadOnly="True" 
                                SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                                SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                                SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                                SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                                SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                                SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                                SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                                SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                                SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                                SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                                SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                                SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" ReadOnly="True" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                                SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                         <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                             HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                             VerticalAlign="Middle" />
                         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F5F7FB" />
                         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                         <SortedDescendingCellStyle BackColor="#E9EBEF" />
                         <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
               
                     <br />
                <asp:GridView ID="grid_total" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" 
                        ShowHeaderWhenEmpty="True" Width="97%" BorderStyle="Solid" BorderWidth="2px" BorderColor="Black">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                            SortExpression="retdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="ret_glaze" HeaderText="برگشتی" 
                            SortExpression="ret_glaze" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="wastdarsad" HeaderText="ضایعات%" 
                            SortExpression="wastdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="wast" HeaderText="ضایعات" SortExpression="wast" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="GCdarsad" HeaderText="%C" 
                            SortExpression="GCdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="GC" HeaderText="C" SortExpression="GC" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="BGdarsad" HeaderText="%1/5" 
                            SortExpression="BGdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="GB" HeaderText="1/5" SortExpression="GB" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="jamecol" HeaderText="جمع" ReadOnly="True" 
                            SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                            SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                            SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                            SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                            SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                            SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                            SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                            SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                            SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                            SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                            SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                            SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                            SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                            SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                            SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                            SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                            SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                            SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                            SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                            SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" 
                            SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                            SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                            SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                            SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" SortExpression="A">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                            SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField HeaderText="جمع بندی آمار">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Wrap="False" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                    </Columns>
                   <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <br />
                <asp:GridView ID="griddarsad" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" 
                        ShowHeaderWhenEmpty="True" Width="97%" BorderStyle="Solid" 
                        BorderWidth="2px" BorderColor="Black">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                            SortExpression="retdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="ret_glaze" HeaderText="برگشتی" 
                            SortExpression="ret_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="wastdarsad" HeaderText="ضایعات%" 
                            SortExpression="wastdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="wast" HeaderText="ضایعات" SortExpression="wast">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="GCdarsad" HeaderText="%C" SortExpression="GCdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="GC" HeaderText="C" SortExpression="GC">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="BGdarsad" HeaderText="%1/5" 
                            SortExpression="BGdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="GB" HeaderText="1/5" SortExpression="GB">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="jamecol" HeaderText="جمع" ReadOnly="True" 
                            SortExpression="jamecol">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" 
                            SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" 
                            SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" 
                            SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" 
                            SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            <ItemStyle Font-Names="B titr" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" 
                            SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" 
                            SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" 
                            SortExpression="payehdarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" 
                            SortExpression="payeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" 
                            SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" 
                            SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" 
                            SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" 
                            SortExpression="tarak">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" 
                            SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" 
                            SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" 
                            SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" 
                            SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" 
                            SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" 
                            SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" 
                            SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="khlabeh" HeaderText="خ لبه" ReadOnly="True" 
                            SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" 
                            SortExpression="ahandarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" 
                            SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" 
                            SortExpression="Adarsad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" SortExpression="A">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" 
                            SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="tex" HeaderText="   درصدآمار" SortExpression="tex">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                    </Columns>
                   <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
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
           

    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN gradea &gt; 0 THEN ('%' + CAST(FLOOR(gradea * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(dbo.grade_faz1.gradea * 1.0 / dbo.grade_faz1.tedad * 100 - FLOOR(dbo.grade_faz1.gradea * 1.0 / dbo.grade_faz1.tedad * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(dbo.grade_faz1.ahan * 1.0 / dbo.grade_faz1.tedad * 100 - FLOOR(dbo.grade_faz1.ahan * 1.0 / dbo.grade_faz1.tedad * 100), 4), 2)) ELSE '0' END AS Ahandarsad, 
                      CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(dbo.grade_faz1.payeh * 1.0 / dbo.grade_faz1.tedad * 100 - FLOOR(dbo.grade_faz1.payeh * 1.0 / dbo.grade_faz1.tedad * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wastage &gt; 0 THEN ('%' + CAST(FLOOR(wastage * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(dbo.grade_faz1.wastage * 1.0 / dbo.grade_faz1.tedad * 100 - FLOOR(dbo.grade_faz1.wastage * 1.0 / dbo.grade_faz1.tedad * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN return_glaze &gt; 0 THEN ('%' + CAST(FLOOR(return_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(dbo.grade_faz1.return_glaze * 1.0 / dbo.grade_faz1.tedad * 100 - FLOOR(dbo.grade_faz1.return_glaze * 1.0 / dbo.grade_faz1.tedad * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN gradeC &gt; 0 THEN ('%' + CAST(FLOOR(gradeC * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(dbo.grade_faz1.gradeC * 1.0 / dbo.grade_faz1.tedad * 100 - FLOOR(dbo.grade_faz1.gradeC * 1.0 / dbo.grade_faz1.tedad * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN gradeB &gt; 0 THEN ('%' + CAST(FLOOR(gradeB * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(dbo.grade_faz1.gradeB * 1.0 / dbo.grade_faz1.tedad * 100 - FLOOR(dbo.grade_faz1.gradeB * 1.0 / dbo.grade_faz1.tedad * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      dbo.grade_faz1.return_glaze, dbo.grade_faz1.wastage, dbo.grade_faz1.gradeC, dbo.grade_faz1.gradeB, dbo.grade_faz1.khash, dbo.grade_faz1.rageh, dbo.grade_faz1.hobab, 
                      dbo.grade_faz1.rizesh, dbo.grade_faz1.labpar, dbo.grade_faz1.tarpayeh,dbo.grade_faz1.tardasteh, dbo.grade_faz1.khbadaneh, dbo.grade_faz1.payeh, dbo.grade_faz1.oftadegi, dbo.grade_faz1.sarsozani, 
                      dbo.grade_faz1.dorangi, dbo.grade_faz1.tarak, dbo.grade_faz1.deformation, dbo.grade_faz1.kafsefid, dbo.grade_faz1.khglaze, dbo.grade_faz1.pin, dbo.grade_faz1.noglaze, dbo.grade_faz1.kharegi, 
                      dbo.grade_faz1.khlabeh, dbo.grade_faz1.ahan, dbo.grade_faz1.gradea, dbo.grade_faz1.tedad, dbo.item.item_name, dbo.grade_faz1.tedad - dbo.grade_faz1.gradea AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e)
ORDER BY dbo.item.kind, dbo.item.sector_product, dbo.item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN gradea &gt; 0 THEN ('%' + CAST(FLOOR(gradea * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(dbo.grade_faz2.gradea * 1.0 / dbo.grade_faz2.tedad * 100 - FLOOR(dbo.grade_faz2.gradea * 1.0 / dbo.grade_faz2.tedad * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(dbo.grade_faz2.ahan * 1.0 / dbo.grade_faz2.tedad * 100 - FLOOR(dbo.grade_faz2.ahan * 1.0 / dbo.grade_faz2.tedad * 100), 4), 2)) ELSE '0' END AS Ahandarsad, 
                      CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(dbo.grade_faz2.payeh * 1.0 / dbo.grade_faz2.tedad * 100 - FLOOR(dbo.grade_faz2.payeh * 1.0 / dbo.grade_faz2.tedad * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wastage &gt; 0 THEN ('%' + CAST(FLOOR(wastage * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(dbo.grade_faz2.wastage * 1.0 / dbo.grade_faz2.tedad * 100 - FLOOR(dbo.grade_faz2.wastage * 1.0 / dbo.grade_faz2.tedad * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN return_glaze &gt; 0 THEN ('%' + CAST(FLOOR(return_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(dbo.grade_faz2.return_glaze * 1.0 / dbo.grade_faz2.tedad * 100 - FLOOR(dbo.grade_faz2.return_glaze * 1.0 / dbo.grade_faz2.tedad * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN gradeC &gt; 0 THEN ('%' + CAST(FLOOR(gradeC * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(dbo.grade_faz2.gradeC * 1.0 / dbo.grade_faz2.tedad * 100 - FLOOR(dbo.grade_faz2.gradeC * 1.0 / dbo.grade_faz2.tedad * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN gradeB &gt; 0 THEN ('%' + CAST(FLOOR(gradeB * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(dbo.grade_faz2.gradeB * 1.0 / dbo.grade_faz2.tedad * 100 - FLOOR(dbo.grade_faz2.gradeB * 1.0 / dbo.grade_faz2.tedad * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      dbo.grade_faz2.return_glaze, dbo.grade_faz2.wastage, dbo.grade_faz2.gradeC, dbo.grade_faz2.gradeB, dbo.grade_faz2.khash, dbo.grade_faz2.rageh, dbo.grade_faz2.hobab, 
                      dbo.grade_faz2.rizesh, dbo.grade_faz2.labpar, dbo.grade_faz2.tarpayeh, dbo.grade_faz1.tardasteh, dbo.grade_faz2.khbadaneh, dbo.grade_faz2.payeh, dbo.grade_faz2.oftadegi, dbo.grade_faz2.sarsozani, 
                      dbo.grade_faz2.dorangi, dbo.grade_faz2.tarak, dbo.grade_faz2.deformation, dbo.grade_faz2.kafsefid, dbo.grade_faz2.khglaze, dbo.grade_faz2.pin, dbo.grade_faz2.noglaze, dbo.grade_faz2.kharegi, 
                      dbo.grade_faz2.khlabeh, dbo.grade_faz2.ahan, dbo.grade_faz2.gradea, dbo.grade_faz2.tedad, dbo.item.item_name, dbo.grade_faz2.tedad - dbo.grade_faz2.gradea AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e)
ORDER BY dbo.item.kind, dbo.item.sector_product, dbo.item.item_name
">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        SelectCommand="SELECT     tedad, A, CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      ahan, CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS ahandarsad, khlabeh, kharegi, noglaze, pin, khglaze, kafsefid, deformation, tarak, dorangi, sarsozani, oftadegi, payeh, 
                      CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, khbadaneh, tarpayeh, tardasteh , labpar, rizesh, hobab, rageh, khash, jamecol, GB, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS BGdarsad, GC, CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS GCdarsad, wast, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS wastdarsad, ret_glaze, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS retdarsad
FROM         (SELECT     SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) 
                                              + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) + SUM(tardasteh) + SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) 
                                              + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, 
                                              SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, 
                                              SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh, SUM(tardasteh) as tardasteh , SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, 
                                              SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze
                        FROM         dbo.grade_faz1
                        WHERE     (faz = 1) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource22" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="SELECT     tedad, A, CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      ahan, CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS ahandarsad, khlabeh, kharegi, noglaze, pin, khglaze, kafsefid, deformation, tarak, dorangi, sarsozani, oftadegi, payeh, 
                      CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, khbadaneh, tarpayeh,tardasteh, labpar, rizesh, hobab, rageh, khash, jamecol, GB, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS BGdarsad, GC, CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS GCdarsad, wast, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS wastdarsad, ret_glaze, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS retdarsad
FROM         (SELECT     SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) 
                                              + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) + SUM(tardasteh) + SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) 
                                              + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, 
                                              SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, 
                                              SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh, SUM(tardasteh) as tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, 
                                              SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze
                        FROM         dbo.grade_faz2
                        WHERE     (faz = 2) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total
">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource111" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        SelectCommand="SELECT     'درصد ریز آمار' AS tex, tedad, A, CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS Adarsad, ahan, CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS khlabeh, 
                      CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS kharegi, CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS noglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS pin, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS khglaze, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS tarak,
                       CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS dorangi, CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS sarsozani, 
                      CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS oftadegi, payeh, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100), 4), 
                      2)) ELSE '0' END AS khbadaneh, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS tarpayeh,CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS tardasteh, CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS labpar, 
                      CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS rizesh, CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 
                      4), 2)) ELSE '0' END AS hobab, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS rageh, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS khash, jamecol, GB, 
                      CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS BGdarsad, 
                      GC, CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS GCdarsad, wast, CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS wastdarsad, ret_glaze, 
                      CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad
FROM         (SELECT     SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) 
                                              + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) + SUM(tardasteh)+ SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) 
                                              + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, 
                                              SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, 
                                              SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh,SUM(tardasteh) as tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, 
                                              SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze
                        FROM         dbo.grade_faz1
                        WHERE     (faz = 1) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource222" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        SelectCommand="SELECT     'درصد ریز آمار' AS tex, tedad, A, CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS Adarsad, ahan, CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS khlabeh, 
                      CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS kharegi, CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS noglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS pin, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS khglaze, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS tarak,
                       CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS dorangi, CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS sarsozani, 
                      CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS oftadegi, payeh, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100), 4), 
                      2)) ELSE '0' END AS khbadaneh, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS tarpayeh,CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS tardasteh, CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS labpar, 
                      CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS rizesh, CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 
                      4), 2)) ELSE '0' END AS hobab, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS rageh, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS khash, jamecol, GB, 
                      CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS BGdarsad, 
                      GC, CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS GCdarsad, wast, CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 4), 2)) ELSE '0' END AS wastdarsad, ret_glaze, 
                      CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad
FROM         (SELECT     SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) 
                                              + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) + SUM(tardasteh) + SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) 
                                              + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, 
                                              SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, 
                                              SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh,SUM(tardasteh) as tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, 
                                              SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze
                        FROM         dbo.grade_faz2
                        WHERE     (faz = 2) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1falehR" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        
        SelectCommand="SELECT TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10))
         + '/' + RIGHT (LEFT (SUM(gradea) * 1.0 / SUM(tedad) * 100 - FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) , 4) , 2)) ELSE '0' END AS Adarsad,
          CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10))
           + '/' + RIGHT (LEFT (SUM(ahan) * 1.0 / SUM(tedad) * 100 - FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) , 4) , 2)) ELSE '0' END AS ahandarsad,
            CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10))
             + '/' + RIGHT (LEFT (SUM(payeh) * 1.0 / SUM(tedad) * 100 - FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) , 4) , 2)) ELSE '0' END AS payehdarsad,
              CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10))
               + '/' + RIGHT (LEFT (SUM(wastage) * 1.0 / SUM(tedad) * 100 - FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) , 4) , 2)) ELSE '0' END AS Wdarsad, 
               CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10))
                + '/' + RIGHT (LEFT (SUM(return_glaze) * 1.0 / SUM(tedad) * 100 - FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) , 4) , 2)) ELSE '0' END AS retdarsad,
                 CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10))
                  + '/' + RIGHT (LEFT (SUM(gradeC) * 1.0 / SUM(tedad) * 100 - FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) , 4) , 2)) ELSE '0' END AS Cdarsad,
                   CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10))
                    + '/' + RIGHT (LEFT (SUM(gradeB) * 1.0 / SUM(tedad) * 100 - FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) , 4) , 2)) ELSE '0' END AS Bdarsad,
                     SUM(grade_faz1.return_glaze) AS return_glaze, SUM(grade_faz1.wastage) AS wastage, SUM(grade_faz1.gradeC) AS gradeC, SUM(grade_faz1.gradeB) AS gradeB,
                      SUM(grade_faz1.khash) AS khash, SUM(grade_faz1.rageh) AS rageh, SUM(grade_faz1.hobab) AS hobab, SUM(grade_faz1.rizesh) AS rizesh,
                       SUM(grade_faz1.labpar) AS labpar, SUM(grade_faz1.tarpayeh) AS tarpayeh,SUM(grade_faz1.tardasteh) AS tardasteh, SUM(grade_faz1.khbadaneh) AS khbadaneh, SUM(grade_faz1.payeh) AS payeh, 
                       SUM(grade_faz1.oftadegi) AS oftadegi, SUM(grade_faz1.sarsozani) AS sarsozani, SUM(grade_faz1.dorangi) AS dorangi, SUM(grade_faz1.tarak) AS tarak,
                        SUM(grade_faz1.deformation) AS deformation, SUM(grade_faz1.kafsefid) AS kafsefid, SUM(grade_faz1.khglaze) AS khglaze, SUM(grade_faz1.pin) AS pin,
                         SUM(grade_faz1.noglaze) AS noglaze, SUM(grade_faz1.kharegi) AS kharegi, SUM(grade_faz1.khlabeh) AS khlabeh, SUM(grade_faz1.ahan) AS ahan, 
                         SUM(grade_faz1.gradea) AS gradea, SUM(grade_faz1.tedad) AS tedad, item.item_name, SUM(grade_faz1.tedad) - SUM(grade_faz1.gradea) AS jame 
                         FROM item INNER JOIN grade_faz1 ON item.id = grade_faz1.item_id 
                         WHERE (grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (item.kind = 8 OR item.kind = 9 OR item.kind = 10 OR item.kind = 11 OR item.kind = 200) AND (item.sector_product = 1) 
                         GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2falehR" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
       SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8 OR
                      dbo.item.kind = 9 OR
                      dbo.item.kind = 10 OR
                      dbo.item.kind = 11 OR
                      dbo.item.kind = 200) AND (dbo.item.sector_product = 1)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="faz1falehF" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
       SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8 OR
                      dbo.item.kind = 9 OR
                      dbo.item.kind = 10 OR
                      dbo.item.kind = 11 OR
                      dbo.item.kind = 200) AND (dbo.item.sector_product = 2)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2falehF" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
      SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8 OR
                      dbo.item.kind = 9 OR
                      dbo.item.kind = 10 OR
                      dbo.item.kind = 11 OR
                      dbo.item.kind = 200) AND (dbo.item.sector_product = 2)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1falehP" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
      SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8 OR
                      dbo.item.kind = 9 OR
                      dbo.item.kind = 10 OR
                      dbo.item.kind = 11 OR
                      dbo.item.kind = 200) AND (dbo.item.sector_product = 3)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2falehP" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
    SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8 OR
                      dbo.item.kind = 9 OR
                      dbo.item.kind = 10 OR
                      dbo.item.kind = 11 OR
                      dbo.item.kind = 200) AND (dbo.item.sector_product = 3)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1QueenR" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
    SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1 ) AND (dbo.item.sector_product = 1)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2QueenR" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
    SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1 ) AND (dbo.item.sector_product = 1)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1QueenF" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
     SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1 ) AND (dbo.item.sector_product = 2)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2QueenF" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
  SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1 ) AND (dbo.item.sector_product = 2)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1QueenP" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
   SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1 ) AND (dbo.item.sector_product = 3)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2QueenP" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
     SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1 ) AND (dbo.item.sector_product = 3)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1FlatR" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
  SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 2 ) OR(dbo.item.kind = 3 ) ) AND (dbo.item.sector_product = 1)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2FlatR" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
    SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 2 ) OR (dbo.item.kind = 3 )) AND (dbo.item.sector_product = 1)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1FlatF" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
   SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 2 ) OR(dbo.item.kind = 3 ) ) AND (dbo.item.sector_product = 2)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2FlatF" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
  SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 2 ) OR (dbo.item.kind = 3 )) AND (dbo.item.sector_product = 2)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1FlatP" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
     SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 2 ) OR(dbo.item.kind = 3 ) ) AND (dbo.item.sector_product = 3)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2FlatP" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
     SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 2 ) OR (dbo.item.kind = 3 )) AND (dbo.item.sector_product = 3)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1PR" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
    SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 4 ) OR(dbo.item.kind = 5 ) ) AND (dbo.item.sector_product = 1)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2PR" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
      SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 4 ) OR (dbo.item.kind = 5 )) AND (dbo.item.sector_product = 1)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1PF" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
    SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 4 ) OR(dbo.item.kind = 5 ) ) AND (dbo.item.sector_product = 2)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2PF" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
      SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 4 ) OR (dbo.item.kind = 5 )) AND (dbo.item.sector_product = 2)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1PP" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
   SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 4 ) OR(dbo.item.kind = 5 ) ) AND (dbo.item.sector_product = 3)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2PP" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
  SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 4 ) OR (dbo.item.kind = 5 )) AND (dbo.item.sector_product = 3)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1FDR" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
      SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6 ) AND (dbo.item.sector_product = 1)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2FDR" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
   SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6 ) AND (dbo.item.sector_product = 1)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1FDF" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
     SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6 ) AND (dbo.item.sector_product = 2)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2FDF" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
      SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6 ) AND (dbo.item.sector_product = 2)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1FDP" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
   SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6 ) AND (dbo.item.sector_product = 3)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2FDP" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
   SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6 ) AND (dbo.item.sector_product = 3)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1LUR" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
     SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7 ) AND (dbo.item.sector_product = 1)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2LUR" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
      SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7 ) AND (dbo.item.sector_product = 1)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1LUF" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
       SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7 ) AND (dbo.item.sector_product = 2)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2LUF" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
    SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7 ) AND (dbo.item.sector_product = 2)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1LUP" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
     SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7 ) AND (dbo.item.sector_product = 3)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2LUP" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
     SelectCommand="SELECT     TOP (100) PERCENT CASE WHEN sum(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradea) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradea) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, 
                      CASE WHEN sum(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(ahan) * 1.0 / sum(tedad) * 100 - FLOOR(sum(ahan) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, 
                      CASE WHEN sum(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(payeh) * 1.0 / sum(tedad) * 100 - FLOOR(sum(payeh) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN sum(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(wastage) * 1.0 / sum(tedad) * 100 - FLOOR(sum(wastage) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, 
                      CASE WHEN sum(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(return_glaze) * 1.0 / sum(tedad) * 100 - FLOOR(sum(return_glaze) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN sum(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeC) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeC) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN sum(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(sum(gradeB) * 1.0 / sum(tedad) * 100 - FLOOR(sum(gradeB) * 1.0 / sum(tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, 
                      sum(return_glaze) as return_glaze, sum(wastage) as wastage, sum(gradeC) as gradeC, sum(gradeB) as gradeB, sum(khash) as khash, sum(rageh) as rageh, sum(hobab) as hobab, 
                      sum(rizesh) as rizesh, sum(labpar) as labpar, sum(tarpayeh) as tarpayeh,SUM(tardasteh) AS tardasteh, sum(khbadaneh) as khbadaneh, sum(payeh) as payeh,sum(oftadegi) as oftadegi, sum(sarsozani) as sarsozani, 
                      sum(dorangi) as dorangi, sum(tarak) as tarak,sum(deformation) as deformation, sum(kafsefid) as kafsefid, sum(khglaze) as khglaze, sum(pin) as pin, sum(noglaze) as noglaze, sum(kharegi) as kharegi, 
                      sum(khlabeh) as khlabeh, sum(ahan) as ahan, sum(gradea) as gradea, sum(tedad) as tedad, dbo.item.item_name, sum(tedad) - sum(gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7 ) AND (dbo.item.sector_product = 3)
 GROUP BY item.item_name ORDER BY  item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1falehR0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8 OR
                      dbo.item.kind = 9 OR
                      dbo.item.kind = 10 OR
                      dbo.item.kind = 11 OR
                      dbo.item.kind = 200) AND (dbo.item.sector_product = 1)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2falehR0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8 OR
                      dbo.item.kind = 9 OR
                      dbo.item.kind = 10 OR
                      dbo.item.kind = 11 OR
                      dbo.item.kind = 200) AND (dbo.item.sector_product = 1)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="faz1falehF0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8 OR
                      dbo.item.kind = 9 OR
                      dbo.item.kind = 10 OR
                      dbo.item.kind = 11 OR
                      dbo.item.kind = 200) AND (dbo.item.sector_product = 2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2falehF0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
   SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8 OR
                      dbo.item.kind = 9 OR
                      dbo.item.kind = 10 OR
                      dbo.item.kind = 11 OR
                      dbo.item.kind = 200) AND (dbo.item.sector_product = 2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1falehP0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
       SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8 OR
                      dbo.item.kind = 9 OR
                      dbo.item.kind = 10 OR
                      dbo.item.kind = 11 OR
                      dbo.item.kind = 200) AND (dbo.item.sector_product = 3)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2falehP0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8 OR
                      dbo.item.kind = 9 OR
                      dbo.item.kind = 10 OR
                      dbo.item.kind = 11 OR
                      dbo.item.kind = 200) AND (dbo.item.sector_product = 3)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1QueenR0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1 ) AND (dbo.item.sector_product = 1)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2QueenR0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
         SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1 ) AND (dbo.item.sector_product = 1)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1QueenF0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1 ) AND (dbo.item.sector_product = 2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2QueenF0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
         SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1 ) AND (dbo.item.sector_product = 2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1QueenP0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1 ) AND (dbo.item.sector_product = 3)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2QueenP0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
         SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1 ) AND (dbo.item.sector_product = 3)
">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1FlatR0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 2 ) OR(dbo.item.kind = 3) ) AND (dbo.item.sector_product = 1)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2FlatR0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 2 ) OR (dbo.item.kind = 3 )) AND (dbo.item.sector_product = 1)
">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1FlatF0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 2 ) OR(dbo.item.kind = 3 ) ) AND (dbo.item.sector_product = 2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2FlatF0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 2 ) OR (dbo.item.kind = 3 )) AND (dbo.item.sector_product = 2)
">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1FlatP0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 2 ) OR(dbo.item.kind = 3 ) ) AND (dbo.item.sector_product = 3)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2FlatP0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
         SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 2 ) OR (dbo.item.kind = 3 )) AND (dbo.item.sector_product = 3)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1PR0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 4 ) OR(dbo.item.kind = 5 ) ) AND (dbo.item.sector_product = 1)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2PR0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
         SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 4 ) OR (dbo.item.kind = 5 )) AND (dbo.item.sector_product = 1)
">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1PF0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 4 ) OR(dbo.item.kind = 5 ) ) AND (dbo.item.sector_product = 2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2PF0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
         SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 4 ) OR (dbo.item.kind = 5 )) AND (dbo.item.sector_product = 2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1PP0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind =4 ) OR(dbo.item.kind = 5 ) ) AND (dbo.item.sector_product = 3)
">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2PP0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
         SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND ((dbo.item.kind = 4 ) OR (dbo.item.kind = 5 )) AND (dbo.item.sector_product = 3)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1FDR0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6 ) AND (dbo.item.sector_product = 1)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2FDR0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
         SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6 ) AND (dbo.item.sector_product = 1)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1FDF0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
      SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2FDF0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
         SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6 ) AND (dbo.item.sector_product = 2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1FDP0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6 ) AND (dbo.item.sector_product = 3)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2FDP0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
         SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6 ) AND (dbo.item.sector_product = 3)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1LUR0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7 ) AND (dbo.item.sector_product = 1)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2LUR0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
         SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7 ) AND (dbo.item.sector_product = 1)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1LUF0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7 ) AND (dbo.item.sector_product = 2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2LUF0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
         SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7 ) AND (dbo.item.sector_product = 2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1LUP0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) AS wastage, 
                      SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.rageh) AS rageh, SUM(dbo.grade_faz1.hobab) 
                      AS hobab, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, SUM(dbo.grade_faz1.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, SUM(dbo.grade_faz1.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.kharegi) AS kharegi, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.ahan) 
                      AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7 ) AND (dbo.item.sector_product = 3)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2LUP0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
         SelectCommand="SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) AS wastage, 
                      SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.rageh) AS rageh, SUM(dbo.grade_faz2.hobab) 
                      AS hobab, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, 
                      SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, SUM(dbo.grade_faz2.dorangi) AS dorangi, 
                      SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, SUM(dbo.grade_faz2.khglaze) AS khglaze, 
                      SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.kharegi) AS kharegi, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.ahan) 
                      AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7 ) AND (dbo.item.sector_product = 3)
">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    </asp:Content>

