$ ->
  $tags = $('#tags')
  $images  = $ '#images'
  if $tags[0]
    $tags.tagsInput
      'width':'800px'
      'interactive':true
      'defaultText':''
      'removeWithBackspace' : true
      'minChars' : 0
      'maxChars' : 0
      'placeholderColor' : '#666666'
  if $images[0]
    name = $('#name').html()
    $images.on 'click', 'img', ->
      $images.append this
      console.log this
    $('#get').on 'click', ->
      imgs = []
      $images.find('img').each ->
        imgs.push this.alt
      $.get "/admin/lights/#{name}/sort", imgs: imgs, (rs) ->
        console.log rs
      