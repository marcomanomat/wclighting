$( document ).ready( function(){

  $( '.button-collapse' ).sideNav({
    closeOnClick: true,
    edge: 'right'
    }
  );

  $( '.parallax' ).parallax();

$('.slider').slider({
			full_width: true,
    }
  );			



$('.modal-trigger').leanModal({
      starting_top: '1%',
      dismissible: true, // Modal can be dismissed by clicking outside of the modal
      opacity: .55, // Opacity of modal background
    }
  );

})

// ===== Scroll to Top ==== 
$(window).scroll(function() {
    if ($(this).scrollTop() >= 75) {        // If page is scrolled more than 75px
        $('#return-to-top').fadeIn(200);    // Fade in the arrow
    } else {
        $('#return-to-top').fadeOut(200);   // Else fade out the arrow
    }
});

