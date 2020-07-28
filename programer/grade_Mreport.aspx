<%@ Page Title="آمار درجه بندی" Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="grade_Mreport.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 62px;
        }
      .ChkBoxClass input {width:25px; height:25px;}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
        <br />
        <br />
    <br />
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
            
            <asp:CheckBox ID="chktest" runat="server" Font-Names="tahoma" 
                Font-Size="Large"  CssClass="ChkBoxClass"
                Text="گزارش آیتم های آزمایشی" />
            <br />
            
            <br />
            <asp:Button ID="btnshow" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                onclick="btnshow_Click" Text="نمایش" TabIndex="8" 
                style="margin-left: 0px" Width="100px" />
        <br />
            <br />
     <asp:Button ID="btnexcellpress" runat="server" Font-Names="Tahoma" Font-Size="Small" 
            Text="خروجی اکسل" onclick="btnexcellpress_Click" />
                <asp:Button ID="btnprint_press" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    onclick="btnprint_Click" Text="چاپ معایب پرس" Width="142px" 
                TabIndex="9" style="margin-left: 48px"/>
            <br />

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
            <br />
            <asp:Label ID="lblerror_show" runat="server" Font-Names="Tahoma" 
                Font-Size="Medium" ForeColor="Red" 
                Text="آمار امروز به طور کامل تکمیل نشده است.لطفا منتظر بمانید" Visible="False"></asp:Label>
            <br />
        <br />
        </center>
        <center>
            <asp:Panel ID="pnlpress" runat="server" Width="97%" 
                HorizontalAlign="Center" >
                
             
                    
                <asp:Label ID="Label2" runat="server" Font-Names="B Titr" 
                    Text="معایب به تفکیک اقلام فاز" Font-Size="X-Large"></asp:Label>
                    <asp:Label ID="lblfaz" runat="server" Font-Names="b titr" Font-Size="X-Large"></asp:Label>
                <br />
                <div style="direction:rtl;">
                     <asp:Label ID="Label1" runat="server" Font-Names="b titr" Font-Size="Medium" Text="از تاریخ:" Width="8%"></asp:Label>
                    
                <asp:Label ID="lbldate_s" runat="server" Font-Names="b titr" Font-Size="Medium" 
                    Width="10%"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="Label3" runat="server" Font-Names="b titr" Font-Size="Medium" Text="تا تاریخ :" Width="8%"></asp:Label>
                <asp:Label ID="lbldate_e" runat="server" Font-Names="b titr" Font-Size="Medium" 
                    Width="10%"></asp:Label>
               
                    </div>
                    <br />
                    <br />
                    <asp:Label ID="lblfaleh" runat="server" Font-Names="B titr" 
                        Text="معایب پرس"></asp:Label>
                    <br />
                    <asp:GridView ID="grid_press" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="97%" BorderColor="Black" 
                        BorderStyle="Solid" BorderWidth="2px" onprerender="grid_press_PreRender">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                    
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" Font-Bold="True" />
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="tahoma" Font-Size="Medium" Font-Bold="True" />
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" 
                                SortExpression="Bdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                      
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
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
                <asp:GridView ID="grid_press_help" runat="server" AutoGenerateColumns="False" 
                    BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                    EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                    Font-Size="Small" ForeColor="#333333" Width="97%" 
                    onprerender="grid_press_help_PreRender" Visible="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                            SortExpression="retdarsad">
                        <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                            SortExpression="return_glaze">
                        <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                            SortExpression="Wdarsad">
                        <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                            SortExpression="wastage">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                        <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                        </asp:BoundField>
                        <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                        <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                        <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                        <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                        </asp:BoundField>
                        <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                            SortExpression="labpar">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                            SortExpression="oftadegi">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                            SortExpression="tardasteh">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                            SortExpression="tarpayeh">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                            SortExpression="khbadaneh">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                            SortExpression="payehdarsad">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                            SortExpression="پایه پریدگی">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                            SortExpression="sarsozani">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                            SortExpression="dorangi">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                            SortExpression="deformation">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                            SortExpression="kafsefid">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                            SortExpression="khglaze">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                            SortExpression="noglaze">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                            SortExpression="kharegi">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                            SortExpression="khlabeh">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                            SortExpression="Ahandarsad">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Adarsad" HeaderText="%A" SortExpression="Adarsad">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                            SortExpression="item_name">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                        HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
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
                     </asp:Panel>
                     <br />

     <asp:Button ID="btnexcellpresss" runat="server" Font-Names="Tahoma" Font-Size="Small" 
            Text="خروجی اکسل" onclick="btnexcellpresss_Click" />

                <asp:Button ID="btnprint_press_s" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    onclick="btnprint_press_s_Click" Text="S چاپ معایب پرس " Width="142px" 
                TabIndex="9" style="margin-left: 48px"/>

                      <asp:Panel ID="Panel_press_s" runat="server" Width="97%" 
                HorizontalAlign="Center" >
                          <asp:Label ID="Label10" runat="server" Font-Names="B Titr" Font-Size="X-Large" Text="معایب به تفکیک اقلام فاز"></asp:Label>
                          <asp:Label ID="lblfazps" runat="server" Font-Names="b titr" Font-Size="X-Large"></asp:Label>
                          <br />
                           <div style="direction:rtl;">
                     <asp:Label ID="Label7" runat="server" Font-Names="b titr" Font-Size="Medium" Text="از تاریخ:" Width="8%"></asp:Label>
                    
                <asp:Label ID="lbldate_eps" runat="server" Font-Names="b titr" Font-Size="Medium" 
                    Width="10%"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="Label9" runat="server" Font-Names="b titr" Font-Size="Medium" Text="تا تاریخ :" Width="8%"></asp:Label>
                <asp:Label ID="lbldate_sps" runat="server" Font-Names="b titr" Font-Size="Medium" 
                    Width="10%"></asp:Label>
               
                    </div>
                          <br />
                          <br />
                    <asp:Label ID="lblfaleh1" runat="server" Font-Names="B titr" 
                        Text=" S معایب پرس"></asp:Label>
                    <br />
                    <asp:GridView ID="grid_falehP" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="97%" 
                        onprerender="grid_falehP_PreRender">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                    
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" Font-Bold="True" />
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="tahoma" Font-Size="Medium" Font-Bold="True" />
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" 
                                SortExpression="Bdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                      
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
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
                    
                    <asp:GridView ID="grid_falehP_help" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" Width="97%" 
                        onprerender="grid_falehP_help_PreRender" Visible="False">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                    
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" Font-Bold="True" />
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="tahoma" Font-Size="Medium" Font-Bold="True" />
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" 
                                SortExpression="Bdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                      
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Font-Size="Medium" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                         </asp:Panel>
                    <asp:Timer ID="Timer1" runat="server" Interval="500" 
                ontick="Timer1_Tick" Enabled="False">
                    </asp:Timer>
                    <br />
                <asp:Button ID="btnexcellrikht" runat="server" Font-Names="Tahoma" Font-Size="Small" 
            Text="خروجی اکسل" onclick="btnexcellrikht_Click" />
                <asp:Button ID="btnprint_rikht" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    onclick="btnprint_rikht_Click" Text="چاپ معایب ریخته گری" 
                Width="142px" TabIndex="9" style="margin-left: 48px"/>
                    <br />
                     <asp:Panel ID="Panel_rikhtegari" runat="server" Width="97%" 
                       HorizontalAlign="Center" >
                         <asp:Label ID="Label13" runat="server" Font-Names="B Titr" Font-Size="X-Large" Text="معایب به تفکیک اقلام فاز"></asp:Label>
                         <asp:Label ID="lblfazr" runat="server" Font-Names="b titr" Font-Size="X-Large"></asp:Label>
                         <br />
                          <div style="direction:rtl;">
                     <asp:Label ID="Label8" runat="server" Font-Names="b titr" Font-Size="Medium" Text="از تاریخ:" Width="8%"></asp:Label>
                    
                <asp:Label ID="lbldate_er" runat="server" Font-Names="b titr" Font-Size="Medium" 
                    Width="10%"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="Label12" runat="server" Font-Names="b titr" Font-Size="Medium" Text="تا تاریخ :" Width="8%"></asp:Label>
                <asp:Label ID="lbldate_sr" runat="server" Font-Names="b titr" Font-Size="Medium" 
                    Width="10%"></asp:Label>
               
                    </div>
                         <br />
                         <br />
                    <asp:Label ID="lblfaleh0" runat="server" Font-Names="B titr" 
                        Text="معایب ریخته گری"></asp:Label>
                    <br />
                
                    <asp:GridView ID="grid_Rikht" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" 
                        onprerender="grid_Rikht_PreRender">
                        <AlternatingRowStyle BackColor="White" />
                       <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                    
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" Font-Bold="True" />
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="tahoma" Font-Size="Medium" Font-Bold="True" />
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" 
                                SortExpression="Bdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                      
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
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
                         <asp:GridView ID="grid_Rikht_help" runat="server" AutoGenerateColumns="False" 
                             BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                             EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                             Font-Size="Small" ForeColor="#333333" onprerender="grid_Rikht_help_PreRender" 
                             Width="97%" Visible="False">
                             <AlternatingRowStyle BackColor="White" />
                             <Columns>
                                 <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                     SortExpression="retdarsad">
                                 <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                     SortExpression="return_glaze">
                                 <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                     SortExpression="Wdarsad">
                                 <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                     SortExpression="wastage">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                                 <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                                 <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                                 <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                                 <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                     SortExpression="labpar">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                     SortExpression="oftadegi">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                     SortExpression="tardasteh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                     SortExpression="tarpayeh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                     SortExpression="khbadaneh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                     SortExpression="payehdarsad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                     SortExpression="پایه پریدگی">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                     SortExpression="sarsozani">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                     SortExpression="dorangi">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                     SortExpression="deformation">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                     SortExpression="kafsefid">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                     SortExpression="khglaze">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                     SortExpression="noglaze">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                     SortExpression="kharegi">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                     SortExpression="khlabeh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                     SortExpression="Ahandarsad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Adarsad" HeaderText="%A" SortExpression="Adarsad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                     SortExpression="item_name">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                                 </asp:BoundField>
                             </Columns>
                             <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                                 HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                             <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
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
                  </asp:Panel>
                    <br />
     <asp:Button ID="btnexcellrikhts" runat="server" Font-Names="Tahoma" Font-Size="Small" 
            Text="خروجی اکسل" onclick="btnexcellrikhts_Click" />
                <asp:Button ID="btnprint_rikhts" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    onclick="btnprint_rikhts_Click" Text="S چاپ معایب ریخته گری" 
                Width="176px" TabIndex="9" style="margin-left: 48px"/>
                    <br />
                     <asp:Panel ID="Panel_rikhtegari_s" runat="server" Width="97%" 
                HorizontalAlign="Center" >
                         <asp:Label ID="Label16" runat="server" Font-Names="B Titr" Font-Size="X-Large" Text="معایب به تفکیک اقلام فاز"></asp:Label>
                         <asp:Label ID="lblfazrs" runat="server" Font-Names="b titr" Font-Size="X-Large"></asp:Label>
                         <br />
                         <div style="direction:rtl;">
                     <asp:Label ID="Label11" runat="server" Font-Names="b titr" Font-Size="Medium" Text="از تاریخ:" Width="8%"></asp:Label>
                    
                <asp:Label ID="lbldate_ers" runat="server" Font-Names="b titr" Font-Size="Medium" 
                    Width="10%"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="Label15" runat="server" Font-Names="b titr" Font-Size="Medium" Text="تا تاریخ :" Width="8%"></asp:Label>
                <asp:Label ID="lbldate_srs" runat="server" Font-Names="b titr" Font-Size="Medium" 
                    Width="10%"></asp:Label>
               
                    </div>
                         <br />
                         <br />
                    <asp:Label ID="lblfaleh3" runat="server" Font-Names="B titr" 
                        Text=" S معایب ریخته گری"></asp:Label>
                    <br />
                    <asp:GridView ID="grid_falehR" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%" 
                        BorderStyle="Solid" BorderWidth="2px" BorderColor="Black" 
                        onprerender="grid_falehR_PreRender">
                        <AlternatingRowStyle BackColor="White" />
                      <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                    
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" Font-Bold="True" />
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="tahoma" Font-Size="Medium" Font-Bold="True" />
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" 
                                SortExpression="Bdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                      
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
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
                         <asp:GridView ID="grid_falehR_help" runat="server" AutoGenerateColumns="False" 
                             BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                             EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                             Font-Size="Small" ForeColor="#333333" onprerender="grid_falehR_help_PreRender" 
                             Width="97%" Visible="False">
                             <AlternatingRowStyle BackColor="White" />
                             <Columns>
                                 <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                     SortExpression="retdarsad">
                                 <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                     SortExpression="return_glaze">
                                 <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                     SortExpression="Wdarsad">
                                 <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                     SortExpression="wastage">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                                 <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                                 <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                                 <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                                 <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                     SortExpression="labpar">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                     SortExpression="oftadegi">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                     SortExpression="tardasteh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                     SortExpression="tarpayeh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                     SortExpression="khbadaneh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                     SortExpression="payehdarsad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                     SortExpression="پایه پریدگی">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                     SortExpression="sarsozani">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                     SortExpression="dorangi">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                     SortExpression="deformation">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                     SortExpression="kafsefid">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                     SortExpression="khglaze">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                     SortExpression="noglaze">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                     SortExpression="kharegi">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                     SortExpression="khlabeh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                     SortExpression="Ahandarsad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Adarsad" HeaderText="%A" SortExpression="Adarsad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                     SortExpression="item_name">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                                 </asp:BoundField>
                             </Columns>
                             <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                                 HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                             <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
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
               </asp:Panel>
                    <br />
     <asp:Button ID="btnexcellformingtotal" runat="server" Font-Names="Tahoma" Font-Size="Small" 
            Text="خروجی اکسل" onclick="btnexcellformingtotal_Click" />
                <asp:Button ID="btnprint_forming" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    onclick="btnprint_forming_Click" Text="چاپ معایب فرمینگ و جمع کل" 
                Width="198px" TabIndex="9" style="margin-left: 48px" />
                    <br />
                     <asp:Panel ID="Panel_forming" runat="server" Width="97%" 
                HorizontalAlign="Center" >
                         <asp:Label ID="Label19" runat="server" Font-Names="B Titr" Font-Size="X-Large" Text="معایب به تفکیک اقلام فاز"></asp:Label>
                         <asp:Label ID="lblfazf" runat="server" Font-Names="b titr" Font-Size="X-Large"></asp:Label>
                         <br />
                          <div style="direction:rtl;">
                     <asp:Label ID="Label14" runat="server" Font-Names="b titr" Font-Size="Medium" Text="از تاریخ:" Width="8%"></asp:Label>
                    
                <asp:Label ID="lbldate_ef" runat="server" Font-Names="b titr" Font-Size="Medium" 
                    Width="10%"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="Label18" runat="server" Font-Names="b titr" Font-Size="Medium" Text="تا تاریخ :" Width="8%"></asp:Label>
                <asp:Label ID="lbldate_sf" runat="server" Font-Names="b titr" Font-Size="Medium" 
                    Width="10%"></asp:Label>
               
                    </div>
                         <br />
                         <br />
                    <asp:Label ID="lblfaleh2" runat="server" Font-Names="B titr" 
                        Text="معایب فرمینگ"></asp:Label>
                    <br />
                    <asp:GridView ID="grid_Form" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                        Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" Width="97%"
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" 
                        onprerender="grid_Form_PreRender">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                SortExpression="retdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                SortExpression="Wdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                    
                            </asp:BoundField>
                            <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" Font-Bold="True" />
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="tahoma" Font-Size="Medium" Font-Bold="True" />
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" 
                                SortExpression="Bdarsad" >
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%"/>
                      
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                       
                            </asp:BoundField>
                            <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                SortExpression="payehdarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                SortExpression="Ahandarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                          
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                            
                            </asp:BoundField>
                            <asp:BoundField DataField="Adarsad" HeaderText="%A" 
                                SortExpression="Adarsad" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                           
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                         
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                            
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Font-Size="Medium" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                 
                
               
                         <asp:Label ID="lblfaleh5" runat="server" Font-Names="B titr" 
                             Text="آیتم های جدید متفرقه"></asp:Label>
                         <asp:GridView ID="grid_other" runat="server" AutoGenerateColumns="False" 
                             BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                             EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                             Font-Size="Small" ForeColor="#333333" onprerender="grid_other_PreRender" 
                             Width="97%">
                             <AlternatingRowStyle BackColor="White" />
                             <Columns>
                                 <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" 
                                     SortExpression="retdarsad">
                                 <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                     SortExpression="return_glaze">
                                 <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Wdarsad" HeaderText="ضایعات%" 
                                     SortExpression="Wdarsad">
                                 <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                     SortExpression="wastage">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Cdarsad" HeaderText="%C" SortExpression="Cdarsad">
                                 <HeaderStyle Font-Bold="True" Font-Names="B titr" Font-Size="Medium" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                                 <HeaderStyle Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Bdarsad" HeaderText="% 1/5" SortExpression="Bdarsad">
                                 <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                                 <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="jame" HeaderText="جمع" SortExpression="jame">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="5%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                     SortExpression="labpar">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                     SortExpression="oftadegi">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                     SortExpression="tardasteh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                     SortExpression="tarpayeh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                     SortExpression="khbadaneh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" 
                                     SortExpression="payehdarsad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                     SortExpression="پایه پریدگی">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" 
                                     SortExpression="sarsozani">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                     SortExpression="dorangi">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                     SortExpression="deformation">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                     SortExpression="kafsefid">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                     SortExpression="khglaze">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                     SortExpression="noglaze">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                     SortExpression="kharegi">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                     SortExpression="khlabeh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Ahandarsad" HeaderText="آهن%" 
                                     SortExpression="Ahandarsad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Adarsad" HeaderText="%A" SortExpression="Adarsad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                     SortExpression="item_name">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                                 </asp:BoundField>
                             </Columns>
                             <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                                 HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                             <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
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
                 
                
               
                     <asp:Label ID="lblfaleh4" runat="server" Font-Names="B titr" 
                        Text=" جمع کل معایب "></asp:Label>
                 
                 
               
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
                            <HeaderStyle Font-Names="b titr" Font-Size="X-Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="ret_glaze" HeaderText="برگشتی" 
                            SortExpression="ret_glaze" >
                            <HeaderStyle Font-Names="b titr" Font-Size="X-Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="X-Small" HorizontalAlign="Center" 
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
                                SortExpression="tardasteh" >
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%"/>
                        
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
                         <br/>
                         
                     <asp:GridView ID="grid_koll" runat="server" AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" Width="97%">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="retdarsad" HeaderText="برگشتی%" SortExpression="retdarsad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="X-Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="X-Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="ret_glaze" HeaderText="برگشتی" SortExpression="ret_glaze">
                                 <HeaderStyle Font-Names="b titr" Font-Size="X-Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="X-Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="wastdarsad" HeaderText="ضایعات%" SortExpression="wastdarsad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="wast" HeaderText="ضایعات" SortExpression="wast">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="GCdarsad" HeaderText="%C" SortExpression="GCdarsad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="GC" HeaderText="C" SortExpression="GC">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="BGdarsad" HeaderText="%1/5" SortExpression="BGdarsad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="GB" HeaderText="1/5" SortExpression="GB">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="jamecol" HeaderText="جمع" ReadOnly="True" SortExpression="jamecol">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="khash" HeaderText="خش" ReadOnly="True" SortExpression="khash">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" ReadOnly="True" SortExpression="labpar">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="rizesh" HeaderText="ریزش" ReadOnly="True" SortExpression="rizesh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" ReadOnly="True" SortExpression="oftadegi">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" SortExpression="tardasteh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="4%" />
                             </asp:BoundField>
                             <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" ReadOnly="True" SortExpression="tarpayeh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" ReadOnly="True" SortExpression="khbadaneh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="payehdarsad" HeaderText="پایه%" ReadOnly="True" SortExpression="payehdarsad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" ReadOnly="True" SortExpression="payeh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="hobab" HeaderText="حباب" ReadOnly="True" SortExpression="hobab">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="sarsozani" HeaderText="سر سوزنی" ReadOnly="True" SortExpression="sarsozani">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" ReadOnly="True" SortExpression="dorangi">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="tarak" HeaderText="ترک لبه" ReadOnly="True" SortExpression="tarak">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="deformation" HeaderText="دفورمگی" ReadOnly="True" SortExpression="deformation">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" ReadOnly="True" SortExpression="kafsefid">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="rageh" HeaderText="رگه" ReadOnly="True" SortExpression="rageh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="khglaze" HeaderText=" خ لعاب" ReadOnly="True" SortExpression="khglaze">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="pin" HeaderText="پین" ReadOnly="True" SortExpression="pin">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" ReadOnly="True" SortExpression="noglaze">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" ReadOnly="True" SortExpression="kharegi">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" ReadOnly="True" SortExpression="khlabeh">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="ahandarsad" HeaderText="آهن%" ReadOnly="True" SortExpression="ahandarsad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="ahan" HeaderText="لک سیاه" ReadOnly="True" SortExpression="ahan">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Adarsad" HeaderText="%A" ReadOnly="True" SortExpression="Adarsad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="A" HeaderText="A" ReadOnly="True" SortExpression="A">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="tedad" HeaderText="تعداد" ReadOnly="True" SortExpression="tedad">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField HeaderText="جمع بندی آمار" DataField="name" SortExpression="name">
                                 <HeaderStyle Font-Names="b titr" Font-Size="Small" Width="8%" />
                                 <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                             </asp:BoundField>
                         </Columns>
                         <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#98B3E4" Font-Bold="True" ForeColor="Black" />
                         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" VerticalAlign="Middle" />
                         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F5F7FB" />
                         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                         <SortedDescendingCellStyle BackColor="#E9EBEF" />
                         <SortedDescendingHeaderStyle BackColor="#4870BE" />
                     </asp:GridView>
                </asp:Panel>

                <br />
                   
                <br />
                 </center>
               
                
             <br />
           
           </center>
           

    <br />
  
    <br />
    <asp:SqlDataSource ID="totalfaz1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT     'جمع کل' AS name, tedad, A, CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(round(A * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS Adarsad, ahan, CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(round(ahan * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS ahandarsad, CAST(khlabeh AS varchar(10)) AS khlabeh, CAST(kharegi AS varchar(10)) 
                      AS kharegi, CAST(noglaze AS varchar(10)) AS noglaze, CAST(pin AS varchar(10)) AS pin, CAST(khglaze AS varchar(10)) AS khglaze, CAST(kafsefid AS varchar(10)) AS kafsefid, 
                      CAST(deformation AS varchar(10)) AS deformation, CAST(tarak AS varchar(10)) AS tarak, CAST(dorangi AS varchar(10)) AS dorangi, CAST(sarsozani AS varchar(10)) AS sarsozani, 
                      CAST(oftadegi AS varchar(10)) AS oftadegi, payeh, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(round(payeh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS payehdarsad, CAST(khbadaneh AS varchar(10)) AS khbadaneh, 
                      CAST(tarpayeh AS varchar(10)) AS tarpayeh,CAST(tardasteh AS varchar(10)) AS tardasteh, CAST(labpar AS varchar(10)) AS labpar, CAST(rizesh AS varchar(10)) AS rizesh, CAST(hobab AS varchar(10)) AS hobab, CAST(rageh AS varchar(10)) 
                      AS rageh, CAST(khash AS varchar(10)) AS khash, jamecol, GB, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(round(GB * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS BGdarsad, GC, CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(round(GC * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS GCdarsad, wast, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(round(wast * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, ret_glaze, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(round(ret_glaze * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS retdarsad
FROM         (SELECT     SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) 
                                              + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) +SUM(tardasteh) +SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) 
                                              + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, 
                                              SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, 
                                              SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh,SUM(tardasteh) AS tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, 
                                              SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze
                        FROM         dbo.grade_faz1
                        WHERE     (faz = 1) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total
UNION
SELECT     'درصد ریز آمار' AS name, tedad, A, CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(round(A * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS Adarsad, ahan, CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(ahan * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(khlabeh * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS khlabeh, 
                      CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(kharegi * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS kharegi, CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(noglaze * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS noglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(pin * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS pin, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(khglaze * 1.0 / tedad * 100,2))
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS khglaze, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(kafsefid * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(deformation * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(tarak * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS tarak,
                       CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(dorangi * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS dorangi, CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(sarsozani * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS sarsozani, 
                      CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(oftadegi * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS oftadegi, payeh, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(payeh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(khbadaneh * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),2), 4), 
                      2)) ELSE '0' END AS khbadaneh, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(tarpayeh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS tarpayeh,CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(tardasteh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS tardasteh, CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(labpar * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS labpar, 
                      CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(rizesh * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS rizesh, CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(hobab * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100),2), 
                      4), 2)) ELSE '0' END AS hobab, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(rageh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS rageh, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(khash * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS khash, jamecol, GB, 
                      CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(GB * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS BGdarsad, 
                      GC, CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(GC * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, wast, CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(wast * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS wastdarsad, ret_glaze, 
                      CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(ret_glaze * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS retdarsad
FROM         (SELECT     SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) 
                                              + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) + SUM(tardasteh)+ SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) 
                                              + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, 
                                              SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, 
                                              SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh,SUM(tardasteh) AS tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, 
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
    <asp:SqlDataSource ID="totalfaz2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        
        SelectCommand="SELECT     'جمع کل' AS name, tedad, A, CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(round(A * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS Adarsad, ahan, CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(round(ahan * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS ahandarsad, CAST(khlabeh AS varchar(10)) AS khlabeh, CAST(kharegi AS varchar(10)) 
                      AS kharegi, CAST(noglaze AS varchar(10)) AS noglaze, CAST(pin AS varchar(10)) AS pin, CAST(khglaze AS varchar(10)) AS khglaze, CAST(kafsefid AS varchar(10)) AS kafsefid, 
                      CAST(deformation AS varchar(10)) AS deformation, CAST(tarak AS varchar(10)) AS tarak, CAST(dorangi AS varchar(10)) AS dorangi, CAST(sarsozani AS varchar(10)) AS sarsozani, 
                      CAST(oftadegi AS varchar(10)) AS oftadegi, payeh, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(round(payeh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS payehdarsad, CAST(khbadaneh AS varchar(10)) AS khbadaneh, 
                      CAST(tarpayeh AS varchar(10)) AS tarpayeh,CAST(tardasteh AS varchar(10)) AS tardasteh, CAST(labpar AS varchar(10)) AS labpar, CAST(rizesh AS varchar(10)) AS rizesh, CAST(hobab AS varchar(10)) AS hobab, CAST(rageh AS varchar(10)) 
                      AS rageh, CAST(khash AS varchar(10)) AS khash, jamecol, GB, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(round(GB * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS BGdarsad, GC, CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(round(GC * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS GCdarsad, wast, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(round(wast * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, ret_glaze, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(round(ret_glaze * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS retdarsad
FROM         (SELECT     SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) 
                                              + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) +SUM(tardasteh) +SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) 
                                              + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, 
                                              SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, 
                                              SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh,SUM(tardasteh) AS tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, 
                                              SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze
                        FROM         dbo.grade_faz2
                        WHERE     (faz = 2) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total
UNION
SELECT     'درصد ریز آمار' AS name, tedad, A, CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(round(A * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS Adarsad, ahan, CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(ahan * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(khlabeh * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS khlabeh, 
                      CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(kharegi * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS kharegi, CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(noglaze * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS noglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(pin * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS pin, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(khglaze * 1.0 / tedad * 100,2))
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS khglaze, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(kafsefid * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(deformation * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(tarak * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS tarak,
                       CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(dorangi * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS dorangi, CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(sarsozani * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS sarsozani, 
                      CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(oftadegi * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS oftadegi, payeh, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(payeh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(khbadaneh * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),2), 4), 
                      2)) ELSE '0' END AS khbadaneh, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(tarpayeh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS tarpayeh,CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(tardasteh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS tardasteh, CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(labpar * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS labpar, 
                      CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(rizesh * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS rizesh, CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(hobab * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100),2), 
                      4), 2)) ELSE '0' END AS hobab, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(rageh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS rageh, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(khash * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS khash, jamecol, GB, 
                      CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(GB * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS BGdarsad, 
                      GC, CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(GC * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, wast, CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(wast * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS wastdarsad, ret_glaze, 
                      CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(ret_glaze * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS retdarsad
FROM         (SELECT     SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) 
                                              + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) + SUM(tardasteh) + SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) 
                                              + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, 
                                              SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, 
                                              SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh,SUM(tardasteh) AS tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, 
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
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz1.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz1.wastage) AS wastage,SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB,cast(SUM(dbo.grade_faz1.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz1.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz1.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz1.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz1.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz1.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz1.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz1.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1.payeh) AS payeh,cast( SUM(dbo.grade_faz1.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz1.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz1.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz1.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz1.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz1.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz1.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz1.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz1.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz1.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz1.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind =11) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 1) 
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.gradea) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.gradea) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.ahan) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.ahan) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1.payeh) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.payeh) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.wastage) * 1.0 / SUM(grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1.wastage) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.return_glaze) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.return_glaze) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1.gradeC) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.gradeC) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.gradeB) * 1.0 / SUM(grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1.gradeB) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) 
                      AS wastage, SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz1.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz1.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz1.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz1.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz1.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz1.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz1.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz1.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz1.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz1.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz1.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz1.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz1.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz1.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz1.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz1.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz1.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz1.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz1.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad) - SUM(dbo.grade_faz1.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 11) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 1)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz1.ahan) + SUM(dbo.grade_faz1.khlabeh) + SUM(dbo.grade_faz1.kharegi) + SUM(dbo.grade_faz1.noglaze) + SUM(dbo.grade_faz1.pin) 
                                              + SUM(dbo.grade_faz1.khglaze) + SUM(dbo.grade_faz1.kafsefid) + SUM(dbo.grade_faz1.deformation) + SUM(dbo.grade_faz1.tarak) + SUM(dbo.grade_faz1.dorangi) 
                                              + SUM(dbo.grade_faz1.sarsozani) + SUM(dbo.grade_faz1.oftadegi) + SUM(dbo.grade_faz1.payeh) + SUM(dbo.grade_faz1.khbadaneh) + SUM(dbo.grade_faz1.tarpayeh) + SUM(dbo.grade_faz1.tardasteh)
                                              + SUM(dbo.grade_faz1.labpar) + SUM(dbo.grade_faz1.rizesh) + SUM(dbo.grade_faz1.hobab) + SUM(dbo.grade_faz1.rageh) + SUM(dbo.grade_faz1.khash) AS jamecol, 
                                              SUM(dbo.grade_faz1.gradea) + SUM(dbo.grade_faz1.gradeB) + SUM(dbo.grade_faz1.gradeC) + SUM(dbo.grade_faz1.wastage) + SUM(dbo.grade_faz1.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz1.gradea) AS A, SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.khglaze) AS khglaze, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.dorangi) AS dorangi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.hobab) AS hobab, SUM(dbo.grade_faz1.rageh) AS rageh, 
                                              SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.gradeB) AS GB, SUM(dbo.grade_faz1.gradeC) AS GC, SUM(dbo.grade_faz1.wastage) AS wast, 
                                              SUM(dbo.grade_faz1.return_glaze) AS ret_glaze
                        FROM         dbo.item INNER JOIN
                                              dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
                        WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 11) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 1) ) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2falehR" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz2.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz2.wastage) AS wastage,SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB,cast(SUM(dbo.grade_faz2.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz2.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz2.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz2.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz2.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz2.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz2.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz2.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2.payeh) AS payeh,cast( SUM(dbo.grade_faz2.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz2.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz2.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz2.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz2.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz2.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz2.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz2.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz2.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz2.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz2.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind =11) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 1) 
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.gradea) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.gradea) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.ahan) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.ahan) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2.payeh) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.payeh) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.wastage) * 1.0 / SUM(grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2.wastage) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.return_glaze) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.return_glaze) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2.gradeC) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.gradeC) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.gradeB) * 1.0 / SUM(grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2.gradeB) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) 
                      AS wastage, SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz2.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz2.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz2.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz2.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz2.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz2.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz2.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz2.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz2.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz2.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz2.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz2.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz2.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz2.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz2.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz2.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz2.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz2.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz2.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad) - SUM(dbo.grade_faz2.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 11) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 1)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz2.ahan) + SUM(dbo.grade_faz2.khlabeh) + SUM(dbo.grade_faz2.kharegi) + SUM(dbo.grade_faz2.noglaze) + SUM(dbo.grade_faz2.pin) 
                                              + SUM(dbo.grade_faz2.khglaze) + SUM(dbo.grade_faz2.kafsefid) + SUM(dbo.grade_faz2.deformation) + SUM(dbo.grade_faz2.tarak) + SUM(dbo.grade_faz2.dorangi) 
                                              + SUM(dbo.grade_faz2.sarsozani) + SUM(dbo.grade_faz2.oftadegi) + SUM(dbo.grade_faz2.payeh) + SUM(dbo.grade_faz2.khbadaneh) + SUM(dbo.grade_faz2.tarpayeh) + SUM(dbo.grade_faz2.tardasteh)
                                              + SUM(dbo.grade_faz2.labpar) + SUM(dbo.grade_faz2.rizesh) + SUM(dbo.grade_faz2.hobab) + SUM(dbo.grade_faz2.rageh) + SUM(dbo.grade_faz2.khash) AS jamecol, 
                                              SUM(dbo.grade_faz2.gradea) + SUM(dbo.grade_faz2.gradeB) + SUM(dbo.grade_faz2.gradeC) + SUM(dbo.grade_faz2.wastage) + SUM(dbo.grade_faz2.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz2.gradea) AS A, SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.khglaze) AS khglaze, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.dorangi) AS dorangi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.hobab) AS hobab, SUM(dbo.grade_faz2.rageh) AS rageh, 
                                              SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.gradeB) AS GB, SUM(dbo.grade_faz2.gradeC) AS GC, SUM(dbo.grade_faz2.wastage) AS wast, 
                                              SUM(dbo.grade_faz2.return_glaze) AS ret_glaze
                        FROM         dbo.item INNER JOIN
                                              dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
                        WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 11) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 1) ) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="faz1fForm" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz1.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz1.wastage) AS wastage,SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB,cast(SUM(dbo.grade_faz1.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz1.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz1.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz1.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz1.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz1.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz1.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz1.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1.payeh) AS payeh,cast( SUM(dbo.grade_faz1.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz1.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz1.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz1.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz1.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz1.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz1.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz1.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz1.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz1.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz1.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.sector_product = 2) 
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.gradea) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.gradea) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.ahan) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.ahan) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1.payeh) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.payeh) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.wastage) * 1.0 / SUM(grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1.wastage) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.return_glaze) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.return_glaze) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1.gradeC) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.gradeC) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.gradeB) * 1.0 / SUM(grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1.gradeB) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) 
                      AS wastage, SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz1.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz1.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz1.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz1.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz1.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz1.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz1.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz1.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz1.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz1.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz1.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz1.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz1.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz1.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz1.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz1.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz1.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz1.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz1.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad) - SUM(dbo.grade_faz1.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.sector_product = 2) 
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz1.ahan) + SUM(dbo.grade_faz1.khlabeh) + SUM(dbo.grade_faz1.kharegi) + SUM(dbo.grade_faz1.noglaze) + SUM(dbo.grade_faz1.pin) 
                                              + SUM(dbo.grade_faz1.khglaze) + SUM(dbo.grade_faz1.kafsefid) + SUM(dbo.grade_faz1.deformation) + SUM(dbo.grade_faz1.tarak) + SUM(dbo.grade_faz1.dorangi) 
                                              + SUM(dbo.grade_faz1.sarsozani) + SUM(dbo.grade_faz1.oftadegi) + SUM(dbo.grade_faz1.payeh) + SUM(dbo.grade_faz1.khbadaneh) + SUM(dbo.grade_faz1.tarpayeh) + SUM(dbo.grade_faz1.tardasteh)
                                              + SUM(dbo.grade_faz1.labpar) + SUM(dbo.grade_faz1.rizesh) + SUM(dbo.grade_faz1.hobab) + SUM(dbo.grade_faz1.rageh) + SUM(dbo.grade_faz1.khash) AS jamecol, 
                                              SUM(dbo.grade_faz1.gradea) + SUM(dbo.grade_faz1.gradeB) + SUM(dbo.grade_faz1.gradeC) + SUM(dbo.grade_faz1.wastage) + SUM(dbo.grade_faz1.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz1.gradea) AS A, SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.khglaze) AS khglaze, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.dorangi) AS dorangi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.hobab) AS hobab, SUM(dbo.grade_faz1.rageh) AS rageh, 
                                              SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.gradeB) AS GB, SUM(dbo.grade_faz1.gradeC) AS GC, SUM(dbo.grade_faz1.wastage) AS wast, 
                                              SUM(dbo.grade_faz1.return_glaze) AS ret_glaze
                         FROM         dbo.item INNER JOIN
                                              dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
                        WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.sector_product = 2) ) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2Form" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz2.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz2.wastage) AS wastage,SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB,cast(SUM(dbo.grade_faz2.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz2.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz2.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz2.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz2.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz2.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz2.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz2.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2.payeh) AS payeh,cast( SUM(dbo.grade_faz2.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz2.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz2.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz2.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz2.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz2.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz2.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz2.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz2.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz2.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz2.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.sector_product = 2) 
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.gradea) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.gradea) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.ahan) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.ahan) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2.payeh) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.payeh) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.wastage) * 1.0 / SUM(grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2.wastage) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.return_glaze) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.return_glaze) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2.gradeC) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.gradeC) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.gradeB) * 1.0 / SUM(grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2.gradeB) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) 
                      AS wastage, SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz2.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz2.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz2.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz2.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz2.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz2.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz2.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz2.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz2.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz2.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz2.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz2.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz2.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz2.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz2.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz2.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz2.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz2.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz2.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad) - SUM(dbo.grade_faz2.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.sector_product = 2) 
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz2.ahan) + SUM(dbo.grade_faz2.khlabeh) + SUM(dbo.grade_faz2.kharegi) + SUM(dbo.grade_faz2.noglaze) + SUM(dbo.grade_faz2.pin) 
                                              + SUM(dbo.grade_faz2.khglaze) + SUM(dbo.grade_faz2.kafsefid) + SUM(dbo.grade_faz2.deformation) + SUM(dbo.grade_faz2.tarak) + SUM(dbo.grade_faz2.dorangi) 
                                              + SUM(dbo.grade_faz2.sarsozani) + SUM(dbo.grade_faz2.oftadegi) + SUM(dbo.grade_faz2.payeh) + SUM(dbo.grade_faz2.khbadaneh) + SUM(dbo.grade_faz2.tarpayeh) + SUM(dbo.grade_faz2.tardasteh)
                                              + SUM(dbo.grade_faz2.labpar) + SUM(dbo.grade_faz2.rizesh) + SUM(dbo.grade_faz2.hobab) + SUM(dbo.grade_faz2.rageh) + SUM(dbo.grade_faz2.khash) AS jamecol, 
                                              SUM(dbo.grade_faz2.gradea) + SUM(dbo.grade_faz2.gradeB) + SUM(dbo.grade_faz2.gradeC) + SUM(dbo.grade_faz2.wastage) + SUM(dbo.grade_faz2.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz2.gradea) AS A, SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.khglaze) AS khglaze, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.dorangi) AS dorangi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.hobab) AS hobab, SUM(dbo.grade_faz2.rageh) AS rageh, 
                                              SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.gradeB) AS GB, SUM(dbo.grade_faz2.gradeC) AS GC, SUM(dbo.grade_faz2.wastage) AS wast, 
                                              SUM(dbo.grade_faz2.return_glaze) AS ret_glaze
                         FROM         dbo.item INNER JOIN
                                              dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
                        WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.sector_product = 2) ) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1falehP" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz1.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz1.wastage) AS wastage,SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB,cast(SUM(dbo.grade_faz1.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz1.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz1.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz1.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz1.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz1.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz1.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz1.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1.payeh) AS payeh,cast( SUM(dbo.grade_faz1.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz1.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz1.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz1.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz1.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz1.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz1.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz1.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz1.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz1.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz1.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind =11) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 3) 
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.gradea) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.gradea) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.ahan) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.ahan) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1.payeh) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.payeh) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.wastage) * 1.0 / SUM(grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1.wastage) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.return_glaze) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.return_glaze) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1.gradeC) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.gradeC) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.gradeB) * 1.0 / SUM(grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1.gradeB) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) 
                      AS wastage, SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz1.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz1.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz1.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz1.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz1.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz1.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz1.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz1.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz1.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz1.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz1.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz1.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz1.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz1.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz1.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz1.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz1.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz1.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz1.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad) - SUM(dbo.grade_faz1.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 11) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 3)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz1.ahan) + SUM(dbo.grade_faz1.khlabeh) + SUM(dbo.grade_faz1.kharegi) + SUM(dbo.grade_faz1.noglaze) + SUM(dbo.grade_faz1.pin) 
                                              + SUM(dbo.grade_faz1.khglaze) + SUM(dbo.grade_faz1.kafsefid) + SUM(dbo.grade_faz1.deformation) + SUM(dbo.grade_faz1.tarak) + SUM(dbo.grade_faz1.dorangi) 
                                              + SUM(dbo.grade_faz1.sarsozani) + SUM(dbo.grade_faz1.oftadegi) + SUM(dbo.grade_faz1.payeh) + SUM(dbo.grade_faz1.khbadaneh) + SUM(dbo.grade_faz1.tarpayeh) + SUM(dbo.grade_faz1.tardasteh)
                                              + SUM(dbo.grade_faz1.labpar) + SUM(dbo.grade_faz1.rizesh) + SUM(dbo.grade_faz1.hobab) + SUM(dbo.grade_faz1.rageh) + SUM(dbo.grade_faz1.khash) AS jamecol, 
                                              SUM(dbo.grade_faz1.gradea) + SUM(dbo.grade_faz1.gradeB) + SUM(dbo.grade_faz1.gradeC) + SUM(dbo.grade_faz1.wastage) + SUM(dbo.grade_faz1.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz1.gradea) AS A, SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.khglaze) AS khglaze, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.dorangi) AS dorangi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.hobab) AS hobab, SUM(dbo.grade_faz1.rageh) AS rageh, 
                                              SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.gradeB) AS GB, SUM(dbo.grade_faz1.gradeC) AS GC, SUM(dbo.grade_faz1.wastage) AS wast, 
                                              SUM(dbo.grade_faz1.return_glaze) AS ret_glaze
                         FROM         dbo.item INNER JOIN
                                              dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
                        WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 11) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 3) ) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2falehP" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz2.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz2.wastage) AS wastage,SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB,cast(SUM(dbo.grade_faz2.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz2.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz2.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz2.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz2.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz2.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz2.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz2.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2.payeh) AS payeh,cast( SUM(dbo.grade_faz2.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz2.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz2.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz2.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz2.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz2.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz2.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz2.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz2.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz2.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz2.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind =11) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 3) 
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.gradea) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.gradea) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.ahan) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.ahan) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2.payeh) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.payeh) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.wastage) * 1.0 / SUM(grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2.wastage) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.return_glaze) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.return_glaze) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2.gradeC) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.gradeC) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.gradeB) * 1.0 / SUM(grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2.gradeB) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) 
                      AS wastage, SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz2.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz2.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz2.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz2.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz2.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz2.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz2.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz2.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz2.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz2.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz2.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz2.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz2.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz2.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz2.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz2.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz2.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz2.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz2.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad) - SUM(dbo.grade_faz2.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 11) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 3)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz2.ahan) + SUM(dbo.grade_faz2.khlabeh) + SUM(dbo.grade_faz2.kharegi) + SUM(dbo.grade_faz2.noglaze) + SUM(dbo.grade_faz2.pin) 
                                              + SUM(dbo.grade_faz2.khglaze) + SUM(dbo.grade_faz2.kafsefid) + SUM(dbo.grade_faz2.deformation) + SUM(dbo.grade_faz2.tarak) + SUM(dbo.grade_faz2.dorangi) 
                                              + SUM(dbo.grade_faz2.sarsozani) + SUM(dbo.grade_faz2.oftadegi) + SUM(dbo.grade_faz2.payeh) + SUM(dbo.grade_faz2.khbadaneh) + SUM(dbo.grade_faz2.tarpayeh) + SUM(dbo.grade_faz2.tardasteh)
                                              + SUM(dbo.grade_faz2.labpar) + SUM(dbo.grade_faz2.rizesh) + SUM(dbo.grade_faz2.hobab) + SUM(dbo.grade_faz2.rageh) + SUM(dbo.grade_faz2.khash) AS jamecol, 
                                              SUM(dbo.grade_faz2.gradea) + SUM(dbo.grade_faz2.gradeB) + SUM(dbo.grade_faz2.gradeC) + SUM(dbo.grade_faz2.wastage) + SUM(dbo.grade_faz2.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz2.gradea) AS A, SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.khglaze) AS khglaze, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.dorangi) AS dorangi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.hobab) AS hobab, SUM(dbo.grade_faz2.rageh) AS rageh, 
                                              SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.gradeB) AS GB, SUM(dbo.grade_faz2.gradeC) AS GC, SUM(dbo.grade_faz2.wastage) AS wast, 
                                              SUM(dbo.grade_faz2.return_glaze) AS ret_glaze
                         FROM         dbo.item INNER JOIN
                                              dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
                        WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 11) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 3) ) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1Rikht" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz1.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz1.wastage) AS wastage,SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB,cast(SUM(dbo.grade_faz1.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz1.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz1.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz1.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz1.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz1.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz1.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz1.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1.payeh) AS payeh,cast( SUM(dbo.grade_faz1.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz1.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz1.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz1.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz1.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz1.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz1.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz1.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz1.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz1.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz1.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 1)
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.gradea) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.gradea) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.ahan) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.ahan) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1.payeh) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.payeh) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.wastage) * 1.0 / SUM(grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1.wastage) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.return_glaze) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.return_glaze) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1.gradeC) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.gradeC) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.gradeB) * 1.0 / SUM(grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1.gradeB) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) 
                      AS wastage, SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz1.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz1.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz1.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz1.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz1.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz1.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz1.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz1.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz1.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz1.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz1.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz1.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz1.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz1.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz1.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz1.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz1.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz1.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz1.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad) - SUM(dbo.grade_faz1.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 1)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz1.ahan) + SUM(dbo.grade_faz1.khlabeh) + SUM(dbo.grade_faz1.kharegi) + SUM(dbo.grade_faz1.noglaze) + SUM(dbo.grade_faz1.pin) 
                                              + SUM(dbo.grade_faz1.khglaze) + SUM(dbo.grade_faz1.kafsefid) + SUM(dbo.grade_faz1.deformation) + SUM(dbo.grade_faz1.tarak) + SUM(dbo.grade_faz1.dorangi) 
                                              + SUM(dbo.grade_faz1.sarsozani) + SUM(dbo.grade_faz1.oftadegi) + SUM(dbo.grade_faz1.payeh) + SUM(dbo.grade_faz1.khbadaneh) + SUM(dbo.grade_faz1.tarpayeh) + SUM(dbo.grade_faz1.tardasteh)
                                              + SUM(dbo.grade_faz1.labpar) + SUM(dbo.grade_faz1.rizesh) + SUM(dbo.grade_faz1.hobab) + SUM(dbo.grade_faz1.rageh) + SUM(dbo.grade_faz1.khash) AS jamecol, 
                                              SUM(dbo.grade_faz1.gradea) + SUM(dbo.grade_faz1.gradeB) + SUM(dbo.grade_faz1.gradeC) + SUM(dbo.grade_faz1.wastage) + SUM(dbo.grade_faz1.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz1.gradea) AS A, SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.khglaze) AS khglaze, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.dorangi) AS dorangi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.hobab) AS hobab, SUM(dbo.grade_faz1.rageh) AS rageh, 
                                              SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.gradeB) AS GB, SUM(dbo.grade_faz1.gradeC) AS GC, SUM(dbo.grade_faz1.wastage) AS wast, 
                                              SUM(dbo.grade_faz1.return_glaze) AS ret_glaze
                        FROM         dbo.item INNER JOIN
                                              dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
                        WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 1)) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2Rikht" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz2.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz2.wastage) AS wastage,SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB,cast(SUM(dbo.grade_faz2.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz2.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz2.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz2.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz2.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz2.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz2.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz2.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2.payeh) AS payeh,cast( SUM(dbo.grade_faz2.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz2.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz2.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz2.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz2.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz2.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz2.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz2.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz2.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz2.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz2.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 1)
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.gradea) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.gradea) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.ahan) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.ahan) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2.payeh) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.payeh) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.wastage) * 1.0 / SUM(grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2.wastage) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.return_glaze) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.return_glaze) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2.gradeC) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.gradeC) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.gradeB) * 1.0 / SUM(grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2.gradeB) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) 
                      AS wastage, SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz2.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz2.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz2.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz2.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz2.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz2.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz2.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz2.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz2.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz2.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz2.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz2.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz2.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz2.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz2.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz2.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz2.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz2.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz2.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad) - SUM(dbo.grade_faz2.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 1)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz2.ahan) + SUM(dbo.grade_faz2.khlabeh) + SUM(dbo.grade_faz2.kharegi) + SUM(dbo.grade_faz2.noglaze) + SUM(dbo.grade_faz2.pin) 
                                              + SUM(dbo.grade_faz2.khglaze) + SUM(dbo.grade_faz2.kafsefid) + SUM(dbo.grade_faz2.deformation) + SUM(dbo.grade_faz2.tarak) + SUM(dbo.grade_faz2.dorangi) 
                                              + SUM(dbo.grade_faz2.sarsozani) + SUM(dbo.grade_faz2.oftadegi) + SUM(dbo.grade_faz2.payeh) + SUM(dbo.grade_faz2.khbadaneh) + SUM(dbo.grade_faz2.tarpayeh) + SUM(dbo.grade_faz2.tardasteh)
                                              + SUM(dbo.grade_faz2.labpar) + SUM(dbo.grade_faz2.rizesh) + SUM(dbo.grade_faz2.hobab) + SUM(dbo.grade_faz2.rageh) + SUM(dbo.grade_faz2.khash) AS jamecol, 
                                              SUM(dbo.grade_faz2.gradea) + SUM(dbo.grade_faz2.gradeB) + SUM(dbo.grade_faz2.gradeC) + SUM(dbo.grade_faz2.wastage) + SUM(dbo.grade_faz2.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz2.gradea) AS A, SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.khglaze) AS khglaze, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.dorangi) AS dorangi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.hobab) AS hobab, SUM(dbo.grade_faz2.rageh) AS rageh, 
                                              SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.gradeB) AS GB, SUM(dbo.grade_faz2.gradeC) AS GC, SUM(dbo.grade_faz2.wastage) AS wast, 
                                              SUM(dbo.grade_faz2.return_glaze) AS ret_glaze
                        FROM         dbo.item INNER JOIN
                                              dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
                        WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 1)) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1Press" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz1.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz1.wastage) AS wastage,SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB,cast(SUM(dbo.grade_faz1.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz1.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz1.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz1.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz1.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz1.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz1.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz1.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1.payeh) AS payeh,cast( SUM(dbo.grade_faz1.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz1.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz1.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz1.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz1.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz1.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz1.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz1.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz1.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz1.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz1.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 3)
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.gradea) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.gradea) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.ahan) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.ahan) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1.payeh) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.payeh) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.wastage) * 1.0 / SUM(grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1.wastage) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.return_glaze) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.return_glaze) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1.gradeC) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.gradeC) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.gradeB) * 1.0 / SUM(grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1.gradeB) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) 
                      AS wastage, SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz1.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz1.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz1.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz1.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz1.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz1.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz1.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz1.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz1.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz1.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz1.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz1.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz1.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz1.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz1.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz1.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz1.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz1.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz1.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad) - SUM(dbo.grade_faz1.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 3)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz1.ahan) + SUM(dbo.grade_faz1.khlabeh) + SUM(dbo.grade_faz1.kharegi) + SUM(dbo.grade_faz1.noglaze) + SUM(dbo.grade_faz1.pin) 
                                              + SUM(dbo.grade_faz1.khglaze) + SUM(dbo.grade_faz1.kafsefid) + SUM(dbo.grade_faz1.deformation) + SUM(dbo.grade_faz1.tarak) + SUM(dbo.grade_faz1.dorangi) 
                                              + SUM(dbo.grade_faz1.sarsozani) + SUM(dbo.grade_faz1.oftadegi) + SUM(dbo.grade_faz1.payeh) + SUM(dbo.grade_faz1.khbadaneh) + SUM(dbo.grade_faz1.tarpayeh) + SUM(dbo.grade_faz1.tardasteh)
                                              + SUM(dbo.grade_faz1.labpar) + SUM(dbo.grade_faz1.rizesh) + SUM(dbo.grade_faz1.hobab) + SUM(dbo.grade_faz1.rageh) + SUM(dbo.grade_faz1.khash) AS jamecol, 
                                              SUM(dbo.grade_faz1.gradea) + SUM(dbo.grade_faz1.gradeB) + SUM(dbo.grade_faz1.gradeC) + SUM(dbo.grade_faz1.wastage) + SUM(dbo.grade_faz1.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz1.gradea) AS A, SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.khglaze) AS khglaze, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.dorangi) AS dorangi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.hobab) AS hobab, SUM(dbo.grade_faz1.rageh) AS rageh, 
                                              SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.gradeB) AS GB, SUM(dbo.grade_faz1.gradeC) AS GC, SUM(dbo.grade_faz1.wastage) AS wast, 
                                              SUM(dbo.grade_faz1.return_glaze) AS ret_glaze
                       FROM         dbo.item INNER JOIN
                                              dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
                        WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 3)) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2Press" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz2.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz2.wastage) AS wastage,SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB,cast(SUM(dbo.grade_faz2.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz2.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz2.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz2.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz2.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz2.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz2.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz2.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2.payeh) AS payeh,cast( SUM(dbo.grade_faz2.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz2.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz2.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz2.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz2.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz2.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz2.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz2.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz2.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz2.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz2.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 3)
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.gradea) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.gradea) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.ahan) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.ahan) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2.payeh) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.payeh) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.wastage) * 1.0 / SUM(grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2.wastage) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.return_glaze) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.return_glaze) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2.gradeC) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.gradeC) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.gradeB) * 1.0 / SUM(grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2.gradeB) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) 
                      AS wastage, SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz2.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz2.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz2.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz2.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz2.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz2.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz2.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz2.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz2.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz2.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz2.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz2.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz2.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz2.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz2.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz2.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz2.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz2.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz2.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad) - SUM(dbo.grade_faz2.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 3)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz2.ahan) + SUM(dbo.grade_faz2.khlabeh) + SUM(dbo.grade_faz2.kharegi) + SUM(dbo.grade_faz2.noglaze) + SUM(dbo.grade_faz2.pin) 
                                              + SUM(dbo.grade_faz2.khglaze) + SUM(dbo.grade_faz2.kafsefid) + SUM(dbo.grade_faz2.deformation) + SUM(dbo.grade_faz2.tarak) + SUM(dbo.grade_faz2.dorangi) 
                                              + SUM(dbo.grade_faz2.sarsozani) + SUM(dbo.grade_faz2.oftadegi) + SUM(dbo.grade_faz2.payeh) + SUM(dbo.grade_faz2.khbadaneh) + SUM(dbo.grade_faz2.tarpayeh) + SUM(dbo.grade_faz2.tardasteh)
                                              + SUM(dbo.grade_faz2.labpar) + SUM(dbo.grade_faz2.rizesh) + SUM(dbo.grade_faz2.hobab) + SUM(dbo.grade_faz2.rageh) + SUM(dbo.grade_faz2.khash) AS jamecol, 
                                              SUM(dbo.grade_faz2.gradea) + SUM(dbo.grade_faz2.gradeB) + SUM(dbo.grade_faz2.gradeC) + SUM(dbo.grade_faz2.wastage) + SUM(dbo.grade_faz2.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz2.gradea) AS A, SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.khglaze) AS khglaze, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.dorangi) AS dorangi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.hobab) AS hobab, SUM(dbo.grade_faz2.rageh) AS rageh, 
                                              SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.gradeB) AS GB, SUM(dbo.grade_faz2.gradeC) AS GC, SUM(dbo.grade_faz2.wastage) AS wast, 
                                              SUM(dbo.grade_faz2.return_glaze) AS ret_glaze
                       FROM         dbo.item INNER JOIN
                                              dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
                        WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 3)) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
   
   <asp:SqlDataSource ID="totalfaz1_test" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        
        SelectCommand="SELECT     'جمع کل' AS name, tedad, A, CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(round(A * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS Adarsad, ahan, CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(round(ahan * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS ahandarsad, CAST(khlabeh AS varchar(10)) AS khlabeh, CAST(kharegi AS varchar(10)) 
                      AS kharegi, CAST(noglaze AS varchar(10)) AS noglaze, CAST(pin AS varchar(10)) AS pin, CAST(khglaze AS varchar(10)) AS khglaze, CAST(kafsefid AS varchar(10)) AS kafsefid, 
                      CAST(deformation AS varchar(10)) AS deformation, CAST(tarak AS varchar(10)) AS tarak, CAST(dorangi AS varchar(10)) AS dorangi, CAST(sarsozani AS varchar(10)) AS sarsozani, 
                      CAST(oftadegi AS varchar(10)) AS oftadegi, payeh, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(round(payeh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS payehdarsad, CAST(khbadaneh AS varchar(10)) AS khbadaneh, 
                      CAST(tarpayeh AS varchar(10)) AS tarpayeh,CAST(tardasteh AS varchar(10)) AS tardasteh, CAST(labpar AS varchar(10)) AS labpar, CAST(rizesh AS varchar(10)) AS rizesh, CAST(hobab AS varchar(10)) AS hobab, CAST(rageh AS varchar(10)) 
                      AS rageh, CAST(khash AS varchar(10)) AS khash, jamecol, GB, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(round(GB * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS BGdarsad, GC, CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(round(GC * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS GCdarsad, wast, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(round(wast * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, ret_glaze, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(round(ret_glaze * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS retdarsad
FROM         (SELECT     SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) 
                                              + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) +SUM(tardasteh) +SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) 
                                              + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, 
                                              SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, 
                                              SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh,SUM(tardasteh) AS tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, 
                                              SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze
                        FROM         dbo.grade_faz1test
                        WHERE     (faz = 1) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total
UNION
SELECT     'درصد ریز آمار' AS name, tedad, A, CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(round(A * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS Adarsad, ahan, CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(ahan * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(khlabeh * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS khlabeh, 
                      CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(kharegi * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS kharegi, CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(noglaze * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS noglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(pin * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS pin, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(khglaze * 1.0 / tedad * 100,2))
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS khglaze, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(kafsefid * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(deformation * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(tarak * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS tarak,
                       CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(dorangi * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS dorangi, CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(sarsozani * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS sarsozani, 
                      CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(oftadegi * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS oftadegi, payeh, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(payeh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(khbadaneh * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),2), 4), 
                      2)) ELSE '0' END AS khbadaneh, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(tarpayeh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS tarpayeh,CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(tardasteh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS tardasteh, CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(labpar * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS labpar, 
                      CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(rizesh * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS rizesh, CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(hobab * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100),2), 
                      4), 2)) ELSE '0' END AS hobab, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(rageh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS rageh, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(khash * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS khash, jamecol, GB, 
                      CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(GB * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS BGdarsad, 
                      GC, CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(GC * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, wast, CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(wast * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS wastdarsad, ret_glaze, 
                      CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(ret_glaze * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS retdarsad
FROM         (SELECT     SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) 
                                              + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) + SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) 
                                              + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, 
                                              SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, 
                                              SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh,SUM(tardasteh) AS tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, 
                                              SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze
                        FROM         dbo.grade_faz1test
                        WHERE     (faz = 1) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="totalfaz2_test" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        
        
        SelectCommand="SELECT     'جمع کل' AS name, tedad, A, CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(round(A * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS Adarsad, ahan, CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(round(ahan * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS ahandarsad, CAST(khlabeh AS varchar(10)) AS khlabeh, CAST(kharegi AS varchar(10)) 
                      AS kharegi, CAST(noglaze AS varchar(10)) AS noglaze, CAST(pin AS varchar(10)) AS pin, CAST(khglaze AS varchar(10)) AS khglaze, CAST(kafsefid AS varchar(10)) AS kafsefid, 
                      CAST(deformation AS varchar(10)) AS deformation, CAST(tarak AS varchar(10)) AS tarak, CAST(dorangi AS varchar(10)) AS dorangi, CAST(sarsozani AS varchar(10)) AS sarsozani, 
                      CAST(oftadegi AS varchar(10)) AS oftadegi, payeh, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(round(payeh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS payehdarsad, CAST(khbadaneh AS varchar(10)) AS khbadaneh, 
                      CAST(tarpayeh AS varchar(10)) AS tarpayeh,CAST(tardasteh AS varchar(10)) AS tardasteh, CAST(labpar AS varchar(10)) AS labpar, CAST(rizesh AS varchar(10)) AS rizesh, CAST(hobab AS varchar(10)) AS hobab, CAST(rageh AS varchar(10)) 
                      AS rageh, CAST(khash AS varchar(10)) AS khash, jamecol, GB, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(round(GB * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS BGdarsad, GC, CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(round(GC * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS GCdarsad, wast, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(round(wast * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, ret_glaze, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(round(ret_glaze * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS retdarsad
FROM         (SELECT     SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) 
                                              + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) +SUM(tardasteh) +SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) 
                                              + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, 
                                              SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, 
                                              SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh,SUM(tardasteh) AS tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, 
                                              SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze
                        FROM         dbo.grade_faz2test
                        WHERE     (faz = 2) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total
UNION
SELECT     'درصد ریز آمار' AS name, tedad, A, CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(round(A * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS Adarsad, ahan, CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(ahan * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(khlabeh * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS khlabeh, 
                      CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(kharegi * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS kharegi, CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(noglaze * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS noglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(pin * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS pin, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(khglaze * 1.0 / tedad * 100,2))
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS khglaze, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(kafsefid * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(deformation * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(tarak * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS tarak,
                       CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(dorangi * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS dorangi, CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(sarsozani * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS sarsozani, 
                      CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(oftadegi * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS oftadegi, payeh, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(payeh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(khbadaneh * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),2), 4), 
                      2)) ELSE '0' END AS khbadaneh, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(tarpayeh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS tarpayeh,CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(tardasteh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS tardasteh, CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(labpar * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS labpar, 
                      CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(rizesh * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS rizesh, CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(hobab * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100),2), 
                      4), 2)) ELSE '0' END AS hobab, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(rageh * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS rageh, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(khash * 1.0 / tedad * 100,2)) 
                      AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS khash, jamecol, GB, 
                      CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(GB * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS BGdarsad, 
                      GC, CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(GC * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, wast, CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(wast * 1.0 / tedad * 100,2)) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100),2), 4), 2)) ELSE '0' END AS wastdarsad, ret_glaze, 
                      CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ROUND(ret_glaze * 1.0 / tedad * 100,2)) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100),2), 4), 2)) 
                      ELSE '0' END AS retdarsad
FROM         (SELECT     SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) 
                                              + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) + SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) 
                                              + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, 
                                              SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, 
                                              SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh,SUM(tardasteh) AS tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, 
                                              SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze
                        FROM         dbo.grade_faz2test
                        WHERE     (faz = 2) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1falehR_test" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradea) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.gradea) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.ahan) * 1.0 / SUM(dbo.grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1test.ahan) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.payeh) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.payeh) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.wastage) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.wastage) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.return_glaze) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.return_glaze) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.gradeC) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradeB) * 1.0 / SUM(dbo.grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1test.gradeB) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz1test.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz1test.wastage) AS wastage,SUM(dbo.grade_faz1test.gradeC) AS gradeC, SUM(dbo.grade_faz1test.gradeB) AS gradeB,cast(SUM(dbo.grade_faz1test.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz1test.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz1test.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz1test.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz1test.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz1test.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz1test.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz1test.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1test.payeh) AS payeh,cast( SUM(dbo.grade_faz1test.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz1test.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz1test.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz1test.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz1test.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz1test.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz1test.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz1test.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz1test.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz1test.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz1test.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz1test.tedad) AS tedad, SUM(dbo.grade_faz1test.tedad - dbo.grade_faz1test.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind =11) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 1) 
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradea) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.gradea) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.ahan) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.ahan) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1test.payeh) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.payeh) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.wastage) * 1.0 / SUM(grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1test.wastage) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.return_glaze) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.return_glaze) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradeC) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.gradeC) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradeB) * 1.0 / SUM(grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1test.gradeB) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1test.return_glaze) AS return_glaze, SUM(dbo.grade_faz1test.wastage) 
                      AS wastage, SUM(dbo.grade_faz1test.gradeC) AS gradeC, SUM(dbo.grade_faz1test.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz1test.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz1test.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz1test.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz1test.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz1test.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz1test.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz1test.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz1test.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1test.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz1test.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz1test.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz1test.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz1test.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz1test.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz1test.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz1test.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz1test.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz1test.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz1test.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz1test.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz1test.tedad) AS tedad, SUM(dbo.grade_faz1test.tedad) - SUM(dbo.grade_faz1test.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 11) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 1)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz1test.ahan) + SUM(dbo.grade_faz1test.khlabeh) + SUM(dbo.grade_faz1test.kharegi) + SUM(dbo.grade_faz1test.noglaze) + SUM(dbo.grade_faz1test.pin) 
                                              + SUM(dbo.grade_faz1test.khglaze) + SUM(dbo.grade_faz1test.kafsefid) + SUM(dbo.grade_faz1test.deformation) + SUM(dbo.grade_faz1test.tarak) + SUM(dbo.grade_faz1test.dorangi) 
                                              + SUM(dbo.grade_faz1test.sarsozani) + SUM(dbo.grade_faz1test.oftadegi) + SUM(dbo.grade_faz1test.payeh) + SUM(dbo.grade_faz1test.khbadaneh) + SUM(dbo.grade_faz1test.tarpayeh) + SUM(dbo.grade_faz1test.tardasteh)
                                              + SUM(dbo.grade_faz1test.labpar) + SUM(dbo.grade_faz1test.rizesh) + SUM(dbo.grade_faz1test.hobab) + SUM(dbo.grade_faz1test.rageh) + SUM(dbo.grade_faz1test.khash) AS jamecol, 
                                              SUM(dbo.grade_faz1test.gradea) + SUM(dbo.grade_faz1test.gradeB) + SUM(dbo.grade_faz1test.gradeC) + SUM(dbo.grade_faz1test.wastage) + SUM(dbo.grade_faz1test.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz1test.gradea) AS A, SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.khlabeh) AS khlabeh, SUM(dbo.grade_faz1test.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz1test.noglaze) AS noglaze, SUM(dbo.grade_faz1test.pin) AS pin, SUM(dbo.grade_faz1test.khglaze) AS khglaze, SUM(dbo.grade_faz1test.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz1test.deformation) AS deformation, SUM(dbo.grade_faz1test.tarak) AS tarak, SUM(dbo.grade_faz1test.dorangi) AS dorangi, SUM(dbo.grade_faz1test.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz1test.oftadegi) AS oftadegi, SUM(dbo.grade_faz1test.payeh) AS payeh, SUM(dbo.grade_faz1test.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz1test.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1test.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz1test.labpar) AS labpar, SUM(dbo.grade_faz1test.rizesh) AS rizesh, SUM(dbo.grade_faz1test.hobab) AS hobab, SUM(dbo.grade_faz1test.rageh) AS rageh, 
                                              SUM(dbo.grade_faz1test.khash) AS khash, SUM(dbo.grade_faz1test.gradeB) AS GB, SUM(dbo.grade_faz1test.gradeC) AS GC, SUM(dbo.grade_faz1test.wastage) AS wast, 
                                              SUM(dbo.grade_faz1test.return_glaze) AS ret_glaze
                        FROM         dbo.item INNER JOIN
                                              dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
                        WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 11) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 1) ) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2falehR_test" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradea) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.gradea) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.ahan) * 1.0 / SUM(dbo.grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2test.ahan) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.payeh) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.payeh) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.wastage) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.wastage) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.return_glaze) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.return_glaze) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.gradeC) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradeB) * 1.0 / SUM(dbo.grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2test.gradeB) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz2test.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz2test.wastage) AS wastage,SUM(dbo.grade_faz2test.gradeC) AS gradeC, SUM(dbo.grade_faz2test.gradeB) AS gradeB,cast(SUM(dbo.grade_faz2test.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz2test.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz2test.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz2test.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz2test.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz2test.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz2test.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz2test.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2test.payeh) AS payeh,cast( SUM(dbo.grade_faz2test.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz2test.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz2test.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz2test.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz2test.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz2test.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz2test.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz2test.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz2test.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz2test.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz2test.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz2test.tedad) AS tedad, SUM(dbo.grade_faz2test.tedad - dbo.grade_faz2test.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind =11) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 1) 
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradea) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.gradea) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.ahan) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.ahan) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2test.payeh) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.payeh) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.wastage) * 1.0 / SUM(grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2test.wastage) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.return_glaze) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.return_glaze) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradeC) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.gradeC) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradeB) * 1.0 / SUM(grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2test.gradeB) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2test.return_glaze) AS return_glaze, SUM(dbo.grade_faz2test.wastage) 
                      AS wastage, SUM(dbo.grade_faz2test.gradeC) AS gradeC, SUM(dbo.grade_faz2test.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz2test.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz2test.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz2test.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz2test.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz2test.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz2test.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz2test.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz2test.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2test.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz2test.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz2test.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz2test.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz2test.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz2test.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz2test.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz2test.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz2test.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz2test.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz2test.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz2test.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz2test.tedad) AS tedad, SUM(dbo.grade_faz2test.tedad) - SUM(dbo.grade_faz2test.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 11) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 1)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz2test.ahan) + SUM(dbo.grade_faz2test.khlabeh) + SUM(dbo.grade_faz2test.kharegi) + SUM(dbo.grade_faz2test.noglaze) + SUM(dbo.grade_faz2test.pin) 
                                              + SUM(dbo.grade_faz2test.khglaze) + SUM(dbo.grade_faz2test.kafsefid) + SUM(dbo.grade_faz2test.deformation) + SUM(dbo.grade_faz2test.tarak) + SUM(dbo.grade_faz2test.dorangi) 
                                              + SUM(dbo.grade_faz2test.sarsozani) + SUM(dbo.grade_faz2test.oftadegi) + SUM(dbo.grade_faz2test.payeh) + SUM(dbo.grade_faz2test.khbadaneh) + SUM(dbo.grade_faz2test.tarpayeh) + SUM(dbo.grade_faz2test.tardasteh)
                                              + SUM(dbo.grade_faz2test.labpar) + SUM(dbo.grade_faz2test.rizesh) + SUM(dbo.grade_faz2test.hobab) + SUM(dbo.grade_faz2test.rageh) + SUM(dbo.grade_faz2test.khash) AS jamecol, 
                                              SUM(dbo.grade_faz2test.gradea) + SUM(dbo.grade_faz2test.gradeB) + SUM(dbo.grade_faz2test.gradeC) + SUM(dbo.grade_faz2test.wastage) + SUM(dbo.grade_faz2test.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz2test.gradea) AS A, SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.khlabeh) AS khlabeh, SUM(dbo.grade_faz2test.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz2test.noglaze) AS noglaze, SUM(dbo.grade_faz2test.pin) AS pin, SUM(dbo.grade_faz2test.khglaze) AS khglaze, SUM(dbo.grade_faz2test.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz2test.deformation) AS deformation, SUM(dbo.grade_faz2test.tarak) AS tarak, SUM(dbo.grade_faz2test.dorangi) AS dorangi, SUM(dbo.grade_faz2test.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz2test.oftadegi) AS oftadegi, SUM(dbo.grade_faz2test.payeh) AS payeh, SUM(dbo.grade_faz2test.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz2test.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2test.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz2test.labpar) AS labpar, SUM(dbo.grade_faz2test.rizesh) AS rizesh, SUM(dbo.grade_faz2test.hobab) AS hobab, SUM(dbo.grade_faz2test.rageh) AS rageh, 
                                              SUM(dbo.grade_faz2test.khash) AS khash, SUM(dbo.grade_faz2test.gradeB) AS GB, SUM(dbo.grade_faz2test.gradeC) AS GC, SUM(dbo.grade_faz2test.wastage) AS wast, 
                                              SUM(dbo.grade_faz2test.return_glaze) AS ret_glaze
                        FROM         dbo.item INNER JOIN
                                              dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
                        WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e)   AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 11) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 1) ) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="faz1Form_test" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradea) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.gradea) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.ahan) * 1.0 / SUM(dbo.grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1test.ahan) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.payeh) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.payeh) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.wastage) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.wastage) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.return_glaze) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.return_glaze) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.gradeC) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradeB) * 1.0 / SUM(dbo.grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1test.gradeB) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz1test.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz1test.wastage) AS wastage,SUM(dbo.grade_faz1test.gradeC) AS gradeC, SUM(dbo.grade_faz1test.gradeB) AS gradeB,cast(SUM(dbo.grade_faz1test.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz1test.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz1test.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz1test.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz1test.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz1test.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz1test.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz1test.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1test.payeh) AS payeh,cast( SUM(dbo.grade_faz1test.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz1test.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz1test.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz1test.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz1test.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz1test.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz1test.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz1test.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz1test.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz1test.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz1test.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz1test.tedad) AS tedad, SUM(dbo.grade_faz1test.tedad - dbo.grade_faz1test.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e)   AND (dbo.item.sector_product = 2) 
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradea) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.gradea) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.ahan) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.ahan) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1test.payeh) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.payeh) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.wastage) * 1.0 / SUM(grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1test.wastage) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.return_glaze) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.return_glaze) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradeC) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.gradeC) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradeB) * 1.0 / SUM(grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1test.gradeB) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1test.return_glaze) AS return_glaze, SUM(dbo.grade_faz1test.wastage) 
                      AS wastage, SUM(dbo.grade_faz1test.gradeC) AS gradeC, SUM(dbo.grade_faz1test.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz1test.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz1test.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz1test.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz1test.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz1test.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz1test.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz1test.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz1test.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1test.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz1test.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz1test.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz1test.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz1test.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz1test.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz1test.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz1test.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz1test.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz1test.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz1test.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz1test.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz1test.tedad) AS tedad, SUM(dbo.grade_faz1test.tedad) - SUM(dbo.grade_faz1test.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.sector_product = 2) 
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz1test.ahan) + SUM(dbo.grade_faz1test.khlabeh) + SUM(dbo.grade_faz1test.kharegi) + SUM(dbo.grade_faz1test.noglaze) + SUM(dbo.grade_faz1test.pin) 
                                              + SUM(dbo.grade_faz1test.khglaze) + SUM(dbo.grade_faz1test.kafsefid) + SUM(dbo.grade_faz1test.deformation) + SUM(dbo.grade_faz1test.tarak) + SUM(dbo.grade_faz1test.dorangi) 
                                              + SUM(dbo.grade_faz1test.sarsozani) + SUM(dbo.grade_faz1test.oftadegi) + SUM(dbo.grade_faz1test.payeh) + SUM(dbo.grade_faz1test.khbadaneh) + SUM(dbo.grade_faz1test.tarpayeh) + SUM(dbo.grade_faz1test.tardasteh)
                                              + SUM(dbo.grade_faz1test.labpar) + SUM(dbo.grade_faz1test.rizesh) + SUM(dbo.grade_faz1test.hobab) + SUM(dbo.grade_faz1test.rageh) + SUM(dbo.grade_faz1test.khash) AS jamecol, 
                                              SUM(dbo.grade_faz1test.gradea) + SUM(dbo.grade_faz1test.gradeB) + SUM(dbo.grade_faz1test.gradeC) + SUM(dbo.grade_faz1test.wastage) + SUM(dbo.grade_faz1test.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz1test.gradea) AS A, SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.khlabeh) AS khlabeh, SUM(dbo.grade_faz1test.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz1test.noglaze) AS noglaze, SUM(dbo.grade_faz1test.pin) AS pin, SUM(dbo.grade_faz1test.khglaze) AS khglaze, SUM(dbo.grade_faz1test.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz1test.deformation) AS deformation, SUM(dbo.grade_faz1test.tarak) AS tarak, SUM(dbo.grade_faz1test.dorangi) AS dorangi, SUM(dbo.grade_faz1test.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz1test.oftadegi) AS oftadegi, SUM(dbo.grade_faz1test.payeh) AS payeh, SUM(dbo.grade_faz1test.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz1test.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1test.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz1test.labpar) AS labpar, SUM(dbo.grade_faz1test.rizesh) AS rizesh, SUM(dbo.grade_faz1test.hobab) AS hobab, SUM(dbo.grade_faz1test.rageh) AS rageh, 
                                              SUM(dbo.grade_faz1test.khash) AS khash, SUM(dbo.grade_faz1test.gradeB) AS GB, SUM(dbo.grade_faz1test.gradeC) AS GC, SUM(dbo.grade_faz1test.wastage) AS wast, 
                                              SUM(dbo.grade_faz1test.return_glaze) AS ret_glaze
                         FROM         dbo.item INNER JOIN
                                              dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
                        WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.sector_product = 2) ) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2Form_test" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradea) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.gradea) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.ahan) * 1.0 / SUM(dbo.grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2test.ahan) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.payeh) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.payeh) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.wastage) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.wastage) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.return_glaze) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.return_glaze) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.gradeC) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradeB) * 1.0 / SUM(dbo.grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2test.gradeB) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz2test.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz2test.wastage) AS wastage,SUM(dbo.grade_faz2test.gradeC) AS gradeC, SUM(dbo.grade_faz2test.gradeB) AS gradeB,cast(SUM(dbo.grade_faz2test.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz2test.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz2test.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz2test.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz2test.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz2test.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz2test.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz2test.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2test.payeh) AS payeh,cast( SUM(dbo.grade_faz2test.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz2test.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz2test.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz2test.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz2test.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz2test.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz2test.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz2test.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz2test.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz2test.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz2test.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz2test.tedad) AS tedad, SUM(dbo.grade_faz2test.tedad - dbo.grade_faz2test.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e)   AND (dbo.item.sector_product = 2) 
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradea) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.gradea) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.ahan) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.ahan) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2test.payeh) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.payeh) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.wastage) * 1.0 / SUM(grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2test.wastage) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.return_glaze) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.return_glaze) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradeC) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.gradeC) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradeB) * 1.0 / SUM(grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2test.gradeB) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2test.return_glaze) AS return_glaze, SUM(dbo.grade_faz2test.wastage) 
                      AS wastage, SUM(dbo.grade_faz2test.gradeC) AS gradeC, SUM(dbo.grade_faz2test.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz2test.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz2test.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz2test.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz2test.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz2test.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz2test.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz2test.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz2test.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2test.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz2test.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz2test.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz2test.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz2test.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz2test.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz2test.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz2test.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz2test.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz2test.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz2test.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz2test.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz2test.tedad) AS tedad, SUM(dbo.grade_faz2test.tedad) - SUM(dbo.grade_faz2test.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.sector_product = 2) 
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz2test.ahan) + SUM(dbo.grade_faz2test.khlabeh) + SUM(dbo.grade_faz2test.kharegi) + SUM(dbo.grade_faz2test.noglaze) + SUM(dbo.grade_faz2test.pin) 
                                              + SUM(dbo.grade_faz2test.khglaze) + SUM(dbo.grade_faz2test.kafsefid) + SUM(dbo.grade_faz2test.deformation) + SUM(dbo.grade_faz2test.tarak) + SUM(dbo.grade_faz2test.dorangi) 
                                              + SUM(dbo.grade_faz2test.sarsozani) + SUM(dbo.grade_faz2test.oftadegi) + SUM(dbo.grade_faz2test.payeh) + SUM(dbo.grade_faz2test.khbadaneh) + SUM(dbo.grade_faz2test.tarpayeh) + SUM(dbo.grade_faz2test.tardasteh)
                                              + SUM(dbo.grade_faz2test.labpar) + SUM(dbo.grade_faz2test.rizesh) + SUM(dbo.grade_faz2test.hobab) + SUM(dbo.grade_faz2test.rageh) + SUM(dbo.grade_faz2test.khash) AS jamecol, 
                                              SUM(dbo.grade_faz2test.gradea) + SUM(dbo.grade_faz2test.gradeB) + SUM(dbo.grade_faz2test.gradeC) + SUM(dbo.grade_faz2test.wastage) + SUM(dbo.grade_faz2test.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz2test.gradea) AS A, SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.khlabeh) AS khlabeh, SUM(dbo.grade_faz2test.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz2test.noglaze) AS noglaze, SUM(dbo.grade_faz2test.pin) AS pin, SUM(dbo.grade_faz2test.khglaze) AS khglaze, SUM(dbo.grade_faz2test.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz2test.deformation) AS deformation, SUM(dbo.grade_faz2test.tarak) AS tarak, SUM(dbo.grade_faz2test.dorangi) AS dorangi, SUM(dbo.grade_faz2test.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz2test.oftadegi) AS oftadegi, SUM(dbo.grade_faz2test.payeh) AS payeh, SUM(dbo.grade_faz2test.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz2test.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2test.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz2test.labpar) AS labpar, SUM(dbo.grade_faz2test.rizesh) AS rizesh, SUM(dbo.grade_faz2test.hobab) AS hobab, SUM(dbo.grade_faz2test.rageh) AS rageh, 
                                              SUM(dbo.grade_faz2test.khash) AS khash, SUM(dbo.grade_faz2test.gradeB) AS GB, SUM(dbo.grade_faz2test.gradeC) AS GC, SUM(dbo.grade_faz2test.wastage) AS wast, 
                                              SUM(dbo.grade_faz2test.return_glaze) AS ret_glaze
                         FROM         dbo.item INNER JOIN
                                              dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
                        WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.sector_product = 2) ) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1falehP_test" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradea) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.gradea) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.ahan) * 1.0 / SUM(dbo.grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1test.ahan) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.payeh) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.payeh) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.wastage) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.wastage) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.return_glaze) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.return_glaze) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.gradeC) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradeB) * 1.0 / SUM(dbo.grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1test.gradeB) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz1test.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz1test.wastage) AS wastage,SUM(dbo.grade_faz1test.gradeC) AS gradeC, SUM(dbo.grade_faz1test.gradeB) AS gradeB,cast(SUM(dbo.grade_faz1test.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz1test.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz1test.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz1test.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz1test.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz1test.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz1test.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz1test.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1test.payeh) AS payeh,cast( SUM(dbo.grade_faz1test.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz1test.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz1test.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz1test.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz1test.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz1test.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz1test.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz1test.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz1test.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz1test.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz1test.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz1test.tedad) AS tedad, SUM(dbo.grade_faz1test.tedad - dbo.grade_faz1test.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind =11) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 3) 
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradea) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.gradea) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.ahan) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.ahan) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1test.payeh) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.payeh) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.wastage) * 1.0 / SUM(grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1test.wastage) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.return_glaze) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.return_glaze) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradeC) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.gradeC) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradeB) * 1.0 / SUM(grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1test.gradeB) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1test.return_glaze) AS return_glaze, SUM(dbo.grade_faz1test.wastage) 
                      AS wastage, SUM(dbo.grade_faz1test.gradeC) AS gradeC, SUM(dbo.grade_faz1test.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz1test.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz1test.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz1test.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz1test.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz1test.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz1test.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz1test.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz1test.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1test.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz1test.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz1test.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz1test.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz1test.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz1test.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz1test.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz1test.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz1test.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz1test.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz1test.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz1test.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz1test.tedad) AS tedad, SUM(dbo.grade_faz1test.tedad) - SUM(dbo.grade_faz1test.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 11) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 3)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz1test.ahan) + SUM(dbo.grade_faz1test.khlabeh) + SUM(dbo.grade_faz1test.kharegi) + SUM(dbo.grade_faz1test.noglaze) + SUM(dbo.grade_faz1test.pin) 
                                              + SUM(dbo.grade_faz1test.khglaze) + SUM(dbo.grade_faz1test.kafsefid) + SUM(dbo.grade_faz1test.deformation) + SUM(dbo.grade_faz1test.tarak) + SUM(dbo.grade_faz1test.dorangi) 
                                              + SUM(dbo.grade_faz1test.sarsozani) + SUM(dbo.grade_faz1test.oftadegi) + SUM(dbo.grade_faz1test.payeh) + SUM(dbo.grade_faz1test.khbadaneh) + SUM(dbo.grade_faz1test.tarpayeh) + SUM(dbo.grade_faz1test.tardasteh)
                                              + SUM(dbo.grade_faz1test.labpar) + SUM(dbo.grade_faz1test.rizesh) + SUM(dbo.grade_faz1test.hobab) + SUM(dbo.grade_faz1test.rageh) + SUM(dbo.grade_faz1test.khash) AS jamecol, 
                                              SUM(dbo.grade_faz1test.gradea) + SUM(dbo.grade_faz1test.gradeB) + SUM(dbo.grade_faz1test.gradeC) + SUM(dbo.grade_faz1test.wastage) + SUM(dbo.grade_faz1test.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz1test.gradea) AS A, SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.khlabeh) AS khlabeh, SUM(dbo.grade_faz1test.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz1test.noglaze) AS noglaze, SUM(dbo.grade_faz1test.pin) AS pin, SUM(dbo.grade_faz1test.khglaze) AS khglaze, SUM(dbo.grade_faz1test.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz1test.deformation) AS deformation, SUM(dbo.grade_faz1test.tarak) AS tarak, SUM(dbo.grade_faz1test.dorangi) AS dorangi, SUM(dbo.grade_faz1test.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz1test.oftadegi) AS oftadegi, SUM(dbo.grade_faz1test.payeh) AS payeh, SUM(dbo.grade_faz1test.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz1test.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1test.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz1test.labpar) AS labpar, SUM(dbo.grade_faz1test.rizesh) AS rizesh, SUM(dbo.grade_faz1test.hobab) AS hobab, SUM(dbo.grade_faz1test.rageh) AS rageh, 
                                              SUM(dbo.grade_faz1test.khash) AS khash, SUM(dbo.grade_faz1test.gradeB) AS GB, SUM(dbo.grade_faz1test.gradeC) AS GC, SUM(dbo.grade_faz1test.wastage) AS wast, 
                                              SUM(dbo.grade_faz1test.return_glaze) AS ret_glaze
                         FROM         dbo.item INNER JOIN
                                              dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
                        WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 11) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 3) ) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2falehP_test" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradea) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.gradea) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.ahan) * 1.0 / SUM(dbo.grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2test.ahan) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.payeh) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.payeh) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.wastage) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.wastage) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.return_glaze) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.return_glaze) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.gradeC) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradeB) * 1.0 / SUM(dbo.grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2test.gradeB) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz2test.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz2test.wastage) AS wastage,SUM(dbo.grade_faz2test.gradeC) AS gradeC, SUM(dbo.grade_faz2test.gradeB) AS gradeB,cast(SUM(dbo.grade_faz2test.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz2test.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz2test.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz2test.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz2test.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz2test.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz2test.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz2test.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2test.payeh) AS payeh,cast( SUM(dbo.grade_faz2test.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz2test.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz2test.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz2test.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz2test.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz2test.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz2test.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz2test.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz2test.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz2test.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz2test.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz2test.tedad) AS tedad, SUM(dbo.grade_faz2test.tedad - dbo.grade_faz2test.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind =11) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 3) 
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradea) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.gradea) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.ahan) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.ahan) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2test.payeh) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.payeh) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.wastage) * 1.0 / SUM(grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2test.wastage) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.return_glaze) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.return_glaze) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradeC) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.gradeC) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradeB) * 1.0 / SUM(grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2test.gradeB) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2test.return_glaze) AS return_glaze, SUM(dbo.grade_faz2test.wastage) 
                      AS wastage, SUM(dbo.grade_faz2test.gradeC) AS gradeC, SUM(dbo.grade_faz2test.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz2test.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz2test.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz2test.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz2test.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz2test.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz2test.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz2test.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz2test.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2test.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz2test.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz2test.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz2test.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz2test.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz2test.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz2test.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz2test.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz2test.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz2test.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz2test.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz2test.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz2test.tedad) AS tedad, SUM(dbo.grade_faz2test.tedad) - SUM(dbo.grade_faz2test.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 11) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 3)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz2test.ahan) + SUM(dbo.grade_faz2test.khlabeh) + SUM(dbo.grade_faz2test.kharegi) + SUM(dbo.grade_faz2test.noglaze) + SUM(dbo.grade_faz2test.pin) 
                                              + SUM(dbo.grade_faz2test.khglaze) + SUM(dbo.grade_faz2test.kafsefid) + SUM(dbo.grade_faz2test.deformation) + SUM(dbo.grade_faz2test.tarak) + SUM(dbo.grade_faz2test.dorangi) 
                                              + SUM(dbo.grade_faz2test.sarsozani) + SUM(dbo.grade_faz2test.oftadegi) + SUM(dbo.grade_faz2test.payeh) + SUM(dbo.grade_faz2test.khbadaneh) + SUM(dbo.grade_faz2test.tarpayeh) + SUM(dbo.grade_faz2test.tardasteh)
                                              + SUM(dbo.grade_faz2test.labpar) + SUM(dbo.grade_faz2test.rizesh) + SUM(dbo.grade_faz2test.hobab) + SUM(dbo.grade_faz2test.rageh) + SUM(dbo.grade_faz2test.khash) AS jamecol, 
                                              SUM(dbo.grade_faz2test.gradea) + SUM(dbo.grade_faz2test.gradeB) + SUM(dbo.grade_faz2test.gradeC) + SUM(dbo.grade_faz2test.wastage) + SUM(dbo.grade_faz2test.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz2test.gradea) AS A, SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.khlabeh) AS khlabeh, SUM(dbo.grade_faz2test.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz2test.noglaze) AS noglaze, SUM(dbo.grade_faz2test.pin) AS pin, SUM(dbo.grade_faz2test.khglaze) AS khglaze, SUM(dbo.grade_faz2test.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz2test.deformation) AS deformation, SUM(dbo.grade_faz2test.tarak) AS tarak, SUM(dbo.grade_faz2test.dorangi) AS dorangi, SUM(dbo.grade_faz2test.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz2test.oftadegi) AS oftadegi, SUM(dbo.grade_faz2test.payeh) AS payeh, SUM(dbo.grade_faz2test.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz2test.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2test.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz2test.labpar) AS labpar, SUM(dbo.grade_faz2test.rizesh) AS rizesh, SUM(dbo.grade_faz2test.hobab) AS hobab, SUM(dbo.grade_faz2test.rageh) AS rageh, 
                                              SUM(dbo.grade_faz2test.khash) AS khash, SUM(dbo.grade_faz2test.gradeB) AS GB, SUM(dbo.grade_faz2test.gradeC) AS GC, SUM(dbo.grade_faz2test.wastage) AS wast, 
                                              SUM(dbo.grade_faz2test.return_glaze) AS ret_glaze
                         FROM         dbo.item INNER JOIN
                                              dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
                        WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 8) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 9) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 10) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 11) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 200) AND (dbo.item.sector_product = 3) ) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1Rikht_test" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradea) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.gradea) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.ahan) * 1.0 / SUM(dbo.grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1test.ahan) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.payeh) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.payeh) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.wastage) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.wastage) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.return_glaze) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.return_glaze) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.gradeC) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradeB) * 1.0 / SUM(dbo.grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1test.gradeB) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz1test.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz1test.wastage) AS wastage,SUM(dbo.grade_faz1test.gradeC) AS gradeC, SUM(dbo.grade_faz1test.gradeB) AS gradeB,cast(SUM(dbo.grade_faz1test.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz1test.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz1test.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz1test.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz1test.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz1test.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz1test.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz1test.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1test.payeh) AS payeh,cast( SUM(dbo.grade_faz1test.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz1test.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz1test.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz1test.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz1test.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz1test.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz1test.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz1test.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz1test.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz1test.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz1test.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz1test.tedad) AS tedad, SUM(dbo.grade_faz1test.tedad - dbo.grade_faz1test.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 1)
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradea) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.gradea) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.ahan) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.ahan) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1test.payeh) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.payeh) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.wastage) * 1.0 / SUM(grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1test.wastage) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.return_glaze) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.return_glaze) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradeC) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.gradeC) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradeB) * 1.0 / SUM(grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1test.gradeB) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1test.return_glaze) AS return_glaze, SUM(dbo.grade_faz1test.wastage) 
                      AS wastage, SUM(dbo.grade_faz1test.gradeC) AS gradeC, SUM(dbo.grade_faz1test.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz1test.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz1test.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz1test.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz1test.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz1test.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz1test.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz1test.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz1test.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1test.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz1test.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz1test.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz1test.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz1test.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz1test.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz1test.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz1test.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz1test.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz1test.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz1test.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz1test.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz1test.tedad) AS tedad, SUM(dbo.grade_faz1test.tedad) - SUM(dbo.grade_faz1test.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 1)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz1test.ahan) + SUM(dbo.grade_faz1test.khlabeh) + SUM(dbo.grade_faz1test.kharegi) + SUM(dbo.grade_faz1test.noglaze) + SUM(dbo.grade_faz1test.pin) 
                                              + SUM(dbo.grade_faz1test.khglaze) + SUM(dbo.grade_faz1test.kafsefid) + SUM(dbo.grade_faz1test.deformation) + SUM(dbo.grade_faz1test.tarak) + SUM(dbo.grade_faz1test.dorangi) 
                                              + SUM(dbo.grade_faz1test.sarsozani) + SUM(dbo.grade_faz1test.oftadegi) + SUM(dbo.grade_faz1test.payeh) + SUM(dbo.grade_faz1test.khbadaneh) + SUM(dbo.grade_faz1test.tarpayeh) + SUM(dbo.grade_faz1test.tardasteh)
                                              + SUM(dbo.grade_faz1test.labpar) + SUM(dbo.grade_faz1test.rizesh) + SUM(dbo.grade_faz1test.hobab) + SUM(dbo.grade_faz1test.rageh) + SUM(dbo.grade_faz1test.khash) AS jamecol, 
                                              SUM(dbo.grade_faz1test.gradea) + SUM(dbo.grade_faz1test.gradeB) + SUM(dbo.grade_faz1test.gradeC) + SUM(dbo.grade_faz1test.wastage) + SUM(dbo.grade_faz1test.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz1test.gradea) AS A, SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.khlabeh) AS khlabeh, SUM(dbo.grade_faz1test.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz1test.noglaze) AS noglaze, SUM(dbo.grade_faz1test.pin) AS pin, SUM(dbo.grade_faz1test.khglaze) AS khglaze, SUM(dbo.grade_faz1test.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz1test.deformation) AS deformation, SUM(dbo.grade_faz1test.tarak) AS tarak, SUM(dbo.grade_faz1test.dorangi) AS dorangi, SUM(dbo.grade_faz1test.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz1test.oftadegi) AS oftadegi, SUM(dbo.grade_faz1test.payeh) AS payeh, SUM(dbo.grade_faz1test.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz1test.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1test.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz1test.labpar) AS labpar, SUM(dbo.grade_faz1test.rizesh) AS rizesh, SUM(dbo.grade_faz1test.hobab) AS hobab, SUM(dbo.grade_faz1test.rageh) AS rageh, 
                                              SUM(dbo.grade_faz1test.khash) AS khash, SUM(dbo.grade_faz1test.gradeB) AS GB, SUM(dbo.grade_faz1test.gradeC) AS GC, SUM(dbo.grade_faz1test.wastage) AS wast, 
                                              SUM(dbo.grade_faz1test.return_glaze) AS ret_glaze
                        FROM         dbo.item INNER JOIN
                                              dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
                        WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 1)) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2Rikht_test" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradea) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.gradea) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.ahan) * 1.0 / SUM(dbo.grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2test.ahan) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.payeh) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.payeh) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.wastage) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.wastage) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.return_glaze) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.return_glaze) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.gradeC) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradeB) * 1.0 / SUM(dbo.grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2test.gradeB) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz2test.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz2test.wastage) AS wastage,SUM(dbo.grade_faz2test.gradeC) AS gradeC, SUM(dbo.grade_faz2test.gradeB) AS gradeB,cast(SUM(dbo.grade_faz2test.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz2test.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz2test.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz2test.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz2test.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz2test.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz2test.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz2test.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2test.payeh) AS payeh,cast( SUM(dbo.grade_faz2test.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz2test.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz2test.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz2test.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz2test.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz2test.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz2test.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz2test.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz2test.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz2test.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz2test.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz2test.tedad) AS tedad, SUM(dbo.grade_faz2test.tedad - dbo.grade_faz2test.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 1)
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradea) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.gradea) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.ahan) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.ahan) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2test.payeh) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.payeh) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.wastage) * 1.0 / SUM(grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2test.wastage) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.return_glaze) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.return_glaze) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradeC) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.gradeC) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradeB) * 1.0 / SUM(grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2test.gradeB) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2test.return_glaze) AS return_glaze, SUM(dbo.grade_faz2test.wastage) 
                      AS wastage, SUM(dbo.grade_faz2test.gradeC) AS gradeC, SUM(dbo.grade_faz2test.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz2test.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz2test.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz2test.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz2test.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz2test.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz2test.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz2test.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz2test.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2test.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz2test.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz2test.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz2test.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz2test.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz2test.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz2test.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz2test.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz2test.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz2test.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz2test.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz2test.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz2test.tedad) AS tedad, SUM(dbo.grade_faz2test.tedad) - SUM(dbo.grade_faz2test.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 1) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 1)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz2test.ahan) + SUM(dbo.grade_faz2test.khlabeh) + SUM(dbo.grade_faz2test.kharegi) + SUM(dbo.grade_faz2test.noglaze) + SUM(dbo.grade_faz2test.pin) 
                                              + SUM(dbo.grade_faz2test.khglaze) + SUM(dbo.grade_faz2test.kafsefid) + SUM(dbo.grade_faz2test.deformation) + SUM(dbo.grade_faz2test.tarak) + SUM(dbo.grade_faz2test.dorangi) 
                                              + SUM(dbo.grade_faz2test.sarsozani) + SUM(dbo.grade_faz2test.oftadegi) + SUM(dbo.grade_faz2test.payeh) + SUM(dbo.grade_faz2test.khbadaneh) + SUM(dbo.grade_faz2test.tarpayeh) + SUM(dbo.grade_faz2test.tardasteh)
                                              + SUM(dbo.grade_faz2test.labpar) + SUM(dbo.grade_faz2test.rizesh) + SUM(dbo.grade_faz2test.hobab) + SUM(dbo.grade_faz2test.rageh) + SUM(dbo.grade_faz2test.khash) AS jamecol, 
                                              SUM(dbo.grade_faz2test.gradea) + SUM(dbo.grade_faz2test.gradeB) + SUM(dbo.grade_faz2test.gradeC) + SUM(dbo.grade_faz2test.wastage) + SUM(dbo.grade_faz2test.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz2test.gradea) AS A, SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.khlabeh) AS khlabeh, SUM(dbo.grade_faz2test.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz2test.noglaze) AS noglaze, SUM(dbo.grade_faz2test.pin) AS pin, SUM(dbo.grade_faz2test.khglaze) AS khglaze, SUM(dbo.grade_faz2test.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz2test.deformation) AS deformation, SUM(dbo.grade_faz2test.tarak) AS tarak, SUM(dbo.grade_faz2test.dorangi) AS dorangi, SUM(dbo.grade_faz2test.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz2test.oftadegi) AS oftadegi, SUM(dbo.grade_faz2test.payeh) AS payeh, SUM(dbo.grade_faz2test.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz2test.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2test.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz2test.labpar) AS labpar, SUM(dbo.grade_faz2test.rizesh) AS rizesh, SUM(dbo.grade_faz2test.hobab) AS hobab, SUM(dbo.grade_faz2test.rageh) AS rageh, 
                                              SUM(dbo.grade_faz2test.khash) AS khash, SUM(dbo.grade_faz2test.gradeB) AS GB, SUM(dbo.grade_faz2test.gradeC) AS GC, SUM(dbo.grade_faz2test.wastage) AS wast, 
                                              SUM(dbo.grade_faz2test.return_glaze) AS ret_glaze
                        FROM         dbo.item INNER JOIN
                                              dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
                        WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 1) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 1)) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1Press_test" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradea) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.gradea) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.ahan) * 1.0 / SUM(dbo.grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1test.ahan) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.payeh) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.payeh) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.wastage) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.wastage) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.return_glaze) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.return_glaze) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.gradeC) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradeB) * 1.0 / SUM(dbo.grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1test.gradeB) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz1test.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz1test.wastage) AS wastage,SUM(dbo.grade_faz1test.gradeC) AS gradeC, SUM(dbo.grade_faz1test.gradeB) AS gradeB,cast(SUM(dbo.grade_faz1test.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz1test.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz1test.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz1test.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz1test.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz1test.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz1test.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz1test.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1test.payeh) AS payeh,cast( SUM(dbo.grade_faz1test.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz1test.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz1test.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz1test.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz1test.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz1test.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz1test.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz1test.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz1test.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz1test.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz1test.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz1test.tedad) AS tedad, SUM(dbo.grade_faz1test.tedad - dbo.grade_faz1test.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 3)
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradea) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.gradea) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.ahan) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.ahan) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1test.payeh) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.payeh) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.wastage) * 1.0 / SUM(grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1test.wastage) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.return_glaze) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.return_glaze) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradeC) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.gradeC) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradeB) * 1.0 / SUM(grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1test.gradeB) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1test.return_glaze) AS return_glaze, SUM(dbo.grade_faz1test.wastage) 
                      AS wastage, SUM(dbo.grade_faz1test.gradeC) AS gradeC, SUM(dbo.grade_faz1test.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz1test.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz1test.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz1test.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz1test.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz1test.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz1test.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz1test.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz1test.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1test.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz1test.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz1test.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz1test.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz1test.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz1test.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz1test.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz1test.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz1test.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz1test.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz1test.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz1test.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz1test.tedad) AS tedad, SUM(dbo.grade_faz1test.tedad) - SUM(dbo.grade_faz1test.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 3)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz1test.ahan) + SUM(dbo.grade_faz1test.khlabeh) + SUM(dbo.grade_faz1test.kharegi) + SUM(dbo.grade_faz1test.noglaze) + SUM(dbo.grade_faz1test.pin) 
                                              + SUM(dbo.grade_faz1test.khglaze) + SUM(dbo.grade_faz1test.kafsefid) + SUM(dbo.grade_faz1test.deformation) + SUM(dbo.grade_faz1test.tarak) + SUM(dbo.grade_faz1test.dorangi) 
                                              + SUM(dbo.grade_faz1test.sarsozani) + SUM(dbo.grade_faz1test.oftadegi) + SUM(dbo.grade_faz1test.payeh) + SUM(dbo.grade_faz1test.khbadaneh) + SUM(dbo.grade_faz1test.tarpayeh) + SUM(dbo.grade_faz1test.tardasteh)
                                              + SUM(dbo.grade_faz1test.labpar) + SUM(dbo.grade_faz1test.rizesh) + SUM(dbo.grade_faz1test.hobab) + SUM(dbo.grade_faz1test.rageh) + SUM(dbo.grade_faz1test.khash) AS jamecol, 
                                              SUM(dbo.grade_faz1test.gradea) + SUM(dbo.grade_faz1test.gradeB) + SUM(dbo.grade_faz1test.gradeC) + SUM(dbo.grade_faz1test.wastage) + SUM(dbo.grade_faz1test.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz1test.gradea) AS A, SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.khlabeh) AS khlabeh, SUM(dbo.grade_faz1test.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz1test.noglaze) AS noglaze, SUM(dbo.grade_faz1test.pin) AS pin, SUM(dbo.grade_faz1test.khglaze) AS khglaze, SUM(dbo.grade_faz1test.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz1test.deformation) AS deformation, SUM(dbo.grade_faz1test.tarak) AS tarak, SUM(dbo.grade_faz1test.dorangi) AS dorangi, SUM(dbo.grade_faz1test.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz1test.oftadegi) AS oftadegi, SUM(dbo.grade_faz1test.payeh) AS payeh, SUM(dbo.grade_faz1test.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz1test.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1test.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz1test.labpar) AS labpar, SUM(dbo.grade_faz1test.rizesh) AS rizesh, SUM(dbo.grade_faz1test.hobab) AS hobab, SUM(dbo.grade_faz1test.rageh) AS rageh, 
                                              SUM(dbo.grade_faz1test.khash) AS khash, SUM(dbo.grade_faz1test.gradeB) AS GB, SUM(dbo.grade_faz1test.gradeC) AS GC, SUM(dbo.grade_faz1test.wastage) AS wast, 
                                              SUM(dbo.grade_faz1test.return_glaze) AS ret_glaze
                       FROM         dbo.item INNER JOIN
                                              dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
                        WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 3)) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2Press_test" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradea) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.gradea) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.ahan) * 1.0 / SUM(dbo.grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2test.ahan) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.payeh) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.payeh) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.wastage) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.wastage) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.return_glaze) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.return_glaze) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.gradeC) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradeB) * 1.0 / SUM(dbo.grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2test.gradeB) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz2test.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz2test.wastage) AS wastage,SUM(dbo.grade_faz2test.gradeC) AS gradeC, SUM(dbo.grade_faz2test.gradeB) AS gradeB,cast(SUM(dbo.grade_faz2test.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz2test.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz2test.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz2test.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz2test.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz2test.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz2test.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz2test.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2test.payeh) AS payeh,cast( SUM(dbo.grade_faz2test.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz2test.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz2test.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz2test.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz2test.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz2test.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz2test.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz2test.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz2test.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz2test.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz2test.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz2test.tedad) AS tedad, SUM(dbo.grade_faz2test.tedad - dbo.grade_faz2test.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 3)
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradea) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.gradea) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.ahan) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.ahan) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2test.payeh) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.payeh) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.wastage) * 1.0 / SUM(grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2test.wastage) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.return_glaze) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.return_glaze) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradeC) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.gradeC) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradeB) * 1.0 / SUM(grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2test.gradeB) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2test.return_glaze) AS return_glaze, SUM(dbo.grade_faz2test.wastage) 
                      AS wastage, SUM(dbo.grade_faz2test.gradeC) AS gradeC, SUM(dbo.grade_faz2test.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz2test.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz2test.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz2test.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz2test.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz2test.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz2test.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz2test.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz2test.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2test.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz2test.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz2test.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz2test.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz2test.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz2test.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz2test.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz2test.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz2test.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz2test.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz2test.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz2test.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz2test.tedad) AS tedad, SUM(dbo.grade_faz2test.tedad) - SUM(dbo.grade_faz2test.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 3) OR
                      (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 3)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz2test.ahan) + SUM(dbo.grade_faz2test.khlabeh) + SUM(dbo.grade_faz2test.kharegi) + SUM(dbo.grade_faz2test.noglaze) + SUM(dbo.grade_faz2test.pin) 
                                              + SUM(dbo.grade_faz2test.khglaze) + SUM(dbo.grade_faz2test.kafsefid) + SUM(dbo.grade_faz2test.deformation) + SUM(dbo.grade_faz2test.tarak) + SUM(dbo.grade_faz2test.dorangi) 
                                              + SUM(dbo.grade_faz2test.sarsozani) + SUM(dbo.grade_faz2test.oftadegi) + SUM(dbo.grade_faz2test.payeh) + SUM(dbo.grade_faz2test.khbadaneh) + SUM(dbo.grade_faz2test.tarpayeh) + SUM(dbo.grade_faz2test.tardasteh)
                                              + SUM(dbo.grade_faz2test.labpar) + SUM(dbo.grade_faz2test.rizesh) + SUM(dbo.grade_faz2test.hobab) + SUM(dbo.grade_faz2test.rageh) + SUM(dbo.grade_faz2test.khash) AS jamecol, 
                                              SUM(dbo.grade_faz2test.gradea) + SUM(dbo.grade_faz2test.gradeB) + SUM(dbo.grade_faz2test.gradeC) + SUM(dbo.grade_faz2test.wastage) + SUM(dbo.grade_faz2test.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz2test.gradea) AS A, SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.khlabeh) AS khlabeh, SUM(dbo.grade_faz2test.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz2test.noglaze) AS noglaze, SUM(dbo.grade_faz2test.pin) AS pin, SUM(dbo.grade_faz2test.khglaze) AS khglaze, SUM(dbo.grade_faz2test.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz2test.deformation) AS deformation, SUM(dbo.grade_faz2test.tarak) AS tarak, SUM(dbo.grade_faz2test.dorangi) AS dorangi, SUM(dbo.grade_faz2test.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz2test.oftadegi) AS oftadegi, SUM(dbo.grade_faz2test.payeh) AS payeh, SUM(dbo.grade_faz2test.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz2test.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2test.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz2test.labpar) AS labpar, SUM(dbo.grade_faz2test.rizesh) AS rizesh, SUM(dbo.grade_faz2test.hobab) AS hobab, SUM(dbo.grade_faz2test.rageh) AS rageh, 
                                              SUM(dbo.grade_faz2test.khash) AS khash, SUM(dbo.grade_faz2test.gradeB) AS GB, SUM(dbo.grade_faz2test.gradeC) AS GC, SUM(dbo.grade_faz2test.wastage) AS wast, 
                                              SUM(dbo.grade_faz2test.return_glaze) AS ret_glaze
                       FROM         dbo.item INNER JOIN
                                              dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
                        WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e)   AND (dbo.item.kind = 1) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 2) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 3) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 4) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 5) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 6) AND (dbo.item.sector_product = 3) OR
                                              (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind = 7) AND (dbo.item.sector_product = 3)) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
   
    <asp:SqlDataSource ID="faz1other" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradea) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradea) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.ahan) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.payeh) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.payeh) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.wastage) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.return_glaze) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz1.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1.gradeC) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1.gradeB) * 1.0 / SUM(dbo.grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz1.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz1.wastage) AS wastage,SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB,cast(SUM(dbo.grade_faz1.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz1.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz1.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz1.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz1.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz1.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz1.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz1.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1.payeh) AS payeh,cast( SUM(dbo.grade_faz1.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz1.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz1.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz1.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz1.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz1.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz1.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz1.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz1.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz1.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz1.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad - dbo.grade_faz1.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.kind&gt;11) AND (dbo.item.kind&lt;&gt;200)
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.gradea) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.gradea) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.ahan) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.ahan) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1.payeh) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.payeh) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.wastage) * 1.0 / SUM(grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1.wastage) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.return_glaze) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.return_glaze) 
                      * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1.gradeC) * 1.0 / SUM(grade_faz1.tedad) * 100 - FLOOR(SUM(grade_faz1.gradeC) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1.gradeB) * 1.0 / SUM(grade_faz1.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1.gradeB) * 1.0 / SUM(grade_faz1.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1.return_glaze) AS return_glaze, SUM(dbo.grade_faz1.wastage) 
                      AS wastage, SUM(dbo.grade_faz1.gradeC) AS gradeC, SUM(dbo.grade_faz1.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz1.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz1.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz1.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz1.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz1.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz1.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz1.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz1.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz1.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz1.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz1.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz1.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz1.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz1.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz1.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz1.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz1.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz1.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz1.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz1.tedad) AS tedad, SUM(dbo.grade_faz1.tedad) - SUM(dbo.grade_faz1.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (dbo.item.kind&gt;11) AND (dbo.item.kind&lt;&gt;200)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz1.ahan) + SUM(dbo.grade_faz1.khlabeh) + SUM(dbo.grade_faz1.kharegi) + SUM(dbo.grade_faz1.noglaze) + SUM(dbo.grade_faz1.pin) 
                                              + SUM(dbo.grade_faz1.khglaze) + SUM(dbo.grade_faz1.kafsefid) + SUM(dbo.grade_faz1.deformation) + SUM(dbo.grade_faz1.tarak) + SUM(dbo.grade_faz1.dorangi) 
                                              + SUM(dbo.grade_faz1.sarsozani) + SUM(dbo.grade_faz1.oftadegi) + SUM(dbo.grade_faz1.payeh) + SUM(dbo.grade_faz1.khbadaneh) + SUM(dbo.grade_faz1.tarpayeh) + SUM(dbo.grade_faz1.tardasteh)
                                              + SUM(dbo.grade_faz1.labpar) + SUM(dbo.grade_faz1.rizesh) + SUM(dbo.grade_faz1.hobab) + SUM(dbo.grade_faz1.rageh) + SUM(dbo.grade_faz1.khash) AS jamecol, 
                                              SUM(dbo.grade_faz1.gradea) + SUM(dbo.grade_faz1.gradeB) + SUM(dbo.grade_faz1.gradeC) + SUM(dbo.grade_faz1.wastage) + SUM(dbo.grade_faz1.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz1.gradea) AS A, SUM(dbo.grade_faz1.ahan) AS ahan, SUM(dbo.grade_faz1.khlabeh) AS khlabeh, SUM(dbo.grade_faz1.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz1.noglaze) AS noglaze, SUM(dbo.grade_faz1.pin) AS pin, SUM(dbo.grade_faz1.khglaze) AS khglaze, SUM(dbo.grade_faz1.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz1.deformation) AS deformation, SUM(dbo.grade_faz1.tarak) AS tarak, SUM(dbo.grade_faz1.dorangi) AS dorangi, SUM(dbo.grade_faz1.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz1.oftadegi) AS oftadegi, SUM(dbo.grade_faz1.payeh) AS payeh, SUM(dbo.grade_faz1.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz1.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz1.labpar) AS labpar, SUM(dbo.grade_faz1.rizesh) AS rizesh, SUM(dbo.grade_faz1.hobab) AS hobab, SUM(dbo.grade_faz1.rageh) AS rageh, 
                                              SUM(dbo.grade_faz1.khash) AS khash, SUM(dbo.grade_faz1.gradeB) AS GB, SUM(dbo.grade_faz1.gradeC) AS GC, SUM(dbo.grade_faz1.wastage) AS wast, 
                                              SUM(dbo.grade_faz1.return_glaze) AS ret_glaze
                         FROM         dbo.item INNER JOIN
                                              dbo.grade_faz1 ON dbo.item.id = dbo.grade_faz1.item_id
                        WHERE     (dbo.grade_faz1.tarikh BETWEEN @tarikh_s AND @tarikh_e)  AND (dbo.item.kind&gt;11) AND (dbo.item.kind&lt;&gt;200) ) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2other" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradea) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradea) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.ahan) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.payeh) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.payeh) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.wastage) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.return_glaze) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz2.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2.gradeC) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2.gradeB) * 1.0 / SUM(dbo.grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz2.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz2.wastage) AS wastage,SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB,cast(SUM(dbo.grade_faz2.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz2.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz2.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz2.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz2.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz2.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz2.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz2.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2.payeh) AS payeh,cast( SUM(dbo.grade_faz2.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz2.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz2.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz2.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz2.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz2.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz2.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz2.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz2.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz2.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz2.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad - dbo.grade_faz2.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e)   AND (dbo.item.kind&gt;11) AND (dbo.item.kind&lt;&gt;200)
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.gradea) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.gradea) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.ahan) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.ahan) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2.payeh) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.payeh) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.wastage) * 1.0 / SUM(grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2.wastage) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.return_glaze) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.return_glaze) 
                      * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2.gradeC) * 1.0 / SUM(grade_faz2.tedad) * 100 - FLOOR(SUM(grade_faz2.gradeC) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2.gradeB) * 1.0 / SUM(grade_faz2.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2.gradeB) * 1.0 / SUM(grade_faz2.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2.return_glaze) AS return_glaze, SUM(dbo.grade_faz2.wastage) 
                      AS wastage, SUM(dbo.grade_faz2.gradeC) AS gradeC, SUM(dbo.grade_faz2.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz2.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz2.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz2.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz2.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz2.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz2.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz2.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz2.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz2.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz2.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz2.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz2.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz2.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz2.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz2.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz2.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz2.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz2.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz2.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz2.tedad) AS tedad, SUM(dbo.grade_faz2.tedad) - SUM(dbo.grade_faz2.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e)   AND (dbo.item.kind&gt;11) AND (dbo.item.kind&lt;&gt;200)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz2.ahan) + SUM(dbo.grade_faz2.khlabeh) + SUM(dbo.grade_faz2.kharegi) + SUM(dbo.grade_faz2.noglaze) + SUM(dbo.grade_faz2.pin) 
                                              + SUM(dbo.grade_faz2.khglaze) + SUM(dbo.grade_faz2.kafsefid) + SUM(dbo.grade_faz2.deformation) + SUM(dbo.grade_faz2.tarak) + SUM(dbo.grade_faz2.dorangi) 
                                              + SUM(dbo.grade_faz2.sarsozani) + SUM(dbo.grade_faz2.oftadegi) + SUM(dbo.grade_faz2.payeh) + SUM(dbo.grade_faz2.khbadaneh) + SUM(dbo.grade_faz2.tarpayeh) + SUM(dbo.grade_faz2.tardasteh)
                                              + SUM(dbo.grade_faz2.labpar) + SUM(dbo.grade_faz2.rizesh) + SUM(dbo.grade_faz2.hobab) + SUM(dbo.grade_faz2.rageh) + SUM(dbo.grade_faz2.khash) AS jamecol, 
                                              SUM(dbo.grade_faz2.gradea) + SUM(dbo.grade_faz2.gradeB) + SUM(dbo.grade_faz2.gradeC) + SUM(dbo.grade_faz2.wastage) + SUM(dbo.grade_faz2.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz2.gradea) AS A, SUM(dbo.grade_faz2.ahan) AS ahan, SUM(dbo.grade_faz2.khlabeh) AS khlabeh, SUM(dbo.grade_faz2.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz2.noglaze) AS noglaze, SUM(dbo.grade_faz2.pin) AS pin, SUM(dbo.grade_faz2.khglaze) AS khglaze, SUM(dbo.grade_faz2.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz2.deformation) AS deformation, SUM(dbo.grade_faz2.tarak) AS tarak, SUM(dbo.grade_faz2.dorangi) AS dorangi, SUM(dbo.grade_faz2.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz2.oftadegi) AS oftadegi, SUM(dbo.grade_faz2.payeh) AS payeh, SUM(dbo.grade_faz2.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz2.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz2.labpar) AS labpar, SUM(dbo.grade_faz2.rizesh) AS rizesh, SUM(dbo.grade_faz2.hobab) AS hobab, SUM(dbo.grade_faz2.rageh) AS rageh, 
                                              SUM(dbo.grade_faz2.khash) AS khash, SUM(dbo.grade_faz2.gradeB) AS GB, SUM(dbo.grade_faz2.gradeC) AS GC, SUM(dbo.grade_faz2.wastage) AS wast, 
                                              SUM(dbo.grade_faz2.return_glaze) AS ret_glaze
                         FROM         dbo.item INNER JOIN
                                              dbo.grade_faz2 ON dbo.item.id = dbo.grade_faz2.item_id
                        WHERE     (dbo.grade_faz2.tarikh BETWEEN @tarikh_s AND @tarikh_e)   AND (dbo.item.kind&gt;11) AND (dbo.item.kind&lt;&gt;200) ) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
   
    <asp:SqlDataSource ID="faz1othertest" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradea) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.gradea) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.ahan) * 1.0 / SUM(dbo.grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1test.ahan) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.payeh) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.payeh) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.wastage) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.wastage) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.return_glaze) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.return_glaze) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz1test.gradeC) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz1test.gradeB) * 1.0 / SUM(dbo.grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz1test.gradeB) * 1.0 / SUM(dbo.grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz1test.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz1test.wastage) AS wastage,SUM(dbo.grade_faz1test.gradeC) AS gradeC, SUM(dbo.grade_faz1test.gradeB) AS gradeB,cast(SUM(dbo.grade_faz1test.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz1test.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz1test.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz1test.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz1test.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz1test.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz1test.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz1test.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1test.payeh) AS payeh,cast( SUM(dbo.grade_faz1test.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz1test.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz1test.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz1test.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz1test.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz1test.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz1test.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz1test.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz1test.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz1test.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz1test.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz1test.tedad) AS tedad, SUM(dbo.grade_faz1test.tedad - dbo.grade_faz1test.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e)   AND (dbo.item.kind&gt;11) AND (dbo.item.kind&lt;&gt;200)
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradea) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.gradea) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.ahan) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.ahan) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1test.payeh) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.payeh) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.wastage) * 1.0 / SUM(grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1test.wastage) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.return_glaze) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.return_glaze) 
                      * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradeC) * 1.0 / SUM(grade_faz1test.tedad) * 100 - FLOOR(SUM(grade_faz1test.gradeC) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz1test.gradeB) * 1.0 / SUM(grade_faz1test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz1test.gradeB) * 1.0 / SUM(grade_faz1test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz1test.return_glaze) AS return_glaze, SUM(dbo.grade_faz1test.wastage) 
                      AS wastage, SUM(dbo.grade_faz1test.gradeC) AS gradeC, SUM(dbo.grade_faz1test.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz1test.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz1test.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz1test.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz1test.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz1test.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz1test.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz1test.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz1test.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz1test.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz1test.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz1test.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz1test.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz1test.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz1test.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz1test.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz1test.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz1test.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz1test.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz1test.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz1test.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz1test.tedad) AS tedad, SUM(dbo.grade_faz1test.tedad) - SUM(dbo.grade_faz1test.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e)   AND (dbo.item.kind&gt;11) AND (dbo.item.kind&lt;&gt;200)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz1test.ahan) + SUM(dbo.grade_faz1test.khlabeh) + SUM(dbo.grade_faz1test.kharegi) + SUM(dbo.grade_faz1test.noglaze) + SUM(dbo.grade_faz1test.pin) 
                                              + SUM(dbo.grade_faz1test.khglaze) + SUM(dbo.grade_faz1test.kafsefid) + SUM(dbo.grade_faz1test.deformation) + SUM(dbo.grade_faz1test.tarak) + SUM(dbo.grade_faz1test.dorangi) 
                                              + SUM(dbo.grade_faz1test.sarsozani) + SUM(dbo.grade_faz1test.oftadegi) + SUM(dbo.grade_faz1test.payeh) + SUM(dbo.grade_faz1test.khbadaneh) + SUM(dbo.grade_faz1test.tarpayeh) + SUM(dbo.grade_faz1test.tardasteh)
                                              + SUM(dbo.grade_faz1test.labpar) + SUM(dbo.grade_faz1test.rizesh) + SUM(dbo.grade_faz1test.hobab) + SUM(dbo.grade_faz1test.rageh) + SUM(dbo.grade_faz1test.khash) AS jamecol, 
                                              SUM(dbo.grade_faz1test.gradea) + SUM(dbo.grade_faz1test.gradeB) + SUM(dbo.grade_faz1test.gradeC) + SUM(dbo.grade_faz1test.wastage) + SUM(dbo.grade_faz1test.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz1test.gradea) AS A, SUM(dbo.grade_faz1test.ahan) AS ahan, SUM(dbo.grade_faz1test.khlabeh) AS khlabeh, SUM(dbo.grade_faz1test.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz1test.noglaze) AS noglaze, SUM(dbo.grade_faz1test.pin) AS pin, SUM(dbo.grade_faz1test.khglaze) AS khglaze, SUM(dbo.grade_faz1test.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz1test.deformation) AS deformation, SUM(dbo.grade_faz1test.tarak) AS tarak, SUM(dbo.grade_faz1test.dorangi) AS dorangi, SUM(dbo.grade_faz1test.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz1test.oftadegi) AS oftadegi, SUM(dbo.grade_faz1test.payeh) AS payeh, SUM(dbo.grade_faz1test.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz1test.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz1test.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz1test.labpar) AS labpar, SUM(dbo.grade_faz1test.rizesh) AS rizesh, SUM(dbo.grade_faz1test.hobab) AS hobab, SUM(dbo.grade_faz1test.rageh) AS rageh, 
                                              SUM(dbo.grade_faz1test.khash) AS khash, SUM(dbo.grade_faz1test.gradeB) AS GB, SUM(dbo.grade_faz1test.gradeC) AS GC, SUM(dbo.grade_faz1test.wastage) AS wast, 
                                              SUM(dbo.grade_faz1test.return_glaze) AS ret_glaze
                         FROM         dbo.item INNER JOIN
                                              dbo.grade_faz1test ON dbo.item.id = dbo.grade_faz1test.item_id
                        WHERE     (dbo.grade_faz1test.tarikh BETWEEN @tarikh_s AND @tarikh_e)   AND (dbo.item.kind&gt;11) AND (dbo.item.kind&lt;&gt;200) ) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2othertest" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT  *  from(SELECT     CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradea) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.gradea) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad,
                      CASE WHEN SUM(ahan)&gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.ahan) * 1.0 / SUM(dbo.grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2test.ahan) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.payeh) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.payeh) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.wastage) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.wastage) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.return_glaze) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.return_glaze) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) 
                      ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradeC) 
                      * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100 - FLOOR(SUM(dbo.grade_faz2test.gradeC) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, CASE WHEN SUM(gradeB) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(dbo.grade_faz2test.gradeB) * 1.0 / SUM(dbo.grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(dbo.grade_faz2test.gradeB) * 1.0 / SUM(dbo.grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad,SUM(dbo.grade_faz2test.return_glaze)AS return_glaze, 
                      SUM(dbo.grade_faz2test.wastage) AS wastage,SUM(dbo.grade_faz2test.gradeC) AS gradeC, SUM(dbo.grade_faz2test.gradeB) AS gradeB,cast(SUM(dbo.grade_faz2test.khash) as varchar(10)) AS khash, cast(SUM(dbo.grade_faz2test.rageh) as varchar(10)) 
                      AS rageh, cast(SUM(dbo.grade_faz2test.hobab)as varchar(10)) AS hobab,cast( SUM(dbo.grade_faz2test.rizesh)as varchar(10)) AS rizesh, cast(SUM(dbo.grade_faz2test.labpar)as varchar(10)) AS labpar, cast(SUM(dbo.grade_faz2test.tarpayeh)as varchar(10)) AS tarpayeh, 
                      cast(SUM(dbo.grade_faz2test.tardasteh)as varchar(10)) AS tardasteh,cast(SUM(dbo.grade_faz2test.khbadaneh)as varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2test.payeh) AS payeh,cast( SUM(dbo.grade_faz2test.oftadegi)as varchar(10)) AS oftadegi, cast(SUM(dbo.grade_faz2test.sarsozani)as varchar(10)) AS sarsozani, 
                      cast(SUM(dbo.grade_faz2test.dorangi)as varchar(10)) AS dorangi, cast(SUM(dbo.grade_faz2test.tarak)as varchar(10) ) AS tarak, cast(SUM(dbo.grade_faz2test.deformation)as varchar(10)) AS deformation, cast(SUM(dbo.grade_faz2test.kafsefid)as varchar(10)) AS kafsefid, 
                      cast(SUM(dbo.grade_faz2test.khglaze)as varchar(10)) AS khglaze,cast( SUM(dbo.grade_faz2test.pin)as varchar(10)) AS pin, cast(SUM(dbo.grade_faz2test.noglaze)as varchar(10)) AS noglaze,cast( SUM(dbo.grade_faz2test.kharegi)as varchar(10)) AS kharegi, cast(SUM(dbo.grade_faz2test.khlabeh)as varchar(10)) 
                      AS khlabeh, SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.gradea) AS gradea, '*جمع آمار*' as item_name,SUM(dbo.grade_faz2test.tedad) AS tedad, SUM(dbo.grade_faz2test.tedad - dbo.grade_faz2test.gradea) 
                      AS jame
FROM         dbo.item INNER JOIN
                      dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e)   AND (dbo.item.kind&gt;11) AND (dbo.item.kind&lt;&gt;200)
Union
SELECT     TOP (100) PERCENT CASE WHEN SUM(gradea) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradea) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradea) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.gradea) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Adarsad, CASE WHEN SUM(ahan) 
                      &gt; 0 THEN ('%' + CAST(FLOOR(SUM(ahan) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.ahan) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.ahan) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS ahandarsad, CASE WHEN SUM(payeh) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(payeh) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2test.payeh) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.payeh) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN SUM(wastage) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(wastage) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.wastage) * 1.0 / SUM(grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2test.wastage) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Wdarsad, CASE WHEN SUM(return_glaze) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(return_glaze) 
                      * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.return_glaze) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.return_glaze) 
                      * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS retdarsad, CASE WHEN SUM(gradeC) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeC) * 1.0 / SUM(tedad) * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradeC) * 1.0 / SUM(grade_faz2test.tedad) * 100 - FLOOR(SUM(grade_faz2test.gradeC) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Cdarsad, 
                      CASE WHEN SUM(gradeB) &gt; 0 THEN ('%' + CAST(FLOOR(SUM(gradeB) * 1.0 / SUM(tedad) * 100) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(grade_faz2test.gradeB) * 1.0 / SUM(grade_faz2test.tedad) 
                      * 100 - FLOOR(SUM(grade_faz2test.gradeB) * 1.0 / SUM(grade_faz2test.tedad) * 100), 4), 2)) ELSE '0' END AS Bdarsad, SUM(dbo.grade_faz2test.return_glaze) AS return_glaze, SUM(dbo.grade_faz2test.wastage) 
                      AS wastage, SUM(dbo.grade_faz2test.gradeC) AS gradeC, SUM(dbo.grade_faz2test.gradeB) AS gradeB, CAST(SUM(dbo.grade_faz2test.khash) AS varchar(10)) AS khash, CAST(SUM(dbo.grade_faz2test.rageh) 
                      AS varchar(10)) AS rageh, CAST(SUM(dbo.grade_faz2test.hobab) AS varchar(10)) AS hobab, CAST(SUM(dbo.grade_faz2test.rizesh) AS varchar(10)) AS rizesh, CAST(SUM(dbo.grade_faz2test.labpar) 
                      AS varchar(10)) AS labpar, CAST(SUM(dbo.grade_faz2test.tarpayeh) AS varchar(10)) AS tarpayeh,CAST(SUM(dbo.grade_faz2test.tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(dbo.grade_faz2test.khbadaneh) AS varchar(10)) AS khbadaneh, SUM(dbo.grade_faz2test.payeh) 
                      AS payeh, CAST(SUM(dbo.grade_faz2test.oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(dbo.grade_faz2test.sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(dbo.grade_faz2test.dorangi) 
                      AS varchar(10)) AS dorangi, CAST(SUM(dbo.grade_faz2test.tarak) AS varchar(10)) AS tarak, CAST(SUM(dbo.grade_faz2test.deformation) AS varchar(10)) AS deformation, 
                      CAST(SUM(dbo.grade_faz2test.kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(dbo.grade_faz2test.khglaze) AS varchar(10)) AS khglaze, CAST(SUM(dbo.grade_faz2test.pin) AS varchar(10)) AS pin, 
                      CAST(SUM(dbo.grade_faz2test.noglaze) AS varchar(10)) AS noglaze, CAST(SUM(dbo.grade_faz2test.kharegi) AS varchar(10)) AS kharegi, CAST(SUM(dbo.grade_faz2test.khlabeh) AS varchar(10)) AS khlabeh, 
                      SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.gradea) AS gradea, dbo.item.item_name, SUM(dbo.grade_faz2test.tedad) AS tedad, SUM(dbo.grade_faz2test.tedad) - SUM(dbo.grade_faz2test.gradea) AS jame

FROM         dbo.item INNER JOIN
                      dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e)   AND (dbo.item.kind&gt;11) AND (dbo.item.kind&lt;&gt;200)
group by item.id,item.item_name

UNION
SELECT     CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(A * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS Adarsad,
                       CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(ahan * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS ahandarsad, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(payeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS payehdarsad, 
                      CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(wast * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS wastdarsad, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(ret_glaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS retdarsad, 
                      CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(GC * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS GCdarsad, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(GB * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS BGdarsad, ret_glaze, wast, GC, GB, CASE WHEN khash &gt; 0 THEN ('%' + CAST(FLOOR(khash * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khash * 1.0 / tedad * 100 - FLOOR(khash * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khash, CASE WHEN rageh &gt; 0 THEN ('%' + CAST(FLOOR(rageh * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(rageh * 1.0 / tedad * 100 - FLOOR(rageh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rageh, 
                      CASE WHEN hobab &gt; 0 THEN ('%' + CAST(FLOOR(hobab * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(hobab * 1.0 / tedad * 100 - FLOOR(hobab * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS hobab, CASE WHEN rizesh &gt; 0 THEN ('%' + CAST(FLOOR(rizesh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(rizesh * 1.0 / tedad * 100 - FLOOR(rizesh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS rizesh, 
                      CASE WHEN labpar &gt; 0 THEN ('%' + CAST(FLOOR(labpar * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(labpar * 1.0 / tedad * 100 - FLOOR(labpar * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS labpar, CASE WHEN tarpayeh &gt; 0 THEN ('%' + CAST(FLOOR(tarpayeh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tarpayeh * 1.0 / tedad * 100 - FLOOR(tarpayeh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tarpayeh,
                      CASE WHEN tardasteh &gt; 0 THEN ('%' + CAST(FLOOR(tardasteh * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(tardasteh * 1.0 / tedad * 100 - FLOOR(tardasteh * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS tardasteh, 
                      CASE WHEN khbadaneh &gt; 0 THEN ('%' + CAST(FLOOR(khbadaneh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khbadaneh * 1.0 / tedad * 100 - FLOOR(khbadaneh * 1.0 / tedad * 100),
                       2), 4), 2)) ELSE '0' END AS khbadaneh, payeh, CASE WHEN oftadegi &gt; 0 THEN ('%' + CAST(FLOOR(oftadegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(oftadegi * 1.0 / tedad * 100 - FLOOR(oftadegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS oftadegi, 
                      CASE WHEN sarsozani &gt; 0 THEN ('%' + CAST(FLOOR(sarsozani * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(sarsozani * 1.0 / tedad * 100 - FLOOR(sarsozani * 1.0 / tedad * 100), 
                      2), 4), 2)) ELSE '0' END AS sarsozani, CASE WHEN dorangi &gt; 0 THEN ('%' + CAST(FLOOR(dorangi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(dorangi * 1.0 / tedad * 100 - FLOOR(dorangi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS dorangi, 
                      CASE WHEN tarak &gt; 0 THEN ('%' + CAST(FLOOR(tarak * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(tarak * 1.0 / tedad * 100 - FLOOR(tarak * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS tarak, CASE WHEN deformation &gt; 0 THEN ('%' + CAST(FLOOR(deformation * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(deformation * 1.0 / tedad * 100 - FLOOR(deformation * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS deformation, 
                      CASE WHEN kafsefid &gt; 0 THEN ('%' + CAST(FLOOR(kafsefid * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(kafsefid * 1.0 / tedad * 100 - FLOOR(kafsefid * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS kafsefid, CASE WHEN khglaze &gt; 0 THEN ('%' + CAST(FLOOR(khglaze * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(khglaze * 1.0 / tedad * 100 - FLOOR(khglaze * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS khglaze, CASE WHEN pin &gt; 0 THEN ('%' + CAST(FLOOR(pin * 1.0 / tedad * 100)
                       AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(pin * 1.0 / tedad * 100 - FLOOR(pin * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS pin, 
                      CASE WHEN noglaze &gt; 0 THEN ('%' + CAST(FLOOR(noglaze * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(noglaze * 1.0 / tedad * 100 - FLOOR(noglaze * 1.0 / tedad * 100), 2), 4), 
                      2)) ELSE '0' END AS noglaze, CASE WHEN kharegi &gt; 0 THEN ('%' + CAST(FLOOR(kharegi * 1.0 / tedad * 100) AS varchar(10)) 
                      + '/' + RIGHT(LEFT(ROUND(kharegi * 1.0 / tedad * 100 - FLOOR(kharegi * 1.0 / tedad * 100), 2), 4), 2)) ELSE '0' END AS kharegi, 
                      CASE WHEN khlabeh &gt; 0 THEN ('%' + CAST(FLOOR(khlabeh * 1.0 / tedad * 100) AS varchar(10)) + '/' + RIGHT(LEFT(ROUND(khlabeh * 1.0 / tedad * 100 - FLOOR(khlabeh * 1.0 / tedad * 100), 2), 4), 2)) 
                      ELSE '0' END AS khlabeh, ahan, A, '** آمار%**' AS item_name, tedad, jamecol

FROM         (SELECT     SUM(dbo.grade_faz2test.ahan) + SUM(dbo.grade_faz2test.khlabeh) + SUM(dbo.grade_faz2test.kharegi) + SUM(dbo.grade_faz2test.noglaze) + SUM(dbo.grade_faz2test.pin) 
                                              + SUM(dbo.grade_faz2test.khglaze) + SUM(dbo.grade_faz2test.kafsefid) + SUM(dbo.grade_faz2test.deformation) + SUM(dbo.grade_faz2test.tarak) + SUM(dbo.grade_faz2test.dorangi) 
                                              + SUM(dbo.grade_faz2test.sarsozani) + SUM(dbo.grade_faz2test.oftadegi) + SUM(dbo.grade_faz2test.payeh) + SUM(dbo.grade_faz2test.khbadaneh) + SUM(dbo.grade_faz2test.tarpayeh) + SUM(dbo.grade_faz2test.tardasteh)
                                              + SUM(dbo.grade_faz2test.labpar) + SUM(dbo.grade_faz2test.rizesh) + SUM(dbo.grade_faz2test.hobab) + SUM(dbo.grade_faz2test.rageh) + SUM(dbo.grade_faz2test.khash) AS jamecol, 
                                              SUM(dbo.grade_faz2test.gradea) + SUM(dbo.grade_faz2test.gradeB) + SUM(dbo.grade_faz2test.gradeC) + SUM(dbo.grade_faz2test.wastage) + SUM(dbo.grade_faz2test.return_glaze) AS tedad, 
                                              SUM(dbo.grade_faz2test.gradea) AS A, SUM(dbo.grade_faz2test.ahan) AS ahan, SUM(dbo.grade_faz2test.khlabeh) AS khlabeh, SUM(dbo.grade_faz2test.kharegi) AS kharegi, 
                                              SUM(dbo.grade_faz2test.noglaze) AS noglaze, SUM(dbo.grade_faz2test.pin) AS pin, SUM(dbo.grade_faz2test.khglaze) AS khglaze, SUM(dbo.grade_faz2test.kafsefid) AS kafsefid, 
                                              SUM(dbo.grade_faz2test.deformation) AS deformation, SUM(dbo.grade_faz2test.tarak) AS tarak, SUM(dbo.grade_faz2test.dorangi) AS dorangi, SUM(dbo.grade_faz2test.sarsozani) AS sarsozani, 
                                              SUM(dbo.grade_faz2test.oftadegi) AS oftadegi, SUM(dbo.grade_faz2test.payeh) AS payeh, SUM(dbo.grade_faz2test.khbadaneh) AS khbadaneh, SUM(dbo.grade_faz2test.tarpayeh) AS tarpayeh,SUM(dbo.grade_faz2test.tardasteh) AS tardasteh, 
                                              SUM(dbo.grade_faz2test.labpar) AS labpar, SUM(dbo.grade_faz2test.rizesh) AS rizesh, SUM(dbo.grade_faz2test.hobab) AS hobab, SUM(dbo.grade_faz2test.rageh) AS rageh, 
                                              SUM(dbo.grade_faz2test.khash) AS khash, SUM(dbo.grade_faz2test.gradeB) AS GB, SUM(dbo.grade_faz2test.gradeC) AS GC, SUM(dbo.grade_faz2test.wastage) AS wast, 
                                              SUM(dbo.grade_faz2test.return_glaze) AS ret_glaze
                         FROM         dbo.item INNER JOIN
                                              dbo.grade_faz2test ON dbo.item.id = dbo.grade_faz2test.item_id
                        WHERE     (dbo.grade_faz2test.tarikh BETWEEN @tarikh_s AND @tarikh_e)   AND (dbo.item.kind&gt;11) AND (dbo.item.kind&lt;&gt;200) ) AS total
) results
order by item_name  DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
   
    <asp:SqlDataSource ID="sqlcol1" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT 'تولید' AS name, tedad, A, CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(round(A * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS Adarsad, ahan, CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(round(ahan * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS ahandarsad, CAST(khlabeh AS varchar(10)) AS khlabeh, CAST(kharegi AS varchar(10)) AS kharegi, CAST(noglaze AS varchar(10)) AS noglaze, CAST(pin AS varchar(10)) AS pin, CAST(khglaze AS varchar(10)) AS khglaze, CAST(kafsefid AS varchar(10)) AS kafsefid, CAST(deformation AS varchar(10)) AS deformation, CAST(tarak AS varchar(10)) AS tarak, CAST(dorangi AS varchar(10)) AS dorangi, CAST(sarsozani AS varchar(10)) AS sarsozani, CAST(oftadegi AS varchar(10)) AS oftadegi, payeh, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(round(payeh * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS payehdarsad, CAST(khbadaneh AS varchar(10)) AS khbadaneh, CAST(tarpayeh AS varchar(10)) AS tarpayeh, CAST(tardasteh AS varchar(10)) AS tardasteh, CAST(labpar AS varchar(10)) AS labpar, CAST(rizesh AS varchar(10)) AS rizesh, CAST(hobab AS varchar(10)) AS hobab, CAST(rageh AS varchar(10)) AS rageh, CAST(khash AS varchar(10)) AS khash, jamecol, GB, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(round(GB * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS BGdarsad, GC, CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(round(GC * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS GCdarsad, wast, CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(round(wast * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS wastdarsad, ret_glaze, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(round(ret_glaze * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS retdarsad FROM (SELECT SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) + SUM(tardasteh) + SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh, SUM(tardasteh) AS tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze FROM grade_faz1 WHERE (faz = 1) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total UNION SELECT ' آزمایشی' AS name, tedad, A, CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(round(A * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS Adarsad, ahan, CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(round(ahan * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS ahandarsad, CAST(khlabeh AS varchar(10)) AS khlabeh, CAST(kharegi AS varchar(10)) AS kharegi, CAST(noglaze AS varchar(10)) AS noglaze, CAST(pin AS varchar(10)) AS pin, CAST(khglaze AS varchar(10)) AS khglaze, CAST(kafsefid AS varchar(10)) AS kafsefid, CAST(deformation AS varchar(10)) AS deformation, CAST(tarak AS varchar(10)) AS tarak, CAST(dorangi AS varchar(10)) AS dorangi, CAST(sarsozani AS varchar(10)) AS sarsozani, CAST(oftadegi AS varchar(10)) AS oftadegi, payeh, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(round(payeh * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS payehdarsad, CAST(khbadaneh AS varchar(10)) AS khbadaneh, CAST(tarpayeh AS varchar(10)) AS tarpayeh, CAST(tardasteh AS varchar(10)) AS tardasteh, CAST(labpar AS varchar(10)) AS labpar, CAST(rizesh AS varchar(10)) AS rizesh, CAST(hobab AS varchar(10)) AS hobab, CAST(rageh AS varchar(10)) AS rageh, CAST(khash AS varchar(10)) AS khash, jamecol, GB, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(round(GB * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS BGdarsad, GC, CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(round(GC * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS GCdarsad, wast, CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(round(wast * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS wastdarsad, ret_glaze, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(round(ret_glaze * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS retdarsad FROM (SELECT SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) + SUM(tardasteh) + SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh, SUM(tardasteh) AS tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze FROM grade_faz1test WHERE (faz = 1) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total_1 UNION SELECT 'جمع کل' AS name, CAST(SUM(tedad) AS VARCHAR(10)) AS tedad, CAST(SUM(A) AS VARCHAR(10)) AS A, '---' AS Adarsad, CAST(SUM(ahan) AS VARCHAR(10)) AS ahan, '---' AS ahandarsad, CAST(SUM(khlabeh) AS VARCHAR(10)) AS khlabeh, CAST(SUM(kharegi) AS VARCHAR(10)) AS kharegi, CAST(SUM(noglaze) AS VARCHAR(10)) AS noglaze, CAST(SUM(pin) AS VARCHAR(10)) AS pin, CAST(SUM(khglaze) AS VARCHAR(10)) AS khglaze, CAST(SUM(kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(deformation) AS varchar(10)) AS deformation, CAST(SUM(tarak) AS varchar(10)) AS tarak, CAST(SUM(dorangi) AS varchar(10)) AS dorangi, CAST(SUM(sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(payeh) AS varchar(10)) AS payeh, CAST(SUM(khbadaneh) AS varchar(10)) AS khbadaneh, CAST(SUM(tarpayeh) AS varchar(10)) AS tarpayeh, '---' AS payehdarsad, CAST(SUM(tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(labpar) AS varchar(10)) AS labpar, CAST(SUM(rizesh) AS varchar(10)) AS rizesh, CAST(SUM(hobab) AS varchar(10)) AS hobab, CAST(SUM(rageh) AS varchar(10)) AS rageh, CAST(SUM(khash) AS varchar(10)) AS khash, CAST(SUM(jamecol) AS varchar(10)) AS jamecol, CAST(SUM(GB) AS varchar(10)) AS GB, '---' AS BGdarsad, CAST(SUM(GC) AS varchar(10)) AS GC, '---' AS GCdarsad, CAST(SUM(wast) AS varchar(10)) AS wast, '---' AS wastdarsad, CAST(SUM(ret_glaze) AS varchar(10)) AS ret_glaze, '---' AS retdarsad FROM (SELECT tedad, A, ahan, khlabeh, kharegi, noglaze, pin, khglaze, kafsefid, deformation, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh, tardasteh, labpar, rizesh, hobab, rageh, khash, jamecol, GB, GC, wast, ret_glaze FROM (SELECT SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) + SUM(tardasteh) + SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh, SUM(tardasteh) AS tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze FROM grade_faz1 AS grade_faz1_1 WHERE (faz = 1) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total_2 UNION SELECT tedad, A, ahan, khlabeh, kharegi, noglaze, pin, khglaze, kafsefid, deformation, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh, tardasteh, labpar, rizesh, hobab, rageh, khash, jamecol, GB, GC, wast, ret_glaze FROM (SELECT SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) + SUM(tardasteh) + SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh, SUM(tardasteh) AS tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze FROM grade_faz1test AS grade_faz1test_1 WHERE (faz = 1) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total_1_1) AS i">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
   
    <asp:SqlDataSource ID="sqlcol2" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT 'تولید' AS name, tedad, A, CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(round(A * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS Adarsad, ahan, CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(round(ahan * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS ahandarsad, CAST(khlabeh AS varchar(10)) AS khlabeh, CAST(kharegi AS varchar(10)) AS kharegi, CAST(noglaze AS varchar(10)) AS noglaze, CAST(pin AS varchar(10)) AS pin, CAST(khglaze AS varchar(10)) AS khglaze, CAST(kafsefid AS varchar(10)) AS kafsefid, CAST(deformation AS varchar(10)) AS deformation, CAST(tarak AS varchar(10)) AS tarak, CAST(dorangi AS varchar(10)) AS dorangi, CAST(sarsozani AS varchar(10)) AS sarsozani, CAST(oftadegi AS varchar(10)) AS oftadegi, payeh, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(round(payeh * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS payehdarsad, CAST(khbadaneh AS varchar(10)) AS khbadaneh, CAST(tarpayeh AS varchar(10)) AS tarpayeh, CAST(tardasteh AS varchar(10)) AS tardasteh, CAST(labpar AS varchar(10)) AS labpar, CAST(rizesh AS varchar(10)) AS rizesh, CAST(hobab AS varchar(10)) AS hobab, CAST(rageh AS varchar(10)) AS rageh, CAST(khash AS varchar(10)) AS khash, jamecol, GB, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(round(GB * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS BGdarsad, GC, CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(round(GC * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS GCdarsad, wast, CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(round(wast * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS wastdarsad, ret_glaze, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(round(ret_glaze * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS retdarsad FROM (SELECT SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) + SUM(tardasteh) + SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh, SUM(tardasteh) AS tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze FROM grade_faz2 WHERE (faz = 2) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total UNION SELECT ' آزمایشی' AS name, tedad, A, CASE WHEN A &gt; 0 THEN ('%' + CAST(FLOOR(round(A * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(A * 1.0 / tedad * 100 - FLOOR(A * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS Adarsad, ahan, CASE WHEN ahan &gt; 0 THEN ('%' + CAST(FLOOR(round(ahan * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(ahan * 1.0 / tedad * 100 - FLOOR(ahan * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS ahandarsad, CAST(khlabeh AS varchar(10)) AS khlabeh, CAST(kharegi AS varchar(10)) AS kharegi, CAST(noglaze AS varchar(10)) AS noglaze, CAST(pin AS varchar(10)) AS pin, CAST(khglaze AS varchar(10)) AS khglaze, CAST(kafsefid AS varchar(10)) AS kafsefid, CAST(deformation AS varchar(10)) AS deformation, CAST(tarak AS varchar(10)) AS tarak, CAST(dorangi AS varchar(10)) AS dorangi, CAST(sarsozani AS varchar(10)) AS sarsozani, CAST(oftadegi AS varchar(10)) AS oftadegi, payeh, CASE WHEN payeh &gt; 0 THEN ('%' + CAST(FLOOR(round(payeh * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(payeh * 1.0 / tedad * 100 - FLOOR(payeh * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS payehdarsad, CAST(khbadaneh AS varchar(10)) AS khbadaneh, CAST(tarpayeh AS varchar(10)) AS tarpayeh, CAST(tardasteh AS varchar(10)) AS tardasteh, CAST(labpar AS varchar(10)) AS labpar, CAST(rizesh AS varchar(10)) AS rizesh, CAST(hobab AS varchar(10)) AS hobab, CAST(rageh AS varchar(10)) AS rageh, CAST(khash AS varchar(10)) AS khash, jamecol, GB, CASE WHEN GB &gt; 0 THEN ('%' + CAST(FLOOR(round(GB * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(GB * 1.0 / tedad * 100 - FLOOR(GB * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS BGdarsad, GC, CASE WHEN GC &gt; 0 THEN ('%' + CAST(FLOOR(round(GC * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(GC * 1.0 / tedad * 100 - FLOOR(GC * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS GCdarsad, wast, CASE WHEN wast &gt; 0 THEN ('%' + CAST(FLOOR(round(wast * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(wast * 1.0 / tedad * 100 - FLOOR(wast * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS wastdarsad, ret_glaze, CASE WHEN ret_glaze &gt; 0 THEN ('%' + CAST(FLOOR(round(ret_glaze * 1.0 / tedad * 100 , 2)) AS varchar(10)) + '/' + RIGHT (LEFT (ROUND(ret_glaze * 1.0 / tedad * 100 - FLOOR(ret_glaze * 1.0 / tedad * 100) , 2) , 4) , 2)) ELSE '0' END AS retdarsad FROM (SELECT SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) + SUM(tardasteh) + SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh, SUM(tardasteh) AS tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze FROM grade_faz2test WHERE (faz = 2) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total_1 UNION SELECT 'جمع کل' AS name, CAST(SUM(tedad) AS VARCHAR(10)) AS tedad, CAST(SUM(A) AS VARCHAR(10)) AS A, '---' AS Adarsad, CAST(SUM(ahan) AS VARCHAR(10)) AS ahan, '---' AS ahandarsad, CAST(SUM(khlabeh) AS VARCHAR(10)) AS khlabeh, CAST(SUM(kharegi) AS VARCHAR(10)) AS kharegi, CAST(SUM(noglaze) AS VARCHAR(10)) AS noglaze, CAST(SUM(pin) AS VARCHAR(10)) AS pin, CAST(SUM(khglaze) AS VARCHAR(10)) AS khglaze, CAST(SUM(kafsefid) AS varchar(10)) AS kafsefid, CAST(SUM(deformation) AS varchar(10)) AS deformation, CAST(SUM(tarak) AS varchar(10)) AS tarak, CAST(SUM(dorangi) AS varchar(10)) AS dorangi, CAST(SUM(sarsozani) AS varchar(10)) AS sarsozani, CAST(SUM(oftadegi) AS varchar(10)) AS oftadegi, CAST(SUM(payeh) AS varchar(10)) AS payeh, CAST(SUM(khbadaneh) AS varchar(10)) AS khbadaneh, CAST(SUM(tarpayeh) AS varchar(10)) AS tarpayeh, '---' AS payehdarsad, CAST(SUM(tardasteh) AS varchar(10)) AS tardasteh, CAST(SUM(labpar) AS varchar(10)) AS labpar, CAST(SUM(rizesh) AS varchar(10)) AS rizesh, CAST(SUM(hobab) AS varchar(10)) AS hobab, CAST(SUM(rageh) AS varchar(10)) AS rageh, CAST(SUM(khash) AS varchar(10)) AS khash, CAST(SUM(jamecol) AS varchar(10)) AS jamecol, CAST(SUM(GB) AS varchar(10)) AS GB, '---' AS BGdarsad, CAST(SUM(GC) AS varchar(10)) AS GC, '---' AS GCdarsad, CAST(SUM(wast) AS varchar(10)) AS wast, '---' AS wastdarsad, CAST(SUM(ret_glaze) AS varchar(10)) AS ret_glaze, '---' AS retdarsad FROM (SELECT tedad, A, ahan, khlabeh, kharegi, noglaze, pin, khglaze, kafsefid, deformation, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh, tardasteh, labpar, rizesh, hobab, rageh, khash, jamecol, GB, GC, wast, ret_glaze FROM (SELECT SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) + SUM(tardasteh) + SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh, SUM(tardasteh) AS tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze FROM grade_faz2 AS grade_faz2_1 WHERE (faz = 2) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total_2 UNION SELECT tedad, A, ahan, khlabeh, kharegi, noglaze, pin, khglaze, kafsefid, deformation, tarak, dorangi, sarsozani, oftadegi, payeh, khbadaneh, tarpayeh, tardasteh, labpar, rizesh, hobab, rageh, khash, jamecol, GB, GC, wast, ret_glaze FROM (SELECT SUM(ahan) + SUM(khlabeh) + SUM(kharegi) + SUM(noglaze) + SUM(pin) + SUM(khglaze) + SUM(kafsefid) + SUM(deformation) + SUM(tarak) + SUM(dorangi) + SUM(sarsozani) + SUM(oftadegi) + SUM(payeh) + SUM(khbadaneh) + SUM(tarpayeh) + SUM(tardasteh) + SUM(labpar) + SUM(rizesh) + SUM(hobab) + SUM(rageh) + SUM(khash) AS jamecol, SUM(gradea) + SUM(gradeB) + SUM(gradeC) + SUM(wastage) + SUM(return_glaze) AS tedad, SUM(gradea) AS A, SUM(ahan) AS ahan, SUM(khlabeh) AS khlabeh, SUM(kharegi) AS kharegi, SUM(noglaze) AS noglaze, SUM(pin) AS pin, SUM(khglaze) AS khglaze, SUM(kafsefid) AS kafsefid, SUM(deformation) AS deformation, SUM(tarak) AS tarak, SUM(dorangi) AS dorangi, SUM(sarsozani) AS sarsozani, SUM(oftadegi) AS oftadegi, SUM(payeh) AS payeh, SUM(khbadaneh) AS khbadaneh, SUM(tarpayeh) AS tarpayeh, SUM(tardasteh) AS tardasteh, SUM(labpar) AS labpar, SUM(rizesh) AS rizesh, SUM(hobab) AS hobab, SUM(rageh) AS rageh, SUM(khash) AS khash, SUM(gradeB) AS GB, SUM(gradeC) AS GC, SUM(wastage) AS wast, SUM(return_glaze) AS ret_glaze FROM grade_faz2test AS grade_faz2test_1 WHERE (faz = 2) AND (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS total_1_1) AS i">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
   
    <br />
    <br />
    </asp:Content>

