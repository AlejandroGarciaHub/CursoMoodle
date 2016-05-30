// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require bootstrap.min
//= require bootstrap-sprockets
//= require_tree .


$(document).on('page:change',function() {

  $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
});
  
  var trigger = $('.hamburger'),
      overlay = $('.overlay'),
     isClosed = false;

    trigger.click(function () {
      hamburger_cross();      
    });

    function hamburger_cross() {

      if (isClosed == true) {          
        overlay.hide();
        trigger.removeClass('is-open');
        trigger.addClass('is-closed');
        isClosed = false;
      } else {   
        overlay.show();
        trigger.removeClass('is-closed');
        trigger.addClass('is-open');
        isClosed = true;
      }
  }
  

});


$(document).on('page:change',function() {
  $('[data-toggle="offcanvas"]').click(function () {
        $('#wrapper').toggleClass('toggled');
  });  
});
$(document).on('page:change',function() {
   $(".enlace a").click(function(){
        $(this).tab('show');
    });
});

$(document).on('page:change',function() {
  $('li').hover(function(){
      $(this).children('ul').stop().slideToggle(400);
  });
});


/*!
 * Bootstrap v3.3.6 (http://getbootstrap.com)
 * Copyright 2011-2015 Twitter, Inc.
 * Licensed under the MIT license
 */

