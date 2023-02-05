<!DOCTYPE HTML>
<!--
    Pure CSS Blog and AsciiDoc René Schwietzke, MIT license (code) and CC-BY-4.0 license (content)
    Grid and Flexbox
-->
<html lang="en">

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
            <#assign post = content />

			<#if (post??)>
				<#assign firstParagraphOnly=false>
				<#include "post/content.ftl">
			</#if>
        </main>

        <footer id="site-footer">
            <#include "commons/site-footer.ftl">
        </footer>
    </div>

    <#include "commons/footer.ftl">
</body>
</html>
