<section class="logo">
    <img src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${config.sidebar_intro_pic_src}" width="${config.sidebar_intro_pic_width}"
    height="${config.sidebar_intro_pic_height}" alt="${config.sidebar_intro_pic_alt}" fetchpriority="high" />
</section>

<section class="title">
    <h1>${config.sidebar_intro_header}</h1>
    <p class="subtitle">${config.sidebar_intro_summary}</p>
</section>

<section class="icons">
    <ul>
        <#if (config.render_feed?boolean == true) >
            <li><a href="${config.feed_file}" type="application/rss+xml" target="_blank" title="RSS" class="bi bi-rss-fill"></a></li>
        </#if>
        <#if (config.sidebar_social_show?boolean == true)>
        	<#include "social.ftl">
        </#if>
    </ul>
</section>
