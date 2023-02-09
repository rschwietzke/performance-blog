<nav class="menu">
    <section class="items">
    	<#list config.site_menus_main as item>
            <#assign name = 'site_menus_main_' + item>

    		<div class="item ${config[name + '_class']!''}">
                <a href="${config[name + '_url']}">
                    <#if config['site_menus_main_' + item + '_label']?trim?has_content>
                        <i class="${config[name + '_icon']}"></i><span class="name">${config[name+ '_label']}</span>
                    <#else>
                        <i class="${config[name + '_icon']}"></i>
                    </#if>
                </a>
        	</div>
    	</#list>
    </section>
</nav>
