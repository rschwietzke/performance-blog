<!DOCTYPE HTML>
<!--
    Pure CSS Blog and AsciiDoc René Schwietzke, MIT license (code) and CC-BY-4.0 license (content)
    Grid and Flexbox
-->
<html lang="en">

<#include "commons/head.ftl">

<body>
	<!-- Wrapper -->
	<div id="grid-container" class="single-post">
        <nav id="site-menu">
            <#include "commons/menu.ftl">
        </nav>

		<main id="main-content">
			<#assign post = content />

			<#if (post??) >
				<#assign firstParagraphOnly=false>
				<#include "post/content.ftl">
			</#if>

            <#-- No reuse, hence this is directly embedded-->
            <div class="pagination">
                <#if (post.previousContent)??>
                    <div class="prev">
                        <a href="${content.rootpath}${post.previousContent.noExtensionUri!post.previousContent.uri}"
                            class="button big previous"><i class="bi bi-caret-left"></i>${content.previousContent.title}</a>
                    </div>
                <#else>
                    <div class="prev empty">
                        <!-- empty -->
                    </div>
                </#if>
                <#if (post.nextContent)??>
                    <div class="next">
                        <a href="${content.rootpath}${post.nextContent.noExtensionUri!post.nextContent.uri}"
                            class="button big next">${content.nextContent.title}<i class="bi bi-caret-right"></i></a>
                    </div>
                <#else>
                    <div class="next empty">
                        <!-- empty -->
                    </div>
                </#if>
            </div>
        </main>

        <footer id="site-footer">
            <#include "commons/site-footer.ftl">
        </footer>
    </div>

    <#include "commons/footer.ftl">
</body>
</html>
