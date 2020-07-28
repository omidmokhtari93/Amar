<%@ Page Title="" Language="C#" MasterPageFile="~/DaftarFanni/main.master" AutoEventWireup="true" CodeFile="Machines.aspx.cs" Inherits="DaftarFanni_Machines" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="card mt-3">
            <div class="card-header text-center">ثبت ماشین آلات</div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2">
                        <button class="btn btn-block btn-success" type="button" id="btnSabt">ثبت</button>
                        <button class="btn btn-block btn-primary mt-0" style="display: none;" type="button" id="btnEdit">ویرایش</button>
                    </div>
                    <div class="col-md-10">
                        <input class="form-control" type="text" dir="rtl" placeholder="نام ماشین ..." id="txtMachineName" />
                    </div>
                </div>
                <hr />
                <table id="tableMachines" class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ردیف</th>
                            <th>نام ماشین</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
        </div>
    </div>
    <script defer>
        var input = $('#txtMachineName');
        var btnSabt = $('#btnSabt');
        var btnEdit = $('#btnEdit');
        var table = $('#tableMachines');
        var tr, machineId = 0;
        GetMachines();

        btnSabt.on('click', function (e) {
            console.log(input.val());
            if (input.val() != '') {
                AjaxData({
                    url: 'DaftarFanni.asmx/MachineEntry',
                    param: { machineName: input.val() },
                    func: () => {
                        GreenAlert('n', 'با موفقیت ثبت شد');
                        input.val('');
                        GetMachines();
                    }
                })
            } else {
                RedAlert('txtMachineName', 'لطفا نام ماشین را وارد کنید')
            }
        })

        function GetMachines(x) {
            AjaxData({
                url: 'DaftarFanni.asmx/GetMachines',
                param: {},
                func: (e) => {
                    const data = JSON.parse(e.d)
                    const body = [];
                    const arrayLength = data.length;
                    for (let i = 0; i < arrayLength; i++) {
                        body.push(`<tr><td style="width:15%;">${i + 1}</td><td>${data[i].MachineName}</td>
                                <td style="width:15%;"><a machine-id="${data[i].Id}">ویرایش</a></td></tr>`)
                    }
                    table.find('tbody').empty().append(body.join(''));
                }
            })
        }

        table.on('click', 'tr td a', function () {
            if (tr !== undefined) {
                tr.css('background-color', '');
            }
            tr = $(this).parent().parent().css('background-color', 'lightgreen');
            machineId = $(this).attr('machine-id');
            AjaxData({
                url: 'DaftarFanni.asmx/GetMachineById',
                param: { machineId: $(this).attr('machine-id') },
                func: (e) => {
                    btnSabt.hide();
                    btnEdit.show();
                    input.val(e.d);
                }
            })
        })

        btnEdit.on('click', function () {
            if (input.val() != '') {
                AjaxData({
                    url: 'DaftarFanni.asmx/UpdateMachine',
                    param: { machineId: machineId, machineName: input.val() },
                    func: () => {
                        tr.css('background-color', '');
                        input.val('');
                        btnSabt.show();
                        btnEdit.hide();
                        GreenAlert('n', 'با موفقیت ویرایش شد')
                        GetMachines();
                    }
                })
            } else {
                RedAlert('txtMachineName', 'لطفا نام ماشین را وارد کنید')
            }
        })
    </script>
</asp:Content>

