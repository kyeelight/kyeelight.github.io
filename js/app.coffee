$ ->
  # $('.hs').slick dots: true
  $('.slider').slick dots: true
  $('#menu-link').on 'click', ->
    # $('#menu').toggleClass 'active'
    $(this).toggleClass 'active'
    $('#head').toggleClass 'active'
    console.log '...'
  # $('.thumb a').magnificPopup type: 'image'
  # $('.parent-container').magnificPopup
  #   delegate: 'a'
  #   type: 'image'

  $('#projects').magnificPopup
    delegate: 'a'
    tLoading: 'Loading image #%curr%...',
    type: 'image'
    gallery: 
      enabled: true
      navigateByImgClick: true
      preload: [0, 1]
    image: 
      tError: 'error'
      titleSrc: (item) ->
        item.el.data('desc')
      
      


# $(document).ready(function() {
#   $('.popup-gallery').magnificPopup({
#     delegate: 'a',
#     type: 'image',
#     tLoading: 'Loading image #%curr%...',
#     mainClass: 'mfp-img-mobile',
#     gallery: {
#       enabled: true,
#       navigateByImgClick: true,
#       preload: [0,1] // Will preload 0 - before current, and 1 after the current image
#     },
#     image: {
#       tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
#       titleSrc: function(item) {
#         return item.el.attr('title') + '<small>by Marsel Van Oosten</small>';
#       }
#     }
#   });
# });