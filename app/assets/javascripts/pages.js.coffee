
$ ->
  prettyPrint()
  $('ul.nav-tabs a').click (event) ->
    $(this).tab('show')
    event.preventDefault()

  $('ul.nav-tabs a:first').click();
