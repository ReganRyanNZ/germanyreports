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
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .


// This scrolls the url address bar out of the way on mobile devices, simulating a fullscreen app
// It also scrolls the navigation out of the way (so the user starts on content, but has a glimpse
// of where the navigation is)
document.addEventListener("turbolinks:load", function() {
  window.scrollTo(240,0);
});
