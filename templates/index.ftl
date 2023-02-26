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
            <#list published_posts as post>
                <#if (post??) >
                    <#assign firstParagraphOnly = true>
                    <#include "post/content.ftl">
                </#if>
            </#list>

            <#-- No reuse, hence this is directly embedded-->
            <div class="pagination">
                <#if (config.index_paginate?? && numberOfPages > 1) >

                    <div class="prev">
                        <a href="${content.rootpath}${previousFileName!'#'}"
                            class="<#if (previousFileName?? == false) >disabled </#if> button big previous"><i class="bi bi-caret-left"></i>PREVIOUS</a>
                    </div>

                    <div class="pageinfo">${currentPageNumber} of ${numberOfPages}</div>

                    <div class="next">
                        <a href="${content.rootpath}${nextFileName!'#'}"
                            class="<#if (nextFileName?? == false) >disabled </#if> button big next">NEXT<i class="bi bi-caret-right"></i></a>
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
