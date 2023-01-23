<article class="post post-list post-tag-list">
    <header>
        <div class="title">
            <h1><a href="${content.rootpath}${post.noExtensionUri!post.uri}">${post.title}</a></h1>
            <#if (post.subheadline?has_content)>
                <p class="description">${post.subheadline}</p>
            </#if>
        </div>
        <div class="meta">
            <time class="published" datetime='${post.date?string("yyyy-MM-dd")}'>${post.date?string("yyyy-MM-dd")}</time>
        </div>
    </header>

    <div class="content">
       <div class="asciidoc">
            <#assign preamble>${post.body?keep_after("<div id=\"preamble\">")?keep_before("</div>\\s+<div class=\"sect", "rsm")}</#assign>
            <#if preamble?trim?length != 0>
                ${preamble}
            <#else>
                ${post.excerpt!'No excerpt defined!'}
            </#if>
       </div>
       <p class="continue-reading"><a href="${content.rootpath}${post.noExtensionUri!post.uri}">Continue reading<i class="bi bi-fast-forward"></i></a></p>
    </div>

    <footer>
    	<#include "../commons/footer-tags.ftl">
    </footer>
</article>
