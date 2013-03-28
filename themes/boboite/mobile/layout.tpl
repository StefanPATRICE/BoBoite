

{if !empty($display_header)}
	{include file='./header.tpl' HOOK_HEADER=$HOOK_HEADER}
{/if}

<header>
	<div class="link"></div>
	<div class="lol"></div>
	<div id="logo">
		<div id="logo-img"></div>
	</div>
</header>

<div id="container">
	<div class="slide slide1"></div>
	<div class="slide slide2"></div>
	<div class="slide slide3"></div>
	<div class="slide slide4"></div>
	<div class="slide slide5"></div>
	<div class="slide slide6"></div>
	<div class="slide slide7"></div>
	<div class="slide slide8"></div>
</div>

<div id="temoignages">
	<div class="slide slide9"></div>
	<div class="slide slide10"></div>
	<div class="slide slide11"></div>
</div>


<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<script>
$('.lol').on('click', function(){
	$('#container').fadeOut('slow', function(){
		$('#temoignages').fadeIn();
	})
});

$('.link').on('click', function(){
	$('#temoignages').fadeOut('slow', function(){
		$('#container').fadeIn();
	})
});
</script>


{if !empty($display_footer)}
	{include file='./footer.tpl'}
{/if}
