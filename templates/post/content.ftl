<article class="post <#if firstParagraphOnly>post-list</#if>">
    <header>
        <div class="title">
            <h1><a href="${content.rootpath}${post.noExtensionUri!post.uri}">${post.title}</a></h1>
        </div>
        <div class="meta">
            <#if (post.subheadline?has_content)>
                <p class="description">${post.subheadline}</p>
            </#if>
            <time class="published" datetime='${post.date?string("yyyy-MM-dd")}'>${post.date?string("yyyy-MM-dd")}</time>
        </div>
    </header>

    <div class="content">
       <#if (post.featuredimage?has_content) >
           <div class="featured">
               <img loading="lazy" src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${post.featuredimage}" alt="${post.featuredalt!''}" />
           </div>
       </#if>
       <div class="asciidoc">
           <#assign full = post.showfull?? && post.showfull?boolean>
           <#assign continueReading = true>

           <#if firstParagraphOnly && !full>
                <#assign preamble>${post.body?keep_after("<div id=\"preamble\">")?keep_before("</div>\\s+<div class=\"sect", "rsm")}</#assign>
                <#if preamble?trim?length != 0>
                    ${preamble}
                <#else>
                    ${post.excerpt!'No excerpt defined!'}
                </#if>
            <#else>
                <#assign continueReading = false>
                ${post.body}
            </#if>
       </div>
       <#if continueReading>
           <p class="continue-reading"><a href="${content.rootpath}${post.noExtensionUri!post.uri}">Continue reading<i class="bi bi-fast-forward"></i></a></p>
       </#if>
    </div>

    <footer>
    	<#include "../commons/footer-tags.ftl">
    </footer>
</article>
