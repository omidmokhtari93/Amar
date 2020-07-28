<%@ Page Title="" Language="C#" MasterPageFile="~/DaftarFanni/main.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="DaftarFanni_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField runat="server" ID="hiddenKeys" ClientIDMode="Static" />
    <script src="js/jquery.timeago.js"></script>
    <script src="js/Upload.js"></script>
    <div class="text-center m-auto pt-3" style="width: 90%;">
        <div class="row rtl" id="inputs">
            <div class="col-md-3">
                <asp:DropDownList runat="server" DataSourceID="Machines" DataTextField="MachineName" AppendDataBoundItems="True"
                    onchange="FilterPartsByMachine('drMachines', 'drUnits')" required
                    DataValueField="Id" CssClass="search rtl" ID="drMachines" ClientIDMode="Static">
                    <asp:ListItem Value="-1">نام ماشین را انتخاب کنید</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="Machines" runat="server" ConnectionString="<%$ ConnectionStrings:DaftarFanni %>"
                    SelectCommand="SELECT Id, MachineName FROM Machines order by Id asc"></asp:SqlDataSource>
            </div>
            <div class="col-md-3">
                <select class="search" required id="drUnits"></select>
            </div>
            <div class="col-md-3">
                <input class="search rtl" required placeholder="کلمات کلیدی ..." id="txtKeywords" />
            </div>
            <div class="col-md-3 text-right">
                <button class="btn btn-primary btn-search" type="button" id="btnSearch">جستجو</button>
                <div class="spinner-border mt-2 float-left" role="status" id="loading" style="display: none;">
                    <span class="sr-only">Loading...</span>
                </div>
            </div>
        </div>
        <hr />
        <div class="search-result text-center container" id="filesArea"></div>
    </div>

    <div class="modal fade" id="myModal">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-body text-right">
                    آیا مطمئن هستید؟
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal" id="btnAcceptDelete">بله</button>
                    <button type="button" class="btn btn-success" data-dismiss="modal">خیر</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        var drMachines = $('#drMachines')
        var drUnits = $('#drUnits')
        var txtKeywords = $('#txtKeywords')
        var loading = $("#loading").show()
        var btnSearch = $('#btnSearch')
        var filesArea = $('#filesArea')
        var hiddenKeys = $('#hiddenKeys')
        var btnAcceptDelete = $('#btnAcceptDelete')
        var htmlFile;

        const co = (x) => {
            console.log(x)
        }

        $(function () {
            if (hiddenKeys.val() != '') {
                SearchDocumnets(hiddenKeys.val())
            }
        })

        $.get("contents/FilesTemplate.html", function (html) {
            htmlFile = html
            loading.hide()
        }, 'html');

        btnSearch.on('click', function () {
            if (txtKeywords.val().length < 3 && txtKeywords.val() != '') {
                RedAlert('txtKeywords', 'حداقل سه کله وارد کنید')
            } else if (drMachines.val() == '-1' && (drUnits.val() == '-1' || drUnits.val() == null) && txtKeywords.val() == '') {
                Checkinputs('inputs');
                RedAlert('n', 'حداقل یک مورد را تکمیل کنید')
            } else {
                SearchDocumnets(undefined)
            }
        })

        const SearchDocumnets = (keys) => {
            loading.show()
            AjaxData({
                url: 'DaftarFanni.asmx/SearchInDocuments',
                param: {
                    machineId: drMachines.val() == null ? -1 : drMachines.val(),
                    unitId: drUnits.val() == null ? -1 : drUnits.val(),
                    keywords: keys != undefined ? keys : txtKeywords.val()
                },
                func: (e) => {
                    const data = JSON.parse(e.d)
                    filesArea.empty();
                    data.map(x => {
                        const links = x.Keywords.split(',').map(k => `<a target="_blank" href="Search.aspx?keys=${k}">${k}</a>`);
                        const fehrest = '<span class="fa fa-star star float-left mt-1 ml-1 pointer" title="این فایل فهرست می باشد"></span>';
                        const file = htmlFile.replace('MachineName', x.MachineName)
                            .replace('PartName', x.PartName)
                            .replace('<span class="float-right mr-2 mt-1 fa fa-pencil font-weight-light ' +
                                'page-number-font pointer" title="ویرایش" doc-id="DocumentId"></span>', '')
                            .replace('FileType', getFileExtension(x.FilePath))
                            .replace('Comment', x.Comment)
                            .replace('FileAddress', x.FilePath)
                            .replace('PageNumber', x.PageNumber)
                            .replace('MachineId', x.Id)
                            .replace('FileSize', bytesToSize(x.FileSize))
                            .replace('Keywords', links.join(' / '))
                            .replace('Fehrest', x.Fehrest ? fehrest : '')
                            .replace('EntryDateTime', x.Modified);
                        filesArea.append(file);
                    });
                    $('button[document-id]').remove()
                    $("time.timeago").timeago();
                    loading.hide();
                }
            })
        }

        $(document).on('click', 'button[document-id]', function () {
            $('#btnAcceptDelete').attr('documentid', $(this).attr('document-id'))
            $('#myModal').modal('show')
        })

        btnAcceptDelete.on('click', function () {
            loading.show()
            AjaxData({
                url: 'DaftarFanni.asmx/DeleteDocument',
                param: { documentId: $(this).attr('documentid') },
                func: () => {
                    GreenAlert('n', 'با موفقیت حذف شد')
                    SearchDocumnets(hiddenKeys.val() == '' && undefined)
                }
            })
        })

        $(document).on('keypress', function (e) {
            if (e.keyCode === 13) {
                btnSearch.click();
                e.preventDefault();
            }
        })
    </script>
</asp:Content>
