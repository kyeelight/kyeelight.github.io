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
      $images.append this.parentNode
    $('#get').on 'click', ->
      $.get "/admin/lights/#{name}/get", (imgs) ->
        $images.html ("<div class='thumb'><img src=http://kweb.qiniudn.com/#{img}-400x300 alt=#{img}><div class='del'>x</div></div>" for img in imgs).join ''

    $('#sort').on 'click', ->
      $.post "/admin/lights/#{name}", imgs: ($.map $images.find('img'), (e) -> e.alt), (rs) -> console.log rs
      

      # <img src="http://kweb.qiniudn.com/ML-ZQ1519-0.jpg-400x300" alt="ML-ZQ1519-0.jpg">
      # $.get "/admin/lights/#{name}/upload", (rs) ->
      #   $images.empty()
      #   $images.append $.render html, img: img for img in rs
