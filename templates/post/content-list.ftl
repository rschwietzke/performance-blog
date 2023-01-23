<article class="mini-post" data-file="${content.rootpath}${post.noExtensionUri!post.uri}" data-target="article">
    <header>
        <div class="title">
            <h1><a href="${content.rootpath}${post.noExtensionUri!post.uri}">${post.title}</a></h1>
        </div>
        <div class="meta">
            <time class="published" datetime='${post.date?string("yyyy-MM-dd")}'>${post.date?string("yyyy-MM-dd")}</time>
        </div>
    </header>

    <div class="content">
       <#if post.show_excerpt!false >
           <div class="description">
                ${post.excerpt!''}
            </div>
       <#else>
           <div class="asciidoc">
               ${post.body}
           </div>
       </#if>
    </div>

    <footer>
        <ul class="actions">
            <li><a href="${content.rootpath}${post.noExtensionUri!post.uri}" class="button big">Continue Reading2</a></li>
        </ul>
        <#include "../commons/footer-tags.ftl">
    </footer>
</article>
