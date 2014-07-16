j$(document).ready(function() {

	// Hiding the thing to show/hide
	j$('.to-hide').hide();

	// When clicking the toggle
	j$('.show-hide').click(function(e) {
		e.preventDefault();
		var target = j$(this).attr('href'),
				$target = j$('div' + target);

		// Checking to see if it's showing already
		if ( !$target.hasClass('showing') )
		{
			// Showing
			$target.addClass('showing').show();
		} else {
			// Hiding
			$target.removeClass('showing').hide();
		}
	});

});
