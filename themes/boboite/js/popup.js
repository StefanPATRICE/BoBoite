$(function () {

	$('a.account').click(function(){
		$('#fond').stop(true, true).fadeIn(200);

		$('#cart_block').stop(true, true).fadeOut(200);
		$('#header_user .popupboboite').stop(true, true).fadeIn(200);

		$().ajax($(this).attr('href')+'&ajax=1');

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