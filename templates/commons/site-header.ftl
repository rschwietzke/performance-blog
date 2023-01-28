<img src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${config.sidebar_intro_pic_src}" width="${config.sidebar_intro_pic_width}"
height="${config.sidebar_intro_pic_height}" alt="${config.sidebar_intro_pic_alt}" fetchpriority="high" />

<header>
    <h2>${config.sidebar_intro_header}</h2>
    <p>${config.sidebar_intro_summary}</p>
</header>

<ul class="icons">
    <#if (config.render_feed?boolean == true) >
        <li><a href="${config.feed_file}" type="application/rss+xml" target="_blank" title="RSS" class="bi bi-rss-fill"></a></li>
    </#if>
    <#if (config.sidebar_social_show?boolean == true)>
    	<#include "social.ftl">
    </#if>
</ul>
