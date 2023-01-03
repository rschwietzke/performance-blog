<article class="page post">
    <header>
        <div class="title>">
            <h1>${post.title}</h1>
           	<#if (post.description?has_content)>
                <p class="description">${post.description}</p>
            </#if>
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
