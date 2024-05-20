$('.no-more').hide();
var paginate = 1;

var singleMediaCall = document.getElementById('singlemedia')
var bsOffcanvasSingle = new bootstrap.Offcanvas(singleMediaCall)

var multipleMediaCall = document.getElementById('multiplemedia')
var bsOffcanvasMultiple = new bootstrap.Offcanvas(multipleMediaCall)

function loadMediaFiles(element, openType) {
    if (openType == 'single') {
        bsOffcanvasSingle.show();
        if($('#medias-list-single li').length == 0){
            loadMoreDataSingle(paginate);
        }

    }
    else{

        bsOffcanvasMultiple.show();
        if($('#medias-list-multiple li').length == 0){
            loadMoreDataMultiple(paginate);
        }
    }
}


$('#load-more-multiple').click(function() {
    var page = $(this).data('paginate');
    loadMoreDataMultiple(page);
    $(this).data('paginate', page+1);
});

$('#load-more-single').click(function() {
    var page = $(this).data('paginate');
    loadMoreDataSingle(page);
    $(this).data('paginate', page+1);
});


        // run function when user click load more button
function loadMoreDataSingle(paginate) {
            //console.log(paginate);
    $.ajax({
        url: '/admin/media/get/single?page=' + paginate,
        type: 'get',
        datatype: 'html',
        beforeSend: function() {
            $('#load-more-single').text('Loading...');
        }
    })
    .done(function(data) {
        if(data.length == 0) {
            $('.no-more').show();
            $('#load-more-single').hide();
            return;
        } else {
            $('#load-more-single').text('Load more...');
            $('#medias-list-single').append(data);
        }
    })
    .fail(function(jqXHR, ajaxOptions, thrownError) {
      alert('Something went wrong.');
  });
}

        // run function when user click load more button
function loadMoreDataMultiple(paginate) {
            //console.log(paginate);
    $.ajax({
        url: '/admin/media/get/multiple?page=' + paginate,
        type: 'get',
        datatype: 'html',
        beforeSend: function() {
            $('#load-more-multiple').text('Loading...');
        }
    })
    .done(function(data) {
        if(data.length == 0) {
            $('.no-more').show();
            $('#load-more-multiple').hide();
            return;
        } else {
            $('#load-more-multiple').text('Load more...');
            $('#medias-list-multiple').append(data);
        }
    })
    .fail(function(jqXHR, ajaxOptions, thrownError) {
      alert('Something went wrong.');
  });
}

function selectMultipleFiles() {
    $(".media-file-value").html('');
    $(".media-file").html('');
    var checkboxes = document.getElementsByName('media[]');

    var result = "";
    var image = "";

    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].checked) {
            result += '<input type="hidden" name="file" value="'+checkboxes[i].value+'" class="fileid'+checkboxes[i].value+'">';
            var myimage = $("#getmedia-"+checkboxes[i].value).html();
            image += '<div  class="file-container d-inline-block fileid'+checkboxes[i].value+'"><span data-id="'+checkboxes[i].value+'" class="remove-file">&#x2715;</span>'+myimage+"</div>";
        }
    }
    bsOffcanvasMultiple.hide();
    $(".media-file-value").append(result);
    $(".media-file").append(image);

}

function selectSingleFile() {
    $(".media-file-value").html('');
    $(".media-file").html('');
    var checkboxes = document.getElementsByName('media');

    var result = "";
    var image = "";

    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].checked) {
            result += '<input type="hidden" name="file" value="'+checkboxes[i].value+'" class="fileid'+checkboxes[i].value+'">';
            var myimage = $("#getmedia-"+checkboxes[i].value).html();
            image += '<div  class="file-container d-inline-block fileid'+checkboxes[i].value+'"><span data-id="'+checkboxes[i].value+'" class="remove-file">&#x2715;</span>'+myimage+"</div>";
        }
    }
    bsOffcanvasSingle.hide();
    $(".media-file-value").append(result);
    $(".media-file").append(image);

}

$("body").on("click", ".remove-file", function(){
    var image_id = $(this).attr("data-id");
    $(".fileid"+image_id).remove();
    $("#mediaid"+image_id+":checked").prop('checked',false);
});