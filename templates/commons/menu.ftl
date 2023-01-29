<nav id="mobile-menu">
    <div class="burger">
        <a href="#menu"><i class="bi bi-list"></i></a>
    </div>

    <!-- Menu -->
    <section id="drawer">
        <!-- Links -->
            <section>
                <ul>
                    <#list config.site_menus_main as menuItem>
            		 <li>
                        <a href="<#if (config['site_menus_main_' + menuItem + '_url'] != "/")> ${content.rootpath}${config['site_menus_main_' + menuItem + '_url']}<#else>/</#if>">

                                <i class="${config['site_menus_main_' + menuItem + '_icon']}">&nbsp;</i>${config['site_menus_main_' + menuItem + '_label']}

                        </a>
                    </li>
    				</#list>
                </ul>
            </section>
    </section>
</nav>

<nav class="menu">
    <h1>${config.sidebar_intro_header}</h1>

    <section class="items">
    	<#list config.site_menus_main as menuItem1>
    		<div class="item">
                <a href="<#if (config['site_menus_main_' + menuItem1 + '_url'] != "/")> ${content.rootpath}${config['site_menus_main_' + menuItem1 + '_url']}<#else>/</#if>">

                        <i class="${config['site_menus_main_' + menuItem1 + '_icon']}"></i>${config['site_menus_main_' + menuItem1 + '_label']}

                </a>
        	</div>
    	</#list>
    </section>
</nav>
