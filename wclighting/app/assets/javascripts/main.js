$( document ).ready( function(){

  $( '.button-collapse' ).sideNav({
    closeOnClick: true,
    edge: 'right'
  });

  $( '.parallax' ).parallax();

$('.slider').slider({full_width: false});
$('.slider').slider('next');

  $('.carousel').carousel();

  $('.modal-trigger').leanModal();

})
