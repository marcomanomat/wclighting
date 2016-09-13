$( document ).ready( function(){

  $( '.button-collapse' ).sideNav({
    closeOnClick: true,
    edge: 'right'
  });

  $( '.parallax' ).parallax();

  $('.carousel.carousel-slider').carousel({full_width: true});

  $('.modal-trigger').leanModal();

})
