<%@ Page Title="صندوق پیام" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="masseges.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <center style="vertical-align:middle;">
        <br />
        <br />
        <br />
        <br />
    <br />
<asp:Panel ID="pnlinbox" runat="server" Width="77%" BorderStyle="Solid" 
            >
        <br />
        <asp:GridView ID="gridinbox" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None" 
            Width="70%" AllowPaging="True" Font-Names="Titr" Font-Size="Small" 
            Caption="صندوق دریافت پیام" CaptionAlign="Right" 
            onrowcommand="gridinbox_RowCommand" 
            EmptyDataText="داده ای برای نمایش وجود ندارد" ShowHeaderWhenEmpty="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ButtonField CommandName="selectdell" Text="حذف پیام">
                 <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="Red" 
                    HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ButtonField>
             <asp:ButtonField CommandName="selectshow" Text="مشاهده پیام" >
               <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="#0066FF" 
                    HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                </asp:ButtonField>
                <asp:BoundField DataField="tarikh" HeaderText="تاریخ" SortExpression="tarikh" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="short_msg" HeaderText="متن پیام" 
                    SortExpression="short_msg" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Width="35%" />
                </asp:BoundField>
                <asp:BoundField DataField="send_user" HeaderText="فرستنده" 
                    SortExpression="send_user" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Width="20%" />
                </asp:BoundField>
                    <asp:TemplateField HeaderText="ردیف">
                     
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                    <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" Width="10px" />
                    <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" Width="10px" />
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" 
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
        <asp:TextBox ID="txtfullmsg" runat="server" Font-Names="Tahoma" Font-Size="Small" 
            Height="71px" ReadOnly="True" TextMode="MultiLine" Width="650px" dir="rtl" style="resize:none"
            Visible="False"></asp:TextBox>
        <br />
        <asp:Button ID="btnread" runat="server" Font-Names="Tahoma" Font-Size="Small" 
            onclick="btnread_Click" Text="تایید" Width="10%" Visible="False" />
        <br />
        <asp:GridView ID="gridsent" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" 
            Font-Names="Titr" Font-Size="Small" ForeColor="#333333" GridLines="None" 
            Width="70%" Caption="صندوق پیام های ارسالی" CaptionAlign="Right" 
            onrowcommand="gridsent_RowCommand" ShowHeaderWhenEmpty="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
            <asp:ButtonField CommandName="selectdell" Text="حذف پیام">
             <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                VerticalAlign="Middle"/>
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="Red" 
                    HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ButtonField>
                <asp:ButtonField CommandName="selectshow" Text="مشاهده پیام">
                 <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" Width="60px"/>
               
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="#0066FF" 
                    HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                </asp:ButtonField>
                <asp:BoundField DataField="tarikh" HeaderText="تاریخ" SortExpression="tarikh">
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="short_msg" HeaderText="متن پیام" 
                    SortExpression="short_msg">
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Width="35%" />
                </asp:BoundField>
                <asp:BoundField DataField="send_user" HeaderText="گیرنده" 
                    SortExpression="send_user">
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Width="20%" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="ردیف">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                    <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" Width="10px" />
                    <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" Width="10px" />
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" 
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

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:Panel ID="Panelmsg" runat="server" BorderStyle="Solid" Font-Names="Tahoma" 
            Font-Size="Small" HorizontalAlign="Right" Width="77%">
            <br />
            <br />
            <asp:CheckBox ID="chkall" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                style="margin-right: 27px" Text="ارسال به همه" Width="14%" />
            <asp:DropDownList ID="ddlname" runat="server" DataSourceID="SqlDataSource3" 
                DataTextField="family" DataValueField="leveluser" Font-Names="Tahoma" 
                Font-Size="Small" style="margin-left: 0px" Width="25%">
            </asp:DropDownList>
            <asp:Label ID="Label1" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                style="margin-left: 10px" Text="ارسال پیام به "></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtsentmsg" runat="server" dir="rtl" Font-Names="Tahoma" 
                Font-Size="Small" Height="71px" TextMode="MultiLine" Width="95%" style="resize:none"    ></asp:TextBox>
            <br />
            <br />
            <asp:Panel ID="Panelsend" runat="server" Direction="LeftToRight" 
                HorizontalAlign="Left" Width="91%">
                <asp:Button ID="btnsend" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                    onclick="btnsend_Click" Text="ارسال" Width="11%" />
            </asp:Panel>
            <center>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" Visible="False">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="2500" ontick="Timer1_Tick">
                    </asp:Timer>
                    <asp:Label ID="lblmsg" runat="server" Text="پیام با موفقیت ارسال شد" 
                        ForeColor="Blue"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
            </center>
            <br />
        </asp:Panel>
    <br />
    </asp:Panel>
   
     </center>
       <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="SELECT users.firstname + ' ' + users.lastname AS family, users.leveluser, user_level.user_id FROM users INNER JOIN user_level ON users.leveluser = user_level.user_id WHERE (user_level.permit = 1) ORDER BY users.lastname"></asp:SqlDataSource>
        <br />
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
            DeleteCommand="DELETE FROM [press_totalday] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [press_totalday] ([total_waight], [wast_waight], [tarikh], [total_day], [rework_day], [wast_day]) VALUES (@total_waight, @wast_waight, @tarikh, @total_day, @rework_day, @wast_day)" 
            ProviderName="<%$ ConnectionStrings:taghdis_amar.ProviderName %>" 
            SelectCommand="SELECT    messages.id, dbo.messages.short_msg,dbo.messages.msg, dbo.messages.tarikh, dbo.users.firstname + ' '+ dbo.users.lastname AS send_user
FROM         dbo.messages INNER JOIN
                      dbo.users ON dbo.messages.user_send = dbo.users.leveluser
where user_recive=@reciver and messages.reciver=0  ORDER BY tarikh DESC" 
            
            
    
        
        
        
        
        
        
        
        
        
        UpdateCommand="UPDATE [press_totalday] SET [total_waight] = @total_waight, [wast_waight] = @wast_waight, [tarikh] = @tarikh, [total_day] = @total_day, [rework_day] = @rework_day, [wast_day] = @wast_day WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="total_waight" Type="Double" />
                <asp:Parameter Name="wast_waight" Type="Double" />
                <asp:Parameter Name="tarikh" Type="String" />
                <asp:Parameter Name="total_day" Type="Int32" />
                <asp:Parameter Name="rework_day" Type="Int32" />
                <asp:Parameter Name="wast_day" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="reciver" SessionField="userid" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="total_waight" Type="Double" />
                <asp:Parameter Name="wast_waight" Type="Double" />
                <asp:Parameter Name="tarikh" Type="String" />
                <asp:Parameter Name="total_day" Type="Int32" />
                <asp:Parameter Name="rework_day" Type="Int32" />
                <asp:Parameter Name="wast_day" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
   
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        DeleteCommand="DELETE FROM [press_total] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [press_total] ([item_id], [waight_wastage], [waight], [tarikh], [time_work], [time_stop], [total], [rework], [wastage]) VALUES (@item_id, @waight_wastage, @waight, @tarikh, @time_work, @time_stop, @total, @rework, @wastage)" 
        ProviderName="<%$ ConnectionStrings:taghdis_amar.ProviderName %>" 
        SelectCommand="SELECT    messages.id, dbo.messages.short_msg, dbo.messages.msg,dbo.messages.tarikh, dbo.users.firstname + ' '+ dbo.users.lastname AS send_user
FROM         dbo.messages INNER JOIN
                      dbo.users ON dbo.messages.user_recive = dbo.users.leveluser
where user_send=@sender and messages.sender=0 ORDER BY tarikh DESC" 
        
    
        
        
        
        
        
        
        
        
        UpdateCommand="UPDATE [press_total] SET [item_id] = @item_id, [waight_wastage] = @waight_wastage, [waight] = @waight, [tarikh] = @tarikh, [time_work] = @time_work, [time_stop] = @time_stop, [total] = @total, [rework] = @rework, [wastage] = @wastage WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="item_id" Type="Int32" />
            <asp:Parameter Name="waight_wastage" Type="Double" />
            <asp:Parameter Name="waight" Type="Double" />
            <asp:Parameter Name="tarikh" Type="String" />
            <asp:Parameter Name="time_work" Type="String" />
            <asp:Parameter Name="time_stop" Type="String" />
            <asp:Parameter Name="total" Type="Int32" />
            <asp:Parameter Name="rework" Type="Int32" />
            <asp:Parameter Name="wastage" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="sender" SessionField="userid" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="item_id" Type="Int32" />
            <asp:Parameter Name="waight_wastage" Type="Double" />
            <asp:Parameter Name="waight" Type="Double" />
            <asp:Parameter Name="tarikh" Type="String" />
            <asp:Parameter Name="time_work" Type="String" />
            <asp:Parameter Name="time_stop" Type="String" />
            <asp:Parameter Name="total" Type="Int32" />
            <asp:Parameter Name="rework" Type="Int32" />
            <asp:Parameter Name="wastage" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

</asp:Content>

