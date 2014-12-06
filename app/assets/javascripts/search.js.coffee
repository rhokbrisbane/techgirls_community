$(document).ready ->
  $("a[href=\"#search\"]").on "click", (event) ->
    event.preventDefault()
    $("#search").addClass "open"
    $("#search > form > input[type=\"search\"]").focus()
    return

  $("#search, #search button.close").on "click keyup", (event) ->
    $(this).removeClass "open"  if event.target is this or event.target.className is "close" or event.keyCode is 27
    return

  return
