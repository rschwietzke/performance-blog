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
