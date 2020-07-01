$(document).on('turbolinks:load', function(){
    $(".thongbaoloi").delay(2000).slideUp(500, function(){
          $(".thongbaoloi").alert('close');
      });
    });