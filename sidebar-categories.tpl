<div class="stepsbar">
	<div class="step {if $step eq 1}active{/if}"><strong>Step 1</strong><br />Domain Options</div>
    <div class="step {if $step eq 2}active{/if}"><strong>Step 2</strong><br />Configure</div>
    <div class="step {if $step eq 3}active{/if}"><strong>Step 3</strong><br />Confirm Order</div>
    <div class="step {if $step eq 4}active{/if}"><strong>Step 4</strong><br />Checkout</div>
    <div class="step {if $step eq 5}active{/if}"><strong>Step 5</strong><br />Complete Order</div>
</div>

<div class="row">
    <div class="col-sm-12">
        <div class="choosecat btn-group">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                {$LANG.cartchooseanothercategory} <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu">
                {foreach key=num item=productgroup from=$productgroups}
                    <li><a href="cart.php?gid={$productgroup.gid}">{$productgroup.name}</a></li>
                {/foreach}
                {if $loggedin}
                    <li><a href="cart.php?gid=addons">{$LANG.cartproductaddons}</a></li>
                    {if $renewalsenabled}
                        <li><a href="cart.php?gid=renewals">{$LANG.domainrenewals}</a></li>
                    {/if}
                {/if}
                {if $registerdomainenabled}
                    <li><a href="cart.php?a=add&domain=register">{$LANG.registerdomain}</a></li>
                {/if}
                {if $transferdomainenabled}
                    <li><a href="cart.php?a=add&domain=transfer">{$LANG.transferdomain}</a></li>
                {/if}
                <li><a href="cart.php?a=view">{$LANG.viewcart}</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-12 text-center">
    	<a href="#" class="btn btn-primary btn-block" style="margin-top:20px;"><i class="fa fa-shopping-cart"></i>&emsp;<b>View Cart</b></a>
        <a href="#" class="btn btn-default btn-block"><i class="fa fa-trash"></i>&emsp;<b>Clear Cart</b></a>
    </div>
</div>

<div class="row sidebar_ads">
	<div class="col-sm-12">
    	<a href="https://goo.gl/gSkJQf" target="_blank"><img src="https://www.exabytes.my/banners/exabytes-sg/2017/sg-domain-jan2017/300x250-sgdomain-jan2017-39.jpg" width="100%"></a>
    </div>
</div>
