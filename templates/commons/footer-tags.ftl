<#if (config.render_tags?boolean == true)  && post.tags?? >
	<ul class="tags">
    	<#list post.tags as tag>
        	<li><i class="bi bi-tag"></i> <a href="${content.rootpath}${config.tag_path}/${tag}${config.output_extension}">${tag}</a></li>
        </#list>
	</ul>
</#if>
