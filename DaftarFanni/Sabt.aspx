<%@ Page Title="" Language="C#" MasterPageFile="~/DaftarFanni/main.master" AutoEventWireup="true" CodeFile="Sabt.aspx.cs" Inherits="DaftarFanni_Sabt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="css/selectize.default.css" rel="stylesheet" />
    <script src="js/selectize.js"></script>
    <script src="js/jquery.timeago.js"></script>
    <script src="js/Upload.js"></script>
    <div class="container mt-3">
        <div class="card">
            <div class="card-header text-center">ثبت سند</div>
            <div class="card-body" id="inputs">
                <div class="row">
                    <div class="col-md-4 text-right">
                        <span>شماره صفحه</span>
                        <input class="form-control text-center" required type="number" id="txtPageNumber" tabindex="3" />
                    </div>
                    <div class="col-md-4 text-right">
                        <span>بخش ها</span>
                        <select onchange="getLatestPageNumber()" class="form-control rtl" required tabindex="2" id="drUnits"></select>
                    </div>
                    <div class="col-md-4 text-right">
                        <span>ماشین آلات</span>
                        <asp:DropDownList runat="server" ClientIDMode="Static" required TabIndex="1"
                            onchange="FilterPartsByMachine('drMachines', 'drUnits')"
                            ID="drMachines" AppendDataBoundItems="True"
                            CssClass="form-control rtl" DataSourceID="Machines"
                            DataTextField="MachineName" DataValueField="Id">
                            <asp:ListItem Value="-1">انتخاب کنید</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="Machines" runat="server" ConnectionString="<%$ ConnectionStrings:DaftarFanni %>" SelectCommand="SELECT Id, MachineName FROM Machines order by Id asc"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="row mt-3 text-right">
                    <div class="col-md-4">
                        <span>توضیحات</span>
                        <input class="form-control rtl" id="txtComment" tabindex="6" />
                    </div>
                    <div class="col-md-4">
                        <span>کلمات کلیدی</span>
                        <span class="font-smaller float-left rtl badge badge-danger mt-1 font-weight-light">با دکمه Enter واژه ها را جدا کنید</span>
                        <input id="txtKeywords" class="text-left" tabindex="5" />
                    </div>
                    <div class="col-md-4">
                        <span>موضوع</span>
                        <input class="form-control rtl" id="txtSubject" tabindex="4" />
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-2">
                        <button class="btn btn-block btn-primary" type="button" tabindex="8" id="btnSabt">ثبت</button>
                    </div>
                    <div class="col-md-6 text-right">
                        <div>
                            <span class="font-smaller rtl badge badge-danger font-weight-light">اگر در حال ثبت فهرست هستید این گزینه را فعال کنید
                            </span>
                        </div>
                        <span class="font-small">فهرست</span>
                        <input type="checkbox" class="align-middle" id="chFehrest" />
                    </div>
                    <div class="col-md-4">
                        <input type="file" required id="file" class="mt-1" tabindex="7" />
                    </div>
                </div>
                <div class="row" id="progressbar" style="display: none;">
                    <div class="col-md-12">
                        <div class="progress-bar progress-bar-success myprogress" role="progressbar" style="width: 0%">0%</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="mt-3">
            <div class="alert alert-info text-right mb-3 rtl">
                <div class="row">
                    <div class="col-md-3">
                        <span class="ml-5 yekan-small">
                            حجم کل : <%=FilesSize %>
                        </span>
                    </div>
                    <div class="col-md-8">
                        <div class="row" id="searchDocs">
                            <div class="col-md-4" style="padding-left: 0;">
                                <asp:DropDownList runat="server" ClientIDMode="Static" required TabIndex="1" ID="drMachinesSearch"
                                    onchange="FilterPartsByMachine('drMachinesSearch', 'drUnitSearch')" AppendDataBoundItems="True"
                                    CssClass="rounded-inputs rtl" DataSourceID="Machines"
                                    DataTextField="MachineName" DataValueField="Id">
                                    <asp:ListItem Value="-1">انتخاب کنید</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3" style="padding-left: 0;">
                                <select class="rounded-inputs rtl" id="drUnitSearch" required></select>
                            </div>
                            <div class="col-md-3" style="padding-left: 0;">
                                <input required class="rounded-inputs" id="txtKeywordsSearch" placeholder="کلمات کلیدی" />
                            </div>
                            <div class="col-md-2" style="padding-left: 0;">
                                <button type="button" id="btnSearch" class="rounded-button">جستجو</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <span class="fa fa-file float-left mt-1"></span>
                        <div class="spinner-border spinner-border-sm float-left mt-1 ml-3" role="status" id="loading" style="display: none;">
                            <span class="sr-only">Loading...</span>
                        </div>
                    </div>
                </div>
            </div>
            <div id="filesArea" class="text-right files-area rtl"></div>
        </div>
    </div>
    <div id="EditArea"></div>

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
        var btnSabt = $('#btnSabt');
        var drMachines = $('#drMachines')
        var drUnits = $('#drUnits')
        var txtSubject = $('#txtSubject')
        var txtKeywords = $('#txtKeywords')
        var txtComment = $('#txtComment')
        var txtPageNumber = $('#txtPageNumber')
        var fileInput = $('#file')
        var loading = $('#loading')
        var filesArea = $('#filesArea')
        var btnAcceptDelete = $('#btnAcceptDelete')
        var chFehrest = $('#chFehrest')
        var htmlFile;

        var select = txtKeywords.selectize({
            placeholder: '',
            persist: false,
            createOnBlur: true,
            create: true
        });

        const getLatestPageNumber = () => {
            AjaxData({
                url: 'DaftarFanni.asmx/GetLatestPageNumber',
                param: { machineId: drMachines.val(), partId: drUnits.val() },
                func: (e) => {
                    txtPageNumber.val(e.d)
                }
            })
        }

        $.get("contents/FilesTemplate.html", function (html) {
            loading.show();
            htmlFile = html
            GetLatestSavedFiles()
        }, 'html');

        const GetLatestSavedFiles = () => {
            AjaxData({
                url: 'DaftarFanni.asmx/GetLatestSavedFiles',
                param: {},
                func: (e) => {
                    const data = JSON.parse(e.d)
                    filesArea.empty();
                    console.log(data);
                    data.map(x => {
                        const links = x.Keywords.split(',').map(k => `<a target="_blank" href="Search.aspx?keys=${k}">${k}</a>`);
                        const fehrest = '<span class="fa fa-star star float-left mt-1 ml-1 pointer" title="این فایل فهرست ' + x.MachineName + ' می باشد"></span>';
                        const file = htmlFile.replace('MachineName', x.MachineName)
                            .replace('PartName', x.PartName)
                            .replace('DocumentId', x.Id)
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
                    $("time.timeago").timeago();
                    loading.hide();
                }
            })
        }

        btnSabt.on('click', function () {
            if (Checkinputs('inputs')) {
                RedAlert('n', 'لطفا فیلدهای خالی را تکمیل کنید')
            } else {
                loading.show();
                const form = new FormData();
                const obj = {
                    FileSize: $("#file")[0].files[0].size,
                    MachineId: drMachines.val(),
                    PartId: drUnits.val(),
                    PageNumber: txtPageNumber.val(),
                    Subject: txtSubject.val(),
                    Keywords: txtKeywords.val(),
                    Comment: txtComment.val(),
                    Fehrest: chFehrest.is(':checked')
                }
                form.append('file', $('#file').prop('files')[0]);
                form.append('data', JSON.stringify(obj));
                doUpload(form);
            }
        })

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
                    GetLatestSavedFiles()
                }
            })
        })

        $(document).on('keypress', function (e) {
            if (e.keyCode === 13) {
                btnSabt.click();
                e.preventDefault();
            }
        })

        $(document).on('click', 'span[doc-id]', function () {
            const editDoc = $(this).attr('doc-id');
            $('#EditArea').load('contents/EditDocument.html?key' + Math.floor(Math.random() * 10), function () {
                $('#EditModal').modal('show');
                GelAllMachines(editDoc);
            });
        })

    </script>
    <script src="js/SearchForEdit.js"></script>
</asp:Content>
