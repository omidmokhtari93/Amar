function doUpload(formdata) {
  $('#progressbar').show()
  $.ajax({
    type: "POST",
    url: "DaftarFanni.asmx/SavePage",
    xhr: function () {
      var xhr = new window.XMLHttpRequest();
      xhr.upload.addEventListener("progress", function (evt) {
        if (evt.lengthComputable) {
          var percentComplete = evt.loaded / evt.total;
          percentComplete = parseInt(percentComplete * 100);
          $('.myprogress').text(percentComplete + '%');
          $('.myprogress').css('width', percentComplete + '%');
        }
      }, false);
      return xhr;
    },
    success: function (e) {
      $('#progressbar').hide();
      const data = JSON.parse($(e)[0].all[0].innerHTML);
      if (data.duplicate) {
        RedAlert('n', data.message);
      } else {
        txtPageNumber.val(parseInt(txtPageNumber.val()) + 1);
        txtSubject.val('');
        select[0].selectize.clear();
        txtComment.val('');
        fileInput.val('');
        chFehrest.prop('checked', false)
        GreenAlert('n', data.message)
        GetLatestSavedFiles();
      }
    },
    error: function (error) {
      console.log('n', error)
    },
    async: true,
    data: formdata,
    cache: false,
    contentType: false,
    processData: false
  });
};

function getFileExtension(file) {
  return file.substr((file.lastIndexOf('.') + 1)).toUpperCase();
};

function bytesToSize(bytes) {
  var sizes = ['بایت', 'کیلوبایت', 'مگابایت', 'گیگابایت', 'ترابایت'];
  if (bytes == 0) return '0 Byte';
  var i = parseInt(Math.floor(Math.log(bytes) / Math.log(1024)));
  return Math.round(bytes / Math.pow(1024, i), 2) + ' ' + sizes[i];
}


//$('[name=firstName]').val('ابوالفضل')
//$('[name=lastName]').val('اصلی نژاد')
//$('[name=userName]').val('0919338992')
//$('[name=password]').val('65')
//$('[name=birthDate]').val('1356/02/12')
//$('[name=cellPhoneNo]').val('09153756056')
//$('input[type=checkbox]').prop('checked', true)
