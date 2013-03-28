{*
* 2007-2012 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2012 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<!-- Block user information module HEADER -->
<div id="header_user">
<div>
	<div id="header_user_info">
		<a href="{$link->getPageLink('my-account', true)}" title="{l s='View my customer account' mod='blockuserinfo'}" class="account" rel="nofollow">{l s='Mon compte' mod='blockuserinfo'}</a>
        {*
		{if $logged}
			<a href="{$link->getPageLink('my-account', true)}" title="{l s='View my customer account' mod='blockuserinfo'}" class="account" rel="nofollow"><span>{$cookie->customer_firstname} {$cookie->customer_lastname}</span></a>
			<a href="{$link->getPageLink('index', true, NULL, "mylogout")}" title="{l s='Log me out' mod='blockuserinfo'}" title="{l s='Log out' mod='blockuserinfo'}" class="logout" rel="nofollow">{l s='Log out' mod='blockuserinfo'}</a>
		{else}
			<a href="{$link->getPageLink('my-account', true)}" title="{l s='Login to your customer account' mod='blockuserinfo'}" class="login" rel="nofollow">{l s='Log in' mod='blockuserinfo'}</a>
		{/if}
        *}
        <div class="popupboboite popupblockuser">
			<div class="lien_haut_popup">
				<a href="{$link->getPageLink('my-account', true)}" title="{l s='View my customer account' mod='blockuserinfo'}" class="account active" rel="nofollow">{l s='Mon compte' mod='blockuserinfo'}</a>
				<a href="{$link->getPageLink($order_process, true)}" title="{l s='View my shopping cart' mod='blockuserinfo'}" rel="nofollow" class="shopping_cart">{l s='Mon panier' mod='blockuserinfo'}</a>
			</div>
            <div class="contentAjax"><script type="text/javascript">
				// <![CDATA[
				idSelectedCountry = false;
				countries = new Array();
				countriesNeedIDNumber = new Array();
				countriesNeedZipCode = new Array();
				$(function(){
					$('.id_state option[value=]').attr('selected', true);
				});
				//]]>
			</script>

				<!--<h1>Identifiez-vous</h1>-->



				<script type="text/javascript">

					// $(document).ready(function(){
					// 	// Retrocompatibility with 1.4
					// 	if (typeof baseUri === "undefined" && typeof baseDir !== "undefined")
					// 	baseUri = baseDir;
					// 	$('#create-account_form').submit(function(){
					// 		submitFunction();
					// 		return false;
					// 	});
					// 	$('#SubmitCreate').click(function(){
					// 		submitFunction();
					// 	});
					// });
					// function submitFunction()
					// {
					// 	$('#create_account_error').html('').hide();
					// 	//send the ajax request to the server
					// 	$.ajax({
					// 		type: 'POST',
					// 		url: baseUri,
					// 		async: true,
					// 		cache: false,
					// 		dataType : "json",
					// 		data: {
					// 			controller: 'authentication',
					// 			SubmitCreate: 1,
					// 			ajax: true,
					// 			email_create: $('#email_create').val(),
					// 			token: token
					// 		},
					// 		success: function(jsonData)
					// 		{
					// 			if (jsonData.hasError)
					// 			{
					// 				var errors = '';
					// 				for(error in jsonData.errors)
					// 					//IE6 bug fix
					// 					if(error != 'indexOf')
					// 						errors += '<li>'+jsonData.errors[error]+'</li>';
					// 				$('#create_account_error').html('<ol>'+errors+'</ol>').show();
					// 			}
					// 			else
					// 			{
					// 				// adding a div to display a transition
					// 				$('#center_column').html('<div id="noSlide">'+$('#center_column').html()+'</div>');
					// 				$('#noSlide').fadeOut('slow', function(){
					// 					$('#noSlide').html(jsonData.page);
					// 					// update the state (when this file is called from AJAX you still need to update the state)
					// 					bindStateInputAndUpdate();
					// 				});
					// 				$('#noSlide').fadeIn('slow');
					// 				document.location = '#account-creation';
					// 			}
					// 		},
					// 		error: function(XMLHttpRequest, textStatus, errorThrown)
					// 		{
					// 			alert("TECHNICAL ERROR: unable to load form.\n\nDetails:\nError thrown: " + XMLHttpRequest + "\n" + 'Text status: ' + textStatus);
					// 		}
					// 	});
					// }

				</script>
				<!---->
				<form action="http://tousenboite.gobelins-annecy.com/index.php?controller=authentication" method="post" id="create-account_form" class="std">
					<fieldset>
						<h3>Créez votre compte</h3>
						<div class="form_content clearfix">
							<p class="title_block">Saisissez votre adresse e-mail pour créer votre compte.</p>
							<div class="error" id="create_account_error" style="display:none"></div>
							<p class="text">
								<label for="email_create">Adresse e-mail</label>
								<span><input type="text" id="email_create" name="email_create" value="" class="account_input" /></span>
							</p>
							<p class="submit">
								<input type="hidden" class="hidden" name="back" value="my-account" />					<input type="button" id="SubmitCreate" name="SubmitCreate" class="button_large" value="Créez votre compte" />
								<input type="hidden" class="hidden" name="SubmitCreate" value="Créez votre compte" />
							</p>
						</div>
					</fieldset>
				</form>

				<form action="http://tousenboite.gobelins-annecy.com/index.php?controller=authentication" method="post" id="login_form" class="std">
					<fieldset>
						<h3>Déjà enregistré ?</h3>
						<div class="form_content clearfix">
							<p class="text">
								<label for="email">Adresse e-mail</label>
								<span><input type="text" id="email" name="email" value="" class="account_input" /></span>
							</p>
							<p class="text">
								<label for="passwd">Mot de passe</label>
								<span><input type="password" id="passwd" name="passwd" value="" class="account_input" /></span>
							</p>
							<p class="lost_password"><a href="http://tousenboite.gobelins-annecy.com/index.php?controller=password">Mot de passe oublié ?</a></p>
							<p class="submit">
								<input type="hidden" class="hidden" name="back" value="my-account" />					<input type="submit" id="SubmitLogin" name="SubmitLogin" class="button" value="Identifiez-vous" />
							</p>
						</div>
					</fieldset>
				</form></div>
        </div>
	</div>
	<ul id="header_nav">
    {if !$PS_CATALOG_MODE}
		<li id="shopping_cart">
			<a href="{$link->getPageLink($order_process, true)}" title="{l s='View my shopping cart' mod='blockuserinfo'}" rel="nofollow" class="shopping_cart">{l s='Panier' mod='blockuserinfo'}
				<span class="ajax_cart_quantity{if $cart_qties == 0} hidden{/if}">{$cart_qties}</span>
				<span class="ajax_cart_product_txt{if $cart_qties != 1} hidden{/if}">{l s='product' mod='blockuserinfo'}</span>
				<span class="ajax_cart_product_txt_s{if $cart_qties < 2} hidden{/if}">{l s='products' mod='blockuserinfo'}</span>
			<span class="ajax_cart_total{if $cart_qties == 0} hidden{/if}">
                {if $cart_qties > 0}
					{if $priceDisplay == 1}
                    {assign var='blockuser_cart_flag' value='Cart::BOTH_WITHOUT_SHIPPING'|constant}
                    {convertPrice price=$cart->getOrderTotal(false, $blockuser_cart_flag)}
                    {else}
                    {assign var='blockuser_cart_flag' value='Cart::BOTH_WITHOUT_SHIPPING'|constant}
                    {convertPrice price=$cart->getOrderTotal(true, $blockuser_cart_flag)}
                {/if}
				{/if}
			</span>
				<span class="ajax_cart_no_product{if $cart_qties > 0} hidden{/if}">{l s='(empty)' mod='blockuserinfo'}</span>
			</a>
		</li>
    {/if}
		<li id="your_account"><a href="{$link->getPageLink('my-account', true)}" title="{l s='View my customer account' mod='blockuserinfo'}" rel="nofollow">{l s='Your Account' mod='blockuserinfo'}</a></li>
	</ul>
</div>
</div>
<!-- /Block user information module HEADER -->
