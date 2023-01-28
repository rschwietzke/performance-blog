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
