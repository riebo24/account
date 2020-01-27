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
// = require jquery 
// = require jquery_ujs
//= require moment 
//= require fullcalendar 
// = require_tree .
//= require Chart.bundle
//= require chartkick

$(function () {
  function eventCalendar() {
      return $('#calendar').fullCalendar({});
  };
  function clearCalendar() {
      $('#calendar').html('');
  };
  $(document).on('turbolinks:load', function () {
    eventCalendar();
  });
  $(document).on('turbolinks:before-cache', clearCalendar);
  $('#calendar').fullCalendar({
    events: '/posts.json'
  //   events: [
  // {
  //   title: 'event1',
  //   start: '2020-01-01'
  // }, {
  //   title: 'event2',
  //   start: '2020-01-05',
  //   end: '2020-01-07'
  // }, {
  //   title: 'event3',
  //   start: '2020-01-09T12:30:00',
  //   allDay: false
  // }
  // ]
});
});

