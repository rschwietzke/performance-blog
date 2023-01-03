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
       <div class="description">
           ${post.description!''}
       </div>
    </div>

    <footer>
        <ul class="actions">
            <li><a href="${content.rootpath}${post.noExtensionUri!post.uri}" class="button big">Continue Reading</a></li>
        </ul>
        <#include "../commons/footer-tags.ftl">
    </footer>
</article>
