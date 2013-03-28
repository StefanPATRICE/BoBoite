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

<!-- Block permanent links module HEADER -->
<div id="header_links">
    <div>
        <div id="header_link_contact"><a href="/index.php?id_product=1&controller=product" title="{l s='personnalisation' mod='blockpermanentlinks'}">{l s='Personnalisation' mod='blockpermanentlinks'}</a></div>
        <div id="header_link_contact"><a href="{$link->getPageLink('contact', true)}" title="{l s='contact' mod='blockpermanentlinks'}">{l s='Témoignage' mod='blockpermanentlinks'}</a></div>
        {*
        <li id="header_link_sitemap"><a href="{$link->getPageLink('sitemap')}" title="{l s='sitemap' mod='blockpermanentlinks'}">{l s='sitemap' mod='blockpermanentlinks'}</a></li>
        <li id="header_link_bookmark">
            <script type="text/javascript">writeBookmarkLink('{$come_from}', '{$meta_title|addslashes|addslashes}', '{l s='bookmark' mod='blockpermanentlinks' js=1}');</script>
        </li>
        *}
	</div>
</div>
<!-- /Block permanent links module HEADER -->
