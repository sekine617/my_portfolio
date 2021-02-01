// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require activestorage
//= require jquery
//= require rails-ujs
//= require popper
//= require bootstrap
//= require jquery.jpostal 
//= require orders.coffee
//= require orders.js


$(function () {
  $(document).on('turbolinks:load', () => {
    $('#user_post_code').jpostal({
      postcode: [
        '#user_post_code'
      ],
      address: {
        "#user_prefecture_code": "%3",
        "#user_city": "%4%5",
        "#user_street": "%6%7"
      }
    });
  });
});

$(function () {
  $('.user-address').hide();
  $('#select-user-address').click(function () {
    $('.user-address').show();
    for (let i = 0; i < 5; i++) {
      $('.form-control')[i + 3].value = $('.address-info')[i].value
    }
    //$('.form-group').find('.address-input').val("").end()
    $('.address-form').hide();
  });

  $('#select-address-form').click(function () {
    $('.form-group').find('.address-input').val("").end()
    $('.address-form').show();
    $('.user-address').hide();
  });
});