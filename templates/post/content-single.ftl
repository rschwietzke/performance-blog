<article class="post">
    <header>
        <div class="title">
            <h1><a href="${content.rootpath}${post.noExtensionUri!post.uri}">${post.title}</a></h1>
            <#if (post.description?has_content)>
                <p class="description">${post.description}</p>
            </#if>
        </div>
        <div class="meta">
            <time class="published" datetime='${post.date?string("yyyy-MM-dd")}'>${post.date?string("yyyy-MM-dd")}</time>
        </div>
    </header>

    <div class="content">
       <#if (post.featuredimage?has_content) >
           <div class="featured">
               <img src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${post.featuredimage}" alt="${post.featuredalt}" />
           </div>
       </#if>
       <div class="asciidoc">
           ${post.body}
       </div>
    </div>

    <footer>
    	<#include "../commons/footer-tags.ftl">
    </footer>
</article>
