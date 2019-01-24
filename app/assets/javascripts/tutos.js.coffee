# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$(document).ready ->
  $("#send").on("ajax:success", (event) ->
    [data, status, xhr] = event.detail
    $("#send").append xhr.responseText
  ).on "ajax:error", (event) ->
    $("#send").append "<p>ERROR</p>"

