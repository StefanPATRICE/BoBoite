
var nbImages = 143;
var scrollPart = 100;
var documentHeight = nbImages * scrollPart + $(window).height();;



$(document).ready(function(){

	if($('#index').length > 0)
	{
		$('body').height(documentHeight);


		for(var i = 0; i < 143; i++)
		{
			if(i < 100)
			{
				$('#container').append('<div class="wrapper" data-id="' + i + '"><img src="http://tousenboite.gobelins-annecy.com/themes/boboite/img/scroll/PNG_000' + i + '.png" /></div>');
			}
			else
				$('#container').append('<div class="wrapper" data-id="' + i + '"><img src="http://tousenboite.gobelins-annecy.com/themes/boboite/img/scroll/PNG_00' + i + '.png" /></div>');
		}

		$('#container').append('<div class="wrapper" data-id="' + 143 + '"><img src="http://tousenboite.gobelins-annecy.com/themes/boboite/img/scroll/PNG_00' + 142 + '.png" /></div>');

		$('.wrapper:first').addClass('active');

		$(document).on('scroll', function(){

			var scrollTop = $(document).scrollTop();

			for(var i = 0; i < nbImages; i++)
			{
				if((scrollTop >= scrollPart * i) && (scrollTop <= scrollPart * (i + 1)))
				{
					$('.wrapper').removeClass('active');
					$('.wrapper[data-id=' + (i+1) + ']').addClass('active');
				}
			}

			var currentScroll = $('.wrapper.active').data('id');

			if(currentScroll <= 2)
				$('.text[data-id="1"]').addClass('active');
			else
				$('.text[data-id="1"]').removeClass('active');

			if(currentScroll > 2 && currentScroll <= 6)
				$('.text[data-id="2"]').addClass('active');
			else
				$('.text[data-id="2"]').removeClass('active');

			if(currentScroll > 6 && currentScroll <= 9)
				$('.text[data-id="3"]').addClass('active');
			else
				$('.text[data-id="3"]').removeClass('active');

			if(currentScroll > 9 && currentScroll <= 12)
				$('.text[data-id="4"]').addClass('active');
			else
				$('.text[data-id="4"]').removeClass('active');

			if(currentScroll > 12 && currentScroll <= 15)
				$('.text[data-id="5"]').addClass('active');
			else
				$('.text[data-id="5"]').removeClass('active');
		});
	}
});

function resize(){
	$('.wrapper').css({
		height: $(window).height()
	});
}