$(function () {

	$('a.account').click(function(){
		$('#fond').stop(true, true).fadeIn(200);

		$('#cart_block').stop(true, true).fadeOut(200);
		$('#header_user .popupboboite').stop(true, true).fadeIn(200);

		$.get($(this).attr('href') + '&ajax=1',
			function(data) {
				try
				{
					var response = jQuery.parseJSON(data);
					console.log('at');
					$('#header_user .popupboboite .contentAjax').html(response.page);
				}
				catch(err)
				{
					$.get('/index.php?controller=authentication&back=my-account&ajax=1',
						function(data) {
							$('#header_user .popupboboite .contentAjax').html(data.page);
						}, "json");
				}
			});

		return false;
	});

	$("a.shopping_cart").click(function() {
		$('#fond').stop(true, true).fadeIn(200);

		$('#header_user .popupboboite').stop(true, true).fadeOut(200);
		$("#cart_block").stop(true, true).stop(true, true).fadeIn(200);
		return false;
	});

	$("#fond").click(function(){
		$('.popupboboite').fadeOut(200);
		$('#fond').fadeOut(200);
	});
});