{*
* 2007-2015 PrestaShop
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
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<table id="summary-tab" width="100%">
    <tr>
        <th class="header small" width="25%" valign="middle">{l s='Invoice Number' pdf='true'}</th>
        <th class="header small" width="20%" valign="middle">{l s='Invoice Date' pdf='true'}</th>
        <th class="header small" width="25%" valign="middle">{l s='Order Number' pdf='true'}</th>
        <th class="header small" width="30%" valign="middle">{l s='VAT Number' pdf='true'}</th>
    </tr>
    <tr>
        <td class="center small white">{$title|escape:'html':'UTF-8'}</td>
        <td class="center small white">{dateFormat date=$order->date_add full=0}</td>
        <td class="center small white">{$order->getUniqReference()}</td>
        <td class="center small white">
            {if $data.addresses.invoice->vat_number}
                {$data.addresses.invoice->vat_number}
            {else}
                --
            {/if}
        </td>
    </tr>
</table>
