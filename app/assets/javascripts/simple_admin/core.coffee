$(document).ready ->
  if ! !$('#tabs').length
    $('#tabs').tabs()

  if ! !$('#tags').length
    $('#tags').tagsInput
      width: '100%'
      height: '36px'

  if ! !$('.notify').length
    $('button.close').click ->
      $('.notify').remove()
