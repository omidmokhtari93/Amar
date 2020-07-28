<%@ Page Title="مدیریت جداول هشدار پرس" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="disadvantage_sorting.aspx.cs" Inherits="new_order1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="App_Themes/menu.css" />
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <br />
        <br />
    
        <br />
        <center style="  vertical-align: middle;">
            <asp:Panel ID="pnlpassword" runat="server" BorderColor="#0000CC" 
                BorderStyle="Double" BorderWidth="3px" Width="40%">
                <br />
                <asp:TextBox ID="txtpass" runat="server" Font-Names="tahoma" Height="22px" 
                    style="margin-right: 15px" TextMode="Password" Width="137px"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" Font-Names="tahoma" Text="رمز ورود"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btninput" runat="server" Font-Names="tahoma" Font-Size="Medium" 
                    onclick="btninput_Click" Text="ورود" Width="110px" />
                <br />
                <asp:Label ID="lblwrong" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    ForeColor="Red" Text="رمز ورود شما اشتباه است" Visible="False"></asp:Label>
                <br />
                <br />
            </asp:Panel>
            &nbsp;<br />
            <asp:Panel ID="Panelshow" runat="server">
            
                <asp:GridView ID="grid_total" runat="server" AutoGenerateColumns="False" 
                    Caption="جدول تعیین هشدار" CellPadding="4" DataSourceID="Alarmtotal" 
                    Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" GridLines="None" 
                    Width="45%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                    <asp:CommandField CancelText="انصراف" EditText="ویرایش" ShowEditButton="True" 
                        UpdateText="ویرایش">
                    <ItemStyle ForeColor="Red" />
                    </asp:CommandField>
                        <asp:BoundField DataField="Minalaram" HeaderText="حد هشدار" 
                            SortExpression="Minalaram" />
                        <asp:BoundField DataField="sector" HeaderText="بخش تولید" ReadOnly="True" 
                            SortExpression="sector" />
                        <asp:BoundField DataField="id" HeaderText="شماره بخش" SortExpression="id" />
                    </Columns>
                    <EditRowStyle BackColor="#A4E9FF" Font-Size="Small" Font-Underline="False" 
                        HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Names="b titr" 
                        ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <br />
                <hr style="border-width: medium; color: #0000FF; height: 4px; width: 581px; background-color: #0000FF;" />
            
            <br />
            <asp:DropDownList ID="ddlsector" runat="server" Font-Names="b titr" 
                Font-Size="Medium" Height="30px" Width="192px">
                <asp:ListItem Value="1">جدول هشدار پرس</asp:ListItem>
                <asp:ListItem Value="2">جدول هشدار فرمینگ</asp:ListItem>
                <asp:ListItem Value="3">جدول هشدار ریخته گری</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btnshow" runat="server" Font-Names="b titr" Font-Size="Medium" 
                onclick="btnshow_Click" Text="نمایش" Width="133px" />
            <br />
            <asp:GridView ID="grid_press" runat="server" AutoGenerateColumns="False" 
                Caption="جدول هشدار پرس" CellPadding="4" DataKeyNames="id" DataSourceID="press" 
                Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" GridLines="None" 
                onrowupdating="grid_press_RowUpdating" Visible="False" Width="45%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField CancelText="انصراف" EditText="ویرایش" ShowEditButton="True" 
                        UpdateText="ویرایش">
                    <ItemStyle ForeColor="Red" />
                    </asp:CommandField>
                    <asp:CheckBoxField DataField="permit" HeaderText="مجوز نمایش" 
                        SortExpression="permit" />
                    <asp:BoundField DataField="min_alarm" HeaderText="حد هشدار" 
                        SortExpression="min_alarm" />
                    <asp:BoundField DataField="name_dis" HeaderText="نام عیب" ReadOnly="True" 
                        SortExpression="name_dis" />
                    <asp:BoundField DataField="id" HeaderText="شماره نقص" ReadOnly="True" 
                        SortExpression="id" />
                </Columns>
                <EditRowStyle BackColor="#A4E9FF" Font-Size="Small" Font-Underline="False" 
                    HorizontalAlign="Center" VerticalAlign="Middle" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Names="b titr" 
                    ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <asp:GridView ID="grid_forming" runat="server" AutoGenerateColumns="False" 
                Caption="جدول هشدار فرمینگ" CellPadding="4" DataKeyNames="id" 
                DataSourceID="forming" Font-Names="tahoma" Font-Size="Small" 
                ForeColor="#333333" GridLines="None" onrowupdating="grid_forming_RowUpdating" 
                Visible="False" Width="45%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField CancelText="انصراف" EditText="ویرایش" ShowEditButton="True" 
                        UpdateText="ویرایش">
                    <ItemStyle ForeColor="Red" />
                    </asp:CommandField>
                    <asp:CheckBoxField DataField="permit" HeaderText="مجوز نمایش" 
                        SortExpression="permit" />
                    <asp:BoundField DataField="min_alarm" HeaderText="حد هشدار" 
                        SortExpression="min_alarm" />
                    <asp:BoundField DataField="name_dis" HeaderText="نام عیب" ReadOnly="True" 
                        SortExpression="name_dis" />
                    <asp:BoundField DataField="id" HeaderText="شماره نقص" ReadOnly="True" 
                        SortExpression="id" />
                </Columns>
                <EditRowStyle BackColor="#A4E9FF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Names="B titr" 
                    ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
       
            <asp:GridView ID="grid_rikht" runat="server" AutoGenerateColumns="False" 
                Caption="جدول هشدار ریخته گری" CellPadding="4" DataKeyNames="id" 
                DataSourceID="rikht" Font-Names="tahoma" Font-Size="Small" ForeColor="#333333" 
                GridLines="None" onrowupdating="grid_rikht_RowUpdating" Visible="False" 
                Width="45%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField CancelText="انصراف" EditText="ویرایش" ShowEditButton="True" 
                        UpdateText="ویرایش">
                    <ItemStyle ForeColor="Red" />
                    </asp:CommandField>
                    <asp:CheckBoxField DataField="permit" HeaderText="مجوز نمایش" 
                        SortExpression="permit" />
                    <asp:BoundField DataField="min_alarm" HeaderText="حد هشدار" 
                        SortExpression="min_alarm" />
                    <asp:BoundField DataField="name_dis" HeaderText="نام عیب" ReadOnly="True" 
                        SortExpression="name_dis" />
                    <asp:BoundField DataField="id" HeaderText="شماره نقص" ReadOnly="True" 
                        SortExpression="id" />
                </Columns>
                <EditRowStyle BackColor="#A4E9FF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Names="B titr" 
                    ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
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
           
        <br />
        </asp:Panel>
        
        
        <br />
        <br />
        <br />
         </center>  
        <asp:SqlDataSource ID="press" runat="server" 
            ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
            SelectCommand="SELECT id, permit, min_alarm, name_dis FROM dis_press" 
            UpdateCommand="UPDATE dis_press SET permit = @permit, min_alarm = @min_alarm WHERE (id = @id)">
            <UpdateParameters>
                <asp:Parameter Name="permit" />
                <asp:Parameter Name="min_alarm" />
                <asp:Parameter Name="id" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <asp:SqlDataSource ID="forming" runat="server" 
            ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
            
            SelectCommand="SELECT [id], [disadvantage], [permit], [min_alarm], [name_dis] FROM [dis_forming]" 
            
            UpdateCommand="UPDATE dis_forming SET min_alarm = @min_alarm, permit = @permit WHERE (id = @id)">
            <UpdateParameters>
                <asp:Parameter Name="min_alarm" />
                <asp:Parameter Name="permit" />
                <asp:Parameter Name="id" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="rikht" runat="server" 
            ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
            SelectCommand="SELECT id, permit, min_alarm, name_dis FROM dis_rikht" 
            UpdateCommand="UPDATE dis_rikht SET min_alarm = @min_alarm, permit = @permit WHERE (id = @id)">
            <UpdateParameters>
                <asp:Parameter Name="min_alarm" />
                <asp:Parameter Name="permit" />
                <asp:Parameter Name="id" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Alarmtotal" runat="server" 
            ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
            SelectCommand="SELECT id, Minalaram, sector FROM Alarm_sector" 
            
            UpdateCommand="UPDATE Alarm_sector SET Minalaram = @Minalaram WHERE (id = @id)">
            <UpdateParameters>
                <asp:Parameter Name="Minalaram" />
                <asp:Parameter Name="id" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
        <br />
        <br />
        <br />
  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
</div>
    </asp:Content>

