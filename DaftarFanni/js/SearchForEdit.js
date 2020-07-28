var drMachinesSearch = $('#drMachinesSearch');
var drUnitSearch = $('#drUnitSearch');
var txtKeywordsSearch = $('#txtKeywordsSearch');
var btnSearch = $('#btnSearch');

btnSearch.on('click', function () {
  if (txtKeywordsSearch.val().length < 3 && txtKeywordsSearch.val() != '') {
    RedAlert('txtKeywordsSearch', 'حداقل سه کله وارد کنید')
  } else if (drMachinesSearch.val() == '-1' && (drUnitSearch.val() == '-1' || drUnitSearch.val() == null) && txtKeywordsSearch.val() == '') {
    Checkinputs('searchDocs');
    RedAlert('n', 'حداقل یک مورد را تکمیل کنید')
  } else {
    SearchDocumnets(undefined)
  }
});

const SearchDocumnets = (keys) => {
  loading.show()
  AjaxData({
    url: 'DaftarFanni.asmx/SearchInDocuments',
    param: {
      machineId: drMachinesSearch.val() == null ? -1 : drMachinesSearch.val(),
      unitId: drUnitSearch.val() == null ? -1 : drUnitSearch.val(),
      keywords: keys != undefined ? keys : txtKeywordsSearch.val()
    },
    func: (e) => {
      const data = JSON.parse(e.d)
      filesArea.empty();
      data.map(x => {
        const links = x.Keywords.split(',').map(k => '<a target="_blank" href=Search.aspx?keys=' + k + '>' + k + '</a>');
        const fehrest = '<span class="fa fa-star star float-left mt-1 ml-1 pointer" title="این فایل فهرست می باشد"></span>';
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

