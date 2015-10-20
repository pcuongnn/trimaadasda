$(document).ready(function() {
	var owlMain = function(number,target,offset) {
		var owl = $(target);
		owl.owlCarousel({
			loop:true,
			margin:0,
			nav:true,
			dots:false,
			items:number,
			margin: offset, 
			autoplay:false,
			navText: [
				"<i class='my-arrow-left'></i>",
				"<i class='my-arrow-right'></i>"
			],
			dots: true,
		});
	}
	owlMain(1,'[data-item="owl-main"]', 0);
	owlMain(5,'[data-item="owl-main-card"]', 20);
});

