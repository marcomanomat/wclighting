$( document ).ready( function(){

  $( '.button-collapse' ).sideNav({
    closeOnClick: true,
    edge: 'right'
  });

  $( '.parallax' ).parallax();

$('.slider').slider({
			full_width: false,
			height: 450,
    }
  );			

  $('.carousel').carousel();

$('.modal-trigger').leanModal({
      starting_top: '100%',
      dismissible: true, // Modal can be dismissed by clicking outside of the modal
      opacity: .55, // Opacity of modal background
    }
  );

})
