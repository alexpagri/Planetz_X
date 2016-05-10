$(window).load(function(){
	
	var bodyz = $('body');
	
	var tot_heig = document.documentElement.scrollHeight;
	var wind_heig = $(window).height();
	
	var img = new Image();
    img.src = bodyz.css('background-image').replace(/url\(|\)$|"/ig, '');
	
	var const1 = (img.height - wind_heig);
	var const2 = (tot_heig-wind_heig+1);
	var const3 = const1/const2;
	
	var st = $(this).scrollTop();
	
	
	
	$(window).on('scroll', function(){
		bodyz.css({ 	'background-position' : ('0px -' + const3*$(this).scrollTop() + 'px') }); 
	});
	
});