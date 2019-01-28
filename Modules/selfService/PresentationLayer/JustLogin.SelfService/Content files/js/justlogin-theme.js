//$(".header-link").click(function() {
//    $("body").toggleClass("show-menu");
//});


// Three List
$(document).ready(function() {
	$('.pricing-plan').owlCarousel({
		loop: true,
		margin: 15,
		autoplay:true,
		autoplayTimeout:3000,
		autoplayHoverPause:true,
		responsiveClass: true,
		responsive: {
			0: {
				items: 1,
				nav: true,
				loop: true
			},
			768: {
				items: 2,
				nav: true,
				loop: true
			},
			992: {
				items: 3,
				nav: true,
				loop: true
			},
			1200: {
				items: 4,
				nav: true,
				loop: true
			}
		}
	})
})