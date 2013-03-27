$(function () {

	$('a.account').click(function(){
		console.log('a');
		//$('#center_column').load($(this).attr('href'));
		closePopup();
		$('#fond').stop(true, true).fadeIn(200);
		$('#header_user .popup').stop(true, true).fadeIn(200);
		return false;
	});

	function closePopup(){
		$('.popup').fadeOut(200);
	}

});