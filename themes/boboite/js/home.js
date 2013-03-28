
var nbImages = 143;
var scrollPart = 100;
var documentHeight = nbImages * scrollPart + $(window).height();;



$(document).ready(function(){

	$('#product #center_column').css('height', $(document).height() - 45);
	$('#contact #page').css('height', $(document).height() - 45);

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

			if(currentScroll <= 10)
				$('.text[data-id="1"]').addClass('active');
			else
				$('.text[data-id="1"]').removeClass('active');

			if(currentScroll > 10 && currentScroll <= 36)
				$('.text[data-id="2"]').addClass('active');
			else
				$('.text[data-id="2"]').removeClass('active');

			if(currentScroll > 36 && currentScroll <= 45)
				$('.text[data-id="3"]').addClass('active');
			else
				$('.text[data-id="3"]').removeClass('active');

			if(currentScroll > 45 && currentScroll <= 62)
				$('.text[data-id="4"]').addClass('active');
			else
				$('.text[data-id="4"]').removeClass('active');

			if(currentScroll > 62 && currentScroll <= 81)
				$('.text[data-id="5"]').addClass('active');
			else
				$('.text[data-id="5"]').removeClass('active');

			if(currentScroll > 81 && currentScroll <= 92)
				$('.text[data-id="6"]').addClass('active');
			else
				$('.text[data-id="6"]').removeClass('active');

			if(currentScroll > 92 && currentScroll <= 106)
				$('.text[data-id="7"]').addClass('active');
			else
				$('.text[data-id="7"]').removeClass('active');

			if(currentScroll > 106 && currentScroll <= 128)
				$('.text[data-id="8"]').addClass('active');
			else
				$('.text[data-id="8"]').removeClass('active');

			if(currentScroll > 128 && currentScroll <= 141)
				$('.text[data-id="9"]').addClass('active');
			else
				$('.text[data-id="9"]').removeClass('active');

			if(currentScroll > 141 && currentScroll <= 143)
				$('.text[data-id="10"]').addClass('active');
			else
				$('.text[data-id="10"]').removeClass('active');
		});
	}
});

function resize(){
	$('.wrapper').css({
		height: $(window).height()
	});
}