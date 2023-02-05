<nav class="menu">
    <section class="items">
    	<#list config.site_menus_main as menuItem1>
    		<div class="item">
                <a href="${config['site_menus_main_' + menuItem1 + '_url']}">
                    <i class="${config['site_menus_main_' + menuItem1 + '_icon']}"></i>${config['site_menus_main_' + menuItem1 + '_label']}
                </a>
        	</div>
    	</#list>
    </section>
</nav>
