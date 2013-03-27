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

{if isset($products)}
	<!-- Products list -->
	{foreach from=$products item=product name=products}

	<div id="text-content">
        <div class="text text_01 active" data-id="1"><h2>Feneborg présente ...</h2></div>
        <div class="text text_02" data-id="2">
            <h2>La Boboite</h2>
            <p class="headline">Un nouvel univers de sensations intérieures</p>
            <p>La Boboite vous permet de profiter de sensations intenses quel que soit l'endroit où vous êtes, à toute heure de la journée.</p>
        </div>
        <div class="text text_03" data-id="3"><h2>Un concept prouvé scientifiquement</h2></div>
        <div class="text text_04" data-id="4">
            <h2>F = CRACK<sup>2</sup> / GHB</h2>
            <p class="headline">La fameuse formule du docteur Stuart Meloy</p>
            <p>Des électrodes placées à l'intérieur de la boîte stimulent votre colonne vertébrale à une fréquence particulière, calculée grâce à une formule découverte par le docteur Stuart Meloy.</p>
        </div>
    </div>

    <div id="container">
        <div class="wrapper image_01 active" data-id="1"><img src="{$img_dir}test.png" /></div>
        <div class="wrapper image_02" data-id="2"><img src="{$img_dir}test.png" /></div>
        <div class="wrapper image_03" data-id="3"><img src="{$img_dir}test.png" /></div>
        <div class="wrapper image_04" data-id="4"><img src="{$img_dir}test.png" /></div>
        <div class="wrapper image_05" data-id="5"><img src="{$img_dir}test.png" /></div>
        <div class="wrapper image_05" data-id="6"><img src="{$img_dir}test.png" /></div>
        <div class="wrapper image_05" data-id="7"><img src="{$img_dir}test.png" /></div>
        <div class="wrapper image_05" data-id="8"><img src="{$img_dir}test.png" /></div>
        <div class="wrapper image_05" data-id="9"><img src="{$img_dir}test.png" /></div>
        <div class="wrapper image_05" data-id="10"><img src="{$img_dir}test.png" /></div>
        <div class="wrapper image_05" data-id="11"><img src="{$img_dir}test.png" /></div>
        <div class="wrapper image_05" data-id="12"><img src="{$img_dir}test.png" /></div>
        <div class="wrapper image_05" data-id="13"><img src="{$img_dir}test.png" /></div>
        <div class="wrapper image_05" data-id="14"><img src="{$img_dir}test.png" /></div>
        <div class="wrapper image_05" data-id="15"><img src="{$img_dir}test.png" /></div>
        <div class="wrapper image_05" data-id="16"><img src="{$img_dir}test.png" /></div>
    </div>

	{/foreach}
	<!-- /Products list -->
{/if}
