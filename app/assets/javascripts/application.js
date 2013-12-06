// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });

function onPositionUpdate(position)
{
    var lat = position.coords.latitude;
    var lon = position.coords.longitude;
    var url = '/forecast';
    $.post(url, {"lat" : lat, "lon" : lon}, function(data, textStatus) {
      $("#currentTemp").html("Current temp at " + lat + ", " + lon + " is " + data["temp"]);
    }, "json");
}

if(navigator.geolocation)
  navigator.geolocation.getCurrentPosition(onPositionUpdate);