<%@ Page Title="" Language="C#" MasterPageFile="~/DaftarFanni/main.master" AutoEventWireup="true" CodeFile="Units.aspx.cs" Inherits="DaftarFanni_Units" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container mt-3">
        <div class="card">
            <div class="card-header text-center">ثبت اجزا ماشین آلات</div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2">
                        <button class="btn btn-success btn-block" type="button" id="btnSabt">ثبت</button>
                        <button class="btn btn-primary btn-block mt-0" type="button" style="display: none;" id="btnEdit">ویرایش</button>
                    </div>
                    <div class="col-md-5">
                        <input class="form-control" type="text" dir="rtl" id="txtUnitName" placeholder="نام بخش" />
                    </div>
                    <div class="col-md-5">
                        <asp:DropDownList runat="server" AppendDataBoundItems="True" DataSourceID="Units" DataTextField="MachineName" DataValueField="Id" CssClass="form-control" dir="rtl" ClientIDMode="Static" ID="drMachines">
                            <asp:ListItem Value="-1">انتخاب کنید</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="Units" runat="server" ConnectionString="<%$ ConnectionStrings:DaftarFanni %>" SelectCommand="SELECT Id, MachineName FROM Machines order by Id asc"></asp:SqlDataSource>
                    </div>
                </div>
                <hr />
                <table class="table table-bordered" id="tableUnits">
                    <thead>
                        <tr>
                            <th>ردیف</th>
                            <th>نام بخش</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
        </div>
    </div>
    <script>
        var btnSabt = $('#btnSabt');
        var btnEdit = $('#btnEdit');
        var txtUnits = $('#txtUnitName');
        var drMachines = $('#drMachines');
        var table = $('#tableUnits');
        var editEnabled = false;
        var unitId = 0;

        const GetFilteredUnits = (machineId) => {
            !editEnabled && AjaxData({
                url: 'DaftarFanni.asmx/GetFilteredUnits',
                param: { machineId: machineId },
                func: (e) => {
                    const data = JSON.parse(e.d);
                    const dataLength = data.length;
                    const body = [];
                    for (let i = 0; i < dataLength; i++) {
                        body.push(`<tr><td style="width:15%;">${i + 1}</td><td>${data[i].UnitName}</td>
                                    <td style="width:15%;"><a unit-id="${data[i].Id}">ویرایش</a></td></tr>`);
                    }
                    table.find('tbody').empty().append(body.join(''));
                }
            })
        }

        drMachines.change(function (x) {
            if (this.value !== '-1') {
                GetFilteredUnits(this.value);
            }
        })

        btnSabt.on('click', function () {
            if (drMachines.val() == '-1' || txtUnits.val() == '') {
                RedAlert('n', 'لطفا فیلدهای ورودی را بررسی نمایید')
            } else {
                AjaxData({
                    url: 'DaftarFanni.asmx/SaveUnit',
                    param: { unitName: txtUnits.val(), machineId: drMachines.val() },
                    func: () => {
                        txtUnits.val('');
                        GreenAlert('n', 'با موفقیت ثبت شد');
                        GetFilteredUnits(drMachines.val());
                    }
                })
            }
        })

        table.on('click', 'tr td a', function () {
            unitId = $(this).attr('unit-id');
            AjaxData({
                url: 'DaftarFanni.asmx/GetUnitInformation',
                param: { unitId: $(this).attr('unit-id') },
                func: (e) => {
                    const data = JSON.parse(e.d);
                    txtUnits.val(data.PartName);
                    drMachines.val(data.MachineId)
                    btnSabt.hide();
                    btnEdit.show();
                    editEnabled = true;
                }
            })
        })

        btnEdit.on('click', function () {
            if (drMachines.val() == '-1' || txtUnits.val() == '') {
                RedAlert('n', 'لطفا فیلدهای ورودی را بررسی نمایید')
            } else {
                AjaxData({
                    url: 'DaftarFanni.asmx/UpdatePart',
                    param: {
                        unitId: unitId,
                        machineId: drMachines.val(),
                        partName: txtUnits.val()
                    },
                    func: () => {
                        btnSabt.show();
                        btnEdit.hide();
                        txtUnits.val('');
                        editEnabled = false;
                        GetFilteredUnits(drMachines.val());
                    }
                })
            }
        })
    </script>
</asp:Content>

