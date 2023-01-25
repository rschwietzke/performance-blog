<!-- Sidebar -->
<section id="sidebar">

    <!-- Intro -->
    <section id="intro">
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
    </section>

    <!-- Posts List -->
    <section class="pinned-posts">
        <header>
            <h2>Pinned Posts</h2>
        </header>
        <div class="posts">
			<#list posts as sideBarPost1>
                <#assign pinned = sideBarPost1.pinned?? && sideBarPost1.pinned?boolean>

                <#if pinned>
                    <article>
                        <header>
                            <h3><a href="${content.rootpath}${sideBarPost1.noExtensionUri!sideBarPost1.uri}">${sideBarPost1.title}</a></h3>
                            <time class="published"
                                   datetime='${sideBarPost1.date?string("yyyy-MM-dd")}'>
                                   ${sideBarPost1.date?string("yyyy-MM-dd")}</time>
                        </header>
                        <#if (sideBarPost1.excerpt??)>
                            <p class="excerpt">
                                ${sideBarPost1.excerpt}
                            </p>
                        </#if>
                    </article>
                </#if>
            </#list>
        </div>
    </section>

    <!-- About -->
    <section class="about">
        <h2>About</h2>
        <p>${config.sidebar_intro_about}</p>

        <#-- <ul class="actions">
            <li><a href="${content.rootpath}${config.sidebar_intro_about_learnMore}" class="button">Learn More</a></li>
        </ul> -->
    </section>


    <section class="footer">
        <p class="copyright">
            &copy; ${config.site_author}
        </p>
        <p>
            Based on work from HTML5 UP and others. Modified, changed, improved, slimmed down by René Schwietzke.
            Original work <a href="http://html5up.net" target="_blank">HTML5 UP</a>.
            Ported For SSG by <a href="https://github.com/jpescador/hugo-future-imperfect">Julio Pescador</a>.
            Adapted to JBake by <a href="//github.com/manikmagar" target="_blank">Manik Magar</a>.
            Baked with <a href="http://jbake.org">JBake ${version}</a>.
        </p>
        <#if (config.render_sitemap?boolean)>
            <p>
                <a href="/${config.sitemap_file}" target="_blank">Sitemap</a>
            </p>
        </#if>
    </section>

</section>
