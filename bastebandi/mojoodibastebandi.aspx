<%@ Page Title="" Language="C#" MasterPageFile="~/bastebandi/MasterPage.master" AutoEventWireup="true" CodeFile="mojoodibastebandi.aspx.cs" Inherits="bastebandi_mojoodibastebandi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:HiddenField runat="server" ID="order_id"/>
<style>
    #grid_orders tr td:nth-child(2){ display: none;}
    #grid_orders tr th:nth-child(2){ display: none;}
    .table tr td input{ text-align: center;}
    .table tr td a{ color: blue;cursor: pointer;}
    select option{ font-size: 11pt;}
    #gridod2,#gridod1 tr td{ font-size: 12pt;}
    #gridod2,#gridod1 tr th{ font-size: 12pt;}
</style>
<asp:Panel runat="server" CssClass="panel panel-primary" ID="pnl_order">
    <div class="panel-heading">سفارشات</div>
    <div class="container">
        <div style="padding: 10px;" runat="server" id="pnldel" Visible="False">
            <div style="display: inline-block; border: 2px solid darkgray; border-radius: 5px; padding: 10px;">
                <label style="display: block;">آیا مطمئن هستید؟</label>
                <asp:Button runat="server" CssClass="button" Text="خیر" ID="btnNo" OnClick="btnNo_OnClick"/>
                <asp:Button runat="server" CssClass="button" Text="بله" ID="btnYes" OnClick="btnYes_OnClick"/>
            </div>
        </div>
    </div>
    <div class="panel-body">
        <asp:GridView runat="server" ID="grid_orders" ClientIDMode="Static" CssClass="table table-bordered" 
                      AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="Sqlorder" OnRowCommand="grid_orders_OnRowCommand">
            <Columns>
                <asp:ButtonField CommandName="order_detailes" Text="ویرایش اقلام">
                    <ControlStyle ForeColor="blue"></ControlStyle>
                </asp:ButtonField>
                <asp:BoundField DataField="id" SortExpression="id" />
                <asp:BoundField DataField="order_id" HeaderText="شماره سفارش" SortExpression="order_id" ReadOnly="True"/>
                <asp:BoundField DataField="tarikh" HeaderText="تاریخ" SortExpression="tarikh" ReadOnly="True"/>
                <asp:BoundField DataField="moshtari" HeaderText="مشتری" SortExpression="moshtari" ReadOnly="True"/>
                <asp:BoundField DataField="mem" HeaderText="ملاحظات" SortExpression="mem" ReadOnly="True"/>
                <asp:BoundField DataField="priority" HeaderText="اولویت" SortExpression="priority" />
               <%-- <asp:CommandField ShowEditButton="True" EditText="ویرایش" UpdateText="ویرایش" CancelText="لغو"/>
                <asp:ButtonField CommandName="del" Text="حذف"/>--%>
            </Columns>
        </asp:GridView>
    </div>
        
    <asp:SqlDataSource ID="Sqlorder" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT  
bastebandi.dbo.orders.id,
bastebandi.dbo.orders.priority,
bastebandi.dbo.orders.mem,
bastebandi.dbo.orders.order_id,
bastebandi.dbo.orders.tarikh,
flower_customers.customer_name as moshtari
FROM  bastebandi.dbo.orders INNER JOIN flower_depot.dbo.flower_customers 
ON bastebandi.dbo.orders.customer_id  = flower_customers.customer_id where bastebandi.dbo.orders.conf = 1 and bastebandi.dbo.orders.bconf = 0 
order by bastebandi.dbo.orders.id desc" UpdateCommand="UPDATE orders SET priority = @priority WHERE (id = @id)">
        <UpdateParameters>
            <asp:Parameter Name="priority" />
            <asp:Parameter Name="id" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Panel>
    
    
<asp:Panel runat="server" Visible="False" ID="pnl_order_detailes">
    <div class="panel panel-primary">
        <div class="panel-heading">ریز اقلام</div>
        <div class="panel-body">
            <div style="padding: 10px; border: 2px solid darkgray; width: 100%; margin-bottom: 10px;">
                &nbsp;&nbsp;&nbsp;<label runat="server" id="lblComment" style="background-color: #dcdcdc; padding: 2px; color: darkblue;"></label>
                <label> توضیحات </label>
                &nbsp;&nbsp;&nbsp;<label runat="server" id="lblTarikh" style="background-color: #dcdcdc; padding: 2px; color: darkblue;"></label>
                <label> تاریخ </label>
                &nbsp;&nbsp;&nbsp;<label runat="server" id="lblOrderNumber" style="background-color: #dcdcdc; padding: 2px;direction: rtl; color: darkblue;"></label>
                <label> شماره سفارش </label>
                &nbsp;&nbsp;&nbsp;<label runat="server" id="lblCusName" style="background-color: #dcdcdc; padding: 2px; color: darkblue;"></label>
                <label> نام مشتری </label>
            </div>  
        </div>
        <div class="panel-body" id="SabtArea">
            <div class="row" style="text-align: right;">
                <div class="col-lg-3">
                    <label style="display: block;">درجه</label>
                    <asp:DropDownList runat="server" CssClass="form-control" Width="85%" ClientIDMode="Static" ID="drDarage" DataSourceID="SqlDarage" DataTextField="dar" DataValueField="ID"/>
                    <asp:SqlDataSource ID="SqlDarage" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, dar FROM Darajeh"></asp:SqlDataSource>
                    <hr/>
                    <label style="display: block;">تعداد</label>
                    <asp:DropDownList runat="server" ID="dr_typeNumber" ClientIDMode="Static" Width="40%" dir="rtl" CssClass="form-control">
                        <asp:ListItem Value="0">عدد</asp:ListItem>
                        <asp:ListItem Value="1" Selected="True">کارتن</asp:ListItem>
                    </asp:DropDownList>
                    <input type="text" autocomplete="off" class="form-control text-center" id="txtTedadKarton" style="display: inline-block; width: 120px;"/>
                </div>
                <div class="col-lg-4">
                    <div style="display: block; vertical-align: middle;">
                        سرویس <input type="checkbox" id="chFallehService"/>
                    </div>
                    <div id="pnlService" style="display: none;">
                        <input type="text" autocomplete="off" class="form-control" placeholder="جستجو" id="txtsearchService" style="height: 30px; width: 100%; direction: rtl;"/>
                        <asp:ListBox runat="server" ClientIDMode="Static" Height="202px" dir="rtl" ID="drService" Width="100%" CssClass="form-control" DataSourceID="sql_services" DataTextField="nam" DataValueField="id"/>
                        <asp:SqlDataSource ID="sql_services" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT id, nam FROM Service where nam is not null and ID <> 0 order by nam"></asp:SqlDataSource>
                    </div>
                    <div id="pnlItem">
                        <input type="text" autocomplete="off" class="form-control" placeholder="جستجو" id="txtsearchItem" style="height: 30px; width: 100%; direction: rtl;"/>
                        <asp:ListBox runat="server" ClientIDMode="Static" dir="rtl" Height="202px" Width="100%" ID="drItem" CssClass="form-control" DataSourceID="Sqlitem" DataTextField="nam" DataValueField="ID"/>
                        <asp:SqlDataSource ID="Sqlitem" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID,nam from Item where nam is not null and ID <> 0 "></asp:SqlDataSource>
                    </div>
                </div>
                <div class="col-lg-5">
                    <label>  طرح</label>
                    <input type="text" autocomplete="off" class="form-control" placeholder="جستجو" id="txtsearchGol" style="height: 30px; width: 100%; direction: rtl;"/>
                    <asp:ListBox ClientIDMode="Static" runat="server" Height="200px" AppendDataBoundItems="True" ID="drFlowName" dir="rtl" Width="100%" CssClass="form-control" DataSourceID="sql_flower_name" DataTextField="gol" DataValueField="id">
                        <asp:ListItem Value="-1">سفید</asp:ListItem>
                        <asp:ListItem Value="-2">هتلی</asp:ListItem>
                    </asp:ListBox>
                    <asp:SqlDataSource ID="sql_flower_name" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="
                        SELECT dbo.flower_entry.flower_name + ' / ' + dbo.flower_entry.flower_code + ' / ' + dbo.flower_colors.flow_color + ' / ' + dbo.flower_colortypes.flow_colortype + ' / ' + dbo.flower_formats.flow_format AS gol, 
                         dbo.flower_entry.id
                         FROM dbo.flower_entry INNER JOIN
                         dbo.flower_colors ON dbo.flower_entry.flower_color = dbo.flower_colors.flowcolor_id INNER JOIN
                         dbo.flower_colortypes ON dbo.flower_entry.flower_colortype = dbo.flower_colortypes.colortype_id INNER JOIN
                         dbo.flower_formats ON dbo.flower_entry.flower_format = dbo.flower_formats.flowformat_id">
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <button type="button" class="button" style="display: none;" id="btnCancelEdit" onclick="cancelEditRiz();">انصراف</button>
            &nbsp;&nbsp;
            <button type="button" class="button" style="display: none;" id="btneditKala" onclick="SaveRizOrder();">ویرایش</button>
            <button type="button" id="btnSabtRizOrder" class="button" onclick="SaveRizOrder();">ثبت</button>
            <asp:Button runat="server" CssClass="button" ID="btn_cancel" ClientIDMode="Static" Text="بازگشت به صفحه قبل" OnClick="btn_cancel_OnClick"/>
            <a id="showTotal" style="cursor: pointer; font-size: 12pt; color: royalblue; font-weight: 800; border: 1px solid royalblue; padding: 4px 10px;"
               onclick="document.getElementById('kalaTotal').style.display='block'">آمار آیتم</a>
        </div>
        <div style="padding: 10px; display: none;" id="pnldelDetail">
            <div style="display: inline-block; border: 2px solid darkgray; border-radius: 5px; padding: 10px;">
                <label style="display: block;">آیا مطمئن هستید؟</label>
                <button class="button" id="btnNoDet" type="button" onclick="$(this).parent().parent().hide();">خیر</button>
                <button class="button" id="btnYesDet" type="button" onclick="DeleteOrderDet();">بله</button>
            </div>
        </div>
        <div class="panel-footer">
            <div class="row" style="padding: 0; margin: 0;">
                <div class="col-lg-6" style="padding: 0; margin: 0;">
                    <table class="table table-bordered" id="gridod2">
                    </table>
                </div>
                <div class="col-lg-6" style="padding: 0; margin: 0;">
                    <table class="table table-bordered" id="gridod1">
                    </table>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <asp:Button runat="server" ID="btnFinalConfirmation" Text="تایید نهایی" CssClass="button" OnClick="btnFinalConfirmation_OnClick"/>
        </div>
    </div>
</asp:Panel>
<script>
    function AjaxData(obj) {
        $.ajax({
            type: 'POST',
            url: obj.url,
            data: JSON.stringify(obj.param),
            contentType: 'application/json;',
            dataType: 'json',
            success: obj.func,
            error: function () {
                console.log('error');
            }
        });
    }
</script>
<script>
    $(function () {
        $('#chFallehService').change(function () {
            if ($('#chFallehService').is(":checked")) {
                $('#pnlItem').hide();
                $('#pnlService').show();
            } else {
                $('#pnlItem').show();
                $('#pnlService').hide();
            }
        });
    });
    createTables();
    function createTables() {
        if ($('#order_id').val() != '') {
            $('#gridod1').empty();
            $('#gridod2').empty();
            AjaxData({
                url: 'orderCheck.asmx/GetOrderTables',
                param: { orderId: $('#order_id').val() },
                func: createOdTables
            });
            function createOdTables(e) {
                var d = JSON.parse(e.d);
                if (d.length === 0) {
                    return;
                }
                var tbl1Rows = Math.ceil(d.length / 2);
                var radif = 1;
                var row = 0;
                var tbl2Rows = d.length - tbl1Rows;
                var tbl1Body = [];
                var tbl2Body = [];
                tbl1Body.push('<tr><th>ردیف</th><th>نام کالا</th><th>طرح</th><th>درجه</th><th>تعداد</th><th></th><th></th></tr>');
                tbl2Body.push('<tr><th>ردیف</th><th>نام کالا</th><th>طرح</th><th>درجه</th><th>تعداد</th><th></th><th></th></tr>');
                for (var i = 0; i < tbl1Rows; i++) {
                    tbl1Body.push('<tr>' +
                        '<td>' + radif + '</td>' +
                        '<td itemid="' + d[row].ItemId + '" serviceid="' + d[row].ServiceId +'">' + d[row].Item + '</td>' +
                        '<td flowid="'+d[row].FlowId+'">' + d[row].Flower + '</td>' +
                        '<td dar="'+d[row].DarageId+'">' + d[row].Darage + '</td>' +
                        '<td box="' + d[row].Box + '" tedad="' + d[row].Count +'">' + d[row].Tedad + '</td>' +
                        '<td><a id="ed" rizid="' + d[row].RizId + '" class="glyphicon glyphicon-pencil"></a></td>' +
                        '<td><a id="del" rizid="' + d[row].RizId + '" class="glyphicon glyphicon-trash"></a></td>' +
                        '</tr>');
                    radif++;
                    row++;
                }
                for (var j = 0; j < tbl2Rows; j++) {
                    tbl2Body.push('<tr>' +
                        '<td>' + radif + '</td>' +
                        '<td itemid="' + d[row].ItemId +'" serviceid="'+d[row].ServiceId+'">' + d[row].Item + '</td>' +
                        '<td flowid="' + d[row].FlowId + '">' + d[row].Flower + '</td>' +
                        '<td dar="' + d[row].DarageId + '">' + d[row].Darage + '</td>' +
                        '<td box="' + d[row].Box + '" tedad="'+d[row].Count+'">' + d[row].Tedad + '</td>' +
                        '<td><a id="ed" rizid="' + d[row].RizId + '" class="glyphicon glyphicon-pencil"></a></td>' +
                        '<td><a id="del" rizid="' + d[row].RizId + '" class="glyphicon glyphicon-trash"></a></td>' +
                        '</tr>');
                    radif++;
                    row++;
                }
                $('#gridod1').append(tbl1Body.join(''));
                $('#gridod2').append(tbl2Body.join(''));
            }
        }
    }

    function SaveRizOrder() {
        var flow = $('#drFlowName :selected').val();
        var falleh = $('#drItem :selected').val();
        var service = $('#drService :selected').val();
        var tedad = $('#txtTedadKarton').val();
        var type = $('#dr_typeNumber :selected').val();
        var flag = 0;
        if ($('#drFlowName :selected').val() == undefined) {
            RedAlert('drFlowName', 'لطفا گل را انتخاب نمایید');
            flag = 1;
        }
        if ($('#drItem :selected').val() == undefined && !$('#chFallehService').is(":checked")) {
            RedAlert('drItem', 'لطفا آیتم را انتخاب نمایید');
            flag = 1;
        }
        if ($('#drService :selected').val() == undefined && $('#chFallehService').is(":checked")) {
            RedAlert('drService', 'لطفا سرویس را انتخاب نمایید');
            flag = 1;
        }
        if (tedad == '') {
            RedAlert('txtTedadKarton', 'لطفا تعداد کارتن را وارد نمایید');
            flag = 1;
        }
        if (flag === 1) {
            return;
        }
        var obj = {
            RizOrderId: 0,
            OrderId: $('#order_id').val(),
            Flower: flow,
            Falleh: falleh,
            Service: service,
            Tedad: tedad,
            Type: type,
            Darage: $('#drDarage :selected').val()
        };
        if (orderDetId !== undefined || orderDetId != '0') {
            obj.RizOrderId = orderDetId;
        }
        if ($('#chFallehService').is(":checked")) {
            obj.Falleh = 0;
        } else {
            obj.Service = 0;
        }
        AjaxData({
            url: 'orderCheck.asmx/SaveOrderDetails',
            param: { od: obj },
            func: sabtshod
        });
        function sabtshod(e) {
            $('#btnSabtRizOrder').notify('ثبت شد', { position: "right center", className: "success" });
            $('#txtTedadKarton').val('');
            createTables();
            cancelEditRiz();
        }
    }


    var orderDetId = 0;
    $('#gridod1').on('click', 'td a#del', function () {
        orderDetId = parseInt($(this).attr('rizid'));
        $('#pnldelDetail').show();
    });
    $('#gridod2').on('click', 'td a#del', function () {
        orderDetId = parseInt($(this).attr('rizid'));
        $('#pnldelDetail').show();
    });

    function DeleteOrderDet() {
        AjaxData({
            url: 'orderCheck.asmx/DeleteOrderDet',
            param: { odid: orderDetId },
            func: deletedSuccess
        });
        function deletedSuccess(e) {
            RedAlert('no', 'حذف شد');
            $('#pnldelDetail').hide();
            createTables();
        }
    }

    var itemId, serviceId,gol,darage,karton,type;
    $('#gridod1 ,#gridod2').on('click', 'td a#ed', function () {
        orderDetId = parseInt($(this).attr('rizid'));
        itemId = $(this).parent().parent().find('td[itemid]').attr('itemid');
        serviceId = $(this).parent().parent().find('td[serviceid]').attr('serviceid');
        gol = $(this).parent().parent().find('td[flowid]').attr('flowid');
        darage = $(this).parent().parent().find('td[dar]').attr('dar');
        karton = $(this).parent().parent().find('td[tedad]').attr('tedad');
        type = $(this).parent().parent().find('td[box]').attr('box');
        CheckControls();
    });

    function CheckControls(e) {
        if (type == 'true') {
            $('#dr_typeNumber').find('option[value=1]').prop('selected', true);
        } else {
            $('#dr_typeNumber').find('option[value=0]').prop('selected', true);
        }
        if (itemId != '0') {
            $('#pnlService').hide();
            $('#pnlItem').show();
            $('#chFallehService').attr('checked', false);
            $('#drItem').find('option[value=' + itemId + ']').prop('selected', true);
            $('#drFlowName').find('option[value=' + gol + ']').prop('selected', true);
            $('#drDarage').find('option[value=' + darage + ']').prop('selected', true);
            $('#txtTedadKarton').val(karton);
            $('#btneditKala').show();
            $('#btnCancelEdit').show();
            $('#btnSabtRizOrder').hide();
            $('#btn_cancel').hide();
        } else {
            $('#pnlService').show();
            $('#pnlItem').hide();
            $('#chFallehService').attr('checked', true);
            $('#drService').find('option[value=' + serviceId + ']').prop('selected', true);
            $('#drFlowName').find('option[value=' + gol + ']').prop('selected', true);
            $('#drDarage').find('option[value=' + darage + ']').prop('selected', true);
            $('#txtTedadKarton').val(karton);
            $('#btneditKala').show();
            $('#btnCancelEdit').show();
            $('#btnSabtRizOrder').hide();
            $('#btn_cancel').hide();
        }
    }
    function cancelEditRiz() {
        $('#SabtArea').find('select :selected').prop('selected', false);
        $('#SabtArea').find('input').val('');
        $('#btneditKala').hide();
        $('#btnCancelEdit').hide();
        $('#btnSabtRizOrder').show();
        $('#btn_cancel').show();
    }
</script>
</asp:Content>

