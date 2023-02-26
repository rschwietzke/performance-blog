<!DOCTYPE HTML>
<html lang="en">
<!--
    Pure CSS Blog and AsciiDoc René Schwietzke, MIT license (code) and CC-BY-4.0 license (content)
    Grid and Flexbox
-->

<#include "commons/head.ftl">

<body>
	<!-- Wrapper -->
	<div id="grid-container">
        <nav id="site-menu">
            <#include "commons/menu.ftl">
        </nav>

        <header id="site-header">
            <#include "commons/site-header.ftl">
        </header>

        <aside id="site-sidebar">
            <#include "commons/pinned-posts.ftl">
            <#include "commons/about.ftl">
        </aside>

		<main id="main-content">
            <h1 class="tag"><i class="bi bi-tag"></i> ${tag}</h1>

            <#list tag_posts as post>
                <#if (post??) >
                    <#assign firstParagraphOnly = true>
                    <#include "post/content.ftl">
                </#if>
            </#list>
        </main>

        <footer id="site-footer">
            <#include "commons/site-footer.ftl">
        </footer>
    </div>

    <#include "commons/footer.ftl">
</body>
</html>
